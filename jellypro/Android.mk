LOCAL_PATH := $(call my-dir)

ifneq ($(filter jellypro, $(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = both
LOCAL_SRC_FILES_32 = proprietary/vendor/lib/libdpframework.so
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libaudiocustparam.so
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libaudiocustparam.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE = libmtkcam_fwkutils
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = both
LOCAL_SRC_FILES_32 = proprietary/vendor/lib/libmtkcam_fwkutils.so
LOCAL_SRC_FILES_64 = proprietary/vendor/lib64/libmtkcam_fwkutils.so
include $(BUILD_PREBUILT)
endif
