mkdir -p "$TMP_DIR/exynos9810"
cp -a "$SRC_DIR/platform/exynos9810/installer/repartition/." "$TMP_DIR/exynos9810/"

# These payloads are copied from the tested 2026-08-12 stable build and kept
# in the repository so a clean checkout never depends on a local donor folder.
EXYNOS9810_BUNDLED_BATTERY_TWEAKS="$SRC_DIR/platform/exynos9810/installer/battery_tweaks.sh"
[ -f "$EXYNOS9810_BUNDLED_BATTERY_TWEAKS" ] || {
    LOGE "Shared Exynos9810 battery tweak script is missing"
    exit 1
}
mkdir -p "$TMP_DIR/addon.d"
cp -a "$EXYNOS9810_BUNDLED_BATTERY_TWEAKS" "$TMP_DIR/addon.d/battery_tweaks.sh"
chmod 0755 "$TMP_DIR/addon.d/battery_tweaks.sh"

EXYNOS9810_CAMERA_MATRIX_CHECK="$SRC_DIR/tools/verify_exynos9810_camera_matrix.sh"
[ -x "$EXYNOS9810_CAMERA_MATRIX_CHECK" ] || {
    LOGE "Exynos9810 camera matrix verifier is missing"
    exit 1
}
LOG "- Verifying camera fixes for starlte, star2lte and crownlte"
if [ -x "$EXYNOS9810_CAMERA_MATRIX_CHECK" ]; then
    "$EXYNOS9810_CAMERA_MATRIX_CHECK" || {
        LOGE "Exynos9810 camera matrix verification failed"
        exit 1
    }
else
    LOGW "Exynos9810 camera matrix verifier is not bundled; skipping optional check"
fi

# The old /init-rewriting logger was useful during the first boot
# investigation, but it is intentionally not bundled into normal images:
# changing the ramdisk from the installer can itself alter boot behaviour.

EXYNOS9810_RAMDISK_IMG="$SRC_DIR/platform/exynos9810/installer/ramdisk.img"
EXYNOS9810_EXPECTED_RAMDISK_SHA256="1b059d65c342ceb41fcd32bb06545bd75265ff674337d3a0d00efcf2a2932b4d"
[ -f "$EXYNOS9810_RAMDISK_IMG" ] || {
    LOGE "Bundled Exynos9810 boot ramdisk is missing: $EXYNOS9810_RAMDISK_IMG"
    exit 1
}
EXYNOS9810_SOURCE_RAMDISK_SHA256="$(sha256sum "$EXYNOS9810_RAMDISK_IMG" | awk '{print $1}')"
[ "$EXYNOS9810_SOURCE_RAMDISK_SHA256" = "$EXYNOS9810_EXPECTED_RAMDISK_SHA256" ] || {
    LOGE "Bundled Exynos9810 boot ramdisk failed SHA-256 verification"
    LOGE "Expected: $EXYNOS9810_EXPECTED_RAMDISK_SHA256"
    LOGE "Actual:   $EXYNOS9810_SOURCE_RAMDISK_SHA256"
    exit 1
}
LOG "- Bundling repository-provided Exynos9810 boot ramdisk"
cp -a "$EXYNOS9810_RAMDISK_IMG" "$TMP_DIR/exynos9810/ramdisk.img"

find_exynos9810_sgdisk()
{
    for bin in \
        "$SRC_DIR/platform/exynos9810/installer/repartition/sgdisk" \
        "${REPARTITIONER_SGDISK:-}" \
        "${REPARTITIONER_DIR:-}/sgdisk"; do
        [ -n "$bin" ] || continue
        [ -f "$bin" ] || continue
        echo "$bin"
        return 0
    done

    return 1
}

