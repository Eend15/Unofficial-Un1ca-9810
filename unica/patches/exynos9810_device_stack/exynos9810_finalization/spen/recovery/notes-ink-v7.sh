#!/sbin/sh
# TWRP filesystem patch, never a partition formatter or boot/kernel flasher.
set -eu
PAYLOAD=/tmp/unica-note9-spen-ink-v7
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

AIR=$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so
[ "$(digest "$SYSTEM/app/Notes33/Notes33.apk")" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Different Notes APK; no changes'
[ "$(digest "$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so")" = 54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9 ] || die 'Install accepted SPen v6 Notes crash fix first'

OLD=$AIR.unica-ink-v7-original
STAGE=$AIR.unica-ink-v7-stage
DISABLED=$AIR.unica-ink-v7-disabled
BASE=/data/adb/unica-spen-v5
for path in "$AIR" "$OLD" "$STAGE" "$DISABLED" "$BASE" "$BASE/collect.sh" "$BASE/armed"; do
    [ ! -L "$path" ] || die 'Unexpected symlink; no files changed'
done
if [ "$MODE" = restore ]; then
    [ "$(digest "$AIR")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Installed scanner differs; no files changed'
    [ "$(digest "$OLD")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'Original scanner backup differs; no files changed'
    [ ! -e "$DISABLED" ] || die 'Disabled scanner copy exists; preserve and inspect'
    mv "$AIR" "$DISABLED"
    if ! mv "$OLD" "$AIR"; then mv "$DISABLED" "$AIR"; die 'Restore failed; candidate retained'; fi
    sync
    echo 'Previous Notes render engine restored. Personal notes retained.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -f "$BASE/installed" ] && [ ! -d "$BASE/session-lock" ] || die 'Install Notes v6 logger first in TWRP'
[ "$(digest "$BASE/collect.sh")" = ad630c0a858b6e62b234a0c452f56178e40ee4423f3576a561eed1a369a80b04 ] || die 'Diagnostic collector differs; no files changed'
[ "$(digest /data/adb/service.d/90-unica-spen-v5.sh)" = 8cf1905c68078853951c24a65a860a62ba08bbe4ef537699cd48fdfd88309b5d ] || die 'Diagnostic startup differs; no files changed'
if [ "$(digest "$AIR")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ]; then
    [ "$(digest "$OLD")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'Scanner backup differs'
    echo armed > "$BASE/armed"
    echo 'Ink renderer candidate verified; existing one-shot logger rearmed.'; exit 0
fi
[ "$(digest "$AIR")" = 79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 ] || die 'Notes engine differs from the audited original; no files changed'
[ ! -e "$OLD" ] && [ ! -e "$STAGE" ] && [ ! -e "$DISABLED" ] || die 'Previous staging/backup exists'
[ "$(digest "$PAYLOAD/libSPenEngine.so")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Candidate checksum mismatch'
need=$(du -sk "$PAYLOAD/libSPenEngine.so" | awk '{print $1+16384}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
cp -p "$PAYLOAD/libSPenEngine.so" "$STAGE"
chmod 0644 "$STAGE"; chown 0:0 "$STAGE"
chcon u:object_r:system_file:s0 "$STAGE" || die 'Cannot label staged APK'
[ "$(digest "$STAGE")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Staged candidate checksum mismatch'
mv "$AIR" "$OLD"
if ! mv "$STAGE" "$AIR"; then mv "$OLD" "$AIR"; die 'Commit failed; previous APK restored'; fi
if [ "$(digest "$AIR")" != b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ]; then
    mv "$AIR" "$STAGE"; mv "$OLD" "$AIR"; die 'Final checksum failed; previous APK restored'
fi
if ! echo armed > "$BASE/armed"; then
    mv "$AIR" "$STAGE"; mv "$OLD" "$AIR"; die 'Cannot arm diagnostics; previous APK restored'
fi
sync
echo 'Notes normal-renderer TEST installed. Continuous-stroke ink remains device-unverified.'
echo 'Reboot System. DO NOT Format Data, reset Bluetooth or erase Notes data.'
