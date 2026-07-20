# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_with_xor.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/dash/device.mk)

# Device identifier
PRODUCT_DEVICE := dash
PRODUCT_NAME := twrp_dash
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2602BRT18C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true