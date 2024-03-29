# Copyright (C) 2018 The LineageOS Project

DEVICE_PATH := device/chuwi/hi9pro

# Platform
TARGET_BOARD_PLATFORM := mt6797
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_SOURCE := kernel/chuwi/hi9pro
#TARGET_KERNEL_CONFIG := hi9pro_defconfig
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage

# Boot image
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE = bootopt=64S3,32N2,64N2
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04f88000 --second_offset=0x00e88000 --tags_offset 0x03f88000

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55555555 ## 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27149712384
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 687865856

# Disable dex pre-opt
WITH_DEXPREOPT := false

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Hardware
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := false
#TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6797
#LZMA_RAMDISK_TARGETS := recovery

# Treble
BOARD_VNDK_RUNTIME_DISABLE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Enable 64-bits binder
TARGET_USES_64_BIT_BINDER := true

# Graphics
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Root
BOARD_ROOT_EXTRA_FOLDERS := nvcfg nvdata protect_f protect_s

# Seccomp filters
BOARD_SECCOMP_POLICY += $(DEVICE_PATH)/seccomp

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := $(DEVICE_PATH)/sepolicy/private

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

TARGET_LD_SHIM_LIBS := \
    /system/lib/vndk-compat/libstagefright_omx.so|/system/lib/libstagefright_omx_shim.so \
    /system/lib64/vndk-compat/libstagefright_omx.so|/system/lib64/libstagefright_omx_shim.so

# Inherit from the proprietary version
-include vendor/chuwi/hi9pro/BoardConfigVendor.mk
