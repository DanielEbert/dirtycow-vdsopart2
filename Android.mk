LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := dcowvdso
LOCAL_LDFLAGS   += -llog
LOCAL_CFLAGS    += -DDEBUG

LOCAL_SRC_FILES := payload.h 0xdeadbeefpart2.c

include $(BUILD_EXECUTABLE)
