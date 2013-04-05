LOCAL_PATH := $(abspath $(call my-dir)/../)

include $(CLEAR_VARS)

LOCAL_MODULE    := openssl

# Enable to be able to use ALOG* with #include "cutils/log.h"
#log_c_includes += system/core/include
#log_shared_libraries := liblog

# These makefiles are here instead of being Android.mk files in the
# respective crypto, ssl, and apps directories so
# that import_openssl.sh import won't remove them.
include $(LOCAL_PATH)/Crypto.mk
include $(LOCAL_PATH)/Ssl.mk
#include $(LOCAL_PATH)/Apps.mk