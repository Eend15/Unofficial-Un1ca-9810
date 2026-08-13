#!/sbin/sh
set -e

# The N770F VNDK31 radio payload is a coherent unit: its rild, libril_sem,
# libsec-ril and HIDL interface libraries implement IRadio 1.6 together.
# Keeping this split manifest is required for Android 16 PhoneFactory.
[ -f /vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml ] || exit 1

PROP=/vendor/build.prop
SYSTEM_ROOT=/tmp/unica-system
SYSTEM_PROP="$SYSTEM_ROOT/build.prop"
[ -f "$SYSTEM_PROP" ] || SYSTEM_PROP="$SYSTEM_ROOT/system/build.prop"
DATA_PROP=/data/property/persist.ril.esim.slotswitch
setprop_line() {
    key="$1"
    value="$2"
    if grep -q "^${key}=" "$PROP"; then
        sed -i "s#^${key}=.*#${key}=${value}#" "$PROP"
    else
        printf '\n%s=%s\n' "$key" "$value" >> "$PROP"
    fi
}

system_setprop_line() {
    key="$1"
    value="$2"
    [ -f "$SYSTEM_PROP" ] || return 0
    if grep -q "^${key}=" "$SYSTEM_PROP"; then
        sed -i "s#^${key}=.*#${key}=${value}#" "$SYSTEM_PROP"
    else
        printf '\n%s=%s\n' "$key" "$value" >> "$SYSTEM_PROP"
    fi
}

# Keep the N770F/Exynos9810 RIL and Android PhoneFactory on the physical
# topology of the phone being flashed. F and F/DS commonly expose the same
# model property, so Samsung EFS factory data is the authoritative source.
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
                echo "E9810: cannot safely determine SIM topology from EFS: $DEVICE_MODEL" >&2
                exit 1 ;;
        esac
        ;;
esac
echo "E9810: radio topology model=$DEVICE_MODEL slots=$SIM_SLOTS mode=$MULTISIM_CONFIG source=$SIM_SOURCE"

# The system property must agree with the physical topology before framework
# telephony creates the subscriber/IMEI service.
system_setprop_line ro.telephony.sim_slots.count "$SIM_SLOTS"
system_setprop_line ro.multisim.simslotcount "$SIM_SLOTS"
system_setprop_line persist.radio.multisim.config "$MULTISIM_CONFIG"
system_setprop_line ro.config.show4gforlte true

setprop_line ro.multisim.simslotcount "$SIM_SLOTS"
setprop_line ro.vendor.multisim.simslotcount "$SIM_SLOTS"
setprop_line persist.radio.multisim.config "$MULTISIM_CONFIG"
setprop ro.multisim.simslotcount "$SIM_SLOTS"
setprop ro.vendor.multisim.simslotcount "$SIM_SLOTS"
setprop persist.radio.multisim.config "$MULTISIM_CONFIG"
setprop ro.telephony.sim_slots.count "$SIM_SLOTS"
setprop persist.ril.esim.slotswitch ""
rm -f "$DATA_PROP"

# Keep ADB available as MTP + debugging after every boot for development builds.
setprop persist.sys.usb.config mtp,adb
setprop persist.sys.usb.configfs 0

chmod 0755 /vendor/bin/hw/rild /vendor/bin/secril_config_svc
chmod 0644 /vendor/lib64/android.hardware.radio@1.5.so
chmod 0644 /vendor/lib64/android.hardware.radio@1.6.so
chmod 0644 /vendor/lib64/vendor.samsung.hardware.radio.channel@2.0.so
chmod 0644 /vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml
# Keep the Samsung channel split: it declares imsd and imsd2, which are
# required for IMS/data on this legacy stack.
chmod 0644 /vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml 2>/dev/null || true
exit 0