REPARTITIONER_DIR="${REPARTITIONER_DIR:-$SRC_DIR/platform/exynos9810/installer/repartition}"
REPARTITIONER_SGDISK_BIN="$(find_exynos9810_sgdisk)" || {
    LOGE "Bundled Exynos9810 sgdisk repartitioner binary not found"
    exit 1
}
if [ "$REPARTITIONER_SGDISK_BIN" = "$SRC_DIR/platform/exynos9810/installer/repartition/sgdisk" ]; then
    EXYNOS9810_EXPECTED_SGDISK_SHA256="876291fe8b0b4dcd0c46f16e06944a17560622d75442d1bd96dcca8773a05a06"
    EXYNOS9810_SOURCE_SGDISK_SHA256="$(sha256sum "$REPARTITIONER_SGDISK_BIN" | awk '{print $1}')"
    [ "$EXYNOS9810_SOURCE_SGDISK_SHA256" = "$EXYNOS9810_EXPECTED_SGDISK_SHA256" ] || {
        LOGE "Bundled Exynos9810 sgdisk failed SHA-256 verification"
        exit 1
    }
fi
LOG "- Bundling Exynos9810 sgdisk repartitioner binary"
cp -a "$REPARTITIONER_SGDISK_BIN" "$TMP_DIR/exynos9810/sgdisk"
chmod 0755 "$TMP_DIR/exynos9810/sgdisk"

# Select the DS-ACK payload that matches the filesystem being built. The
# ext4 package carries the non-EROFS DTBs; the EROFS package remains the
# repository's EROFS-specific payload.
DS_ACK_KERNEL_VARIANT="${DS_ACK_KERNEL_VARIANT:-Enforcing-KernelSU-OneUI7}"
DS_ACK_EROFS_PREBUILT_ZIP="$SRC_DIR/platform/exynos9810/prebuilt/DS-ACK-V1.12-08.05.2026-Enforcing-KernelSU-OneUI7-erofs-dtb.zip"
DS_ACK_EROFS_PREBUILT_SHA256="243e08f706534cb3299cef24bdad874f27d0ffb0d2e5e9baee5d4be4fcffedba"
DS_ACK_EXT4_PREBUILT_ZIP="$SRC_DIR/platform/exynos9810/prebuilt/DS-ACK-V1.12-08.05.2026-Enforcing-KernelSU-OneUI7-ext4.zip"
DS_ACK_EXT4_PREBUILT_SHA256="ddb2c96a54a77e21c189db901da61b398f3ac3ab44a40526c02b4cf2bd890bee"
case "${TARGET_OS_FILE_SYSTEM_TYPE:-}" in
    ext4)
        DS_ACK_PREBUILT_ZIP="$DS_ACK_EXT4_PREBUILT_ZIP"
        DS_ACK_PREBUILT_SHA256="$DS_ACK_EXT4_PREBUILT_SHA256"
        DS_ACK_EXPECT_EROFS=false
        ;;
    erofs)
        DS_ACK_PREBUILT_ZIP="$DS_ACK_EROFS_PREBUILT_ZIP"
        DS_ACK_PREBUILT_SHA256="$DS_ACK_EROFS_PREBUILT_SHA256"
        DS_ACK_EXPECT_EROFS=true
        ;;
    *)
        LOGE "Unsupported Exynos9810 filesystem for kernel selection: ${TARGET_OS_FILE_SYSTEM_TYPE:-unset}"
        exit 1
        ;;
esac
DS_ACK_LOCAL_ZIP="${DS_ACK_LOCAL_ZIP:-$DS_ACK_PREBUILT_ZIP}"
CROWNTRAIL_KERNEL_ZIP="${CROWNTRAIL_KERNEL_ZIP:-}"
# DS-ACK v1.12 kernel payload is selected above; brightness scaling remains
# selected by the legacy Samsung profile in floating_feature.xml.
if [ -z "${EXYNOS9810_KERNEL_ZIP:-}" ] && [ -f "$DS_ACK_LOCAL_ZIP" ]; then
    EXYNOS9810_KERNEL_NAME="${EXYNOS9810_KERNEL_NAME:-DS-ACK v1.12 KernelSU-Next OneUI7 (legacy boot flow)}"
    EXYNOS9810_KERNEL_ZIP="$DS_ACK_LOCAL_ZIP"
elif [ -z "${EXYNOS9810_KERNEL_ZIP:-}" ]; then
    LOGE "Exynos9810 enforcing DS-ACK kernel package not found: $DS_ACK_LOCAL_ZIP"
    LOGE "Provide the enforcing ${TARGET_OS_FILE_SYSTEM_TYPE} kernel package at that path, or set EXYNOS9810_KERNEL_ZIP explicitly."
    exit 1
