#
# Copyright (C) 2019 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from racer device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Must include in derp
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := racer
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := derp_racer
PRODUCT_MODEL := motorola edge

TARGET_DEVICE := racer
PRODUCT_SYSTEM_NAME := racer

VENDOR_RELEASE := 10/QPD30.114-80/6ddbb:user/release-keys
BUILD_FINGERPRINT := motorola/racer_retail/racer:$(VENDOR_RELEASE)
PRIVATE_BUILD_DESC := "'racer_retail-user 10 QPD30.114-80 6ddbb release-keys'"
