#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common ProjectRadiant stuff.
$(call inherit-product, vendor/radiant/config/common_full_phone.mk)

PRODUCT_NAME := radiant_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T

# Project Radiant Properties
TARGET_BOOT_ANIMATION_RES := 1080
RADIANT_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_PRODUCT_PROPERTIES += \
    ro.nezuko.cpu=SDM865

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 11 RKQ1.200826.002 V12.1.3.0.RJDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/apollo_global/apollo:11/RKQ1.200826.002/V12.1.3.0.RJDMIXM:user/release-keys
