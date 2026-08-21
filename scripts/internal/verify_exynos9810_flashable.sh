#!/usr/bin/env bash
# Reject a completed Exynos9810 recovery zip when its kernel, device trees,
# ramdisk or installer no longer matches the filesystem images.

set -euo pipefail

ZIP_FILE="${1:?flashable zip is required}"
EXPECTED_FS="${2:?expected filesystem is required}"

[ -f "$ZIP_FILE" ] || {
    echo "Exynos9810 flashable verification: file not found: $ZIP_FILE" >&2
    exit 1
}
case "$EXPECTED_FS" in
    erofs)
        EXPECTED_KERNEL_SHA256="243e08f706534cb3299cef24bdad874f27d0ffb0d2e5e9baee5d4be4fcffedba"
        ;;
    ext4)
        EXPECTED_KERNEL_SHA256="ddb2c96a54a77e21c189db901da61b398f3ac3ab44a40526c02b4cf2bd890bee"
        ;;
    *)
        echo "Exynos9810 flashable verification: invalid filesystem $EXPECTED_FS" >&2
        exit 1
        ;;
esac

VERIFY_TMP="$(mktemp -d)"
trap 'rm -rf "$VERIFY_TMP"' EXIT INT TERM

unzip -tq "$ZIP_FILE" >/dev/null
unzip -Z1 "$ZIP_FILE" > "$VERIFY_TMP/outer.list"

for ENTRY in \
    exynos9810/fs_type.prop \
    exynos9810/kernel_mode.prop \
    exynos9810/kernel_name \
    exynos9810/kernel.zip \
    exynos9810/ramdisk.img \
    exynos9810/vendor_bootfix.sh \
    exynos9810/format_partitions.sh \
    META-INF/com/google/android/updater-script; do
    grep -Fxq "$ENTRY" "$VERIFY_TMP/outer.list" || {
        echo "Exynos9810 flashable verification: missing $ENTRY" >&2
        exit 1
    }
done

for UNSAFE_ENTRY in exynos9810/bootlogger-init exynos9810/patch_bootlogger.sh; do
    if grep -Fxq "$UNSAFE_ENTRY" "$VERIFY_TMP/outer.list"; then
        echo "Exynos9810 flashable verification: unsafe logger payload present: $UNSAFE_ENTRY" >&2
        exit 1
    fi
done

ACTUAL_FS="$(unzip -p "$ZIP_FILE" exynos9810/fs_type.prop | sed -n 's/^fs_type=//p' | tr -d '\r')"
[ "$ACTUAL_FS" = "$EXPECTED_FS" ] || {
    echo "Exynos9810 flashable verification: image/kernel filesystem mismatch ($ACTUAL_FS != $EXPECTED_FS)" >&2
    exit 1
}
[ "$(unzip -p "$ZIP_FILE" exynos9810/kernel_mode.prop | tr -d '\r')" = "selinux_mode=enforcing" ] || {
    echo "Exynos9810 flashable verification: default kernel is not enforcing" >&2
    exit 1
}

unzip -p "$ZIP_FILE" exynos9810/ramdisk.img > "$VERIFY_TMP/ramdisk.img"
[ "$(sha256sum "$VERIFY_TMP/ramdisk.img" | awk '{print $1}')" = "1b059d65c342ceb41fcd32bb06545bd75265ff674337d3a0d00efcf2a2932b4d" ] || {
    echo "Exynos9810 flashable verification: boot ramdisk is not the tested baseline" >&2
    exit 1
}

unzip -p "$ZIP_FILE" exynos9810/kernel.zip > "$VERIFY_TMP/kernel.zip"
[ "$(sha256sum "$VERIFY_TMP/kernel.zip" | awk '{print $1}')" = "$EXPECTED_KERNEL_SHA256" ] || {
    echo "Exynos9810 flashable verification: wrong DS-ACK kernel for $EXPECTED_FS" >&2
    exit 1
}
unzip -tq "$VERIFY_TMP/kernel.zip" >/dev/null
unzip -Z1 "$VERIFY_TMP/kernel.zip" > "$VERIFY_TMP/kernel.list"
for DEVICE in G960F G960N G965F G965N N960F N960N; do
    for SUFFIX in kernel dtb; do
        grep -Fxq "floyd/${DEVICE}-${SUFFIX}" "$VERIFY_TMP/kernel.list" || {
            echo "Exynos9810 flashable verification: kernel payload missing ${DEVICE}-${SUFFIX}" >&2
            exit 1
        }
    done
done

# G960F is the full DTB baseline; the other five entries are bsdiff patches.
# The exact nested zip hash above verifies those patches byte-for-byte.
unzip -p "$VERIFY_TMP/kernel.zip" floyd/G960F-dtb > "$VERIFY_TMP/G960F-dtb"
strings "$VERIFY_TMP/G960F-dtb" > "$VERIFY_TMP/G960F-dtb.strings"
if [ "$EXPECTED_FS" = "erofs" ]; then
    grep -q erofs "$VERIFY_TMP/G960F-dtb.strings" || {
        echo "Exynos9810 flashable verification: EROFS DTB marker missing" >&2
        exit 1
    }
else
    if grep -q erofs "$VERIFY_TMP/G960F-dtb.strings"; then
        echo "Exynos9810 flashable verification: ext4 build contains an EROFS DTB" >&2
        exit 1
    fi
fi

unzip -p "$ZIP_FILE" META-INF/com/google/android/updater-script > "$VERIFY_TMP/updater-script"
grep -q 'Writing Exynos9810 boot ramdisk' "$VERIFY_TMP/updater-script" || {
    echo "Exynos9810 flashable verification: tested ramdisk install step is missing" >&2
    exit 1
}
grep -q 'Installing Exynos9810 kernel zip' "$VERIFY_TMP/updater-script" || {
    echo "Exynos9810 flashable verification: DS-ACK install step is missing" >&2
    exit 1
}
grep -q 'Applying Exynos9810 vendor boot fixes' "$VERIFY_TMP/updater-script" || {
    echo "Exynos9810 flashable verification: vendor bootfix step is missing" >&2
    exit 1
}
if grep -q -e bootlogger-init -e patch_bootlogger "$VERIFY_TMP/updater-script"; then
    echo "Exynos9810 flashable verification: updater still invokes the unsafe logger" >&2
    exit 1
fi

echo "Verified Exynos9810 flashable: $(basename "$ZIP_FILE") ($EXPECTED_FS, enforcing, six device payloads)"
