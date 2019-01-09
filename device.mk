# Copyright (C) 2018 The LineageOS Project

DEVICE_PATH := device/chuwi/hi9pro

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-lineage
endif

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Init
PRODUCT_PACKAGES += \
    aee_aed64.rc \
    android.hidl.allocator@1.0-service.rc \
    atcid.rc atrace.rc \
    audiocmdservice_atci.rc \
    audioserver.rc \
    batterywarning.rc \
    bootlogoupdater.rc \
    bootstat.rc \
    cameraserver.rc \
    drmserver.rc \
    dumpstate.rc \
    emdlogger1.rc \
    emdlogger2.rc \
    emdlogger3.rc \
    emdlogger5.rc \
    fstab.mt6797 \
    gatekeeperd.rc \
    ged_srv.rc \
    hwservicemanager.rc \
    init.mt6797.rc \
    init.thermald.rc \
    init.vtservice.rc \
    installd.rc \
    keystore.rc \
    kpoc_charger.rc \
    lmkd.rc \
    logd.rc \
    md_monitor.rc \
    mdlogger.rc \
    mdnsd.rc \
    mediadrmserver.rc \
    mediaextractor.rc \
    mediametrics.rc \
    mediaserver.rc \
    mobile_log_d.rc \
    mtpd.rc \
    netd.rc \

# VNDK
PRODUCT_PACKAGES += vndk_package
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vndk-26/ld.config.compat.txt:system/etc/ld.config.compat.txt \
    $(DEVICE_PATH)/vndk-26/vndk-compat.rc:system/etc/init/vndk-compat.rc

# SP-NDK
PRODUCT_PACKAGES += \
    libvulkan

# HIDL
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

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
    $(DEVICE_PATH)/keylayout/gpio_keys.kl:system/usr/keylayout/gpio_keys.kl

# Shims
PRODUCT_PACKAGES += \
    libstagefright_omx_shim

# Properties
include $(DEVICE_PATH)/system_prop.mk

# Call proprietary blob setup
$(call inherit-product, vendor/chuwi/hi9pro/hi9pro-vendor.mk)