#!/usr/bin/env bash
# Rebuild only services.jar and stage an explicitly opted-in, audited FaceunlockFix.
# No ROM filesystem rebuild, ADB, phone commands, or cache cleanup happens here.
set -Eeo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"
BASE="$ROOT/out/target/star2lte"
BACKUP="$ROOT/out/bootloop-reference/face-candidate-prebuild/identity-face-core-before.tar"
ADAPTER="$BASE/apktool/system/framework/services.jar/smali/com/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter.smali"
IDENTITY="$BASE/apktool/system/framework/services.jar/smali_classes2/com/android/server/pm/ScanPackageUtils.smali"

[[ -s "$BACKUP" && -s "$ADAPTER" && -s "$IDENTITY" ]] || {
  echo 'Cannot stage FaceunlockFix without original framework/vendor backups' >&2
  exit 1
}
grep -Fq 'FaceunlockFixProbe;->tryAcquire' "$ADAPTER" || {
  echo 'HIDL getter hook missing; refusing experiment' >&2
  exit 1
}
grep -Fq ':exynos_platform_identity_done' "$IDENTITY" || {
  echo 'Known-working Samsung platform identity fix missing; refusing experiment' >&2
  exit 1
}

source "$ROOT/buildenv.sh" --fs-type erofs star2lte >/dev/null
[[ "$TARGET_CODENAME" == star2lte && "$TARGET_OS_FILE_SYSTEM_TYPE" == erofs ]] || exit 1

bash "$ROOT/scripts/apktool.sh" b system system/framework/services.jar
EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=true python3 -B \
  "$ROOT/scripts/internal/FaceunlockFix/stage_verified_rom.py" --target star2lte --apply
python3 -B "$ROOT/scripts/internal/verify_exynos9810_selinux.py" "$WORK_DIR"
sha256sum "$WORK_DIR/system/system/framework/services.jar"
echo 'PASS: experimental FaceunlockFix staged in ROM work_dir; NOT flashed or boot-proven'
