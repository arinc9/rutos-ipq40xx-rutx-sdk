#
# Copyright (C) 2006-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=ca-certificates
PKG_VERSION:=20211016
PKG_RELEASE:=1
PKG_MAINTAINER:=

PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=http://ftp.debian.org/debian/pool/main/c/ca-certificates
PKG_HASH:=2ae9b6dc5f40c25d6d7fe55e07b54f12a8967d1955d3b7b2f42ee46266eeef88
PKG_INSTALL:=1

PKG_LICENSE:=MPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/ca-certificates
  SECTION:=base
  CATEGORY:=Base system
  TITLE:=System CA certificates
  PKGARCH:=all
  PROVIDES:=ca-certs
endef

define Package/ca-bundle
  SECTION:=base
  CATEGORY:=Base system
  TITLE:=System CA certificates as a bundle
  PKGARCH:=all
  PROVIDES:=ca-certs
endef

define Build/Prepare
	$(DECOMPRESS_CMD) $(HOST_TAR) -C $(PKG_BUILD_DIR) $(TAR_OPTIONS)
	$(Build/Patch)
endef

MAKE_PATH := work

define Build/Install
	mkdir -p \
		$(PKG_INSTALL_DIR)/usr/sbin \
		$(PKG_INSTALL_DIR)/usr/share/ca-certificates
	$(call Build/Install/Default,)
endef

define Package/ca-certificates/install
	$(INSTALL_DIR) $(1)/etc/ssl/certs
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/share/ca-certificates/*/*.crt $(1)/etc/ssl/certs/

	for CERTFILE in `ls -1 $(1)/etc/ssl/certs`; do \
		HASH=`openssl x509 -hash -noout -in $(1)/etc/ssl/certs/$$$$CERTFILE` ; \
		SUFFIX=0 ; \
		while [ -h "$(1)/etc/ssl/certs/$$$$HASH.$$$$SUFFIX" ]; do \
			let "SUFFIX += 1" ; \
		done ; \
		$(LN) "$$$$CERTFILE" "$(1)/etc/ssl/certs/$$$$HASH.$$$$SUFFIX" ; \
	done
endef

define Package/ca-bundle/install
	$(INSTALL_DIR) $(1)/etc/ssl/certs
	cat $(PKG_INSTALL_DIR)/usr/share/ca-certificates/*/*.crt >$(1)/etc/ssl/certs/ca-certificates.crt
	$(LN) /etc/ssl/certs/ca-certificates.crt $(1)/etc/ssl/cert.pem
	$(LN) /etc/ssl/certs/ca-certificates.crt $(1)/etc/cacert.pem
endef
$(eval $(call BuildPackage,ca-bundle))
$(eval $(call BuildPackage,ca-certificates))
