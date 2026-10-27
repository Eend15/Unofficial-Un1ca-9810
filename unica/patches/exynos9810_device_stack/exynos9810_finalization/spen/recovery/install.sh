#!/sbin/sh
# TWRP filesystem patch, never a partition formatter or boot/kernel flasher.
set -eu
PAYLOAD=/tmp/unica-note9-spen-20261025
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
NOTES=$SYSTEM/app/Notes33/Notes33.apk
AIR=$SYSTEM/priv-app/AirCommand/AirCommand.apk
BUILD=$SYSTEM/build.prop
for f in "$NOTES" "$AIR" "$BUILD"; do [ -f "$f" ] && [ ! -L "$f" ] || die "Missing or symlinked target: $f"; done
[ -d /data/media/0 ] || die 'Unlock/mount Data in TWRP first, so originals can be backed up'
awk '$2=="/data" && ($3=="ext4" || $3=="f2fs") {ok=1} END {exit !ok}' /proc/mounts || die 'Data is not mounted'
if [ "$MODE" = restore ]; then
    [ -f "$BACKUP/complete" ] || die 'No completed patch backup found'
    (cd "$BACKUP" && sha256sum -c originals.sha256) || die 'Backup checksum mismatch'
    # Restoring app binaries does not downgrade a migrated Notes database.
    for pair in "Notes33.apk:$NOTES" "AirCommand.apk:$AIR" "build.prop:$BUILD"; do
        name=${pair%%:*}; dst=${pair#*:}
        cp "$BACKUP/$name" "$dst.restore-tmp" || die 'Restore copy failed'
        chmod 0644 "$dst.restore-tmp"
        chown 0:0 "$dst.restore-tmp"
        chcon u:object_r:system_file:s0 "$dst.restore-tmp" || die 'Cannot restore SELinux label'
        mv -f "$dst.restore-tmp" "$dst"
    done
    sync
    echo 'Original system files restored. Reboot; no userdata was erased.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown patch mode'
(cd "$PAYLOAD" && sha256sum -c payload.sha256) || die 'Corrupted patch payload'
# Only the known legacy Notes donor or this exact replacement may be changed.
case "$(digest "$NOTES")" in
    7efba32e183e6ace5291f7d80c8cf00022c6374a4c7e5e5c8d1d03aad917239f|daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667) ;;
    *) die 'Different Notes system APK: send its version/hash before patching';;
esac
if [ -f /vendor/build.prop ] && grep -q '^ro.smps.enable=' /vendor/build.prop; then
    die 'Vendor-owned SMPS property needs a matching patch; no files changed'
fi
if [ -e "$BACKUP" ]; then
    if [ -f "$BACKUP/complete" ] && [ "$(digest "$NOTES")" = "$(digest "$PAYLOAD/Notes33.apk")" ] && [ "$(digest "$AIR")" = "$(digest "$PAYLOAD/AirCommand.apk")" ]; then
        echo 'This patch is already installed; originals preserved.'
        exit 0
    fi
    die 'An earlier backup exists; preserve it and inspect before another attempt'
fi
need=$(du -k "$PAYLOAD/Notes33.apk" "$PAYLOAD/AirCommand.apk" | awk '{n+=$1} END{print n+65536}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Not enough free System space for atomic replacement'
need=$(du -k "$NOTES" "$AIR" "$BUILD" | awk '{n+=$1} END{print n+65536}')
free=$(df -k /data/media/0 | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Not enough Data space for original-file backups'
mkdir "$BACKUP"
chmod 0700 "$BACKUP"
cp -p "$NOTES" "$BACKUP/Notes33.apk"
cp -p "$AIR" "$BACKUP/AirCommand.apk"
cp -p "$BUILD" "$BACKUP/build.prop"
(cd "$BACKUP" && sha256sum Notes33.apk AirCommand.apk build.prop > originals.sha256)
(cd "$BACKUP" && sha256sum -c originals.sha256) || die 'Backup verification failed'
rollback() {
    result=$?
    if [ "$result" -ne 0 ]; then
        echo 'Patch failed; restoring originals.' >&2
        cp -p "$BACKUP/Notes33.apk" "$NOTES"
        cp -p "$BACKUP/AirCommand.apk" "$AIR"
        cp -p "$BACKUP/build.prop" "$BUILD"
        for f in "$NOTES" "$AIR" "$BUILD"; do
            chown 0:0 "$f"; chmod 0644 "$f"; chcon u:object_r:system_file:s0 "$f"
        done
        sync
    fi
}
trap rollback EXIT
cp "$PAYLOAD/Notes33.apk" "$NOTES.spen-tmp"
cp "$PAYLOAD/AirCommand.apk" "$AIR.spen-tmp"
awk '!/^ro\.smps\.enable=/' "$BUILD" > "$BUILD.spen-tmp"
printf '\nro.smps.enable=true\n' >> "$BUILD.spen-tmp"
[ "$(digest "$NOTES.spen-tmp")" = "$(digest "$PAYLOAD/Notes33.apk")" ]
[ "$(digest "$AIR.spen-tmp")" = "$(digest "$PAYLOAD/AirCommand.apk")" ]
for f in "$NOTES" "$AIR" "$BUILD"; do
    chmod 0644 "$f.spen-tmp"
    chown 0:0 "$f.spen-tmp"
    chcon u:object_r:system_file:s0 "$f.spen-tmp"
done
mv -f "$NOTES.spen-tmp" "$NOTES"
mv -f "$AIR.spen-tmp" "$AIR"
mv -f "$BUILD.spen-tmp" "$BUILD"
[ "$(digest "$NOTES")" = "$(digest "$PAYLOAD/Notes33.apk")" ]
[ "$(digest "$AIR")" = "$(digest "$PAYLOAD/AirCommand.apk")" ]
[ "$(prop ro.smps.enable "$BUILD")" = true ]
printf 'UN1CA Note9 S Pen test patch 20261025\n' > "$BACKUP/complete"
sync
trap - EXIT
echo "Installed. Originals: $BACKUP"
echo 'Reboot System. Enable Air command with S Pen button in S Pen settings.'
echo 'Retest Notes ink and Air Actions; physical acceptance is still pending.'
