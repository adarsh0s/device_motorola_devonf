#
# Copyright (C) 2024 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/devonf/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_devonf
PRODUCT_DEVICE := devonf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G

#Blur
TARGET_ENABLE_BLUR := true

# AxionOS
AXION_MAINTAINER := Adarsh_Singh
AXION_PROCESSOR := Dimensity_930
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
PERF_GOV_SUPPORTED := true
TARGET_INCLUDES_LOS_PREBUILTS := true

# CPUsets configuration
AXION_CPU_BG := 0-3
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-2
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-5
AXION_CPU_DISPLAY := 6-7
AXION_CPU_AUDIO := 0-4

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=devonf
