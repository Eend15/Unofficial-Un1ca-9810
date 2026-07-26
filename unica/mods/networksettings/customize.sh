# Keep Mobile networks visible on Exynos9810 ports.
# The donor controller hides the row when its S22 SIM/TelephonyUI probe fails,
# even though the actual mobile-network page and RIL are present.

CONTROLLER="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/smali_classes4/com/samsung/android/settings/connection/SecMobileNetworkPreferenceController.smali"

if [ ! -f "$CONTROLLER" ]; then
    LOGE "SecMobileNetworkPreferenceController.smali is missing"
    exit 1
fi

SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk"     "smali_classes4/com/samsung/android/settings/connection/SecMobileNetworkPreferenceController.smali" "return"     "getAvailabilityStatus()I"     "0x0"
