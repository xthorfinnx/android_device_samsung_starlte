# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2022 The LineageOS Project

# Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from starlte device.mk
$(call inherit-product, device/samsung/starlte/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_starlte
PRODUCT_DEVICE := starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build fingerprint
CUSTOM_BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(PRODUCT_NAME)/$(PRODUCT_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/thorfinn:user/release-keys
CUSTOM_BUILD_DESC := $(PRODUCT_DEVICE)-user $(PLATFORM_VERSION) $(BUILD_ID) thorfinn release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="$(CUSTOM_BUILD_DESC)" \
    BuildFingerprint=$(CUSTOM_BUILD_FINGERPRINT)
