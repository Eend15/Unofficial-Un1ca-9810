SKIPUNZIP=1
[ "$TARGET_PLATFORM" = exynos9810 ] || return 0
case "$TARGET_CODENAME" in starlte|star2lte|crownlte) ;; *) return 0 ;; esac
[ "$(GET_PROP system ro.build.version.sdk)" = 36 ] || return 1
DECODE_APK system_ext "priv-app/SystemUI/SystemUI.apk" || return 1
python3 "$MODPATH/source/patch_stop.py" "$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk" || return 1
