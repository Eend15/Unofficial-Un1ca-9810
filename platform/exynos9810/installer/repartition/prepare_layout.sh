#!/sbin/sh

SELF_DIR="$(dirname "$0")"
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
if /sbin/sh "$SELF_DIR/preflight.sh" "$TARGET"; then
    echo "E9810: partition layout is ready"
    exit 0
fi

echo "E9810: partition layout is too small; starting repartition"
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
