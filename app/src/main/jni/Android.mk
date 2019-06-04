LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS    := -DNOFLITE
LOCAL_CFLAGS    += -D__GXX_EXPERIMENTAL_CXX0X__
LOCAL_CFLAGS    += -DFLITE_PLUS_HTS_ENGINE

FILE_LIST := $(wildcard $(LOCAL_PATH)/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/engine/manager/src/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/engine/synthesis/hts_engine/**/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/engine/text/internal/src/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/engine/text/flite/src/**/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/engine/text/flite/lang/**/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/cli/src/*.c*)
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)


OTHER_H_LIST      := $(wildcard $(LOCAL_PATH)/engine/text/flite/lang/**)






LOCAL_C_INCLUDES := $(LOCAL_PATH)/engine/manager/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/engine/synthesis/hts_engine/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/engine/text/internal/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/engine/text/flite/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/engine/text/flite/lang/cmulex
LOCAL_C_INCLUDES += $(LOCAL_PATH)/engine/text/flite/lang/usenglish




$(warning $(LOCAL_C_INCLUDES))


LOCAL_MODULE    := SALB
LOCAL_LDLIBS := -llog


include $(BUILD_SHARED_LIBRARY)
