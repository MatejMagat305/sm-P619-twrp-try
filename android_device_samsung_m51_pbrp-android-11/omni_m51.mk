#
# Copyright (C) 2020 The Evolution X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from m51 device makefile
$(call inherit-product, device/samsung/m51/device.mk)

#$(call inherit-product, vendor/pb/config/common.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := omni_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-M515F
PRODUCT_MANUFACTURER := Samsung

# Build info
BUILD_FINGERPRINT := "samsung/m51nsxx/m51:10/QP1A.190711.020/M515FXXU1BTK4:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=m51 \
    PRODUCT_NAME=m51 \
    PRIVATE_BUILD_DESC="m51nsxx-user 10 QP1A.190711.020 M515FXXU1BTK4 release-keys"

TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
