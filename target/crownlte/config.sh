# Copyright (c) 2026 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# Device configuration file for Galaxy Note9 (Exynos) (crownlte)
TARGET_NAME="Galaxy Note9 (Exynos)"
TARGET_CODENAME="crownlte"
# The artifact is topology-neutral. Samsung EFS factory.prop selects single or
# dual SIM during early boot; accept every Exynos crownlte model at install.
TARGET_SIM_VARIANT="auto"
case "$TARGET_SIM_VARIANT" in
    auto)
        TARGET_ASSERT_MODEL=("SM-N960F" "SM-N960F/DS" "SM-N960FD" "SM-N960N")
        ;;
    *)
        printf 'Unsupported TARGET_SIM_VARIANT for crownlte: %s\n' "$TARGET_SIM_VARIANT" >&2
        return 1
        ;;
esac
TARGET_PLATFORM="exynos9810"
TARGET_FIRMWARE="SM-N960F/PHN/351752105470174"
# Temporarily disabled: Samsung's FUS backend currently refuses this
# firmware regardless of IMEI/TAC validity; re-enable once obtainable.
TARGET_EXTRA_FIRMWARES=()
TARGET_PLATFORM_SDK_VERSION="${EXYNOS9810_TARGET_PLATFORM_SDK_VERSION:-31}"
TARGET_PRODUCT_SHIPPING_API_LEVEL=27
TARGET_BOARD_API_LEVEL=33
TARGET_ODM_PARTITION_SIZE=901775360
TARGET_CACHE_PARTITION_SIZE=545259520

# SEC Product Feature
TARGET_DVFSAPP_CONFIG_SSRM_POLICY_FILENAME="ssrm_default"
# Stock N960F ships DYN_RESOLUTION_CONTROL=WQHD,FHD,HD and the panel is a real
# 1440x2960 QHD+, so the switcher belongs here. It had been forced off with no
# recorded reason while the platform default (and star2lte) are true, which left
# the device locked at native resolution with no way to change it.
# Depends on ro.sf.lcd_density being correct for the NATIVE panel (560 here):
# the SecSettings patch scales both size and density from the initial values
# (scale = (index+2) / (nativeWidth/360)), so dp width is constant across
# WQHD/FHD/HD and is determined entirely by the initial density.
TARGET_COMMON_SUPPORT_DYN_RESOLUTION_CONTROL=true
TARGET_CAMERA_SUPPORT_SDK_SERVICE=false
