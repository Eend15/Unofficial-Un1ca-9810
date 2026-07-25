# Copyright (c) 2026 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# Device configuration file for Galaxy S9 (Exynos) (starlte)
TARGET_NAME="Galaxy S9 (Exynos)"
TARGET_CODENAME="starlte"
TARGET_ASSERT_MODEL=("SM-G960F" "SM-G960F/DS" "SM-G960FD" "SM-G960N")
TARGET_PLATFORM="exynos9810"
TARGET_FIRMWARE="SM-G960F/PHN/352410095670563"
# Temporarily disabled: Samsung's FUS backend currently refuses this
# firmware regardless of IMEI/TAC validity; re-enable once obtainable.
TARGET_EXTRA_FIRMWARES=()
TARGET_PLATFORM_SDK_VERSION="${EXYNOS9810_TARGET_PLATFORM_SDK_VERSION:-31}"
TARGET_PRODUCT_SHIPPING_API_LEVEL=26

# SEC Product Feature
TARGET_DVFSAPP_CONFIG_SSRM_POLICY_FILENAME="ssrm_default"
# Stock G960F ships DYN_RESOLUTION_CONTROL=WQHD,FHD,HD and the panel is a real
# 1440x2960 QHD+, so the switcher belongs here. It had been forced off with no
# recorded reason while the platform default (and star2lte) are true, which left
# the device locked at native resolution with no way to change it.
# Depends on ro.sf.lcd_density being correct for the NATIVE panel (640 here):
# the SecSettings patch scales both size and density from the initial values
# (scale = (index+2) / (nativeWidth/360)), so dp width is constant across
# WQHD/FHD/HD and is determined entirely by the initial density.
TARGET_COMMON_SUPPORT_DYN_RESOLUTION_CONTROL=true
TARGET_CAMERA_SUPPORT_SDK_SERVICE=false
