mkdir -p "$TMP_DIR/exynos9810"
cp -a "$SRC_DIR/platform/exynos9810/installer/repartition/." "$TMP_DIR/exynos9810/"

EXYNOS9810_CAMERA_MATRIX_CHECK="$SRC_DIR/tools/verify_exynos9810_camera_matrix.sh"
[ -x "$EXYNOS9810_CAMERA_MATRIX_CHECK" ] || {
    LOGE "Exynos9810 camera matrix verifier is missing"
    exit 1
}
LOG "- Verifying camera fixes for starlte, star2lte and crownlte"
EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}" \
    "$EXYNOS9810_CAMERA_MATRIX_CHECK" || {
    LOGE "Exynos9810 camera matrix verification failed"
    exit 1
}

# Build a small raw-syscall logger so first-stage and early-userspace failures
# survive the automatic reboot back to recovery.  It writes to /cache and
# keeps a bounded in-memory buffer until CACHE becomes available.
EXYNOS9810_BOOTLOGGER_CLANG="${EXYNOS9810_BOOTLOGGER_CLANG:-$(command -v clang 2>/dev/null || true)}"
[ -n "$EXYNOS9810_BOOTLOGGER_CLANG" ] || {
    LOGE "Exynos9810 boot logger requires clang"
    exit 1
}
"$EXYNOS9810_BOOTLOGGER_CLANG" \
    --target=aarch64-linux-gnu \
    -fuse-ld=lld \
    -nostdlib \
    -static \
    -fno-stack-protector \
    -fno-builtin \
    -ffreestanding \
    -O2 \
    -Wl,-e,_start \
    -Wl,--gc-sections \
    -o "$TMP_DIR/exynos9810/bootlogger-init" \
    "$SRC_DIR/platform/exynos9810/installer/bootlogger_init.c" || {
    LOGE "Failed to build Exynos9810 init logger wrapper"
    exit 1
}
cp -a "$SRC_DIR/platform/exynos9810/installer/patch_bootlogger.sh" \
    "$TMP_DIR/exynos9810/patch_bootlogger.sh"
chmod 0755 "$TMP_DIR/exynos9810/bootlogger-init" \
    "$TMP_DIR/exynos9810/patch_bootlogger.sh"

EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}"
EXYNOS9810_RAMDISK_IMG="$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/kernel/ramdisk.img"
if [ -f "$EXYNOS9810_RAMDISK_IMG" ]; then
    LOG "- Bundling Exynos9810 boot ramdisk"
    cp -a "$EXYNOS9810_RAMDISK_IMG" "$TMP_DIR/exynos9810/ramdisk.img"
else
    LOGE "Exynos9810 boot ramdisk not found: $EXYNOS9810_RAMDISK_IMG"
    exit 1
fi

find_exynos9810_sgdisk()
{
    for bin in \
        "${REPARTITIONER_SGDISK:-}" \
        "${REPARTITIONER_DIR:-}/sgdisk" \
        "$EXYNOS9810_LEGACY_PORT_DIR/system/bin/sgdisk"; do
        [ -n "$bin" ] || continue
        [ -f "$bin" ] || continue
        echo "$bin"
        return 0
    done

    return 1
}

REPARTITIONER_DIR="${REPARTITIONER_DIR:-$EXYNOS9810_LEGACY_PORT_DIR/system/bin}"
REPARTITIONER_SGDISK_BIN="$(find_exynos9810_sgdisk)" || {
    LOGE "Exynos9810 sgdisk repartitioner binary not found"
    exit 1
}
LOG "- Bundling Exynos9810 sgdisk repartitioner binary"
cp -a "$REPARTITIONER_SGDISK_BIN" "$TMP_DIR/exynos9810/sgdisk"
chmod 0755 "$TMP_DIR/exynos9810/sgdisk"

