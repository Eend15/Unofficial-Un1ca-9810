#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../../../.." && pwd)"
MODPATH="$ROOT/unica/mods/zzzzzz_s9_infinity"
TMP="$(mktemp -d)"
trap 'rm -rf -- "$TMP"' EXIT
LOG() { printf '%s\n' "$*"; }
LOGE() { printf '%s\n' "$*" >&2; }
# Stage the same explicit payload/metadata operations in isolated target trees.
ADD_TO_WORK_DIR() {
    local src="$1" part="$2" rel="$3" mode="$6" dst
    if [ "$part" = system ]; then dst="$WORK_DIR/system/$rel"; else dst="$WORK_DIR/$part/$rel"; fi
    mkdir -p "$(dirname "$dst")"
    if [ "$part" = system ]; then ln "$src/system/${rel#system/}" "$dst"; else ln "$src/$part/$rel" "$dst"; fi
    printf '%s %s %s %s %s\n' "$part/$rel" "$4" "$5" "$mode" "$7" >> "$WORK_DIR/metadata"
}
for TARGET_CODENAME in starlte star2lte crownlte; do
    TARGET_PLATFORM=exynos9810
    WORK_DIR="$TMP/$TARGET_CODENAME/work"
    APKTOOL_DIR="$TMP/$TARGET_CODENAME/apktool"
    mkdir -p "$WORK_DIR/system/system/etc" "$WORK_DIR/vendor/etc"
    printf '<SecFloatingFeatureSet>\n</SecFloatingFeatureSet>\n' > "$WORK_DIR/system/system/etc/floating_feature.xml"
    cp "$WORK_DIR/system/system/etc/floating_feature.xml" "$WORK_DIR/vendor/etc/floating_feature.xml"
    for app in SpriteWallpaper wallpaper-res AODService_v80; do
        mkdir -p "$APKTOOL_DIR/system/priv-app/$app/$app.apk"
    done
    source "$MODPATH/customize.sh"
    for app in SpriteWallpaper wallpaper-res AODService_v80; do
        test -f "$WORK_DIR/system/system/priv-app/$app/$app.apk"
        test ! -d "$APKTOOL_DIR/system/priv-app/$app/$app.apk"
        cmp "$WORK_DIR/system/system/priv-app/$app/$app.apk" "$MODPATH/payload/system/priv-app/$app/$app.apk"
    done
    grep -q 's9_aod_wallpaper_policy.sh 0 0 755' "$WORK_DIR/metadata"
    python3 - "$WORK_DIR" <<'PY'
from pathlib import Path
import sys,xml.etree.ElementTree as ET
for rel in ['system/system/etc/floating_feature.xml','vendor/etc/floating_feature.xml']:
 root=ET.parse(Path(sys.argv[1])/rel).getroot()
 assert root.findtext('SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN')=='1'
 assert 'INFINITY' in root.findtext('SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE')
PY
    printf '%s: payload, metadata, floating features and APK cache handling passed\n' "$TARGET_CODENAME"
done
bash -n "$MODPATH/customize.sh"
bash -n "$MODPATH/payload/system/bin/s9_aod_wallpaper_policy.sh"
python3 - "$MODPATH" <<'PY'
from pathlib import Path
import json,sys,zipfile
m=Path(sys.argv[1])
with zipfile.ZipFile(m/'payload/system/priv-app/wallpaper-res/wallpaper-res.apk') as z:
 data=json.loads(z.read('res/raw/resources_info.json'))
 videos=sorted([x for x in data['phone'] if x.get('filename','').startswith('video_')], key=lambda x:x['index'])
 assert [x['filename'] for x in videos]==[f'video_{i:03}.mp4' for i in range(1,11)]
 assert [x['filename'] for x in videos if x.get('isDefault')]==['video_001.mp4']
 assert all(x['type_params']['service_class_name'].endswith('InfinityWallpaper' if i<5 else 'InfinityVideoWallpaper') for i,x in enumerate(videos))
 print('catalog order, single default and engine assignments passed')
 assert b'InfinityVideoWallpaper' in z.read('res/raw/resources_info.json')
# Compile embedded Python hooks to detect syntax errors before a ROM build.
s=(m/'customize.sh').read_text().split("<<'PYFEATURE'\n",1)[1].split('\nPYFEATURE',1)[0]
compile(s,'floating-features','exec')
compile((m/'source/rebuild.py').read_text(),'rebuild.py','exec')
PY
