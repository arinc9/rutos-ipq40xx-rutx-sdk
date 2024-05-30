#
# Copyright (C) 2024 Arınç ÜNAL <arinc.unal@arinc9.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=tunprox-ldt
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/telekom/tunprox
PKG_SOURCE_VERSION:=9fbc38803d29b30c59d33459207fb48385b25bee

PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

MAKE_PATH:=ldt-tool

define Package/tunprox-ldt
  TITLE:=tunprox-ldt
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Routing and Redirection
endef

define Package/tunprox-ldt/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ldt-tool/tool/ldt $(1)/usr/bin/
endef

$(eval $(call BuildPackage,tunprox-ldt))
