# Exynos9810: expose Samsung battery health information in Settings.
# This only changes availability checks; the stock health service remains intact.

if [ ! -f "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/smali_classes4/com/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController.smali" ]; then
    LOGE "Battery health controller is missing from SecSettings.apk"
    exit 1
fi

SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "smali_classes4/com/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController.smali" "return" \
    "getAvailabilityStatus()I" \
    "0x0"

SMALI_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
    "smali_classes4/com/samsung/android/settings/deviceinfo/batteryinfo/SecBatteryFirstUseDatePreferenceController.smali" "return" \
    "getAvailabilityStatus()I" \
    "0x0"