# The requested ROM default is the enforcing DS-ACK kernel paired with the
# EROFS-patched DTB.
DS_ACK_KERNEL_VARIANT="${DS_ACK_KERNEL_VARIANT:-Enforcing-KernelSU-OneUI7}"
DS_ACK_PREBUILT_ZIP="$SRC_DIR/platform/exynos9810/prebuilt/DS-ACK-V1.12-08.05.2026-Enforcing-KernelSU-OneUI7-erofs-dtb.zip"
DS_ACK_PREBUILT_SHA256="243e08f706534cb3299cef24bdad874f27d0ffb0d2e5e9baee5d4be4fcffedba"
DS_ACK_LOCAL_ZIP="${DS_ACK_LOCAL_ZIP:-$DS_ACK_PREBUILT_ZIP}"
CROWNTRAIL_KERNEL_ZIP="${CROWNTRAIL_KERNEL_ZIP:-/mnt/c/Users/Admin/Downloads/CrownTrail-v1.6-15.05.2026-OneUI7-Permissive-KSUN.zip}"
# DS-ACK v1.12 kernel payload is the requested default. Brightness scaling
# is selected by the legacy Samsung profile in floating_feature.xml, not by
# replacing the kernel or its device tree.
if [ -z "${EXYNOS9810_KERNEL_ZIP:-}" ] && [ -f "$DS_ACK_LOCAL_ZIP" ]; then
    EXYNOS9810_KERNEL_NAME="${EXYNOS9810_KERNEL_NAME:-DS-ACK v1.12 KernelSU-Next OneUI7 (Duhan boot flow)}"
    EXYNOS9810_KERNEL_ZIP="$DS_ACK_LOCAL_ZIP"
elif [ -z "${EXYNOS9810_KERNEL_ZIP:-}" ]; then
    LOGE "Exynos9810 enforcing DS-ACK kernel package not found: $DS_ACK_LOCAL_ZIP"
    LOGE "Provide the enforcing EROFS-DTB package at that path, or set EXYNOS9810_KERNEL_ZIP explicitly."
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

    # Match DuhanROM exactly: the DS-ACK kernel is installed over this
    # untouched Samsung boot image. The enforcing kernel binary selects the
    # strict policy; the boot header is left unchanged.
    EXYNOS9810_DUHAN_RAMDISK_SHA256="1b059d65c342ceb41fcd32bb06545bd75265ff674337d3a0d00efcf2a2932b4d"
    EXYNOS9810_RAMDISK_SHA256="$(sha256sum "$TMP_DIR/exynos9810/ramdisk.img" | awk '{print $1}')"
    [ "$EXYNOS9810_RAMDISK_SHA256" = "$EXYNOS9810_DUHAN_RAMDISK_SHA256" ] || {
        LOGE "Exynos9810 boot image differs from DuhanROM's tested ramdisk"
        exit 1
    }
    strings "$TMP_DIR/exynos9810/ramdisk.img" | \
        grep -q 'androidboot.selinux=permissive' || {
        LOGE "Exynos9810 Duhan boot-header marker is missing"
        exit 1
    }

    # Check the DTB for every kernel mode. An ext4 DTB with EROFS images fails
    # in first-stage mount before SELinux or Android userspace can start.
    EXYNOS9810_KERNEL_DTB_EROFS="$(unzip -p "$EXYNOS9810_KERNEL_ZIP" "floyd/G960F-dtb" 2>/dev/null | dd bs=1 skip=2048 2>/dev/null | strings | grep -c "erofs")"
    [ "${EXYNOS9810_KERNEL_DTB_EROFS:-0}" -gt 0 ] || {
        LOGE "Exynos9810 DS-ACK device tree lacks the EROFS fstab for SYSTEM/VENDOR/ODM"
        exit 1
    }

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

if [ -f "$TMP_DIR/exynos9810/patch_bootlogger.sh" ] && [ -f "$UPDATER_SCRIPT" ]; then
    python3 - "$UPDATER_SCRIPT" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
script = path.read_text()
old_extract = '''run_program("/system/bin/unzip", "/tmp/exynos9810/kernel.zip", "META-INF/com/google/android/*", "-d", "/tmp/exynos9810/kernel")'''
new_extract = '''run_program("/system/bin/unzip", "/tmp/exynos9810/kernel.zip", "-d", "/tmp/exynos9810/kernel")'''
if old_extract in script:
    script = script.replace(old_extract, new_extract, 1)

marker = 'ui_print("Formatting cache, omr, preload and data...");'
block = '''ui_print("Installing Exynos9810 persistent boot logger...");
package_extract_file("exynos9810/bootlogger-init", "/tmp/exynos9810/bootlogger-init");
package_extract_file("exynos9810/patch_bootlogger.sh", "/tmp/exynos9810/patch_bootlogger.sh");
run_program("/system/bin/chmod", "0755", "/tmp/exynos9810/bootlogger-init", "/tmp/exynos9810/patch_bootlogger.sh");
run_program("/sbin/sh", "/tmp/exynos9810/patch_bootlogger.sh") == 0 ||
    abort("E9810: Failed to install persistent boot logger.");
'''
if marker in script and 'persistent boot logger' not in script:
    script = script.replace(marker, block + marker, 1)
path.write_text(script)
PY
fi
