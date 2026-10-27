#!/sbin/sh
# TWRP filesystem patch, never a partition formatter or boot/kernel flasher.
set -eu
PAYLOAD=/tmp/unica-note9-spen-v8
BACKUP=/data/media/0/UN1CA-SPen-backup-20261025
MODE=${1:-install}
die() { echo "S Pen patch: ERROR: $*" >&2; exit 1; }
prop() { sed -n "s/^$1=//p" "$2" | head -n 1; }
digest() { sha256sum "$1" | cut -d ' ' -f 1; }

case "$(getprop ro.bootloader)" in N960F*|N960N*) ;; *) die 'Only Exynos Note9 N960F/N960N is supported';; esac
# Read the on-disk superblock; TWRP fstab labels are not authoritative.
BLOCK=
for candidate in /dev/block/platform/11120000.ufs/by-name/SYSTEM /dev/block/by-name/SYSTEM; do
    if [ -b "$candidate" ]; then BLOCK=$(readlink -f "$candidate"); break; fi
done
[ -n "$BLOCK" ] || die 'Cannot locate the named System block device'
EXT_MAGIC=$(dd if="$BLOCK" bs=1 skip=1080 count=2 2>/dev/null | od -An -tx1 | tr -d ' \n')
EROFS_MAGIC=$(dd if="$BLOCK" bs=1 skip=1024 count=4 2>/dev/null | od -An -tx1 | tr -d ' \n')
echo "S Pen preflight: System=$BLOCK ext_magic=$EXT_MAGIC erofs_magic=$EROFS_MAGIC"
if [ "$EROFS_MAGIC" = e2e1f5e0 ]; then
    die 'The System partition itself has an EROFS superblock; this is not just a TWRP label. No files changed.'
fi
[ "$EXT_MAGIC" = 53ef ] || die 'System has no recognized EXT filesystem superblock; no files changed'
mount /system_root 2>/dev/null || mount /system 2>/dev/null || true
if ! awk '$2=="/system_root" || $2=="/system" {found=1} END{exit !found}' /proc/mounts; then
    mkdir -p /system_root
    # An incorrect TWRP fstab type must not prevent mounting a proven EXT4 FS.
    mount -t ext4 -o rw "$BLOCK" /system_root || die 'EXT superblock found, but explicit EXT4 mount failed'
fi
mount /vendor 2>/dev/null || true
SYSTEM=
for candidate in /system_root/system /system/system /system; do
    if [ -f "$candidate/build.prop" ] && [ -f "$candidate/priv-app/AirCommand/AirCommand.apk" ]; then
        [ -z "$SYSTEM" ] || continue
        SYSTEM=$candidate
    fi
done
[ -n "$SYSTEM" ] || die 'Mount System in TWRP first; no compatible Android system found'
case "$(prop ro.unica.version "$SYSTEM/build.prop")" in 1.4*|1.5*) ;; *) die 'This patch requires the UN1CA 1.4/1.5 Note9 test ROM';; esac
[ "$(prop ro.build.version.sdk "$SYSTEM/build.prop")" = 36 ] || die 'Android 16 system required'
[ "$(prop ro.build.version.incremental "$SYSTEM/build.prop")" = S901BXXSOGZH3 ] || die 'Different base firmware; refusing to replace AirCommand'
# Require a real EXT4 mount containing SYSTEM, not a writable recovery tmpfs.
MOUNT=$(awk -v path="$SYSTEM" '($2==path || index(path,$2 "/")==1) && length($2)>best {best=length($2); point=$2; type=$3} END {if(type=="ext4") print point}' /proc/mounts)
[ -n "$MOUNT" ] || die 'Kernel mount table does not confirm EXT4; no files changed'
case "$MOUNT" in /system|/system_root) ;; *) die 'Unexpected System mount point';; esac
MOUNT_SOURCE=$(awk -v point="$MOUNT" '$2==point {print $1; exit}' /proc/mounts)
[ "$(readlink -f "$MOUNT_SOURCE")" = "$BLOCK" ] || die 'System mount source differs from the probed partition'
echo 'S Pen preflight: on-disk EXT signature and actual EXT4 mount agree'
mount -o remount,rw "$MOUNT" || die 'System cannot be remounted read/write'

