#
# Copyright (C) 2019 The Android Open Source Project
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

# Platform
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

TARGET_BOOTLOADER_BOARD_NAME := Mata
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540

# This is for grabbing the msm8998 kernel headers for gpt-utils.
BOARD_USES_QCOM_HARDWARE := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=mata user_debug=31 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=2048 androidboot.configfs=true
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3 cma=32M@0-0xffffffff
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x02000000
BOARD_RAMDISK_OFFSET := 0x02200000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/essential/msm8998
TARGET_KERNEL_CONFIG := mata_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 536870912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 0x40000
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
PRODUCT_ACTIONABLE_COMPATIBLE_PROPERTY_DISABLE := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_SHIPPING_API_LEVEL := 25

# TWRP
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USES_LOGD := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_DEFAULT_BRIGHTNESS := 149
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true
TW_USE_TOOLBOX := true
TWRP_EVENT_LOGGING := true

# The Great Relinking (This is to relink /system/bin/linker64 to /sbin/linker64)
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0-service
TW_RECOVERY_ADDITIONAL_RELINK_FILES := out/target/product/mata/system/lib64/android.hardware.boot@1.0.so out/target/product/mata/vendor/bin/hw/android.hardware.boot@1.0-service
