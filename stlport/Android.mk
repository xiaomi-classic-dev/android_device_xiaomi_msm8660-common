# Build the legacy Adreno dependency from the STLport sources retained in M's NDK.
LOCAL_PATH := ndk/sources/cxx-stl/stlport

include $(CLEAR_VARS)
LOCAL_MODULE := libstlport
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := \
    src/dll_main.cpp \
    src/fstream.cpp \
    src/strstream.cpp \
    src/sstream.cpp \
    src/ios.cpp \
    src/stdio_streambuf.cpp \
    src/istream.cpp \
    src/ostream.cpp \
    src/iostream.cpp \
    src/codecvt.cpp \
    src/collate.cpp \
    src/ctype.cpp \
    src/monetary.cpp \
    src/num_get.cpp \
    src/num_put.cpp \
    src/num_get_float.cpp \
    src/num_put_float.cpp \
    src/numpunct.cpp \
    src/time_facets.cpp \
    src/messages.cpp \
    src/locale.cpp \
    src/locale_impl.cpp \
    src/locale_catalog.cpp \
    src/facets_byname.cpp \
    src/complex.cpp \
    src/complex_io.cpp \
    src/complex_trig.cpp \
    src/string.cpp \
    src/bitset.cpp \
    src/allocators.cpp \
    src/c_locale.c \
    src/cxa.c
LOCAL_C_INCLUDES := device/xiaomi/msm8660-common/stlport/include $(LOCAL_PATH)/stlport bionic
LOCAL_CFLAGS := -D_GNU_SOURCE
LOCAL_CPPFLAGS := -fuse-cxa-atexit
LOCAL_CXX_STL := libstdc++
include $(BUILD_SHARED_LIBRARY)
