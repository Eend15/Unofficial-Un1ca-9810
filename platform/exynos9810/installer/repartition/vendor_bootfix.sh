#!/sbin/sh
set -u
umask 022

BY_NAME=/dev/block/platform/11120000.ufs/by-name
VENDOR_MNT=/tmp/mnt_vendor_bootfix
SYSTEM_MNT=/tmp/mnt_system_bootfix
SYSTEM_TEMP_MOUNTED=false

log()
{
    echo "E9810 vendorfix: $*"
}

run_quiet()
{
    "$@" >/dev/null 2>&1
}

cleanup_mounts()
{
    run_quiet umount "$VENDOR_MNT" || true
    [ "$SYSTEM_TEMP_MOUNTED" = true ] && run_quiet umount "$SYSTEM_MNT" || true
}

trap cleanup_mounts EXIT

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

set_prop_file()
{
    _file="$1"
    _key="$2"
    _value="$3"

    [ -f "$_file" ] || return 1
    sed -i "/^${_key}=/d" "$_file" || return 1
    printf '%s=%s\n' "$_key" "$_value" >> "$_file" || return 1
}

find_system_prop()
{
    SYSTEM_PROP=
    for _system_prop in \
        /system/system/build.prop \
        /system/build.prop \
        /system_root/system/build.prop \
        /system_root/build.prop; do
        [ -f "$_system_prop" ] && {
            mount -o rw,remount /system 2>/dev/null || \
                mount -o rw,remount /system_root 2>/dev/null || true
            SYSTEM_PROP="$_system_prop"
            return 0
        }
    done

    mkdir -p "$SYSTEM_MNT"
    if mount -t ext4 -o rw "$BY_NAME/SYSTEM" "$SYSTEM_MNT" 2>/dev/null || \
        mount -o rw "$BY_NAME/SYSTEM" "$SYSTEM_MNT" 2>/dev/null; then
        SYSTEM_TEMP_MOUNTED=true
        for _system_prop in \
            "$SYSTEM_MNT/system/build.prop" \
            "$SYSTEM_MNT/build.prop"; do
            [ -f "$_system_prop" ] && {
                SYSTEM_PROP="$_system_prop"
                return 0
            }
        done
    fi
    return 1
}

run_quiet umount /vendor || true
run_quiet umount "$VENDOR_MNT" || true
mkdir -p "$VENDOR_MNT"

# Erofs is read-only: the bootfix is baked into the image at build time
# (unica/mods/erofs/customize.sh), so there is nothing to patch here.
if mount -t erofs -o ro "$BY_NAME/VENDOR" "$VENDOR_MNT" 2>/dev/null; then
    log "vendor is erofs (read-only); bootfix was baked at build time"
    run_quiet umount "$VENDOR_MNT" || true
    exit 0
fi

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

# The installer can still be used with legacy ext4 images. Detect the exact
# Samsung EFS topology at flash time because F and F/DS commonly report the
# same model string. Never guess the physical slot count from the codename.
get_prop()
{
    getprop "$1" 2>/dev/null || true
}

DEVICE_MODEL="$(get_prop ro.boot.em.model)"
[ -n "$DEVICE_MODEL" ] || DEVICE_MODEL="$(get_prop ro.product.model)"
FACTORY_PROP=/efs/imei/factory.prop
SIM_SLOTS="$(sed -n 's/^ro\.multisim\.simslotcount=//p' "$FACTORY_PROP" 2>/dev/null | head -n 1 | tr -d '\r')"
MULTISIM_CONFIG="$(sed -n 's/^persist\.radio\.multisim\.config=//p' "$FACTORY_PROP" 2>/dev/null | head -n 1 | tr -d '\r')"
case "$MULTISIM_CONFIG:$SIM_SLOTS" in
    ss:1|dsds:2) SIM_SOURCE=efs_factory ;;
    ss:*) SIM_SLOTS=1; SIM_SOURCE=efs_factory ;;
    dsds:*) SIM_SLOTS=2; SIM_SOURCE=efs_factory ;;
    *:1) MULTISIM_CONFIG=ss; SIM_SOURCE=efs_factory ;;
    *:2) MULTISIM_CONFIG=dsds; SIM_SOURCE=efs_factory ;;
    *)
        case "$DEVICE_MODEL" in
            SM-G960N*|SM-G965N*|SM-N960N*)
                SIM_SLOTS=1; MULTISIM_CONFIG=ss; SIM_SOURCE=korean_model ;;
            *)
                log "cannot safely determine SIM topology from EFS: $DEVICE_MODEL"
                exit 1 ;;
        esac
        ;;
esac
log "radio topology: model=$DEVICE_MODEL slots=$SIM_SLOTS mode=$MULTISIM_CONFIG source=$SIM_SOURCE"

VENDOR_PROP="$VENDOR_MNT/build.prop"
set_prop_file "$VENDOR_PROP" ro.multisim.simslotcount "$SIM_SLOTS" || exit 1
set_prop_file "$VENDOR_PROP" ro.vendor.multisim.simslotcount "$SIM_SLOTS" || exit 1
set_prop_file "$VENDOR_PROP" persist.radio.multisim.config "$MULTISIM_CONFIG" || exit 1
set_prop_file "$VENDOR_PROP" ro.telephony.sim_slots.count "$SIM_SLOTS" || exit 1
set_prop_file "$VENDOR_PROP" ro.config.show4gforlte true || exit 1

SYSTEM_PROP=
find_system_prop || true
if [ -z "$SYSTEM_PROP" ]; then
    log "cannot locate system build.prop"
    exit 1
fi
set_prop_file "$SYSTEM_PROP" ro.telephony.sim_slots.count "$SIM_SLOTS" || exit 1
set_prop_file "$SYSTEM_PROP" ro.multisim.simslotcount "$SIM_SLOTS" || exit 1
set_prop_file "$SYSTEM_PROP" persist.radio.multisim.config "$MULTISIM_CONFIG" || exit 1
set_prop_file "$SYSTEM_PROP" ro.config.show4gforlte true || exit 1

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

PANEL_WAKE_RC="$VENDOR_MNT/etc/init/exynos9810-panel-wake.rc"
cat > "$PANEL_WAKE_RC" <<'EOF'
on property:sys.boot_completed=1
    write /sys/class/lcd/panel/alpm 0

on property:debug.tracing.screen_state=2
    write /sys/class/lcd/panel/alpm 0
EOF

fix_path "$VENDOR_MNT/build.prop" 0644 u:object_r:vendor_file:s0
fix_path "$SYSTEM_PROP" 0644 u:object_r:system_file:s0
fix_path "$RC3" 0644 u:object_r:vendor_configs_file:s0
fix_path "$VENDOR_MNT/etc/init/hw" 0755 u:object_r:vendor_configs_file:s0
fix_path "$VENDOR_MNT/etc/init/hw/init.samsungexynos9810.rc" 0644 u:object_r:vendor_configs_file:s0
fix_path "$HEALTH_RC" 0644 u:object_r:vendor_configs_file:s0
fix_path "$PANEL_WAKE_RC" 0644 u:object_r:vendor_configs_file:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.keymaster@3.0-service" 0755 u:object_r:hal_keymaster_default_exec:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.keymaster@4.0-service" 0755 u:object_r:hal_keymaster_default_exec:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.gatekeeper@1.0-service" 0755 u:object_r:hal_gatekeeper_default_exec:s0
fix_path "$VENDOR_MNT/bin/hw/android.hardware.health@2.1-service-samsung" 0755 u:object_r:hal_health_default_exec:s0

sync
cleanup_mounts
trap - EXIT
log "done"
exit 0
