include $(TOPDIR)/rules.mk

PKG_NAME:=basic_c
PKG_VERSION:=1.0
PKG_RELEASE:=1

SOURCE_DIR:=./

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
	$(TARGET_CC) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/hello.o $(PKG_BUILD_DIR)/hello.c
endef

define Package/basic_c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello.o $(1)/usr/bin
endef

$(eval $(call BuildPackage, basic_c))
