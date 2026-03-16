#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

#
# All components inherited here go to system image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)

# Enable CSI checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
ifneq ($(TARGET_IS_TABLET),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
endif

#
# All components inherited here go to product image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_product.mk)
ifneq ($(TARGET_IS_TABLET),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_product.mk)
endif

#
# All components inherited here go to vendor image
#
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
ifneq ($(TARGET_IS_TABLET),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)
endif
