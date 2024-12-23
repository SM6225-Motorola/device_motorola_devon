#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

# RisingFlags
TARGET_ENABLE_BLUR := false
RISING_BATTERY := 5000mah
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 680" \
    RisingMaintainer="ZetLink" \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-11 e6e76f-92dc7c release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-11/e6e76f-92dc7c:user/release-keys \
    DeviceProduct=devon_g
