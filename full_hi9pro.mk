# Copyright (C) 2018 The LineageOS Project

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/chuwi/Hi9Pro/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Hi9Pro
PRODUCT_NAME := lineage_Hi9Pro
PRODUCT_MODEL := Hi9Pro
PRODUCT_BRAND := chuwi
PRODUCT_MANUFACTURER := chuwi

PRODUCT_GMS_CLIENTID_BASE := android-chuwi
