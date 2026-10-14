#!/usr/bin/env bash

SKIPUNZIP=1

if [[ "$TARGET_PLATFORM" != "exynos9810" ]]; then
    return 0
fi

WEATHER_APK="$MODPATH/system/app/SamsungWeather/SamsungWeather.apk"
[ -f "$WEATHER_APK" ] || {
    LOGE "Samsung Weather 1.7.30.50 APK is missing"
    return 1
}

EXPECTED_WEATHER_SHA256="d914262a169d4904a8ea432a4742d2f2e84f26a589e8918ea5e13a516c3cc30d"
ACTUAL_WEATHER_SHA256="$(sha256sum "$WEATHER_APK" | awk '{print $1}')"
[ "$ACTUAL_WEATHER_SHA256" = "$EXPECTED_WEATHER_SHA256" ] || {
    LOGE "Samsung Weather APK hash mismatch"
    return 1
}

LOG_STEP_IN "- Installing Samsung Weather 1.7.30.50"

# Remove every donor/target layout before adding one package path. This also
# drops stale odex/vdex files, which must never be paired with a new APK.
for REL in \
    system/app/SamsungWeather \
    system/app/Weather_SEP11.0 \
    system/priv-app/SamsungWeather \
    system/priv-app/Weather; do
    if [ -e "$WORK_DIR/system/$REL" ]; then
        DELETE_FROM_WORK_DIR "system" "$REL"
    fi
done

ADD_TO_WORK_DIR "$MODPATH" "system" \
    "system/app/SamsungWeather/SamsungWeather.apk" \
    0 0 644 "u:object_r:system_file:s0"

# Keep the source's Samsung default-permission/privapp declarations for the
# package. The APK remains in the same system-app class as stock Weather so
# Galaxy Store updates retain the normal UPDATED_SYSTEM_APP path.
LOG_STEP_OUT
