include $(TOPDIR)/rules.mk

PKG_NAME:=basic-c
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/shivshastha/My_source.git
PKG_SOURCE_VERSION:=f10a60d908bf08d5f1fc10947b7325fb71a08d52

PKG_MAINTAINER:=Shiv Shastha <shivshastha.p@zilogic.com>

include $(INCLUDE_DIR)/package.mk

define Package/basic-c
  SECTION:=basic
  CATEGORY:=Basic
  TITLE:=Basic-c-program!
endef

define Package/basic-c/description
  A Basic c program.
endef

define Build/Compile
	$(MAKE) CC=$(TARGET_CC) -C $(PKG_BUILD_DIR)/hello.c
endef

define Package/basic_c/install
	$(INSTALL_DIR) $(1)/usr/shiv
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello $(1)/usr/shiv
endef

$(eval $(call BuildPackage, basic-c))
