#!/system/bin/sh

umask 022

# This logger runs after data/post-fs-data and never changes boot state. The
# host watcher and kernel pstore provide evidence if the device dies earlier.
OUT=/cache/unica
if ! mkdir -p "$OUT" 2>/dev/null || [ ! -w "$OUT" ]; then
    OUT=/metadata/unica
    if ! mkdir -p "$OUT" 2>/dev/null || [ ! -w "$OUT" ]; then
        OUT=/data/bootloop-logs
        mkdir -p "$OUT" 2>/dev/null || true
    fi
fi

DATA_OUT=/data/bootloop-logs
LOCK="$DATA_OUT/.unica-safe-logger.lock"
if [ -d "$LOCK" ]; then
    PID="$(cat "$LOCK/pid" 2>/dev/null || true)"
    if [ -n "$PID" ] && [ -d "/proc/$PID" ]; then
        exit 0
    fi
    rm -rf "$LOCK"
fi
mkdir -p "$LOCK" 2>/dev/null || exit 0
echo "$$" > "$LOCK/pid"

LIVE_LOGCAT_PID=

event()
{
    printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >> "$OUT/events.log"
}

copy_to_data()
{
    [ "$OUT" = "$DATA_OUT" ] && return 0
    [ -d /data ] && [ -w /data ] || return 0
    mkdir -p "$DATA_OUT" 2>/dev/null || return 0
    cp -af "$OUT/." "$DATA_OUT/" 2>/dev/null || true
}

run_limited()
{
    if [ -x /system/bin/timeout ]; then
        /system/bin/timeout 10 "$@"
    else
        "$@"
    fi
}

record_file()
{
    TITLE="$1"
    PATH_NAME="$2"
    DEST="$3"
    {
        echo
        echo "===== $TITLE: $PATH_NAME ====="
        if [ -e "$PATH_NAME" ]; then
            ls -lZ "$PATH_NAME" 2>&1 || true
            sha256sum "$PATH_NAME" 2>&1 || true
            cat "$PATH_NAME" 2>&1 || true
        else
            echo "<missing>"
        fi
    } >> "$OUT/$DEST"
}

record_binary_metadata()
{
    TITLE="$1"
    PATH_NAME="$2"
    DEST="$3"
    {
        echo
        echo "===== $TITLE: $PATH_NAME ====="
        if [ -e "$PATH_NAME" ]; then
            ls -lZ "$PATH_NAME" 2>&1 || true
            sha256sum "$PATH_NAME" 2>&1 || true
        else
            echo "<missing>"
        fi
    } >> "$OUT/$DEST"
}

collect_fstabs()
{
    TAG="$1"
    PATHS="$OUT/fstab_${TAG}.paths"
    DEST="fstab_${TAG}.txt"
    : > "$PATHS"
    for BASE in \
        /first_stage_ramdisk /vendor/etc /odm/etc /system/etc \
        /system/system/etc /product/etc /system/product/etc /system_ext/etc; do
        [ -d "$BASE" ] || continue
        find "$BASE" -maxdepth 4 -type f -name 'fstab*' -print 2>/dev/null >> "$PATHS" || true
    done
    sort -u "$PATHS" -o "$PATHS" 2>/dev/null || true
    {
        echo "UN1CA Exynos9810 fstab snapshot: $TAG"
        date
        echo "fstab paths:"
        cat "$PATHS"
    } > "$OUT/$DEST"
    while IFS= read -r PATH_NAME; do
        [ -n "$PATH_NAME" ] || continue
        record_file "fstab" "$PATH_NAME" "$DEST"
    done < "$PATHS"
    for PATH_NAME in \
        /proc/device-tree/firmware/android/fstab \
        /proc/device-tree/firmware/android/compatible \
        /proc/device-tree/firmware/android/slot_suffix; do
        record_file "device-tree fstab metadata" "$PATH_NAME" "$DEST"
    done
}

