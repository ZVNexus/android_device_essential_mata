ifneq ($(filter mata, aosp_mata $(TARGET_DEVICE)),)
LOCAL_PATH := $(call my-dir)

ifndef BOARD_VNDK_VERSION
VNDK_SP_LIBRARIES += \
    android.hardware.renderscript@1.0\
    android.hardware.graphics.allocator@2.0\
    android.hardware.graphics.mapper@2.0\
    android.hardware.graphics.common@1.0\
    android.hidl.memory@1.0\
    android.hidl.memory@1.0-impl\
    libhwbinder\
    libbase\
    libcutils\
    libhardware\
    libutils\
    libc++\
    libbacktrace\
    libunwind\
    libunwindstack\
    liblzma\
    libhidlbase\
    libhidltransport\
    libz\
    libbcinfo\
    libblas\
    libcompiler_rt\
    libRS_internal\
    libRSDriver\
    libRSCpuRef\
    libft2\
    libpng\
    libhidlmemory\
    libion\

endif


define add-vndk-sp-lib
include $$(CLEAR_VARS)
LOCAL_MODULE := $1.vndk-sp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PREBUILT_MODULE_FILE := $$(TARGET_OUT)/lib/$1.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_INSTALLED_MODULE_STEM := $1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := vndk-sp
include $$(BUILD_PREBUILT)

include $$(CLEAR_VARS)
LOCAL_MODULE := $1.vndk-sp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PREBUILT_MODULE_FILE := $$(TARGET_OUT)/lib64/$1.so
LOCAL_MULTILIB := 64
LOCAL_MODULE_TAGS := optional
LOCAL_INSTALLED_MODULE_STEM := $1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := vndk-sp
include $$(BUILD_PREBUILT)
endef

$(foreach lib,$(VNDK_SP_LIBRARIES),\
    $(eval $(call add-vndk-sp-lib,$(lib))))
endif # if TARGET_DEVICE is mata or aosp_mata

