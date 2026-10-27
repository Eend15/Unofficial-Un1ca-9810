#!/sbin/sh
# TWRP filesystem patch, never a partition formatter or boot/kernel flasher.
set -eu
PAYLOAD=/tmp/unica-note9-notes-v4
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
APK=$SYSTEM/app/Notes33/Notes33.apk

LIB=$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so
OLD=$LIB.unica-v4-original
STAGE=$LIB.unica-v4-stage
DISABLED=$LIB.unica-v4-disabled
EXPECTED_OLD=7dd25522867bb182893d29e3101becf2df75787b3046de137c94c463c7abb363
EXPECTED_NEW=1eb4c190ee27192f12541022f15eff160c41205fc21974c7ae070ec97c0bf8dd
[ "$(digest "$APK")" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Notes APK differs from supported 4.4.45.37'
for path in "$LIB" "$OLD" "$STAGE" "$DISABLED"; do [ ! -L "$path" ] || die 'Unexpected symlink'; done
if [ "$MODE" = restore ]; then
    [ "$(digest "$LIB")" = "$EXPECTED_NEW" ] || die 'Installed library differs; no files changed'
    [ "$(digest "$OLD")" = "$EXPECTED_OLD" ] || die 'Original backup missing or changed'
    [ ! -e "$DISABLED" ] || die 'Disabled copy already exists'
    mv "$LIB" "$DISABLED"
    if ! mv "$OLD" "$LIB"; then mv "$DISABLED" "$LIB"; die 'Restore failed; patched library retained'; fi
    sync
    echo 'v4 restored to previous native library. Reboot System. No data wipe.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
if [ "$(digest "$LIB")" = "$EXPECTED_NEW" ]; then
    [ "$(digest "$OLD")" = "$EXPECTED_OLD" ] || die 'Patched library has no valid backup'
    echo 'v4 already installed and backup verified'; exit 0
fi
[ "$(digest "$LIB")" = "$EXPECTED_OLD" ] || die 'Requires v3 native libraries; current recognizer differs'
[ ! -e "$OLD" ] && [ ! -e "$STAGE" ] && [ ! -e "$DISABLED" ] || die 'Previous staging or backup exists'
[ "$(digest "$PAYLOAD/libSPenRecognizer.so")" = "$EXPECTED_NEW" ] || die 'Payload checksum mismatch'
cp -p "$PAYLOAD/libSPenRecognizer.so" "$STAGE"
chmod 0644 "$STAGE"
chown 0:0 "$STAGE"
chcon u:object_r:system_file:s0 "$STAGE" || die 'Cannot set SELinux file label'
[ "$(digest "$STAGE")" = "$EXPECTED_NEW" ] || die 'Staged checksum mismatch'
mv "$LIB" "$OLD"
if ! mv "$STAGE" "$LIB"; then mv "$OLD" "$LIB"; die 'Commit failed; original restored'; fi
if [ "$(digest "$LIB")" != "$EXPECTED_NEW" ]; then
    mv "$LIB" "$STAGE"; mv "$OLD" "$LIB"; die 'Verification failed; original restored'
fi
sync
echo 'v4 installed: bypass only recursive diagnostic PrintResult, recognition unchanged.'
echo 'Reboot System. DO NOT Format Data or clear Samsung Notes data.'
