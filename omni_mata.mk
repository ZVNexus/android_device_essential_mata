#
# Copyright 2019-2020 The Android Open Source Project
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

# Inherit from the common AOSP configuration.
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom ROM configuration.
$(call inherit-product, vendor/omni/config/common.mk)

# Custom device configuration.
$(call inherit-product, device/essential/mata/device.mk)

# Identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := omni_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := Essential PH-1
PRODUCT_MANUFACTURER := Essential Products
