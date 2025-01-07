#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from daisy device
AB_OTA_UPDATER := false
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sakura
PRODUCT_NAME := lineage_sakura
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 1

TARGET_INCLUDE_LAWNCHAIR := false

# Extras
TARGET_INCLUDE_RIMUSIC := false

# Debugging
TARGET_INCLUDE_MATLOG := false

# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := Kavi...(@kavi_00)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sakura-user 9 PKQ1.180917.001 V12.0.1.0.PDICNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/sakura/sakura:9/PKQ1.180917.001/V12.0.1.0.PDICNXM:user/release-keys"
