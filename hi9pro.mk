#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := Hi9Pro

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/chuwi/config/common.mk)

PRODUCT_COPY_FILES += \
    device/chuwi/Hi9Pro/recovery/root/init.recovery.mt6797.rc:recovery/root/init.recovery.mt6797.rc \
    device/chuwi/Hi9Pro/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Hi9Pro
PRODUCT_NAME := Hi9Pro
PRODUCT_BRAND := chuwi
PRODUCT_MODEL := Hi9Pro
PRODUCT_MANUFACTURER := chuwi

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0

