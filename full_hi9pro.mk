# Copyright (C) 2018 The LineageOS Project

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/chuwi/hi9pro/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hi9pro
PRODUCT_NAME := lineage_hi9pro
PRODUCT_MODEL := hi9pro
PRODUCT_BRAND := chuwi
PRODUCT_MANUFACTURER := chuwi

PRODUCT_GMS_CLIENTID_BASE := android-chuwi
