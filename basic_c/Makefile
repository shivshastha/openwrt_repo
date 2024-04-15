include $(TOPDIR)/rules.mk

PKG_NAME:=basic-c
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/shivshastha/My_source.git
PKG_SOURCE_VERSION:=9226868002bdd710a2dc86d03cb56ac327cf6d45

PKG_MAINTAINER:=Shiv Shastha <shivshastha.p@zilogic.com>

include $(INCLUDE_DIR)/package.mk

define Package/basic-c
	SECTION:=Basic
	CATEGORY:=basic
	TITLE:=Basic c program!
endef

define Package/basic-c/description
	A Basic c program.
endef

define Build/Compile
	$(MAKE) CC=$(TARGET_CC) -C $(PKG_BUILD_DIR)/hello.c
endef

define Package/basic_c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello $(1)/usr/bin
endef

$(eval $(call BuildPackage, basic-c))
