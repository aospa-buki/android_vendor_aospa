# Copyright (C) 2021 Paranoid Android
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

ifeq (aospa_oneplus9rt,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/oneplus9rt/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := oneplus9rt
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := MT2111
PRODUCT_NAME := aospa_oneplus9rt

PRODUCT_SYSTEM_NAME := MT2111_IND
PRODUCT_SYSTEM_DEVICE := OP5155L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="MT2111_IND-user 14 UKQ1.230924.001 R.15273b7_2a0ef_2a0ee release-keys"

BUILD_FINGERPRINT := OnePlus/MT2111_IND/OP5155L1:14/UKQ1.230924.001/R.15273b7_2a0ef_2a0ee:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

endif
