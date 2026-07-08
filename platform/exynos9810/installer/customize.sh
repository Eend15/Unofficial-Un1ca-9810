mkdir -p "$TMP_DIR/exynos9810"
cp -a "$SRC_DIR/platform/exynos9810/installer/repartition/." "$TMP_DIR/exynos9810/"

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
        "/mnt/c/Users/Admin/Documents/Codex/2026-06-16/https-xdaforums-com-t-rom-oneui/work/repartitioner_analysis/repartitioner/duhan/sgdisk" \
        "/mnt/c/Users/Admin/Documents/Codex/2026-06-16/https-xdaforums-com-t-rom-oneui/work/repartitioner_zip/duhan/sgdisk" \
        "$EXYNOS9810_LEGACY_PORT_DIR/system/bin/sgdisk"; do
        [ -n "$bin" ] || continue
        [ -f "$bin" ] || continue
        echo "$bin"
        return 0
    done

    return 1
}

REPARTITIONER_DIR="${REPARTITIONER_DIR:-/mnt/c/Users/Admin/Documents/Codex/2026-06-16/https-xdaforums-com-t-rom-oneui/work/repartitioner_analysis/repartitioner/duhan}"
REPARTITIONER_SGDISK_BIN="$(find_exynos9810_sgdisk)" || {
    LOGE "Exynos9810 sgdisk repartitioner binary not found"
    exit 1
}
LOG "- Bundling Exynos9810 sgdisk repartitioner binary"
cp -a "$REPARTITIONER_SGDISK_BIN" "$TMP_DIR/exynos9810/sgdisk"
chmod 0755 "$TMP_DIR/exynos9810/sgdisk"

DS_ACK_KERNEL_VARIANT="${DS_ACK_KERNEL_VARIANT:-Permissive-KernelSU-OneUI7}"
CROWNTRAIL_KERNEL_ZIP="${CROWNTRAIL_KERNEL_ZIP:-/mnt/c/Users/Admin/Downloads/CrownTrail-v1.6-15.05.2026-OneUI7-Permissive-KSUN.zip}"
if [ -z "${EXYNOS9810_KERNEL_ZIP:-}" ] && [ -f "$CROWNTRAIL_KERNEL_ZIP" ]; then
    EXYNOS9810_KERNEL_NAME="${EXYNOS9810_KERNEL_NAME:-CrownTrail v1.6 Permissive KernelSU-Next OneUI7}"
    EXYNOS9810_KERNEL_ZIP="$CROWNTRAIL_KERNEL_ZIP"
else
    EXYNOS9810_KERNEL_NAME="${EXYNOS9810_KERNEL_NAME:-DS-ACK V1.12 $DS_ACK_KERNEL_VARIANT}"
    EXYNOS9810_KERNEL_ZIP="${EXYNOS9810_KERNEL_ZIP:-$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/kernel/kernel-ksu.zip}"
    [ -f "$EXYNOS9810_KERNEL_ZIP" ] || EXYNOS9810_KERNEL_ZIP="$SRC_DIR/prebuilts/samsung/exynos9810/ds_ack/DS-ACK-V1.12-${DS_ACK_KERNEL_VARIANT}.zip"
fi

if [ -f "$EXYNOS9810_KERNEL_ZIP" ]; then
    LOG "- Bundling $EXYNOS9810_KERNEL_NAME kernel"
    cp -a "$EXYNOS9810_KERNEL_ZIP" "$TMP_DIR/exynos9810/kernel.zip"
    printf '%s\n' "$EXYNOS9810_KERNEL_NAME" > "$TMP_DIR/exynos9810/kernel_name"
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
