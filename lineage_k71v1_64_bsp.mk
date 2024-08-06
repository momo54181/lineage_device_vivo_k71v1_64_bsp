#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from k71v1_64_bsp device
$(call inherit-product, device/vivo/k71v1_64_bsp/device.mk)

PRODUCT_DEVICE := k71v1_64_bsp
PRODUCT_NAME := lineage_k71v1_64_bsp
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1806
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1
