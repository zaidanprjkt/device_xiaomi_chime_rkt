#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit some common Pixel Flags.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelPlusUI Flags!
CUSTOM_BUILD_TYPE := OFFICIAL
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
PPUI_MAINTAINER := imannig-hiirakuun
TARGET_SUPPORTS_QUICK_TAP  := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
