# Copyright (C) 2020 Paranoid Android
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

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot Control
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.msm8998 \
    libcutils \
    librecovery_updater_msm \
    libz

# IMS
PRODUCT_PACKAGES += \
    libbase_shim

# Init
PRODUCT_PACKAGES += \
    fstab.mata \
    init.mata.rc \
    init.recovery.mata.rc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/essential/mata

# Overlays
PRODUCT_PACKAGES += \
    EssentialCarrierConfig \
    EssentialFrameworks \
    EssentialSettings \
    EssentialSettingsProvider \
    EssentialSystemUI \
    EssentialTelephony

# QTI Components
TARGET_COMMON_QTI_COMPONENTS := \
    bt

# Shipping API
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Update Engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# VNDK
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_TARGET_VNDK_VERSION := 29

# Vendor
$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Verity
$(call inherit-product, build/target/product/verity.mk)
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc/1da4000.ufshc/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc/1da4000.ufshc/by-name/vendor
