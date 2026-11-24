#!/system/bin/sh
# Samsung Health measures heart rate and SpO2 through the phone's HRM sensor
# (via HealthService). On Android 16 it needs the health.* heart rate/SpO2
# permissions, but its own request screen closes without granting them on the
# Exynos9810 port, so the measurement screen closed right after tapping "+".
# Grant them once per boot while Samsung Health is installed.

PKG=com.sec.android.app.shealth

pm path "$PKG" >/dev/null 2>&1 || exit 0

for PERM in \
    android.permission.BODY_SENSORS \
    android.permission.BODY_SENSORS_BACKGROUND \
    android.permission.ACTIVITY_RECOGNITION \
    android.permission.health.READ_HEART_RATE \
    android.permission.health.WRITE_HEART_RATE \
    android.permission.health.READ_OXYGEN_SATURATION \
    android.permission.health.WRITE_OXYGEN_SATURATION; do
    pm grant "$PKG" "$PERM" >/dev/null 2>&1
done

exit 0
