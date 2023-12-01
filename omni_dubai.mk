#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

PRODUCT_DEVICE := dubai
PRODUCT_NAME := omni_dubai
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dubai_g-user 13 T1RD33.116-33-12 d501e0 7757c release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:13/T1RD33.116-33-12/d501e0-7757c:user/release-keys