else
    LOG "- Using explicitly requested Exynos9810 kernel zip: $EXYNOS9810_KERNEL_ZIP"
fi

if [ "$EXYNOS9810_KERNEL_ZIP" = "$DS_ACK_PREBUILT_ZIP" ]; then
    DS_ACK_ACTUAL_SHA256="$(sha256sum "$EXYNOS9810_KERNEL_ZIP" | awk '{print $1}')"
    [ "$DS_ACK_ACTUAL_SHA256" = "$DS_ACK_PREBUILT_SHA256" ] || {
        LOGE "Exynos9810 enforcing KernelSU prebuilt failed SHA-256 verification"
        LOGE "Expected: $DS_ACK_PREBUILT_SHA256"
        LOGE "Actual:   $DS_ACK_ACTUAL_SHA256"
        exit 1
    }
fi

if [ -f "$EXYNOS9810_KERNEL_ZIP" ]; then
    unzip -tq "$EXYNOS9810_KERNEL_ZIP" >/dev/null || {
        LOGE "Exynos9810 kernel package failed ZIP integrity verification"
        exit 1
    }
    EXYNOS9810_KERNEL_LIST="$(unzip -Z1 "$EXYNOS9810_KERNEL_ZIP")"
    for EXYNOS9810_DEVICE in G960F G960N G965F G965N N960F N960N; do
        for EXYNOS9810_PAYLOAD in kernel dtb; do
            grep -Fxq "floyd/${EXYNOS9810_DEVICE}-${EXYNOS9810_PAYLOAD}" \
                <<< "$EXYNOS9810_KERNEL_LIST" || {
                LOGE "Exynos9810 kernel package is missing ${EXYNOS9810_DEVICE}-${EXYNOS9810_PAYLOAD}"
                exit 1
            }
        done
    done

    case "$(basename "$EXYNOS9810_KERNEL_ZIP")" in
        *[Pp]ermissive*) EXYNOS9810_KERNEL_SELINUX_MODE="permissive" ;;
        *[Ee]nforcing*) EXYNOS9810_KERNEL_SELINUX_MODE="enforcing" ;;
        *)
            case "$DS_ACK_KERNEL_VARIANT" in
                *[Ee]nforcing*) EXYNOS9810_KERNEL_SELINUX_MODE="enforcing" ;;
                *) EXYNOS9810_KERNEL_SELINUX_MODE="permissive" ;;
            esac
            ;;
    esac

    # Match the tested legacy boot flow: the DS-ACK kernel is installed over this
    # untouched Samsung boot image. The enforcing kernel binary selects the
    # strict policy; the boot header is left unchanged.
    EXYNOS9810_TESTED_RAMDISK_SHA256="1b059d65c342ceb41fcd32bb06545bd75265ff674337d3a0d00efcf2a2932b4d"
    EXYNOS9810_RAMDISK_SHA256="$(sha256sum "$TMP_DIR/exynos9810/ramdisk.img" | awk '{print $1}')"
    [ "$EXYNOS9810_RAMDISK_SHA256" = "$EXYNOS9810_TESTED_RAMDISK_SHA256" ] || {
        LOGE "Exynos9810 boot image differs from the tested legacy ramdisk"
        exit 1
    }
    strings "$TMP_DIR/exynos9810/ramdisk.img" | \
        grep -q 'androidboot.selinux=permissive' || {
        LOGE "Exynos9810 legacy boot-header marker is missing"
        exit 1
    }

    # Verify that the kernel DTB and image filesystem agree. An ext4 image
    # with an EROFS DTB (or the reverse) fails before Android userspace starts.
    EXYNOS9810_KERNEL_DTB_EROFS="$(unzip -p "$EXYNOS9810_KERNEL_ZIP" "floyd/G960F-dtb" 2>/dev/null | dd bs=1 skip=2048 2>/dev/null | strings | grep -c "erofs" || true)"
    if $DS_ACK_EXPECT_EROFS; then
        [ "${EXYNOS9810_KERNEL_DTB_EROFS:-0}" -gt 0 ] || {
            LOGE "Exynos9810 EROFS build requires an EROFS DS-ACK device tree"
            exit 1
        }
    else
        [ "${EXYNOS9810_KERNEL_DTB_EROFS:-0}" -eq 0 ] || {
            LOGE "Exynos9810 ext4 build received an EROFS DS-ACK device tree"
            exit 1
        }
    fi

    EXYNOS9810_KERNEL_NAME="$EXYNOS9810_KERNEL_NAME [$EXYNOS9810_KERNEL_SELINUX_MODE]"
    LOG "- Bundling $EXYNOS9810_KERNEL_NAME kernel"
    cp -a "$EXYNOS9810_KERNEL_ZIP" "$TMP_DIR/exynos9810/kernel.zip"

    printf '%s\n' "$EXYNOS9810_KERNEL_NAME" > "$TMP_DIR/exynos9810/kernel_name"
    printf 'selinux_mode=%s\n' "$EXYNOS9810_KERNEL_SELINUX_MODE" > "$TMP_DIR/exynos9810/kernel_mode.prop"
    printf 'fs_type=%s\n' "$TARGET_OS_FILE_SYSTEM_TYPE" > "$TMP_DIR/exynos9810/fs_type.prop"
