include $(TOPDIR)/rules.mk

PKG_NAME:=basic_c
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/shivshastha/My_source.git
PKG_SOURCE_VERSION:=b9bc35a31cf9171a294a93263261159a9dbbacc9
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_SOURCE_VERSION)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.xz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)

PKG_MAINTAINER:=Shiv Shastha <shivshastha.p@zilogic.com>

include $(INCLUDE_DIR)/package.mk

define Package/basic_c
	SECTION:=Basic
	CATEGORY:=basic
	TITLE:=Basic c program!
endef

define Package/basic_c/description
	A Basic "c program!" -application.
endef

define Build/Compile
	$(MAKE) CC=$(TARGET_CC) -C $(PKG_BUILD_DIR)/hello.c
endef

define Package/basic_c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello $(1)/usr/bin
endef

$(eval $(call BuildPackage, basic_c))
