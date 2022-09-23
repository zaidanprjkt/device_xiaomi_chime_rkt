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

# Inherit some common RiceDroid Flags.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
RICE_MAINTAINER := Ayan-whyyraku
RICE_OFFICIAL := true
RICE_CHIPSET := bengal

# Gapps
$(call inherit-product-if-exists, vendor/gapps/config.mk)

# Common Stuff
TARGET_GAPPS_ARCH := arm64
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
