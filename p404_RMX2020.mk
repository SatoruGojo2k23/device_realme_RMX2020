#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/p404/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := p404_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2020
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX2020
PRODUCT_SYSTEM_NAME := RMX2020
PRODUCT_SYSTEM_DEVICE := RMX2020

#Project 404 additions
P404_BUILDTYPE=TOKUI

# Include GAPPS
WITH_GAPPS := true

TARGET_BOOT_ANIMATION_RES := 720

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := RMX2020

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_DEVICE=RMX2020 \
    PRODUCT_NAME=p404_RMX2020 \
    PRIVATE_BUILD_DESC="full_oppo6769-user 10 QP1A.19>

    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oppo

