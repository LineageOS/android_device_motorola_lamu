#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Display
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayLamu \
    FrameworkOverlayLamu \
    FrameworkOverlayLamuLite \
    SystemUIOverlayLamu

# Shipping API Level
BOARD_SHIPPING_API_LEVEL := 202404
PRODUCT_SHIPPING_API_LEVEL := 35

# SKU properties
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/sku/product,$(TARGET_COPY_OUT_PRODUCT)/etc/prop) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/sku/odm,$(TARGET_COPY_OUT_ODM)/etc/prop)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# SPL
BOOT_SECURITY_PATCH := 2026-08-05
INIT_BOOT_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

# Inherit from common tree
$(call inherit-product, device/motorola/mt6768-common/mt6768.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/motorola/lamu/lamu-vendor.mk)
