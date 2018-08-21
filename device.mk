# Copyright (C) 2018 The LineageOS Project

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Boot control
PRODUCT_PACKAGES_DEBUG += \
    bootctl

#PRODUCT_STATIC_BOOT_CONTROL_HAL := \
#    bootctrl.mt6797

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Init
PRODUCT_PACKAGES += \
    init.mt6797.rc \
    fstab.mt6797

# VNDK
PRODUCT_PACKAGES += vndk_package
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vndk-26/ld.config.compat.txt:system/etc/ld.config.compat.txt \
    $(LOCAL_PATH)/vndk-26/vndk-compat.rc:system/etc/init/vndk-compat.rc

# SP-NDK
PRODUCT_PACKAGES += \
    libvulkan

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio_keys.kl:system/usr/keylayout/gpio_keys.kl

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_engine_client

# Shims
PRODUCT_PACKAGES += \
    libstagefright_omx_shim

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# Call proprietary blob setup
$(call inherit-product, vendor/CHUWI/Hi9Air/Hi9Air-vendor.mk)