collect_keymaster()
{
    TAG="$1"
    DEST="security_keymaster_${TAG}.txt"
    PATHS="$OUT/keymaster_${TAG}.paths"
    : > "$PATHS"
    for BASE in \
        /vendor/bin /vendor/bin/hw /vendor/etc /vendor/lib /vendor/lib64 \
        /odm/bin /odm/bin/hw /odm/etc /odm/lib /odm/lib64 \
        /system/bin /system/system/bin /system/etc /system/system/etc; do
        [ -d "$BASE" ] || continue
        find "$BASE" -maxdepth 3 -type f -print 2>/dev/null | \
            grep -iE '(keymaster|gatekeeper|keystore|trustonic|tee)' >> "$PATHS" || true
    done
    sort -u "$PATHS" -o "$PATHS" 2>/dev/null || true
    {
        echo "UN1CA Exynos9810 keymaster/keystore snapshot: $TAG"
        date
        echo
        echo "security properties:"
        getprop | grep -iE 'avb|verity|crypto|keystore|keymaster|gatekeeper|tee|secure|hardware.drm|boot.vbmeta|flash.locked|verifiedboot' || true
        echo
        echo "SELinux:"
        getenforce 2>&1 || true
        echo
        echo "security services:"
        service list 2>&1 | grep -iE 'key|gate|keystore|tee|secure|trust' || true
        echo
        echo "keystore2 dump:"
        run_limited dumpsys keystore2 2>&1 || true
        echo
        echo "legacy keystore dump:"
        run_limited dumpsys keystore 2>&1 || true
        echo
        echo "keymaster/gatekeeper artifact paths:"
        cat "$PATHS"
    } > "$OUT/$DEST"
    while IFS= read -r PATH_NAME; do
        [ -n "$PATH_NAME" ] || continue
        record_binary_metadata "keymaster artifact" "$PATH_NAME" "$DEST"
    done < "$PATHS"

    # Never copy private key blobs. Metadata and hashes are enough to diagnose
    # missing or mismatched keystore state.
    {
        echo
        echo "private security-state metadata (contents omitted):"
        for BASE in /data/misc/keystore /data/misc/gatekeeper /data/system_de/0/spblob /metadata/vold; do
            [ -e "$BASE" ] || continue
            echo "-- $BASE --"
            find "$BASE" -maxdepth 3 -type f -print 2>/dev/null | while IFS= read -r PATH_NAME; do
                ls -lZ "$PATH_NAME" 2>&1 || true
                sha256sum "$PATH_NAME" 2>&1 || true
            done
        done
    } >> "$OUT/$DEST"
}

