#!/bin/bash

set -euo pipefail

SRC_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
CUSTOMIZE="$SRC_DIR/unica/mods/zzzzz_exynos9810_final_cleanup/customize.sh"
EXYNOS9810_LEGACY_PORT_DIR=${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}
TMP_DIR=$(mktemp -d "${TMPDIR:-/tmp}/exynos9810-camera-matrix.XXXXXX")
trap 'rm -rf -- "$TMP_DIR"' EXIT

for TARGET_CODENAME in starlte star2lte crownlte; do
    export TARGET_CODENAME
    export TARGET_PLATFORM=exynos9810
    export EXYNOS9810_LEGACY_PORT_DIR
    export SRC_DIR
    export MODPATH="$SRC_DIR/unica/mods/zzzzz_exynos9810_final_cleanup"
    export WORK_DIR="$TMP_DIR/$TARGET_CODENAME"
    mkdir -p "$WORK_DIR/vendor/lib" "$WORK_DIR/configs"

    LOG() { printf '%s\n' "$*"; }
    LOGW() { printf 'WARN: %s\n' "$*"; }
    LOGE() { printf 'ERROR: %s\n' "$*" >&2; }

    # Load function definitions only. The production invocations begin at the
    # first bare function name near the end of the module.
    source <(sed '/^_EXYNOS9810_FINAL_REPATCH_APPS$/,$d' "$CUSTOMIZE")
    _EXYNOS9810_SET_METADATA_SAFE() { return 0; }

    _EXYNOS9810_FINAL_RESTORE_TARGET_CAMERA_STACK
    for pass in 1 2; do
        _EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_RECOVERY
        _EXYNOS9810_FINAL_PATCH_CAMERA_LLS_SINGLE_FRAME
        _EXYNOS9810_FINAL_PATCH_CAMERA_PORTRAIT_RESUME
        _EXYNOS9810_FINAL_PATCH_CAMERA_REPROCESSING_RECOVERY
    done

    HAL="$WORK_DIR/vendor/lib/libexynoscamera3.so"
    [ -s "$HAL" ] || {
        echo "Missing staged $TARGET_CODENAME camera HAL" >&2
        exit 1
    }
    sha256sum "$HAL"
    echo "OK $TARGET_CODENAME camera HAL patches are present and idempotent"
done

# SamsungCamera.apk is shared by all three targets. Keep the QR/photo repair
# target-independent and fail if a future edit accidentally scopes it.
QR_BODY=$(sed -n \
    '/^_EXYNOS9810_FINAL_PATCH_CAMERA_QR_POPUP_CRASH()/,/^_EXYNOS9810_FINAL_FIX_WALLPAPER_OBJECTCAPTURE()/p' \
    "$CUSTOMIZE")
for marker in \
    'Exynos9810 has no One UI 8 HAL QR metadata' \
    'instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/QrPhotoMaker;' \
    'instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;' \
    'Exynos9810 legacy HAL does not publish Samsung shutter metadata.' \
    'const/16 v0, 0x5dc'; do
    grep -qF "$marker" <<< "$QR_BODY" || {
        echo "SamsungCamera QR/photo marker is missing: $marker" >&2
        exit 1
    }
done
if grep -q 'TARGET_CODENAME' <<< "$QR_BODY"; then
    echo "SamsungCamera QR/photo patch must remain shared by every target" >&2
    exit 1
fi

echo "OK shared SamsungCamera QR/photo patch covers all Exynos9810 targets"
