SKIPUNZIP=1

[ "$TARGET_PLATFORM" = exynos9810 ] || return 0
case "$TARGET_CODENAME" in starlte|star2lte|crownlte) ;; *) return 0 ;; esac

LOG "- Installing tested S9 Infinity wallpaper and AOD stack"
(cd "$MODPATH/payload" && sha256sum -c "$MODPATH/SHA256SUMS") || return 1

# Earlier modules decoded these APKs. Discard only their exact caches so the
# make_rom rebuild phase cannot overwrite the tested replacement APKs.
for APP in SpriteWallpaper wallpaper-res AODService_v80; do
    CACHE="$APKTOOL_DIR/system/priv-app/$APP/$APP.apk"
    [ -n "$APKTOOL_DIR" ] && [ "$APKTOOL_DIR" != / ] || return 1
    [ ! -d "$CACHE" ] || rm -rf -- "$CACHE"
    ADD_TO_WORK_DIR "$MODPATH/payload" system         "system/priv-app/$APP/$APP.apk" 0 0 644 "u:object_r:system_file:s0" || return 1
    # Donor precompiled code is invalid for the replacement DEX.
    APP_DIR="$WORK_DIR/system/system/priv-app/$APP"
    [ ! -d "$APP_DIR/oat" ] || rm -rf -- "$APP_DIR/oat"
done
ADD_TO_WORK_DIR "$MODPATH/payload" system system/framework/S9AodWallpaperPolicy.dex 0 0 644 "u:object_r:system_file:s0" || return 1
ADD_TO_WORK_DIR "$MODPATH/payload" system system/etc/init/s9_aod_wallpaper_policy.rc 0 0 644 "u:object_r:system_file:s0" || return 1
ADD_TO_WORK_DIR "$MODPATH/payload" system system/bin/s9_aod_wallpaper_policy.sh 0 0 755 "u:object_r:system_file:s0" || return 1
for LIB in sensors.sensorhub.so sensors.grip.so; do
    ADD_TO_WORK_DIR "$MODPATH/payload" vendor "lib64/$LIB" 0 0 644 "u:object_r:vendor_file:s0" || return 1
done

# Keep fullscreen capability available for the native stars; runtime policy
# enables it only for applied Infinity video_001..005 on the lockscreen.
python3 - "$WORK_DIR" <<'PYFEATURE'
from pathlib import Path
import re,sys
features={
 'SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN':'1',
 'SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE':'MOTION,INFINITY,VIDEO,INCONSISTENCY',
 'SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_DEFAULT_WALLPAPER_STYLE':'INFINITY',
}
for rel in ['system/system/etc/floating_feature.xml','vendor/etc/floating_feature.xml']:
 p=Path(sys.argv[1])/rel
 if not p.is_file(): raise SystemExit(f'Missing floating features: {p}')
 text=p.read_text()
 for key,value in features.items():
  tag=f'<{key}>{value}</{key}>'
  if re.search(fr'<{key}>.*?</{key}>',text): text=re.sub(fr'<{key}>.*?</{key}>',tag,text)
  else: text=text.replace('</SecFloatingFeatureSet>',f'    {tag}\n</SecFloatingFeatureSet>')
 p.write_text(text)
PYFEATURE
unset APP CACHE APP_DIR LIB
