#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device Path
DEVICE_PATH := device/huawei/bond

# Inherit from hi6250-9-common
include device/huawei/hi6250-9-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 420

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_RECVENDORIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3338665984

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
