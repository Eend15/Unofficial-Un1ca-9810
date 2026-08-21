# Copyright (c) 2026 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# Device configuration file for Galaxy S9+ (Exynos) (star2lte)
TARGET_NAME="Galaxy S9+ (Exynos)"
TARGET_CODENAME="star2lte"
# The artifact is topology-neutral. Samsung EFS factory.prop selects single or
# dual SIM during early boot; accept every Exynos star2lte model at install.
TARGET_SIM_VARIANT="auto"
case "$TARGET_SIM_VARIANT" in
    auto)
        TARGET_ASSERT_MODEL=("SM-G965F" "SM-G965F/DS" "SM-G965FD" "SM-G965N")
        ;;
    *)
        printf 'Unsupported TARGET_SIM_VARIANT for star2lte: %s\n' "$TARGET_SIM_VARIANT" >&2
        return 1
        ;;
esac
TARGET_PLATFORM="exynos9810"
TARGET_FIRMWARE="SM-G965F/PHN/352966091234565"
TARGET_EXTRA_FIRMWARES=()
TARGET_PLATFORM_SDK_VERSION="${EXYNOS9810_TARGET_PLATFORM_SDK_VERSION:-31}"
TARGET_PRODUCT_SHIPPING_API_LEVEL=26

# SEC Product Feature
TARGET_DVFSAPP_CONFIG_SSRM_POLICY_FILENAME="ssrm_default"
# Exynos9810 has physical SIM support only; keep donor eSIM capability off.
TARGET_COMMON_SUPPORT_EMBEDDED_SIM=false
TARGET_COMMON_SUPPORT_DYN_RESOLUTION_CONTROL=true
TARGET_CAMERA_SUPPORT_SDK_SERVICE=false
