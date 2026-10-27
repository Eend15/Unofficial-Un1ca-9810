#!/sbin/sh
# TWRP filesystem patch, never a partition formatter or boot/kernel flasher.
set -eu
PAYLOAD=/tmp/unica-note9-spen-v9
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
SCAPK=$SYSTEM/app/SmartCapture/SmartCapture.apk
SCLIBDIR=$SYSTEM/app/SmartCapture/lib
SCARCH=$SCLIBDIR/arm64
SCLIB=$SCARCH/libSPenEngine.so
BASE=/data/adb/unica-spen-v5
SERVICE=/data/adb/service.d/90-unica-spen-v5.sh
[ "$(digest "$APK")" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Different Notes APK; no changes'
[ "$(digest "$REC")" = 54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9 ] || die 'Install the accepted Notes v6 crash fix first'
[ "$(digest "$ENGINE")" = b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e ] || die 'Install the accepted v8 S Pen test first (Notes renderer differs)'
for path in "$AIR" "$ENGINE" "$APK" "$REC" "$SCAPK" "$SCLIBDIR" "$SCARCH" "$SCLIB" "$BASE" "$SERVICE" "$BASE/collect.sh" "$BASE/armed"; do [ ! -L "$path" ] || die 'Unexpected symlink'; done
for suffix in original stage disabled failed; do [ ! -L "$AIR.unica-v9-$suffix" ] || die 'Unexpected backup symlink'; done
[ ! -L "$SCLIB.unica-v9-stage" ] || die 'Unexpected backup symlink'
AO=$AIR.unica-v9-original; AS=$AIR.unica-v9-stage; AD=$AIR.unica-v9-disabled; AF=$AIR.unica-v9-failed
SS=$SCLIB.unica-v9-stage
if [ "$MODE" = restore ]; then
    [ "$(digest "$AIR")" = 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ] || die 'Installed v9 AirCommand differs; no changes'
    [ "$(digest "$AO")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] || die 'v8 AirCommand backup missing or changed'
    [ ! -e "$AD" ] || die 'Disabled copy already exists; preserve and inspect'
    if [ -e "$SCLIB" ]; then [ "$(digest "$SCLIB")" = 37575afdfb068ad0d0d70ee7471f5544e207005ff0a41d91f2cff25508f60f47 ] || die 'Screen write engine differs; no changes'; fi
    restore_rollback() {
        rc=$?
        if [ "$rc" -ne 0 ] && [ -f "$AD" ]; then
            if [ -f "$AIR" ] && [ ! -e "$AO" ]; then mv "$AIR" "$AO" || true; fi
            if [ ! -e "$AIR" ]; then mv "$AD" "$AIR" || true; fi
            echo 'Restore failed; reinstated v9 AirCommand where possible. Preserve recovery.log.' >&2
        fi
    }
    trap restore_rollback EXIT
    mv "$AIR" "$AD"
    mv "$AO" "$AIR"
    [ "$(digest "$AIR")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] || die 'Restored AirCommand failed verification'
    rm -f "$AD"
    if [ -e "$SCLIB" ]; then rm -f "$SCLIB"; rmdir "$SCARCH" 2>/dev/null || true; rmdir "$SCLIBDIR" 2>/dev/null || true; fi
    [ ! -e "$SCLIB" ] || die 'Screen write engine could not be removed'
    sync; trap - EXIT
    echo 'v8 AirCommand restored and screen write engine override removed; Notes v6/v8 fixes and personal data retained.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -f "$BASE/installed" ] && [ ! -d "$BASE/session-lock" ] || die 'Known one-shot logger required; install from TWRP'
[ "$(digest "$BASE/collect.sh")" = ad630c0a858b6e62b234a0c452f56178e40ee4423f3576a561eed1a369a80b04 ] && [ "$(digest "$SERVICE")" = 8cf1905c68078853951c24a65a860a62ba08bbe4ef537699cd48fdfd88309b5d ] || die 'Logger differs; no changes'
# Screen write engine is optional: only for the exact audited SmartCapture build.
SC=0
if [ -f "$SCAPK" ] && [ "$(digest "$SCAPK")" = 8f883b01ba86c42cfffd5a1f52b8ce99866bf64f7535d0dc05e4c4d313d35157 ]; then
    if [ ! -e "$SCLIB" ]; then SC=1
    elif [ "$(digest "$SCLIB")" = 37575afdfb068ad0d0d70ee7471f5544e207005ff0a41d91f2cff25508f60f47 ]; then SC=2
    else echo 'Note: SmartCapture already has a different native engine override; screen write part skipped.'
    fi
else
    echo 'Note: SmartCapture differs from the audited build; screen write part skipped.'
fi
if [ "$(digest "$AIR")" = 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ]; then
    [ "$(digest "$AO")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] || die 'v9 AirCommand backup differs'
fi
if [ "$(digest "$AIR")" = 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ] && [ "$SC" != 1 ]; then
    echo armed > "$BASE/armed"; echo 'v9 already installed and verified; existing logger rearmed.'; exit 0
fi
if [ "$(digest "$AIR")" != 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ]; then
    [ "$(digest "$AIR")" = c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805 ] || die 'Requires the v8 S Pen test AirCommand; no changes'
    for file in "$AO" "$AS" "$AD" "$AF"; do [ ! -e "$file" ] || die 'Existing v9 backup/staging; preserve and inspect'; done
fi
[ ! -e "$SS" ] || die 'Existing screen write staging file; preserve and inspect'
[ "$(digest "$PAYLOAD/AirCommand.apk")" = 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ] && [ "$(digest "$PAYLOAD/libSPenEngine-smartcapture.so")" = 37575afdfb068ad0d0d70ee7471f5544e207005ff0a41d91f2cff25508f60f47 ] || die 'Payload checksum mismatch'
need=$(du -sk "$PAYLOAD" | awk '{print $1+32768}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
AB=0; SB=0; MADE_LIB=0; MADE_ARCH=0
rollback() {
    rc=$?
    if [ "$rc" -ne 0 ]; then
        if [ "$AB" = 1 ]; then
            if [ -e "$AIR" ]; then mv "$AIR" "$AF" || true; fi
            if mv "$AO" "$AIR"; then rm -f "$AF" || true; else echo 'AirCommand rollback needs manual inspection' >&2; fi
        fi
        rm -f "$AS" "$SS" || true
        if [ "$SB" = 1 ]; then rm -f "$SCLIB" || true; fi
        if [ "$MADE_ARCH" = 1 ]; then rmdir "$SCARCH" 2>/dev/null || true; fi
        if [ "$MADE_LIB" = 1 ]; then rmdir "$SCLIBDIR" 2>/dev/null || true; fi
        sync
        echo 'v9 transaction failed; previous files restored where possible. Save recovery.log.' >&2
    fi
}
trap rollback EXIT
if [ "$(digest "$AIR")" != 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ]; then
    cp -p "$PAYLOAD/AirCommand.apk" "$AS"
    chmod 0644 "$AS"; chown 0:0 "$AS"; chcon u:object_r:system_file:s0 "$AS" || die 'Cannot set file label'
    [ "$(digest "$AS")" = 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ] || die 'Staged checksum mismatch'
fi
if [ "$SC" = 1 ]; then
    if [ ! -d "$SCLIBDIR" ]; then mkdir "$SCLIBDIR"; MADE_LIB=1; fi
    if [ ! -d "$SCARCH" ]; then mkdir "$SCARCH"; MADE_ARCH=1; fi
    for dir in "$SCLIBDIR" "$SCARCH"; do chmod 0755 "$dir"; chown 0:0 "$dir"; chcon u:object_r:system_file:s0 "$dir" || die 'Cannot set directory label'; done
    cp -p "$PAYLOAD/libSPenEngine-smartcapture.so" "$SS"
    chmod 0644 "$SS"; chown 0:0 "$SS"; chcon u:object_r:system_file:s0 "$SS" || die 'Cannot set file label'
    [ "$(digest "$SS")" = 37575afdfb068ad0d0d70ee7471f5544e207005ff0a41d91f2cff25508f60f47 ] || die 'Staged screen write engine mismatch'
fi
if [ -e "$AS" ]; then
    mv "$AIR" "$AO"; AB=1
    mv "$AS" "$AIR"
    [ "$(digest "$AIR")" = 4815a8dc6c1c91c7268a6955209aa1a0557058bf9306f715f1ef7a6c1d58b0d5 ] || die 'Final AirCommand checksum mismatch'
fi
if [ "$SC" = 1 ]; then
    mv "$SS" "$SCLIB"; SB=1
    [ "$(digest "$SCLIB")" = 37575afdfb068ad0d0d70ee7471f5544e207005ff0a41d91f2cff25508f60f47 ] || die 'Final screen write engine checksum mismatch'
fi
echo armed > "$BASE/armed"
sync; trap - EXIT
echo 'v9 TEST installed: Note9 pen legacy firmware accepted by Air Actions; screen write uses normal rendering.'
echo 'Reboot System, unlock and test. DO NOT wipe data.'