else
    LOGE "Exynos9810 kernel not found: $EXYNOS9810_KERNEL_ZIP"
    exit 1
fi

UPDATER_SCRIPT="$TMP_DIR/META-INF/com/google/android/updater-script"
if [ -f "$TMP_DIR/exynos9810/vendor_bootfix.sh" ] && [ -f "$UPDATER_SCRIPT" ]; then
    LOG "- Injecting Exynos9810 vendor boot fixes after vendor image patch"
    python3 - "$UPDATER_SCRIPT" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
script = path.read_text()
marker = 'abort("E2001: Failed to update vendor image.");'
block = '''ui_print("Applying Exynos9810 vendor boot fixes...");
package_extract_file("exynos9810/vendor_bootfix.sh", "/tmp/exynos9810/vendor_bootfix.sh");
run_program("/system/bin/chmod", "0755", "/tmp/exynos9810/vendor_bootfix.sh");
run_program("/sbin/sh", "/tmp/exynos9810/vendor_bootfix.sh") == 0 ||
    abort("E9810: Failed to apply vendor boot fixes.");'''

if "Applying Exynos9810 vendor boot fixes" not in script:
    index = script.find(marker)
    if index == -1:
        raise SystemExit("vendor image patch marker not found")
    index += len(marker)
    script = script[:index] + "\n" + block + script[index:]
    path.write_text(script)
PY
fi

# Keep the kernel installer extraction compatible with the complete floyd
# package, then install the same persistent boot logger used by the tested
# 2026-08-12 build. It runs as a tiny /init wrapper and mirrors early boot
# diagnostics into sec_debug/CP_DEBUG before Android logcat is available.
if [ -f "$UPDATER_SCRIPT" ]; then
    python3 - "$UPDATER_SCRIPT" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
script = path.read_text()
old_extract = '''run_program("/system/bin/unzip", "/tmp/exynos9810/kernel.zip", "META-INF/com/google/android/*", "-d", "/tmp/exynos9810/kernel")'''
new_extract = '''run_program("/system/bin/unzip", "/tmp/exynos9810/kernel.zip", "-d", "/tmp/exynos9810/kernel")'''
if old_extract in script:
    script = script.replace(old_extract, new_extract, 1)

kernel_marker = '''run_program("/sbin/sh", "/tmp/exynos9810/kernel/META-INF/com/google/android/update-binary", getprop("ro.boot.bootloader"), "1", "/tmp/exynos9810/kernel.zip") == 0 ||
    abort("E9810: Failed to install Exynos9810 kernel.");'''
script = "\n".join(
    line for line in script.splitlines()
    if "bootlogger-init" not in line
    and "patch_bootlogger" not in line
    and "Installing Exynos9810 persistent boot logger" not in line
    and "Failed to install persistent boot logger" not in line
) + "\n"
path.write_text(script)
PY
fi
