#!/sbin/sh

SELF_DIR="$(dirname "$0")"
if [ -f "$SELF_DIR/installer_ui.sh" ]; then
    # shellcheck source=/dev/null
    . "$SELF_DIR/installer_ui.sh"
else
    ui_print() { echo "$1"; }
fi
TARGET="$1"
DISK=/dev/block/sda
STATE_FILE="$SELF_DIR/layout.prop"

find_sgdisk()
{
    for bin in "$SELF_DIR/sgdisk" /system/bin/sgdisk /sbin/sgdisk /tmp/sgdisk; do
        if [ -x "$bin" ] && "$bin" --version >/dev/null 2>&1; then
            echo "$bin"
            return 0
        fi
    done

    return 1
}

write_state()
{
    echo "repartitioned=$1" > "$STATE_FILE"
    sync
}

refresh_partitions()
{
    sync

    blockdev --rereadpt "$DISK" 2>/dev/null || true
    busybox blockdev --rereadpt "$DISK" 2>/dev/null || true
    partprobe "$DISK" 2>/dev/null || true
    SGDISK="$(find_sgdisk 2>/dev/null || true)"
    [ -n "$SGDISK" ] && "$SGDISK" --verify "$DISK" >/dev/null 2>&1 || true

    if [ -w /sys/block/sda/device/rescan ]; then
        echo 1 > /sys/block/sda/device/rescan 2>/dev/null || true
    fi
    if [ -w /sys/class/block/sda/device/rescan ]; then
        echo 1 > /sys/class/block/sda/device/rescan 2>/dev/null || true
    fi

    sleep 3
    sync
}

wait_for_layout()
{
    i=0
    while [ "$i" -lt 12 ]; do
        if /sbin/sh "$SELF_DIR/preflight.sh" "$TARGET"; then
            return 0
        fi
        refresh_partitions
        i=$((i + 1))
    done

    return 1
}

echo "E9810: checking partition layout"
write_state 0
# Repartitioning erases data, so only do it when the layout is really too
# small. Recovery can expose by-name nodes or sizes late; re-read the table
# and check again before deciding, and never repartition on an unreadable size.
attempt=0
while :; do
    /sbin/sh "$SELF_DIR/preflight.sh" "$TARGET"
    rc=$?
    if [ "$rc" -eq 0 ]; then
        echo "E9810: partition layout is ready, no repartition needed"
        exit 0
    fi
    attempt=$((attempt + 1))
    [ "$attempt" -ge 3 ] && break
    echo "E9810: layout check failed ($rc), re-reading partition table"
    refresh_partitions
done

if [ "$rc" -ne 1 ]; then
    ui_print "E9810: cannot read the partition sizes; nothing was changed."
    ui_print "E9810: reboot recovery and flash again."
    exit 1
fi

ui_print "E9810: partition layout is too small for this ROM (first install)."
ui_print "E9810: repartitioning: this erases data and internal storage."
sync

if /sbin/sh "$SELF_DIR/repartition.sh" "$TARGET"; then
    sync
    write_state 1
    echo "E9810: repartition completed"
    echo "E9810: refreshing partition table"
    if wait_for_layout; then
        echo "E9810: partition layout is ready"
        exit 0
    fi

    echo "E9810: partition refresh failed"
    echo "E9810: reboot recovery, format data, then flash again"
    exit 1
fi

sync
echo "E9810: repartition failed"
exit 1
