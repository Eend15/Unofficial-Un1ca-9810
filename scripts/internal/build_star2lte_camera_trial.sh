#!/usr/bin/env bash
# Rebuild only the staged Samsung Camera APK after its source-only fix.
# Does not recreate work_dir or touch a connected device.
set -Eeo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"

BACKUP="$ROOT/out/bootloop-reference/camera-normal-fix-prebuild/SamsungCamera-before.apk"
CAMERA="$ROOT/out/target/star2lte/work_dir/system/system/priv-app/SamsungCamera/SamsungCamera.apk"
DECODED="$ROOT/out/target/star2lte/apktool/system/priv-app/SamsungCamera/SamsungCamera.apk"
PHOTO="$DECODED/smali_classes3/com/samsung/android/camera/core2/maker/PhotoMakerBase.smali"

[[ -s "$BACKUP" && -s "$CAMERA" && -s "$PHOTO" ]] || {
  echo 'Camera trial requires the original APK backup and existing staged files' >&2
  exit 1
}
python3 -B "$ROOT/unica/patches/exynos9810_device_stack/exynos9810_finalization/native_camera/patches/test_restore_photo_processing.py"

# The duplicate callback must be gone while availability notification survives.
python3 -B - "$PHOTO" <<'PY'
import re, sys
from pathlib import Path
s = Path(sys.argv[1]).read_text()
m = re.search(r'(?ms)^\.method public sendCaptureAvailable\(ILjava/lang/Long;\)V\n.*?^\.end method', s)
if not m or 'PictureCallbackHelper;->g' in m.group(0) or 'PictureCallbackHelper;->a' not in m.group(0):
    raise SystemExit('Camera callback invariant failed; refusing APK compilation')
print('PASS: capture availability preserved; duplicate shutter absent')
PY

# Only initialize the star2lte EROFS tooling, then rebuild/sign one APK.
source "$ROOT/buildenv.sh" --fs-type erofs star2lte
[[ "$TARGET_CODENAME" == star2lte && "$TARGET_OS_FILE_SYSTEM_TYPE" == erofs ]] || {
  echo 'Wrong target or filesystem, refusing rebuild' >&2
  exit 1
}
bash "$ROOT/scripts/apktool.sh" b system system/priv-app/SamsungCamera/SamsungCamera.apk
[[ -s "$CAMERA" ]] || exit 1
sha256sum "$BACKUP" "$CAMERA"
echo 'PASS: signed staged SamsungCamera.apk rebuilt; device unchanged'
