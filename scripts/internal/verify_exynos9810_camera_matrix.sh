#!/bin/bash

set -euo pipefail

SRC_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)
CUSTOMIZE="$SRC_DIR/unica/patches/exynos9810_device_stack/exynos9810_finalization/customize.sh"

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

# Validate the current final photo repair, not historical inline patch markers.
# AutoBeauty must use Samsung Photo routing and must not emit a duplicate shutter.
python3 -B - "$SRC_DIR" <<'PYCAMERA'
from pathlib import Path
import importlib.util
import sys
root = Path(sys.argv[1])
patch = root / "unica/patches/exynos9810_device_stack/exynos9810_finalization/native_camera/patches/restore_photo_processing.py"
spec = importlib.util.spec_from_file_location("photo_repair", patch)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
for target in ("starlte", "star2lte", "crownlte"):
    camera = root / f"out/target/{target}/apktool/system/priv-app/SamsungCamera/SamsungCamera.apk"
    if not camera.is_dir():
        continue
    texts = []
    for name in ("MakerBase", "PhotoMakerBase", "AutoBeautyPhotoMaker"):
        paths = list(camera.glob(f"smali*/com/samsung/android/camera/core2/maker/{name}.smali"))
        if len(paths) != 1:
            raise SystemExit(f"{target}: missing/ambiguous {name}")
        texts.append(paths[0].read_text())
    if module.restore(*texts) != tuple(texts):
        raise SystemExit(f"{target}: final Samsung Photo/QR repair is not applied")
    print(f"OK {target}: Samsung Photo routing, QR bypass and single shutter callback")
PYCAMERA
