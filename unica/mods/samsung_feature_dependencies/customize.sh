SKIPUNZIP=1
[ "$TARGET_PLATFORM" = exynos9810 ] || return 0
case "$TARGET_CODENAME" in starlte|star2lte|crownlte) ;; *) return 0 ;; esac
[ "$(GET_PROP system ro.build.version.sdk)" = 36 ] || return 1
python3 "$MODPATH/source/restore.py" --donor "$FW_DIR/SM-S901B_EUX/system/system" --work-dir "$WORK_DIR" || return 1
for REL in priv-app/SamsungCloudClient app/StickerCenter; do
    SET_METADATA "system" "system/$REL" 0 0 755 "u:object_r:system_file:s0" || return 1
done
for REL in \
    priv-app/SamsungCloudClient/SamsungCloudClient.apk \
    app/StickerCenter/StickerCenter.apk \
    etc/permissions/privapp-permissions-com.samsung.android.scloud.xml \
    etc/sysconfig/unica_exynos9810_scloud_components.xml; do
    # Use the standard build helper; no signing/recompilation of Samsung apps.
    SET_METADATA "system" "system/$REL" 0 0 644 "u:object_r:system_file:s0" || return 1
done