AIR=$SYSTEM/priv-app/AirCommand/AirCommand.apk
ENGINE=$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so
APK=$SYSTEM/app/Notes33/Notes33.apk
REC=$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so
BASE=/data/adb/unica-spen-v5
SERVICE=/data/adb/service.d/90-unica-spen-v5.sh
[ "$(digest "$APK")" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Different Notes APK; no changes'
[ "$(digest "$REC")" = 54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9 ] || die 'Install the accepted Notes v6 crash fix first'
for path in "$AIR" "$ENGINE" "$APK" "$REC" "$BASE" "$SERVICE" "$BASE/collect.sh" "$BASE/armed"; do [ ! -L "$path" ] || die 'Unexpected symlink'; done
for file in "$AIR" "$ENGINE"; do
    for suffix in original stage disabled failed; do [ ! -L "$file.unica-v8-$suffix" ] || die 'Unexpected backup symlink'; done
done
AO=$AIR.unica-v8-original; EO=$ENGINE.unica-v8-original
AS=$AIR.unica-v8-stage; ES=$ENGINE.unica-v8-stage
AD=$AIR.unica-v8-disabled; ED=$ENGINE.unica-v8-disabled
AF=$AIR.unica-v8-failed; EF=$ENGINE.unica-v8-failed
if [ "$MODE" = restore ]; then
    [ "$(digest "$AIR")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] && [ "$(digest "$ENGINE")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Installed v8 files differ; no changes'
    [ "$(digest "$AO")" = cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea ] && [ "$(digest "$EO")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'Original backups missing or changed'
    [ ! -e "$AD" ] && [ ! -e "$ED" ] || die 'Disabled copies already exist; preserve and inspect'
    restore_rollback() {
        rc=$?
        if [ "$rc" -ne 0 ]; then
            if [ -f "$AD" ]; then
                if [ -f "$AIR" ] && [ ! -e "$AO" ]; then mv "$AIR" "$AO" || true; fi
                if [ ! -e "$AIR" ]; then mv "$AD" "$AIR" || true; fi
            fi
            if [ -f "$ED" ]; then
                if [ -f "$ENGINE" ] && [ ! -e "$EO" ]; then mv "$ENGINE" "$EO" || true; fi
                if [ ! -e "$ENGINE" ]; then mv "$ED" "$ENGINE" || true; fi
            fi
            echo 'Restore failed; reinstated v8 pair where possible. Preserve recovery.log.' >&2
        fi
    }
    trap restore_rollback EXIT
    mv "$AIR" "$AD"; mv "$ENGINE" "$ED"
    mv "$AO" "$AIR"; mv "$EO" "$ENGINE"
    [ "$(digest "$AIR")" = cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea ] && [ "$(digest "$ENGINE")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'Restored files failed verification'
    sync; trap - EXIT
    echo 'Pre-v8 AirCommand and Notes engine restored; accepted v6 recognition fix and personal data retained.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -f "$BASE/installed" ] && [ ! -d "$BASE/session-lock" ] || die 'Known one-shot logger required; install from TWRP'
[ "$(digest "$BASE/collect.sh")" = ad630c0a858b6e62b234a0c452f56178e40ee4423f3576a561eed1a369a80b04 ] && [ "$(digest "$SERVICE")" = 8cf1905c68078853951c24a65a860a62ba08bbe4ef537699cd48fdfd88309b5d ] || die 'Logger differs; no changes'
if [ "$(digest "$AIR")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] && [ "$(digest "$ENGINE")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ]; then
    [ "$(digest "$AO")" = cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea ] && [ "$(digest "$EO")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'v8 original backups differ'
    echo armed > "$BASE/armed"; echo 'v8 pair verified; existing logger rearmed.'; exit 0
fi
[ "$(digest "$AIR")" = cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea ] && [ "$(digest "$ENGINE")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'Requires the audited v6 state, with no v7 trial installed'
for file in "$AO" "$EO" "$AS" "$ES" "$AD" "$ED" "$AF" "$EF"; do [ ! -e "$file" ] || die 'Existing v8 backup/staging; preserve and inspect'; done
[ "$(digest "$PAYLOAD/AirCommand.apk")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] && [ "$(digest "$PAYLOAD/libSPenEngine.so")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Payload checksum mismatch'
need=$(du -sk "$PAYLOAD" | awk '{print $1+32768}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
cp -p "$PAYLOAD/AirCommand.apk" "$AS"; cp -p "$PAYLOAD/libSPenEngine.so" "$ES"
for file in "$AS" "$ES"; do chmod 0644 "$file"; chown 0:0 "$file"; chcon u:object_r:system_file:s0 "$file" || die 'Cannot set file label'; done
[ "$(digest "$AS")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] && [ "$(digest "$ES")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Staged checksum mismatch'
AB=0; EB=0
rollback() {
    rc=$?
    if [ "$rc" -ne 0 ]; then
        if [ "$AB" = 1 ]; then
            if [ -e "$AIR" ]; then mv "$AIR" "$AF" || true; fi
            mv "$AO" "$AIR" || echo 'AirCommand rollback needs manual inspection' >&2
        fi
        if [ "$EB" = 1 ]; then
            if [ -e "$ENGINE" ]; then mv "$ENGINE" "$EF" || true; fi
            mv "$EO" "$ENGINE" || echo 'Notes engine rollback needs manual inspection' >&2
        fi
        sync
        echo 'v8 transaction failed; previous files restored where possible. Save recovery.log.' >&2
    fi
}
trap rollback EXIT
mv "$AIR" "$AO"; AB=1
mv "$ENGINE" "$EO"; EB=1
mv "$AS" "$AIR"; mv "$ES" "$ENGINE"
[ "$(digest "$AIR")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] && [ "$(digest "$ENGINE")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Final checksum mismatch'
echo armed > "$BASE/armed"
sync; trap - EXIT
echo 'v8 TEST installed: saved-address direct GATT plus Notes normal rendering.'
echo 'No connection or ink success is assumed. Reboot System, unlock and test. DO NOT wipe data.'
