#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device Path
DEVICE_PATH := device/huawei/bond

# Inherit from hi6250-9-common
$(call inherit-product, device/huawei/hi6250-9-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/huawei/bond/bond-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/bond.rc:$(TARGET_COPY_OUT_ODM)/etc/init/bond.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
