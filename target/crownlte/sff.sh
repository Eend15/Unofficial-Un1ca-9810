# Copyright (c) 2026 Eend15
# SPDX-License-Identifier: GPL-3.0-or-later

# SEC Floating Feature configuration for Galaxy Note9 (Exynos)

# Note9 garage S Pen. These are the values used by the working One UI 8
# Exynos8895 Note8 port and are understood by the One UI 8 AirCommand parser.
SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC=type=insert, bundled=true
SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION=40

# BLE S Pen remote: the One UI 8 donor ships "crown,button" which makes the
# BLE controller factory return null (AirCommandUiService NPE). A user-proven
# fix replaces it with the builtin spec, which keeps the controller alive and
# enables the button/remote features. final_cleanup enforces the same values
# and keeps the smali null-controller guard as a backstop.
SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN=TRUE
SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC=builtin,button

# Keep the Note9-specific hardware identity visible to S Pen settings.
SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID=SM-N960F
SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID=A3LEJPN960
