#!/sbin/sh

set -eu

BY_NAME=/dev/block/platform/11120000.ufs/by-name

ui_print()
{
    echo "$1"
}

find_mke2fs()
{
    for bin in /sbin/mke2fs /sbin/mkfs.ext4 /system/bin/mke2fs /system/bin/mkfs.ext4; do
        if [ -x "$bin" ]; then
            echo "$bin"
            return 0
        fi
    done

    if /sbin/busybox --list 2>/dev/null | grep -qx mke2fs; then
        echo "/sbin/busybox mke2fs"
        return 0
    fi

    return 1
}

unmount_path()
{
    mountpoint="$1"

    awk -v mp="$mountpoint" '$2 == mp || index($2, mp "/") == 1 { print $2 }' /proc/mounts 2>/dev/null | sort -r | while read -r mounted_path; do
        umount "$mounted_path" 2>/dev/null || umount -l "$mounted_path" 2>/dev/null || true
    done
}

format_ext4()
{
    label="$1"
    block="$2"
    mountpoint="$3"
    required="${4:-required}"

    if [ ! -b "$block" ]; then
        ui_print "E9810: $label block missing: $block"
        [ "$required" = "optional" ] && return 0
        return 1
    fi

    unmount_path "$mountpoint"
    ui_print "E9810: formatting $label"
    # shellcheck disable=SC2086
    $MKE2FS -t ext4 -F -L "$label" "$block" >/tmp/format_"$label".log 2>&1 || {
        cat /tmp/format_"$label".log || true
        [ "$required" = "optional" ] && return 0
        return 1
    }
}

MKE2FS="$(find_mke2fs)" || {
    ui_print "E9810: mke2fs not found in recovery"
    exit 1
}

mode="${1:-post_install}"

# System/vendor/odm are erofs in this build and must not be ext4-formatted:
# their images are flashed over the whole partition, and formatting is both
# pointless and a needless failure point when recovery lacks mke2fs.
SELF_DIR="$(dirname "$0")"
FS_TYPE="$(sed -n 's/^fs_type=//p' "$SELF_DIR/fs_type.prop" 2>/dev/null)"

case "$mode" in
    layout_clean)
        if [ "$FS_TYPE" = "erofs" ]; then
            ui_print "E9810: erofs build: skipping ext4 format for system/vendor/odm"
        else
            format_ext4 system "$BY_NAME/SYSTEM" /system
            format_ext4 vendor "$BY_NAME/VENDOR" /vendor
            format_ext4 odm "$BY_NAME/ODM" /odm
        fi
        format_ext4 omr "$BY_NAME/OMR" /omr
        format_ext4 preload "$BY_NAME/HIDDEN" /preload
        ;;
    post_install)
        format_ext4 cache "$BY_NAME/CACHE" /cache optional
        format_ext4 omr "$BY_NAME/OMR" /omr optional
        format_ext4 preload "$BY_NAME/HIDDEN" /preload optional
        format_ext4 data "$BY_NAME/USERDATA" /data optional
        ;;
    *)
        ui_print "E9810: unknown format mode: $mode"
        exit 1
        ;;
esac

sync
