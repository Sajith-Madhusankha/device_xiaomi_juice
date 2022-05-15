#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configurations
$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common cipher stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi

# Maintainer
DEVICE_MAINTAINER := Sajith_Madhusankha

# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220505.002/8353555:user/release-keys
BUILD_DESC := "raven-user 12 SP2A.220505.002 8353555 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
	
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
