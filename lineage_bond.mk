#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bond device
$(call inherit-product, device/huawei/bond/device.mk)

# Device identifier
PRODUCT_NAME := lineage_bond
PRODUCT_DEVICE := bond
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := Honor 7X
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=BND-L21 \
    PRIVATE_BUILD_DESC="BND-L21-user 9.1.0 HUAWEIBND-L21 194-LGRP2-OVS release-keys"

BUILD_FINGERPRINT := HONOR/BND-L21/HWBND-H:9/HONORBND-L21/9.1.0.174C185:user/release-keys
