#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

# wlan flags
BOARD_WLAN_DEVICE := qcwcn
BOARD_WLAN_CHIP := wcn6740
# Use full namespace path for both BOARD_WPA_SUPPLICANT_PRIVATE_LIB and BOARD_HOSTAPD_PRIVATE_LIB due to wlan module for sw5100 has its own namespace.
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := //hardware/qcom/wlan/wcn6740/qcwcn/wpa_supplicant_8_lib:lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := //hardware/qcom/wlan/wcn6740/qcwcn/wpa_supplicant_8_lib:lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Wifi interface combination - {1 STA + 1 of (P2P or NAN)} or {1 AP}
WIFI_HAL_INTERFACE_COMBINATIONS := {{{STA}, 1}, {{P2P, NAN}, 1}}, {{{AP}, 1}}
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
# Avoid Wifi reset on MAC Address change
# WIFI_AVOID_IFACE_RESET_MAC_CHANGE := true
WIFI_FEATURE_HOSTAPD_11AX := true
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_DRIVER_STATE_OFF := "OFF"
BOARD_HOSTAPD_CONFIG_80211W_MFP_OPTIONAL := true

# Add BOARD_WLAN_CHIP to soong_config
$(call soong_config_set,qcom_wifi,board_wlan_chip,wcn6740)
