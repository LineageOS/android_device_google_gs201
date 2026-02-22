#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

include device/google/gs201/device.mk

ifneq ($(TARGET_IS_TABLET),true)
# Telephony
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.carrierlock.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.carrierlock.xml
endif

# Android Verified Boot
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

# ZramWriteback
-include hardware/google/pixel/mm/device_gki.mk
