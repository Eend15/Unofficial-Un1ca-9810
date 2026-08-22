#!/bin/bash

set -euo pipefail

SRC_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)
CUSTOMIZE="$SRC_DIR/unica/mods/zzzzz_exynos9810_final_cleanup/customize.sh"

for TARGET_CODENAME in starlte star2lte crownlte; do
    TARGET_WORK_DIR="$SRC_DIR/out/target/$TARGET_CODENAME/work_dir"

    grep -qF '<local name="SUPPORT_QR_CODE_DETECTION" value="true" />' \
        "$SRC_DIR/target/$TARGET_CODENAME/camera/camera-feature.xml" || {
        echo "QR detection is disabled for $TARGET_CODENAME" >&2
        exit 1
    }

    if [ ! -d "$TARGET_WORK_DIR/vendor" ]; then
        echo "WARN $TARGET_CODENAME has no built output; source-level camera checks only"
        continue
    fi

    for rel in \
        vendor/lib/hw/camera.exynos9810.so \
        vendor/lib/libexynoscamera3.so \
        vendor/lib64/hw/camera.exynos9810.so \
        vendor/lib64/libexynoscamera3.so; do
        [ -s "$TARGET_WORK_DIR/$rel" ] || {
            echo "Missing built $TARGET_CODENAME camera component: $rel" >&2
            exit 1
        }
    done

    # The current One UI 8 donor uses the Samsung 4.0 provider stack, while
    # older Exynos9810 ports used 3.0. Validate the stack that is actually
    # present in this target output instead of hard-coding one generation.
    CAMERA_PROVIDER_VERSION=""
    for version in 4.0 3.0; do
        if [ -s "$TARGET_WORK_DIR/vendor/bin/hw/vendor.samsung.hardware.camera.provider@${version}-service" ] && \
                [ -s "$TARGET_WORK_DIR/vendor/etc/init/vendor.samsung.hardware.camera.provider@${version}-service.rc" ]; then
            CAMERA_PROVIDER_VERSION="$version"
            break
        fi
    done
    [ -n "$CAMERA_PROVIDER_VERSION" ] || {
        echo "Missing built $TARGET_CODENAME Samsung camera provider service (3.0 or 4.0)" >&2
        exit 1
    }

    if [ "$CAMERA_PROVIDER_VERSION" = "4.0" ]; then
        CAMERA_PROVIDER_FILES=(
            "vendor/bin/hw/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-service"
            "vendor/etc/init/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-service.rc"
            "vendor/lib/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}.so"
            "vendor/lib64/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}.so"
            "vendor/lib/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-legacy.so"
            "vendor/lib64/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-legacy.so"
            "vendor/lib/hw/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-impl.so"
            "vendor/lib64/hw/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-impl.so"
            vendor/lib/unihal_main@2.1.so
            vendor/lib64/unihal_main@2.1.so
        )
    else
        CAMERA_PROVIDER_FILES=(
            "vendor/bin/hw/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-service"
            "vendor/etc/init/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-service.rc"
            "vendor/lib/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}.so"
            "vendor/lib64/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}.so"
            "vendor/lib/hw/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-impl.so"
            "vendor/lib64/vendor.samsung.hardware.camera.provider@${CAMERA_PROVIDER_VERSION}-impl.so"
            vendor/lib/unihal_main@2.1.so
        )
    fi

    for rel in "${CAMERA_PROVIDER_FILES[@]}"; do
        [ -s "$TARGET_WORK_DIR/$rel" ] || {
            echo "Missing built shared camera provider component: $rel" >&2
            exit 1
        }
    done

    sha256sum "$TARGET_WORK_DIR/vendor/lib/libexynoscamera3.so"
    echo "OK $TARGET_CODENAME camera runtime matrix is present"
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
    'if-eqz v0, :exynos9810_shutter_done' \
    'CallbackHelper$PictureCallbackHelper;->g(Ljava/lang/String;' \
    'QrController;->QR_CODE_DETECTION_INTERVAL:J' \
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
