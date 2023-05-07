

# Inherit some common Statix stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/statix/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/statix_common.mk)
$(call inherit-product, device/google/bluejay/device-statix.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := statix_bluejay

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 13 TQ2A.230405.003.E1 9802792 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:13/TQ2A.230405.003.E1/9802792:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
