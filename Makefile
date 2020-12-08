
ARCH := $(shell adb shell getprop ro.product.cpu.abi)
SDK_VERSION := $(shell adb shell getprop ro.build.version.sdk)

all: build

build:
	echo remember to ln /data/s
	/home/user/adb/android-ndk-r21d/ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk APP_ABI=$(ARCH) APP_PLATFORM=android-$(SDK_VERSION)
	adb push libs/$(ARCH)/dcowvdso /data/local/tmp/dcowvdso
	adb shell /data/local/tmp/dcowvdso

clean:
	rm -rf libs
	rm -rf obj

