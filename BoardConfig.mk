#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/vivo/k71v1_64_bsp

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k71v1_64_bsp
TARGET_NO_BOOTLOADER := true

# Build
BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_KERNEL_CONFIG := k71v1_64_bsp_defconfig
TARGET_KERNEL_SOURCE := kernel/vivo/k71v1_64_bsp

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
endif

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5368709120
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := mt6771

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
# TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6771
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2020-03-05

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary files
include vendor/vivo/k71v1_64_bsp/BoardConfigVendor.mk
