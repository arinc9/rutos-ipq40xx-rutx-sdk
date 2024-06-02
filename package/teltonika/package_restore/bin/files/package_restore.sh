#!/bin/sh
# Copyright (C) 2021 Teltonika

. /lib/functions.sh

PACKAGE_FILE="/etc/package_restore.txt"
BACKUP_PACKAGES="/etc/backup_packages/"
FAILED_PACKAGES="/etc/failed_packages"
TIME_OF_SLEEP=10
PKG_REBOOT=0
DEVICENAME=$(mnf_info --name)
PLATFORM="$(jsonfilter -i /etc/board.json -e @.model.platform)"

[ -d "$BACKUP_PACKAGES" ] && {
	packages=$(ls "$BACKUP_PACKAGES"*.ipk)
	mkdir "$BACKUP_PACKAGES""main"

	for i in $packages; do
		tar x -zf "$i" -C "$BACKUP_PACKAGES" ./control.tar.gz
		tar x -zf "$BACKUP_PACKAGES""control.tar.gz" -C "$BACKUP_PACKAGES" ./control
		[ $(grep -c tlt_name "$BACKUP_PACKAGES"control) -eq 0 ] || mv "$i" "$BACKUP_PACKAGES"main
	done

	while [ -e "/var/lock/opkg.lock" ]; do
		sleep "$TIME_OF_SLEEP"
	done
	
	opkg install $(ls "$BACKUP_PACKAGES"main/*.ipk) $(ls "$BACKUP_PACKAGES"*.ipk)

	rm -rf "$BACKUP_PACKAGES" 2> /dev/null
	/etc/init.d/rpcd reload; /etc/init.d/vuci restart
	touch /tmp/vuci/reload_routes
}

[ -s "$PACKAGE_FILE" ] || exit 0

needed_packets=$(awk '/ - /{print $1}' "$PACKAGE_FILE")

third_party_pkg=$(uci_get package_restore package_restore 3rd_party_pkg)

for i in $needed_packets; do
	[ -s /usr/lib/opkg/info/"$i".control ] && sed -i "/$i/d" "$PACKAGE_FILE"
done

needed_packets=$(awk '/ - /{print $1}' "$PACKAGE_FILE")
hotspot_themes=$(echo "$needed_packets" | grep "hs_theme")

[ -z "$hotspot_themes" ] || {
	for i in $hotspot_themes; do
		theme=$(echo "$i" | awk -F "hs_theme_" '{print $2}')
		uci -q delete landingpage."$theme"
	done
	uci -q commit landingpage
}

languages=$(echo "$needed_packets" | grep "vuci-i18n-")
[ -z "$languages" ] || {
	uci -q delete vuci.languages
	section=$(uci add vuci internal)
	uci -q rename "vuci.$section"="languages"
	uci -q set vuci.languages.en="English"
	uci -q commit vuci
}

while [ -e "/var/lock/opkg.lock" ]; do
	sleep "$TIME_OF_SLEEP"
done

while :; do
	needed_packets=$(awk '/ - /{print $1}' "$PACKAGE_FILE")
	if [ "$third_party_pkg" = "1" ]; then
		/bin/opkg -f /etc/tlt_opkg.conf update 2> /dev/null
	else
		/bin/opkg --force_feeds /etc/opkg/teltonikafeeds.conf -f /etc/tlt_opkg.conf update 2> /dev/null
	fi
	available_packages=$(/sbin/opkg-call)

	[ -z "$available_packages" ] || break
	sleep "$TIME_OF_SLEEP"
done

for i in $needed_packets; do
	router_check=0
	exists=$(echo "$available_packages" | grep -wc "Package: $i")
	router=$(echo "$available_packages" | sed -n "/Package: $i$/,/Package:/p" | grep -w "Router:" | awk -F ": " '{print $2}')

	if [ "$router" = "$PLATFORM" ]; then
		router_check=1
	else
		for r in $router; do
			[ $(echo "$DEVICENAME" | grep -c "$r") -ne 0 ] && {
				router_check=1
				break;
			}
		done
	fi

	flash_free=$(df -k | grep -w overlayfs | tail -1 | awk '{print $4}')
	flash_free=$((flash_free * 1000))
	pkg_size=$(/sbin/opkg-call "$i")
	[ "$flash_free" -le "$pkg_size" ] && router_check=0
	[ "$exists" -ne 0 -a "$router_check" -ne 0 ] && /bin/opkg install -f /etc/tlt_opkg.conf "$i" 2> /dev/null

	[ -s /usr/lib/opkg/info/"$i".control ] || {
		echo "$(cat $PACKAGE_FILE | grep -w -m 1 $i)" >> "$FAILED_PACKAGES"
		sed -i "/$i/d" "$PACKAGE_FILE"
		continue
	}

	pkg_reboot=$(cat /usr/lib/opkg/info/"$i".control | grep -w 'pkg_reboot:' | awk '{print $2}')
	[ "$pkg_reboot" = "1" ] && PKG_REBOOT=1
	sed -i "/$i/d" "$PACKAGE_FILE"
	/etc/init.d/rpcd reload; /etc/init.d/vuci restart
	touch /tmp/vuci/reload_routes
done

[ "$third_party_pkg" = "1" ] && {
	needed_packets=$(cat "$PACKAGE_FILE")
	for i in $needed_packets; do
		status=$(opkg status "$i")
		[ -z "$status" ] && opkg install "$i" >/dev/null 2>&1
		[ -s /usr/lib/opkg/info/"$i".control ] || logger "Failed to install package '$i'"
		sed -i "/$i/d" "$PACKAGE_FILE"
	done
}

[ "$PKG_REBOOT" -eq 1 ] && /etc/init.d/network restart
rm "$PACKAGE_FILE" 2> /dev/null
