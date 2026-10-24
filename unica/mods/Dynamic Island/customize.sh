SKIPUNZIP=1

[ "$TARGET_PLATFORM" = exynos9810 ] || return 0
case "$TARGET_CODENAME" in starlte|star2lte|crownlte) ;; *) return 0 ;; esac
[ "$(GET_PROP system ro.build.version.sdk)" = 36 ] || {
    LOGE "Dynamic Island requires the audited Android 16 / One UI 8 source"
    return 1
}

LOG "- Integrating built-in Dynamic Island 0.1.10 for $TARGET_CODENAME"
(cd "$MODPATH" && sha256sum -c SHA256SUMS) || return 1
python3 "$MODPATH/source/verify_source.py" || return 1
DECODE_APK system "system/priv-app/SecSettings/SecSettings.apk" || return 1
DECODE_APK system_ext "priv-app/SystemUI/SystemUI.apk" || return 1
python3 "$MODPATH/source/apply.py" --apktool-dir "$APKTOOL_DIR" \
    --target "$TARGET_CODENAME" || return 1

# Sign the source-matched companion with the same key used by the ROM APK stage.
DI_CERT=aosp
[ "${ROM_IS_OFFICIAL:-false}" != true ] || DI_CERT=unica
DI_OUT="$TMP_DIR/dynamic-island/$TARGET_CODENAME"
mkdir -p "$DI_OUT/system/app/UnicaDynamicIsland"
"$SRC_DIR/out/tools/bin/signapk" "$SRC_DIR/security/${DI_CERT}_platform.x509.pem" \
    "$SRC_DIR/security/${DI_CERT}_platform.pk8" "$MODPATH/payload/UnicaDynamicIsland.apk" \
    "$DI_OUT/system/app/UnicaDynamicIsland/UnicaDynamicIsland.apk" || return 1
ADD_TO_WORK_DIR "$DI_OUT" system "system/app/UnicaDynamicIsland/UnicaDynamicIsland.apk" \
    0 0 644 "u:object_r:system_file:s0" || return 1
unset DI_CERT DI_OUT
