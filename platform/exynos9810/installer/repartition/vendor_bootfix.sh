#!/sbin/sh
set -u
umask 022

BY_NAME=/dev/block/platform/11120000.ufs/by-name
VENDOR_MNT=/tmp/mnt_vendor_bootfix

log()
{
    echo "E9810 vendorfix: $*"
}

run_quiet()
{
    "$@" >/dev/null 2>&1
}

fix_path()
{
    _path="$1"
    _mode="$2"
    _context="$3"

    [ -e "$_path" ] || return 0
    chown 0:0 "$_path" || true
    chmod "$_mode" "$_path" || true
    if [ -n "$CHCON" ]; then
        "$CHCON" "$_context" "$_path" || true
    fi
}

run_quiet umount /vendor || true
run_quiet umount "$VENDOR_MNT" || true
mkdir -p "$VENDOR_MNT"

if ! mount -t ext4 -o rw "$BY_NAME/VENDOR" "$VENDOR_MNT"; then
    if ! mount -o rw "$BY_NAME/VENDOR" "$VENDOR_MNT"; then
        log "cannot mount vendor rw"
        exit 1
    fi
fi

RC3="$VENDOR_MNT/etc/init/android.hardware.keymaster@3.0-service.rc"
if [ -f "$RC3" ] && ! grep -q 'interface android.hardware.keymaster@3.0::IKeymasterDevice default' "$RC3"; then
    awk '
        {
            print
            if ($0 ~ /^service vendor\.keymaster-3-0 /) {
                print "    interface android.hardware.keymaster@3.0::IKeymasterDevice default"
            }
        }
    ' "$RC3" > "$RC3.tmp" && mv "$RC3.tmp" "$RC3"
fi

HEALTH_RC="$VENDOR_MNT/etc/init/android.hardware.health@2.1-service-samsung.rc"
if [ -f "$HEALTH_RC" ] && ! grep -q 'interface android.hardware.health@2.0::IHealth default' "$HEALTH_RC"; then
    awk '
        {
            print
            if ($0 ~ /^service health-hal-2-1-samsung /) {
                print "    interface android.hardware.health@2.0::IHealth default"
            }
        }
    ' "$HEALTH_RC" > "$HEALTH_RC.tmp" && mv "$HEALTH_RC.tmp" "$HEALTH_RC"
fi
if [ -f "$HEALTH_RC" ] && ! grep -q 'interface android.hardware.health@2.1::IHealth default' "$HEALTH_RC"; then
    awk '
        {
            print
            if ($0 ~ /^service health-hal-2-1-samsung /) {
                print "    interface android.hardware.health@2.1::IHealth default"
            }
        }
    ' "$HEALTH_RC" > "$HEALTH_RC.tmp" && mv "$HEALTH_RC.tmp" "$HEALTH_RC"
fi

if [ -f "$VENDOR_MNT/build.prop" ]; then
    sed -i '/^ro.vendor.build.security_patch=/d' "$VENDOR_MNT/build.prop"
    sed -i '/^ro.security.keystore.keytype=/d' "$VENDOR_MNT/build.prop"
    sed -i '/^ro.hardware.keystore=/d' "$VENDOR_MNT/build.prop"
    sed -i '/^ro.hardware.keystore_desede=/d' "$VENDOR_MNT/build.prop"
    {
        echo ''
        echo '# Exynos9810 Android 16 keystore compat'
        echo 'ro.vendor.build.security_patch=2026-05-05'
        echo 'ro.hardware.keystore=mdfpp'
        echo 'ro.security.keystore.keytype=sak'
    } >> "$VENDOR_MNT/build.prop"
fi

CHCON=
for candidate in /system/bin/chcon /sbin/chcon /vendor/bin/chcon; do
    if [ -x "$candidate" ]; then
        CHCON="$candidate"
        break
    fi
done

if [ -f "$VENDOR_MNT/etc/init/init.samsungexynos9810.rc" ]; then
    mkdir -p "$VENDOR_MNT/etc/init/hw"
    cp -pf "$VENDOR_MNT/etc/init/init.samsungexynos9810.rc" "$VENDOR_MNT/etc/init/hw/init.samsungexynos9810.rc"
fi

fix_path "$VENDOR_MNT/build.prop" 0644 u:object_r:vendor_file:s0
fix_path "$RC3" 0644 u:object_r:vendor_configs_file:s0
fix_path "$VENDOR_MNT/etc/init/hw" 0755 u:object_r:vendor_configs_file:s0
fix_path "$VENDOR_MNT/etc/init/hw/init.samsungexynos9810.rc" 0644 u:object_r:vendor_configs_file:s0
fix_path "$HEALTH_RC" 0644 u:object_r:vendor_configs_file:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.keymaster@3.0-service" 0755 u:object_r:hal_keymaster_default_exec:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.keymaster@4.0-service" 0755 u:object_r:hal_keymaster_default_exec:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.gatekeeper@1.0-service" 0755 u:object_r:hal_gatekeeper_default_exec:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.health@2.1-service-samsung" 0755 u:object_r:hal_health_default_exec:s0

sync
umount "$VENDOR_MNT" || true
log "done"
exit 0