collect_avb_storage()
{
    TAG="$1"
    DEST="avb_storage_${TAG}.txt"
    {
        echo "UN1CA Exynos9810 AVB/verity/storage snapshot: $TAG"
        date
        echo
        echo "boot and AVB properties:"
        getprop | grep -iE '^\[(ro\.boot|ro\.vbmeta|ro\.avb|ro\.verity|ro\.crypto|ro\.hardware\.keystore|ro\.hardware\.keymaster|ro\.hardware\.gatekeeper|ro\.product\.first_api|sys\.boot)' || true
        echo
        echo "bootconfig:"
        cat /proc/bootconfig 2>&1 || true
        echo
        echo "cmdline:"
        cat /proc/cmdline 2>&1 || true
        echo
        echo "block partitions:"
        cat /proc/partitions 2>&1 || true
        echo
        echo "named block devices:"
        ls -laZ /dev/block/by-name 2>&1 || true
        ls -laZ /dev/block/platform/11120000.ufs/by-name 2>&1 || true
        for PATH_NAME in /dev/block/by-name/* /dev/block/platform/11120000.ufs/by-name/*; do
            [ -e "$PATH_NAME" ] || continue
            printf '%s -> ' "$PATH_NAME"
            readlink -f "$PATH_NAME" 2>&1 || true
        done
        echo
        echo "dm/verity and filesystem state:"
        ls -laZ /sys/block/dm-* /sys/fs/verity /sys/fs/erofs /sys/fs/f2fs 2>&1 || true
        for PATH_NAME in /sys/block/dm-* /sys/block/dm-*/dm/*; do
            [ -f "$PATH_NAME" ] || continue
            printf '\n-- %s --\n' "$PATH_NAME"
            cat "$PATH_NAME" 2>&1 || true
        done
        echo
        echo "pstore:"
        ls -laZ /sys/fs/pstore 2>&1 || true
    } > "$OUT/$DEST"
    for PATH_NAME in /sys/fs/pstore/*; do
        [ -f "$PATH_NAME" ] || continue
        record_file "pstore" "$PATH_NAME" "$DEST"
    done
}

collect_init_services()
{
    TAG="$1"
    DEST="init_services_${TAG}.txt"
    PATHS="$OUT/init_${TAG}.paths"
    : > "$PATHS"
    for BASE in /system/etc/init /system/system/etc/init /vendor/etc/init /odm/etc/init /product/etc/init /system_ext/etc/init; do
        [ -d "$BASE" ] || continue
        find "$BASE" -maxdepth 3 -type f -print 2>/dev/null >> "$PATHS" || true
    done
    sort -u "$PATHS" -o "$PATHS" 2>/dev/null || true
    {
        echo "UN1CA Exynos9810 init/service snapshot: $TAG"
        date
        echo
        echo "init paths:"
        cat "$PATHS"
        echo
        echo "init service properties:"
        getprop | grep '^\[init\.svc\.' || true
        echo
        echo "service manager:"
        service list 2>&1 || true
        echo
        echo "registered HALs:"
        run_limited lshal 2>&1 || true
        echo
        echo "VINTF:"
        run_limited checkvintf 2>&1 || true
    } > "$OUT/$DEST"
    while IFS= read -r PATH_NAME; do
        case "$PATH_NAME" in
            *.rc|*fstab*|*manifest*.xml|*/vintf/*.xml)
                record_file "init/config" "$PATH_NAME" "$DEST"
                ;;
        esac
    done < "$PATHS"
}

snapshot()
{
    TAG="$1"
    event "snapshot $TAG started"
    collect_fstabs "$TAG"
    collect_keymaster "$TAG"
    collect_avb_storage "$TAG"
    collect_init_services "$TAG"
    {
        echo "UN1CA Exynos9810 safe boot snapshot: $TAG"
        date
        echo "logger_reason=${2:-scheduled}"
        echo
        echo "uptime:"
        cat /proc/uptime
        echo
        echo "cmdline:"
        cat /proc/cmdline
        echo
        echo "mounts:"
        cat /proc/mounts
        echo
        echo "mountinfo:"
        cat /proc/self/mountinfo
        echo
        echo "mount command:"
        mount 2>&1 || true
        echo
        echo "filesystems:"
        cat /proc/filesystems 2>&1 || true
        echo
        echo "partitions:"
        cat /proc/partitions
        echo
        echo "meminfo:"
        cat /proc/meminfo
        echo
        echo "vmstat:"
        cat /proc/vmstat
        echo
        echo "memory pressure:"
        cat /proc/pressure/memory 2>/dev/null || true
        echo
        echo "io pressure:"
        cat /proc/pressure/io 2>/dev/null || true
        echo
        echo "properties:"
        getprop
        echo
        echo "selinux:"
        getenforce 2>/dev/null || true
        echo
        echo "processes:"
        ps -A 2>/dev/null || true
        echo
        echo "threads:"
        ps -AT 2>/dev/null || true
        echo
        echo "kernel warnings:"
        dmesg | grep -iE 'panic|fatal|watchdog|deadlock|oom|out of memory|erofs|ext4|f2fs|dm-verity|avb|keymaster|gatekeeper|selinux|denied' || true
        echo
        echo "dmesg:"
        dmesg
    } > "$OUT/boot_${TAG}.txt" 2>&1
    logcat -b all -d -v threadtime > "$OUT/logcat_${TAG}.txt" 2>&1 || true
    run_limited dumpsys meminfo > "$OUT/dumpsys_meminfo_${TAG}.txt" 2>&1 || true
    run_limited dumpsys activity top > "$OUT/dumpsys_activity_${TAG}.txt" 2>&1 || true
    run_limited dumpsys package > "$OUT/dumpsys_package_${TAG}.txt" 2>&1 || true
    run_limited dumpsys mount > "$OUT/dumpsys_mount_${TAG}.txt" 2>&1 || true
    run_limited dumpsys media.camera > "$OUT/dumpsys_camera_${TAG}.txt" 2>&1 || true
    copy_to_data
    event "snapshot $TAG finished"
}

finish()
{
    if [ -n "$LIVE_LOGCAT_PID" ]; then
        kill "$LIVE_LOGCAT_PID" 2>/dev/null || true
        wait "$LIVE_LOGCAT_PID" 2>/dev/null || true
    fi
    copy_to_data
    rm -rf "$LOCK"
    sync
}
trap finish EXIT

event "safe logger started; reason=${1:-unknown}; output=$OUT"
logcat -b all -v threadtime -f "$OUT/logcat_live.txt" >/dev/null 2>&1 &
LIVE_LOGCAT_PID=$!
snapshot post-fs-data start
sleep 1; snapshot 1s
sleep 2; snapshot 3s
sleep 2; snapshot 5s
sleep 5; snapshot 10s
sleep 10; snapshot 20s
sleep 10; snapshot 30s
sleep 30; snapshot 60s
sleep 60; snapshot 120s
sleep 60; snapshot 180s
kill "$LIVE_LOGCAT_PID" 2>/dev/null || true
LIVE_LOGCAT_PID=
snapshot final
event "safe logger finished; sys.boot_completed=$(getprop sys.boot_completed 2>/dev/null)"
copy_to_data
