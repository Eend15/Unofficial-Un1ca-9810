#!/sbin/sh
# TWRP filesystem patch, never a partition formatter or boot/kernel flasher.
set -eu
PAYLOAD=/tmp/unica-note9-spen-v5
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
PARENT=$SYSTEM/app/Notes33/lib
LIB=$PARENT/arm64
STAGE=$PARENT/arm64.unica-spen-v6-stage
ORIGINAL=$PARENT/arm64.unica-spen-v6-original
DISABLED=$PARENT/arm64.unica-spen-v6-disabled
MARK=$PARENT/.unica-spen-native-v6
[ "$(sha256sum "$APK" | cut -d ' ' -f 1)" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Install the Notes 4.4.45.37 patch first; system APK differs'
for path in "$PARENT" "$LIB" "$ORIGINAL" "$STAGE" "$DISABLED"; do
    [ ! -L "$path" ] || die "Refusing unexpected symlink: $path"
done
if [ "$MODE" = restore ]; then
    [ -f "$MARK" ] || die 'No installed v6 native fix found'
    [ ! -e "$DISABLED" ] || die 'A disabled v6 library copy already exists; preserve and inspect it'
    [ -d "$ORIGINAL" ] || die 'Previous native directory missing; no files changed'
    (cd "$LIB" && sha256sum -c "$PAYLOAD/native-installed.sha256") || die 'Installed v6 libraries changed; no files changed'
    mv "$LIB" "$DISABLED"
    if [ -d "$ORIGINAL" ]; then mv "$ORIGINAL" "$LIB"; fi
    mv "$MARK" "$MARK.disabled"
    sync
    echo 'Native fix disabled; previous libraries restored without deleting files.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown patch mode'
if [ ! -f "$MARK" ]; then
    [ -f "$PARENT/.unica-spen-native-v5" ] || die 'Requires the installed v5 Notes patch; no files changed'
    [ "$(digest "$LIB/libSPenRecognizer.so")" = 1eb4c190ee27192f12541022f15eff160c41205fc21974c7ae070ec97c0bf8dd ] || die 'Existing recognizer differs from audited v5; no files changed'
fi

if [ -d "$LIB" ] && find "$LIB" -type l | grep -q .; then die 'Existing native library directory contains symlinks'; fi
(cd "$PAYLOAD" && sha256sum -c native.sha256) || die 'Native payload checksum mismatch'
if [ -f "$MARK" ]; then
    (cd "$LIB" && sha256sum -c "$PAYLOAD/native-installed.sha256") || die 'Installed v6 files differ; preserve before retrying'
    echo 'All 107 Notes native libraries are already correct.'
    exit 0
fi
[ ! -e "$STAGE" ] && [ ! -e "$ORIGINAL" ] && [ ! -e "$DISABLED" ] || die 'Previous native staging/backup exists; no files changed'
need=$(du -sk "$PAYLOAD/native" | awk '{print $1+32768}')
if [ -d "$LIB" ]; then extra=$(du -sk "$LIB" | awk '{print $1}'); need=$((need+extra)); fi
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
mkdir -p "$PARENT"
mkdir "$STAGE"
# Preserve existing app-local extras, replacing only libraries from this APK.
if [ -d "$LIB" ]; then cp -pR "$LIB/." "$STAGE/"; fi
cp -p "$PAYLOAD/native/"*.so "$STAGE/"
find "$STAGE" -type d -exec chmod 0755 {} \;
find "$STAGE" -type f -exec chmod 0644 {} \;
chown -R 0:0 "$STAGE"
chcon -R u:object_r:system_file:s0 "$STAGE" || die 'Cannot set native library labels'
chmod 0755 "$PARENT"
chown 0:0 "$PARENT"
chcon u:object_r:system_file:s0 "$PARENT"
(cd "$STAGE" && sha256sum -c "$PAYLOAD/native-installed.sha256") || die 'Staged native library verification failed'
HAD_ORIGINAL=0
COMMITTED=0
rollback_native() {
    rc=$?
    if [ "$rc" -ne 0 ]; then
        if [ "$COMMITTED" = 1 ]; then mv "$LIB" "$STAGE" || true; fi
        if [ "$HAD_ORIGINAL" = 1 ]; then mv "$ORIGINAL" "$LIB" || true; fi
        echo 'Native installation failed; original library directory restored.' >&2
    fi
}
trap rollback_native EXIT
if [ -d "$LIB" ]; then mv "$LIB" "$ORIGINAL"; HAD_ORIGINAL=1; fi
mv "$STAGE" "$LIB"
COMMITTED=1
(cd "$LIB" && sha256sum -c "$PAYLOAD/native-installed.sha256")
echo 'Notes 4.4.45.37 native libraries: 107 verified ARM64 files' > "$MARK"
sync
trap - EXIT
echo 'Notes native fix installed. Reboot System; DO NOT Format Data.'
echo 'APK, AirCommand, Bluetooth settings, kernel and personal notes were not changed.'
