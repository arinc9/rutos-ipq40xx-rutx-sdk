#
# Copyright (C) 2021 Teltonika
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/download.mk

PKG_NAME:=events_reporting

PKG_SOURCE_VERSION:=2.3

include $(INCLUDE_DIR)/package.mk

define Package/events_reporting
	SECTION:=base
	CATEGORY:=Base system
	TITLE:=Events Reporting
	DEPENDS:=+libubus +libubox  +libtlt-logger \
		+libtlt_uci +MOBILE_SUPPORT:libgsm +librms +libtlt_smtp +libparam \
		+libmnfinfo +liburc
endef

define Package/events_reporting/conffiles
/etc/config/events_reporting
endef


define Package/events_reporting/install
	$(INSTALL_DIR) $(1)/etc/init.d $(1)/etc/config $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/files/events_reporting.init $(1)/etc/init.d/events_reporting
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/files/events_reporting.conf $(1)/etc/config/events_reporting
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/events_reporting $(1)/usr/bin/events_reporting
endef

$(eval $(call BuildPackage,events_reporting))
