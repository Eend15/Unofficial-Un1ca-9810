SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_KERNELSU_NEXT_APK="${EXYNOS9810_KERNELSU_NEXT_APK:-$MODPATH/kernelsu/KernelSUNext.apk}"
EXYNOS9810_ALLOW_EXTERNAL_DONOR="${EXYNOS9810_ALLOW_EXTERNAL_DONOR:-false}"
EXYNOS9810_EMBEDDED_PORT_DIR="$SRC_DIR/unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port"
EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-}"
EXYNOS9810_EMBEDDED_AUDIO_DIR="${EXYNOS9810_EMBEDDED_AUDIO_DIR:-$SRC_DIR/unica/mods/zzzzz_exynos9810_final_cleanup/exynos9810_audio}"

if [ "$EXYNOS9810_ALLOW_EXTERNAL_DONOR" = "true" ] && \
        [ -d "$EXYNOS9810_LEGACY_PORT_DIR/vendor" ]; then
    LOG "Using explicitly selected Exynos9810 donor overlay"
else
    # Keep the clean build independent from any donor path left in the shell.
    EXYNOS9810_LEGACY_PORT_DIR="$EXYNOS9810_EMBEDDED_PORT_DIR"
    if [ -d "$EXYNOS9810_LEGACY_PORT_DIR/vendor" ]; then
        LOG "Using repository-embedded Exynos9810 boot baseline"
    else
        EXYNOS9810_LEGACY_PORT_DIR=""
        LOGW "Embedded Exynos9810 boot baseline is missing; donor-dependent final fixes are disabled"
    fi
fi

_EXYNOS9810_FINAL_IMPORT_FUNCTIONS()
{
    local SRC="$SRC_DIR/unica/patches/exynos9810_device_stack/customize.sh"
    local TMP="$WORK_DIR/tmp/exynos9810_final_imports.sh"

    mkdir -p "$(dirname "$TMP")"
    python3 - "$SRC" "$TMP" <<'PY' || return 1
from pathlib import Path
import sys

source = Path(sys.argv[1])
target = Path(sys.argv[2])
text = source.read_text().splitlines(keepends=True)
names = [
    "_EXYNOS9810_REPLACE_SMALI_METHOD",
    "_EXYNOS9810_PATCH_BLUETOOTH_AGENT",
    "_EXYNOS9810_PATCH_ONEUI8_CAMERA_APP",
]

out = []
for name in names:
    start = None
    for i, line in enumerate(text):
        if line.strip() == f"{name}()":
            start = i
            break
    if start is None:
        raise SystemExit(f"{name} not found")
    end = None
    for i in range(start + 1, len(text)):
        if text[i] == "}\n" or text[i] == "}":
            end = i + 1
            break
    if end is None:
        raise SystemExit(f"{name} end not found")
    out.extend(text[start:end])
    out.append("\n")

target.write_text("".join(out))
PY

    . "$TMP"
}

_EXYNOS9810_FINAL_DELETE_METADATA_PREFIX()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local CONTEXT="$3"
    local RAW_CONTEXT
    local ESCAPED_CONTEXT

    while [[ "${ENTRY:0:1}" == "/" ]]; do
        ENTRY="${ENTRY:1}"
    done
    while [[ "${CONTEXT:0:1}" != "/" ]]; do
        CONTEXT="/$CONTEXT"
    done

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"

    awk -v entry="$ENTRY" '$1 != entry && index($1, entry "/") != 1 { print }' \
        "$WORK_DIR/configs/fs_config-$PARTITION" > "$WORK_DIR/configs/fs_config-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"

    RAW_CONTEXT="$CONTEXT"
    ESCAPED_CONTEXT="/$(_HANDLE_SPECIAL_CHARS "${CONTEXT#/}")"
    RAW_CONTEXT="$RAW_CONTEXT" ESCAPED_CONTEXT="$ESCAPED_CONTEXT" awk '
        BEGIN {
            raw = ENVIRON["RAW_CONTEXT"]
            escaped = ENVIRON["ESCAPED_CONTEXT"]
        }
        $1 != raw && index($1, raw "/") != 1 && $1 != escaped && index($1, escaped "/") != 1 { print }
    ' \
        "$WORK_DIR/configs/file_context-$PARTITION" > "$WORK_DIR/configs/file_context-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/file_context-$PARTITION.tmp" "$WORK_DIR/configs/file_context-$PARTITION"
}
_EXYNOS9810_FINAL_DELETE_APKTOOL_ENTRY()
{
    local REL="$1"
    local APK_REL

    while [[ "${REL:0:1}" == "/" ]]; do
        REL="${REL:1}"
    done

    case "$REL" in
        system/*)
            APK_REL="${REL#system/}"
            rm -rf "$APKTOOL_DIR/system/$APK_REL"
            ;;
        product/*)
            APK_REL="${REL#product/}"
            rm -rf "$APKTOOL_DIR/product/$APK_REL" "$APKTOOL_DIR/system/product/$APK_REL"
            ;;
        system/product/*)
            APK_REL="${REL#system/product/}"
            rm -rf "$APKTOOL_DIR/product/$APK_REL" "$APKTOOL_DIR/system/product/$APK_REL"
            ;;
    esac
}

_EXYNOS9810_FINAL_SET_METADATA()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local USER="$3"
    local GROUP="$4"
    local MODE="$5"
    local LABEL="$6"

    if type _EXYNOS9810_SET_METADATA_SAFE >/dev/null 2>&1; then
        _EXYNOS9810_SET_METADATA_SAFE "$PARTITION" "$ENTRY" "$USER" "$GROUP" "$MODE" "$LABEL"
        return $?
    fi

    while [[ "${ENTRY:0:1}" == "/" ]]; do
        ENTRY="${ENTRY:1}"
    done
    [ "$PARTITION" != "system" ] && [[ "$ENTRY" != "$PARTITION/"* ]] && ENTRY="$PARTITION/$ENTRY"

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "$PARTITION" "$ENTRY" "/$ENTRY"
    echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$WORK_DIR/configs/fs_config-$PARTITION"
    echo "/$(_HANDLE_SPECIAL_CHARS "$ENTRY") $LABEL" >> "$WORK_DIR/configs/file_context-$PARTITION"
}

_EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY()
{
    local REL="$1"

    while [[ "${REL:0:1}" == "/" ]]; do
        REL="${REL:1}"
    done

    rm -rf "$WORK_DIR/system/$REL"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "system" "$REL" "/$REL"
    _EXYNOS9810_FINAL_DELETE_APKTOOL_ENTRY "$REL"

    if [[ "$REL" == product/* ]]; then
        local PRODUCT_REL="${REL#product/}"
        rm -rf "$WORK_DIR/product/$PRODUCT_REL"
        _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "product" "$PRODUCT_REL" "/$PRODUCT_REL"
        _EXYNOS9810_FINAL_DELETE_APKTOOL_ENTRY "product/$PRODUCT_REL"
    fi
}

_EXYNOS9810_FINAL_DELETE_FOUND_DIR()
{
    local DIR="$1"
    local REL

    if [[ "$DIR" == "$WORK_DIR/system/"* ]]; then
        REL="${DIR#$WORK_DIR/system/}"
        _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "$REL"
    elif [[ "$DIR" == "$WORK_DIR/product/"* ]]; then
        REL="${DIR#$WORK_DIR/product/}"
        rm -rf "$DIR"
        _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "product" "$REL" "/$REL"
        _EXYNOS9810_FINAL_DELETE_APKTOOL_ENTRY "product/$REL"
    fi

}

_EXYNOS9810_FINAL_RESTORE_LEGACY_RADIO_STACK()
{
    # Preserve the real Exynos9810 RIL path. Do not synthesize IMEI properties:
    # the modem/EFS remains authoritative for the device IMEI.
    local ROOT="$EXYNOS9810_LEGACY_PORT_DIR"
    local REL SRC DST TARGET_SRC

    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0
    [ -n "$ROOT" ] && [ -d "$ROOT/vendor" ] || return 0
    LOG "- Restoring final Exynos9810 RIL/IMEI radio stack"

    for REL in \
        vendor/bin/hw/rild \
        vendor/bin/secril_config_svc \
        vendor/lib/libaudio-ril.so \
        vendor/lib/libsec_semRil.so \
        vendor/lib/libsecril-client.so \
        vendor/lib64/libril_sem.so \
        vendor/lib64/librilutils.so \
        vendor/lib64/libsec-ril.so \
        vendor/lib64/libsec_semRil.so \
        vendor/lib64/libsecril-client.so \
        vendor/lib64/libSemTelephonyProps.so \
        vendor/lib/libvndsecril-client.so \
        vendor/lib64/libvndsecril-client.so \
        vendor/lib64/vendor.samsung.hardware.radio.bridge@2.0.so \
        vendor/lib64/vendor.samsung.hardware.radio.bridge@2.1.so \
        vendor/lib64/vendor.samsung.hardware.radio.channel@2.0.so \
        vendor/lib64/vendor.samsung.hardware.radio@2.0.so \
        vendor/lib64/vendor.samsung.hardware.radio@2.1.so \
        vendor/lib64/vendor.samsung.hardware.radio@2.2.so \
        vendor/etc/init/init.vendor.rilcommon.rc; do
        SRC="$ROOT/$REL"
        if [ ! -f "$SRC" ]; then
            TARGET_SRC="$ROOT/device_port/device/$TARGET_CODENAME/$REL"
            [ -f "$TARGET_SRC" ] && SRC="$TARGET_SRC"
        fi
        [ -f "$SRC" ] || continue
        DST="$WORK_DIR/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        case "$REL" in
            vendor/bin/hw/rild)
                _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" \
                    0 2000 755 "u:object_r:rild_exec:s0" ;;
            vendor/bin/*)
                _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" \
                    0 2000 755 "u:object_r:vendor_file:s0" ;;
            vendor/etc/*)
                _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" \
                    0 0 644 "u:object_r:vendor_configs_file:s0" ;;
            *)
                _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" \
                    0 0 644 "u:object_r:vendor_file:s0" ;;
        esac
    done

    # Restore the legacy Exynos9810 imsd daemon; the donor Android 16 imsd loses the channel callback.
    for REL in system/bin/imsd system/etc/init/imsd.rc; do
        SRC="$ROOT/$REL"
        [ -f "$SRC" ] || continue
        # System files live below the system partition's nested system/
        # root. Writing to $WORK_DIR/$REL would collide with the intentional
        # top-level /system/bin symlink created by the system-as-root layout.
        DST="$WORK_DIR/system/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        MODE=755
        CONTEXT="u:object_r:system_file:s0"
        case "$REL" in
            system/etc/*)
                MODE=644
                CONTEXT="u:object_r:system_configs_file:s0"
                ;;
        esac
        _EXYNOS9810_FINAL_SET_METADATA "system" "$REL" 0 0 "$MODE" "$CONTEXT"
    done
    SRC="$ROOT/vendor/etc/init/vendor.samsung.rilchip.slsi.rc"
    if [ -f "$SRC" ]; then
        DST="$WORK_DIR/vendor/etc/init/vendor.sem.rilchip.rc"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        _EXYNOS9810_FINAL_SET_METADATA "vendor" \
            "vendor/etc/init/vendor.sem.rilchip.rc" \
            0 0 644 "u:object_r:vendor_configs_file:s0"
    fi

    # Preserve the donor's final Samsung rc filename as well. Some legacy
    # vendors use vendor.sem.rilchip.rc directly; renaming it can leave
    # ril-daemon unstarted and Android reports an unknown IMEI.
    SRC="$ROOT/vendor/etc/init/vendor.sem.rilchip.rc"
    if [ -f "$SRC" ]; then
        DST="$WORK_DIR/vendor/etc/init/vendor.sem.rilchip.rc"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        _EXYNOS9810_FINAL_SET_METADATA "vendor" \
            "vendor/etc/init/vendor.sem.rilchip.rc" \
            0 0 644 "u:object_r:vendor_configs_file:s0"
    fi

    for REL in vendor/bin/hw/rild vendor/etc/init/vendor.sem.rilchip.rc \
        vendor/lib/libvndsecril-client.so vendor/lib64/libvndsecril-client.so; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Exynos9810 IMEI radio component missing after final restore: $REL"
            return 1
        }
    done
}

_EXYNOS9810_FINAL_RESTORE_RADIO_VINTF()
{
    # Android 16 must see one coherent N770F VNDK31 radio family.
    # Mixing its IRadio 1.6 manifest with the older 1.4 rild
    # blocks PhoneFactory and removes IMEI; keeping only the old 1.4 family
    # leaves the modem in emergency-only registration. Restore rild, RIL
    # libraries, HIDL interfaces, init files and manifests as one unit.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local PAYLOAD="$SRC_DIR/unica/mods/zzzzz_exynos9810_final_cleanup/radio_update/vendor"
    local REL ACTUAL EXPECTED
    LOG "- Restoring coherent N770F IRadio 1.6 stack for Exynos9810"

    [ -d "$PAYLOAD" ] || {
        LOGE "Exynos9810 radio payload is missing: $PAYLOAD"
        return 1
    }

    cp -af "$PAYLOAD/." "$WORK_DIR/vendor/" || return 1

    # Do not bake a single/dual topology into EROFS. Samsung's stock
    # secril_config_svc reads the immutable device value from EFS during `on fs`
    # and sets both framework and vendor slot-count properties before RIL starts.
    for REL in \
        ro.multisim.simslotcount \
        ro.vendor.multisim.simslotcount \
        persist.radio.multisim.config \
        ro.telephony.sim_slots.count; do
        _EXYNOS9810_FINAL_DELETE_PROP "$WORK_DIR/vendor/build.prop" "$REL"
        _EXYNOS9810_FINAL_DELETE_PROP "$WORK_DIR/system/system/build.prop" "$REL"
    done
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" \
        "ro.config.show4gforlte" "true"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/system/system/build.prop" \
        "ro.config.show4gforlte" "true"

    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "bin/hw/rild" 0 2000 755 "u:object_r:rild_exec:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "bin/secril_config_svc" 0 2000 755 \
        "u:object_r:vendor_secril_config_svc_exec:s0"

    for REL in \
        etc/init/init.baseband.rc \
        etc/init/init.vendor.rilcommon.rc \
        etc/init/vendor.samsung.rilchip.slsi.rc \
        etc/vintf/manifest.xml \
        etc/vintf/manifest/vendor.samsung.hardware.radio.exclude.slsi.xml \
        etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml \
        etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml; do
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" 0 0 644 \
            "u:object_r:vendor_configs_file:s0"
    done

    for REL in \
        lib64/android.hardware.radio@1.5.so \
        lib64/android.hardware.radio@1.6.so \
        lib64/android.hardware.radio.config@1.3.so \
        lib64/vendor.samsung.hardware.radio@2.2.so \
        lib64/vendor.samsung.hardware.radio.bridge@2.1.so; do
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" 0 0 644 \
            "u:object_r:same_process_hal_file:s0"
    done

    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "lib64/vendor.samsung.hardware.radio.channel@2.0.so" 0 0 644 \
        "u:object_r:same_process_hal_file:s0"

    # These hashes are from the exact live-tested N770F stack.
    # A partial restore must fail the build instead of silently creating
    # another rild/manifest mismatch.
    for REL in \
        "bin/hw/rild:dc8c9f9cee7add725cd0b4a4486d34c8d3376516ff0a00fa4224aeccb3c92cb9" \
        "lib64/libsec-ril.so:b563250ff898412917b8ee3d48685392f61371e638b24ba81e2c6f2b1a555a2b" \
        "lib64/libril_sem.so:a6eac3c33beb6a532b1a5f494401530100a031e843164e2a936633837697222a" \
        "lib/libvndsecril-client.so:55edbd294f8aaa98d6bd65abb779bdf7179d2388e9c7348b8d2e8432801cc3c6" \
        "lib64/libvndsecril-client.so:fcd725a8352d4269a02c6c578916551a41ddc5196e09be583598a5e52ba348e3"; do
        EXPECTED="${REL#*:}"
        REL="${REL%%:*}"
        ACTUAL="$(sha256sum "$WORK_DIR/vendor/$REL" | awk '{print $1}')"
        [ "$ACTUAL" = "$EXPECTED" ] || {
            LOGE "Exynos9810 coherent radio payload hash mismatch: /vendor/$REL"
            return 1
        }
    done

    grep -q '@1.6::IRadio/slot1' \
        "$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml" || {
        LOGE "Exynos9810 IRadio 1.6 slot1 declaration is missing"
        return 1
    }
    grep -q '@1.6::IRadio/slot2' \
        "$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml" || {
        LOGE "Exynos9810 IRadio 1.6 slot2 declaration is missing"
        return 1
    }
    grep -q '<instance>imsd</instance>' \
        "$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml" || {
        LOGE "Exynos9810 ISehChannel/imsd declaration is missing"
        return 1
    }
    grep -q '<instance>imsd2</instance>' \
        "$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml" || {
        LOGE "Exynos9810 ISehChannel/imsd2 declaration is missing"
        return 1
    }

    for REL in ro.multisim.simslotcount ro.vendor.multisim.simslotcount \
            persist.radio.multisim.config ro.telephony.sim_slots.count; do
        ! grep -q "^${REL}=" "$WORK_DIR/vendor/build.prop" || {
            LOGE "Static vendor SIM topology survived final cleanup: $REL"
            return 1
        }
        ! grep -q "^${REL}=" "$WORK_DIR/system/system/build.prop" || {
            LOGE "Static framework SIM topology survived final cleanup: $REL"
            return 1
        }
    done

    grep -q '^on property:ro.vendor.multisim.simslotcount=\*$' \
        "$WORK_DIR/vendor/etc/init/init.baseband.rc" || {
        LOGE "Exynos9810 dynamic SIM baseband trigger is missing"
        return 1
    }
    grep -q 'exec_start sim_config' \
        "$WORK_DIR/vendor/etc/init/init.vendor.rilcommon.rc" || {
        LOGE "Samsung EFS SIM topology service is missing"
        return 1
    }
    [ -f "$WORK_DIR/vendor/bin/secril_config_svc" ] || {
        LOGE "Samsung EFS SIM topology binary is missing"
        return 1
    }
    strings "$WORK_DIR/vendor/bin/secril_config_svc" | grep -qx '/mnt/vendor/efs/factory.prop' || {
        LOGE "Samsung EFS SIM topology binary does not read factory.prop"
        return 1
    }
    while IFS= read -r -d '' PROP_FILE; do
        if grep -Eq '^(ro\.(vendor\.)?multisim\.simslotcount|persist\.radio\.multisim\.config|ro\.telephony\.sim_slots\.count)=' "$PROP_FILE"; then
            LOGE "Static SIM topology survived final cleanup: $PROP_FILE"
            return 1
        fi
    done < <(find "$WORK_DIR" -type f \( -name 'build.prop' -o -name 'prop.default' -o -name 'default.prop' \) -print0)
    if grep -q '^on property:ro.multisim.simslotcount' \
        "$WORK_DIR/vendor/etc/init/init.baseband.rc"; then
        LOGE "Exynos9810 baseband init still uses an enforcing-blocked system property trigger"
        return 1
    fi

    for REL in \
        system/system/etc/apns-conf.xml \
        system/system/etc/epdg_apns_conf.xml; do
        [ -s "$WORK_DIR/$REL" ] || {
            LOGE "Carrier-neutral Exynos9810 APN payload is missing: /${REL#system/}"
            return 1
        }
    done
}

_EXYNOS9810_FINAL_APPLY_TESTED_RADIO_RESTORE_V5()
{
    # Exact live-tested bridge that restored IMEI/SIM/LTE without touching
    # EFS or modem partitions. It must run after the N770F radio restore.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local PAYLOAD="$SRC_DIR/unica/mods/zzzzz_exynos9810_final_cleanup/stock_radio_restore_v5"
    local REL SRC DST EXPECTED ACTUAL
    LOG "- Applying live-tested Exynos9810 IMEI/LTE compatibility bridge"

    [ -d "$PAYLOAD" ] || {
        LOGE "Exynos9810 tested radio payload is missing: $PAYLOAD"
        return 1
    }

    for REL in bin/imsd etc/init/imsd.rc; do
        SRC="$PAYLOAD/system/system/$REL"
        DST="$WORK_DIR/system/system/$REL"
        [ -f "$SRC" ] || {
            LOGE "Exynos9810 tested radio file is missing: system/system/$REL"
            return 1
        }
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
    done
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/bin/imsd" \
        0 2000 755 "u:object_r:imsd_exec:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/init/imsd.rc" \
        0 0 644 "u:object_r:system_configs_file:s0"

    for REL in \
        bin/hw/rild \
        lib64/vendor.samsung.hardware.radio.channel@2.0.so \
        etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml \
        etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml; do
        SRC="$PAYLOAD/vendor/$REL"
        DST="$WORK_DIR/vendor/$REL"
        [ -f "$SRC" ] || {
            LOGE "Exynos9810 tested radio file is missing: vendor/$REL"
            return 1
        }
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
    done
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "bin/hw/rild" \
        0 2000 755 "u:object_r:rild_exec:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "lib64/vendor.samsung.hardware.radio.channel@2.0.so" \
        0 0 644 "u:object_r:same_process_hal_file:s0"
    for REL in \
        etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml \
        etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml; do
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "$REL" \
            0 0 644 "u:object_r:vendor_configs_file:s0"
    done

    for REL in \
        "system/system/bin/imsd:e06f961c0260d04090b5342157fe3c82cf102af80da632bed01dfa092f1bd9b8" \
        "system/system/etc/init/imsd.rc:08ff51470ca1edc4c3643bea1de5f4c536041d8454f193a2910670eb545ed96c" \
        "vendor/bin/hw/rild:73aadda1643784e51356b02eadab843a1ed1f454197a3a4c810ee1a26f44fda9" \
        "vendor/lib64/vendor.samsung.hardware.radio.channel@2.0.so:976539c14a6d1a9742f62bed4c83595ec5a692b19f4d610c47d63744d83ab87a" \
        "vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml:f7d0dfced1b52feb24202d9d8ce1e179dfd67f4c57d42081f57171da03922f2f" \
        "vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml:ad87982c72367cea3f368a023db52ef9a0b7da512d2b9689db8e3ccd89987afe"; do
        EXPECTED="${REL#*:}"
        REL="${REL%%:*}"
        ACTUAL="$(sha256sum "$WORK_DIR/$REL" | awk '{print $1}')"
        [ "$ACTUAL" = "$EXPECTED" ] || {
            LOGE "Exynos9810 tested radio payload hash mismatch: /$REL"
            return 1
        }
    done
}

_EXYNOS9810_FINAL_RESTORE_DAAGENT()
{
    # DAAgent owns Samsung's Dual Messenger settings/provider. It is a small
    # system app and must survive the final debloat pass.
    local SRC="$FW_DIR/SM-S901B_EUX/system/system/app/DAAgent/DAAgent.apk"
    local DST="$WORK_DIR/system/system/app/DAAgent/DAAgent.apk"

    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0
    [ -f "$SRC" ] || {
        LOGW "DAAgent donor APK not found; Dual Messenger may stay unavailable"
        return 0
    }

    if [ ! -f "$DST" ]; then
        LOG "- Restoring DAAgent for Dual Messenger"
        mkdir -p "$(dirname "$DST")"
        cp -f "$SRC" "$DST" || return 1
        chmod 0644 "$DST"
    fi

    _EXYNOS9810_FINAL_SET_METADATA "system" \
        "system/app/DAAgent/DAAgent.apk" 0 0 644 \
        "u:object_r:system_file:s0"
}


_EXYNOS9810_FINAL_RESTORE_FEATURE_APPS()
{
    # Restore framework-facing components after generic debloat.
    # These power Dual Messenger, Secure Folder, Edge panels and Photo Remaster.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local BASE="$FW_DIR/SM-S901B_EUX/system/system"
    local REL SRC DST

    for REL in \
        "app/DAAgent/DAAgent.apk" \
        "priv-app/SecureFolder/SecureFolder.apk" \
        "app/ClipboardEdge/ClipboardEdge.apk" \
        "priv-app/TaskEdgePanel_v3.2/TaskEdgePanel_v3.2.apk" \
        "priv-app/PhotoRemasterService/PhotoRemasterService.apk"; do
        SRC="$BASE/$REL"
        DST="$WORK_DIR/system/system/$REL"
        if [ -f "$SRC" ] && [ ! -f "$DST" ]; then
            LOG "- Restoring feature app $REL"
            mkdir -p "$(dirname "$DST")"
            cp -f "$SRC" "$DST" || return 1
            chmod 0644 "$DST"
        fi
    done

    for REL in \
        "etc/permissions/privapp-permissions-com.samsung.knox.securefolder.xml" \
        "etc/permissions/privapp-permissions-com.samsung.android.app.taskedge.xml" \
        "etc/permissions/privapp-permissions-com.samsung.android.app.clipboardedge.xml" \
        "etc/permissions/privapp-permissions-com.samsung.android.photoremasterservice.xml"; do
        SRC="$BASE/$REL"
        DST="$WORK_DIR/system/system/$REL"
        if [ -f "$SRC" ]; then
            mkdir -p "$(dirname "$DST")"
            cp -f "$SRC" "$DST" || return 1
            chmod 0644 "$DST"
        fi
    done

    for REL in \
        "system/app/DAAgent/DAAgent.apk" \
        "system/priv-app/SecureFolder/SecureFolder.apk" \
        "system/app/ClipboardEdge/ClipboardEdge.apk" \
        "system/priv-app/TaskEdgePanel_v3.2/TaskEdgePanel_v3.2.apk" \
        "system/priv-app/PhotoRemasterService/PhotoRemasterService.apk" \
        "system/etc/permissions/privapp-permissions-com.samsung.knox.securefolder.xml" \
        "system/etc/permissions/privapp-permissions-com.samsung.android.app.taskedge.xml" \
        "system/etc/permissions/privapp-permissions-com.samsung.android.app.clipboardedge.xml" \
        "system/etc/permissions/privapp-permissions-com.samsung.android.photoremasterservice.xml"; do
        _EXYNOS9810_FINAL_SET_METADATA "system" "$REL" 0 0 644 "u:object_r:system_file:s0"
    done
}

_EXYNOS9810_FINAL_PATCH_SECURE_FOLDER_DESKTOP_MODE()
{
    # The One UI 8 Secure Folder settings app assumes that every Samsung
    # device publishes the desktopmode system service. Exynos9810 does not
    # expose that service, so its Kotlin DI factory returns null and the
    # lock-type preference crashes while the settings page resumes. A phone
    # without DeX-PC support is never in that mode; bypass only this optional
    # check and leave the rest of Secure Folder untouched.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local APK_REL="system/priv-app/SecureFolder/SecureFolder.apk"
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SecureFolder/SecureFolder.apk"
    local SMALI

    [ -f "$WORK_DIR/system/$APK_REL" ] || {
        LOGW "Secure Folder APK is missing; skipping desktop-mode compatibility patch"
        return 0
    }

    LOG "- Patching Secure Folder settings for devices without desktopmode"
    DECODE_APK "system" "$APK_REL" || return 1
    SMALI="$(find "$APK_DIR" -type f \
        -path '*/com/samsung/knox/settings/securefolder/preference/data/preference/LockTypePreferenceData.smali' \
        -print -quit)"
    [ -n "$SMALI" ] && [ -f "$SMALI" ] || {
        LOGE "Secure Folder LockTypePreferenceData smali not found"
        return 1
    }

    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r"\.method private final isDexOnPcMode\(Landroid/content/Context;\)Z\n"
    r".*?\n\.end method",
    re.S,
)
replacement = """.method private final isDexOnPcMode(Landroid/content/Context;)Z
    .locals 1

    # Exynos9810 has no desktopmode system service; Secure Folder treats this
    # optional DeX-PC state as false on a normal phone.
    const/4 v0, 0x0

    return v0
.end method"""
new, count = pattern.subn(replacement, text, count=1)
if count == 0:
    if "# Exynos9810 has no desktopmode system service" in text:
        raise SystemExit(0)
    raise SystemExit("Secure Folder isDexOnPcMode method not found")
path.write_text(new)
PY
}

_EXYNOS9810_FINAL_RESTORE_CLOCK_STRUCTURE()
{
    # Keep only Clock's framework structure. The Clock APK and all Watch/
    # accessory/Messages/EasySetup payloads are intentionally debloated.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local BASE="$FW_DIR/SM-S901B_EUX/system/system"
    local TARGET_FW="$(cut -d "/" -f 1 -s <<< "$TARGET_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$TARGET_FIRMWARE")"
    local TARGET_BASE="$FW_DIR/$TARGET_FW/system/system"
    local REL SRC DST

    for REL in \
        "priv-app/SmartManager_v5/SmartManager_v5.apk" \
        "app/SmartManager_v6_DeviceSecurity/SmartManager_v6_DeviceSecurity.apk"; do
        SRC="$BASE/$REL"
        DST="$WORK_DIR/system/system/$REL"
        if [ -f "$SRC" ] && [ ! -f "$DST" ]; then
            LOG "- Restoring user-facing feature app $REL"
            mkdir -p "$(dirname "$DST")"
            cp -f "$SRC" "$DST" || return 1
            chmod 0644 "$DST"
        fi
    done

    for REL in \
        "etc/permissions/signature-permissions-com.sec.android.app.clockpackage.xml" \
        "etc/permissions/privapp-permissions-com.samsung.android.lool.xml" \
        "etc/permissions/signature-permissions-com.samsung.android.lool.xml" \
        "media/battery_protection.spi"; do
        SRC="$BASE/$REL"
        DST="$WORK_DIR/system/system/$REL"
        if [ -f "$SRC" ]; then
            mkdir -p "$(dirname "$DST")"
            cp -f "$SRC" "$DST" || return 1
            chmod 0644 "$DST"
        fi
    done

    # Legacy targets carry the Clock power-management allowlist; keep it even
    # though the One UI 8 donor no longer ships a separate copy.
    SRC="$TARGET_BASE/etc/sysconfig/clockpackageapp.xml"
    DST="$WORK_DIR/system/system/etc/sysconfig/clockpackageapp.xml"
    if [ -f "$SRC" ]; then
        mkdir -p "$(dirname "$DST")"
        cp -f "$SRC" "$DST" || return 1
        chmod 0644 "$DST"
    fi

    for REL in \
        "system/priv-app/SmartManager_v5/SmartManager_v5.apk" \
        "system/app/SmartManager_v6_DeviceSecurity/SmartManager_v6_DeviceSecurity.apk" \
        "system/etc/permissions/signature-permissions-com.sec.android.app.clockpackage.xml" \
        "system/etc/permissions/privapp-permissions-com.samsung.android.lool.xml" \
        "system/etc/permissions/signature-permissions-com.samsung.android.lool.xml" \
        "system/etc/sysconfig/clockpackageapp.xml" \
        "system/media/battery_protection.spi"; do
        _EXYNOS9810_FINAL_SET_METADATA "system" "$REL" 0 0 644 "u:object_r:system_file:s0"
    done
}

_EXYNOS9810_FINAL_DEBLOAT()
{
    local APP DIR REL

    LOG "- Applying final Exynos9810 debloat after vendor baseline restore"

    for APP in \
        AndroidAutoStub \
        AREmoji \
        AREmojiEditor \
        AvatarEmojiSticker \
        BeaconManager \
        BixbyVisionFramework3.5 \
        Calculator \
        Chrome \
        ClockPackage \
        EasySetup \
        GpuWatchApp \
        MoccaMobile \
        NetworkDiagnostic \
        OdaService \
        SCPMAgent \
        SketchBook \
        WifiAiService \
        DuoStub \
        FamilyLinkParentalControls \
        GalaxyResourceUpdater \
        GalaxyWearable \
        GearManager \
        GearManagerStub \
        BudsUniteManager \
        GlobalGoals \
        GoogleFeedback \
        Gmail2 \
        HealthService \
        KidsHome_Installer \
        KLMSAgent \
        LinkToWindowsService \
        Maps \
        Members \
        MobileWips \
        MultiControl \
        MyDevice \
        ParentalCare \
        SamsungCloudClient \
        SamsungCalculator \
        SamsungGlobalGoals \
        SamsungHealth \
        SamsungMembers \
        SamsungMembers_Removable \
        SamsungNotes \
        SamsungNotes_Removable \
        SamsungMessages \
        SamsungVoiceRecorder \
        SmartSwitchAgent \
        SmartSwitchAssistant \
        SmartSwitchStub \
        SmartThings \
        SmartThingsKit \
        SNoteProvider \
        SoundRecorder \
        SecCalculator \
        SecCalculator2 \
        StickerCenter \
        StickerFaceARAvatar \
        VoiceRecorder \
        YouTube \
        YourPhone_P1_5 \
        YourPhone_Stub \
        knoxanalyticsagent; do
        while IFS= read -r -d '' DIR; do
            _EXYNOS9810_FINAL_DELETE_FOUND_DIR "$DIR"
        done < <(find "$WORK_DIR/system" "$WORK_DIR/product" -type d \
            \( -path "*/app/$APP" -o -path "*/priv-app/$APP" -o -path "*/preload/$APP" -o -path "*/product/app/$APP" -o -path "*/product/priv-app/$APP" \) \
            -print0 2>/dev/null)
    done

    for REL in \
        product/app/Chrome \
        product/app/DuoStub \
        product/app/FamilyLinkParentalControls \
        product/app/Gmail2 \
        product/app/Maps \
        product/app/YouTube \
        system/app/Calculator \
        product/overlay/GoogleHealthFitnessFrameworkOverlay.apk \
        product/overlay/NotesRoleEnabled \
        system/app/ClockPackage \
        system/app/GearManagerStub \
        system/preload/SBrowser \
        system/app/KidsHome_Installer \
        system/etc/permissions/privapp-permissions-com.samsung.accessory.budsunitemgr.xml \
        system/etc/default-permissions/default-permissions-com.samsung.accessory.budsunitemgr.xml \
        system/app/ParentalCare \
        system/priv-app/SecCalculator \
        system/priv-app/SecCalculator2 \
        system/app/SmartSwitchAgent \
        system/app/SmartSwitchStub \
        system/priv-app/HealthService \
        system/priv-app/LinkToWindowsService \
        system/priv-app/MultiControl \
        system/priv-app/YourPhone_Stub \
        system/app/MoccaMobile \
        system/app/SketchBook \
        system/app/WifiAiService \
        system/priv-app/EasySetup \
        system/priv-app/GpuWatchApp \
        system/priv-app/NetworkDiagnostic \
        system/priv-app/OdaService \
        system/priv-app/SCPMAgent \
        system/priv-app/SamsungMessages \
        system/etc/permissions/signature-permissions-com.samsung.android.app.watchmanager.xml \
        system/etc/permissions/com.sec.feature.saccessorymanager.xml \
        system/etc/permissions/com.android.future.usb.accessory.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.messaging.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.easysetup.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.easysetup.xml \
        system/framework/com.android.future.usb.accessory.jar \
        system/etc/permissions/privapp-permissions-com.microsoft.appmanager.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.scloud.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.smartswitchassistant.xml \
        system/etc/permissions/privapp-permissions-com.samsung.knox.securefolder.xml \
        system/etc/permissions/privapp-permissions-com.sec.android.app.shealth.xml \
        system/etc/permissions/privapp-permissions-com.sec.android.service.health.xml \
        system/etc/permissions/signature-permissions-com.sec.android.easyMover.Agent.xml \
        system/etc/permissions/signature-permissions-com.sec.android.easyMover.xml \
        system/etc/permissions/signature-permissions-com.samsung.android.app.notes.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.kidshome.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.voicenote.xml \
        system/etc/default-permissions/default-permissions-com.sec.android.easyMover.xml \
        system/etc/sysconfig/smartswitch.xml; do
        _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "$REL"
    done

    # Samsung's removable-preload catalogue and userdata APK list can make
    # SetupWizard/Galaxy Store download optional packages as soon as networking
    # is available even after their system APKs have been removed. Delete both
    # triggers late, after all donor overlays have been restored.
    local PRELOAD_LIST="$WORK_DIR/system/system/etc/removable_preload.txt"
    local USERDATA_LIST="$WORK_DIR/system/system/etc/userdata_apks_count_list.txt"

    if [ -f "$PRELOAD_LIST" ]; then
        LOG "- Removing Smart Switch, Samsung Kids and Samsung Cloud from removable-preload catalogue"
        python3 - "$PRELOAD_LIST" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
for section in ("SmartSwitch", "KidsHome", "SamsungCloud", "SamsungCloudClient"):
    text, count = re.subn(
        rf"(?ms)^\[{re.escape(section)}\]\n.*?(?=^\[|\Z)",
        "",
        text,
    )
    if count > 1:
        raise SystemExit(f"unexpected {section} preload block count: {count}")
path.write_text(text)
PY
    fi

    if [ -f "$USERDATA_LIST" ]; then
        LOG "- Removing Smart Switch, Samsung Kids and Samsung Cloud userdata preload triggers"
        sed -i -e '\|/data/app/SmartSwitch/SmartSwitch.apk|d' \
            -e '\|/data/app/KidsHome/KidsHome.apk|d' \
            -e '/[Ss]amsung[Cc]loud/d' \
            -e '/[Ss]cloud/d' "$USERDATA_LIST" || return 1
    fi
}

_EXYNOS9810_FINAL_VERIFY_SAMSUNG_CLOUD_ABSENT()
{
    local FOUND FILE
    local -a SEARCH_ROOTS

    LOG "- Verifying Samsung Cloud is optional and absent from the ROM payload"

    SEARCH_ROOTS=("$WORK_DIR/system")
    if [ -d "$WORK_DIR/product" ]; then
        SEARCH_ROOTS+=("$WORK_DIR/product")
    fi

    FOUND="$(find "${SEARCH_ROOTS[@]}" -type d \
        \( -iname 'SamsungCloud' -o -iname 'SamsungCloudClient' \) \
        -print -quit)"
    [ -z "$FOUND" ] || {
        LOGE "Samsung Cloud APK directory remains in the final workdir: $FOUND"
        return 1
    }

    FOUND="$(find "${SEARCH_ROOTS[@]}" -type f \
        -iname '*scloud*' -print -quit)"
    [ -z "$FOUND" ] || {
        LOGE "Samsung Cloud support file remains in the final workdir: $FOUND"
        return 1
    }

    for FILE in \
        "$WORK_DIR/system/system/etc/removable_preload.txt" \
        "$WORK_DIR/system/system/etc/userdata_apks_count_list.txt"; do
        [ -f "$FILE" ] || continue
        if grep -qi -E 'samsungcloud|scloud' "$FILE"; then
            LOGE "Samsung Cloud preload trigger remains in $FILE"
            return 1
        fi
    done

    return 0
}

_EXYNOS9810_FINAL_RESTORE_BOOT_PARITY_OVERLAYS()
{
    # Keep the boot/service contract matched to the known-booting 12-Aug EROFS
    # build. These are structural permission XMLs and ODM NFC SKU descriptors,
    # not app payloads, so restoring them does not undo debloat.
    local ROOT="$SRC_DIR/unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port/boot_parity"
    local PARTITION
    local SRC_ROOT
    local FILE
    local REL
    local ENTRY
    local MODE
    local LABEL

    [ -d "$ROOT" ] || {
        LOGE "Embedded Exynos9810 boot parity overlay is missing: $ROOT"
        return 1
    }

    for PARTITION in system odm; do
        SRC_ROOT="$ROOT/$PARTITION"
        [ -d "$SRC_ROOT" ] || continue

        LOG "- Restoring known-booting Exynos9810 /$PARTITION service parity overlay"
        mkdir -p "$WORK_DIR/$PARTITION"
        cp -a "$SRC_ROOT"/. "$WORK_DIR/$PARTITION"/ || return 1

        while IFS= read -r -d '' FILE; do
            REL="${FILE#$SRC_ROOT/}"
            MODE=644
            [ -x "$FILE" ] && MODE=755

            case "$PARTITION:$REL" in
                system:system/bin/*)
                    LABEL="u:object_r:system_file:s0"
                    ;;
                system:system/etc/init/*)
                    LABEL="u:object_r:system_file:s0"
                    ;;
                system:system/etc/permissions/*)
                    LABEL="u:object_r:system_file:s0"
                    ;;
                odm:etc/permissions/*|odm:etc/vintf/*)
                    LABEL="u:object_r:vendor_configs_file:s0"
                    ;;
                *)
                    LABEL="u:object_r:vendor_file:s0"
                    [ "$PARTITION" = "system" ] && LABEL="u:object_r:system_file:s0"
                    ;;
            esac

            ENTRY="$REL"
            [ "$PARTITION" = "odm" ] && ENTRY="odm/$REL"
            _EXYNOS9810_FINAL_SET_METADATA "$PARTITION" "$ENTRY" 0 0 "$MODE" "$LABEL"
        done < <(find "$SRC_ROOT" -type f -print0)
    done

    for FILE in \
        "$WORK_DIR/system/system/etc/permissions/authfw.xml" \
        "$WORK_DIR/system/system/etc/permissions/cameraservice.xml" \
        "$WORK_DIR/system/system/etc/permissions/sec_camerax_service.xml" \
        "$WORK_DIR/odm/etc/vintf/manifest_hcesimese.xml" \
        "$WORK_DIR/odm/etc/permissions/sku_hcesimese/android.hardware.nfc.xml"; do
        [ -f "$FILE" ] || {
            LOGE "Exynos9810 boot parity component missing after restore: $FILE"
            return 1
        }
    done
}

_EXYNOS9810_FINAL_DISABLE_UNSUPPORTED_ESIM()
{
    # S22 donor files can reintroduce an eUICC declaration after the normal
    # debloat pass. On Exynos9810 this is false hardware advertising: One UI 8
    # then reports the physical second slot as unsupported, skips its state
    # update and spins forever in SIM Manager's Preferred SIM section.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0
    [ "${TARGET_COMMON_SUPPORT_EMBEDDED_SIM:-false}" = "false" ] || return 0

    local REL PROP_FILE PROP_XML PARTITION ENTRY INIT

    LOG "- Removing unsupported eSIM declarations from Exynos9810 build"

    for REL in \
        system/etc/permissions/privapp-permissions-com.samsung.android.app.esimkeystring.xml \
        system/etc/permissions/privapp-permissions-com.samsung.euicc.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.app.telephonyui.esimclient.xml \
        system/etc/sysconfig/preinstalled-packages-com.samsung.android.app.esimkeystring.xml \
        system/etc/sysconfig/preinstalled-packages-com.samsung.euicc.xml \
        system/app/EsimKeyString \
        system/app/EuiccService \
        system/priv-app/EsimKeyString \
        system/priv-app/EuiccService \
        system/system_ext/etc/permissions/android.hardware.telephony.euicc.xml \
        product/etc/permissions/android.hardware.telephony.euicc.xml; do
        _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "$REL"
    done

    # Handle a feature XML placed in a real vendor/odm partition as well. The
    # normal S22 donor puts it in the system privapp file above, but keeping
    # this cleanup symmetric prevents a future firmware refresh reintroducing
    # the same false eUICC capability from another partition.
    for REL in \
        vendor/etc/permissions/android.hardware.telephony.euicc.xml \
        odm/etc/permissions/android.hardware.telephony.euicc.xml; do
        rm -rf "$WORK_DIR/$REL"
        PARTITION="${REL%%/*}"
        ENTRY="${REL#*/}"
        _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "$PARTITION" "$ENTRY" "/$REL"
    done

    # Do not bake the donor's TSDS/eSIM selector into any immutable property
    # file. The init hook written by the radio setup also clears a value that
    # survived a dirty flash in /data/property.
    while IFS= read -r -d '' PROP_FILE; do
        _EXYNOS9810_FINAL_DELETE_PROP "$PROP_FILE" "persist.ril.esim.slotswitch"
    done < <(find "$WORK_DIR" -type f \( -name 'build.prop' -o -name 'prop.default' -o -name 'default.prop' \) -print0)

    INIT="$WORK_DIR/system/system/etc/init/unica_exynos9810_lte_migrate.rc"
    if [ ! -f "$INIT" ]; then
        # The device-stack patch can be intentionally skipped when the optional
        # legacy donor tree is unavailable. Keep the runtime eSIM reset
        # independent from that donor so a fresh build still clears a stale
        # Samsung TSDS selector from /data/property.
        LOG "- Creating Exynos9810 eSIM reset hook without optional donor overlay"
        mkdir -p "$(dirname "$INIT")"
        cat > "$INIT" <<'EOF'
# Exynos9810 has no eUICC. Clear a donor TSDS/eSIM selector before telephony
# starts so SIM Manager cannot enter the unsupported eSIM path.
on post-fs-data
    setprop persist.ril.esim.slotswitch ""
EOF
        chmod 0644 "$INIT"
        _EXYNOS9810_FINAL_SET_METADATA "system" \
            "system/etc/init/unica_exynos9810_lte_migrate.rc" \
            0 0 644 "u:object_r:system_file:s0"
    fi

    [ -f "$INIT" ] && grep -qF 'setprop persist.ril.esim.slotswitch ""' "$INIT" || {
        LOGE "Exynos9810 eSIM property reset hook is missing"
        return 1
    }

    while IFS= read -r -d '' PROP_XML; do
        if grep -qE 'feature[[:space:]]+name="android\.hardware\.telephony\.euicc"' "$PROP_XML"; then
            LOGE "Unsupported eSIM feature survived final cleanup: $PROP_XML"
            return 1
        fi
    done < <(find "$WORK_DIR" -type f -path '*/etc/permissions/*.xml' -print0)
}

_EXYNOS9810_FINAL_SET_HOME_LAYOUT()
{
    # The OneUI launcher (com.sec.android.app.launcher) does NOT use the old
    # TouchWizHome res/xml/default_workspace.xml mechanism -- those files do not
    # exist in this launcher. On this device the default home layout is defined
    # per-CSC in /prism/etc/carriers/<CSC>/default_workspace.xml, which the
    # launcher parses once to build its OneUI.db on a clean setup. The stock
    # (legacy-port) versions list apps that UN1CA debloats (Samsung Internet in
    # the dock, Messages, Google/Microsoft folders, ...), so those become
    # permanent broken "ghost" icons that never resolve. Overwrite every
    # carrier's workspace with a small curated layout built only from apps
    # guaranteed present on every exynos9810 UN1CA build, so a fresh setup is
    # identical and ghost-icon-free regardless of the active sales code.
    #
    # NOTE: this runs after all earlier /system/prism patch phases. The late
    # vendor baseline restore does not touch /system, so nothing overwrites
    # these files afterwards. On a dirty flash the launcher keeps its existing
    # OneUI.db and won't re-read these; a clean "set up as new device" (or
    # clearing launcher data) applies the layout.
    local PRISM="$WORK_DIR/system/prism/etc/carriers"
    local FILE
    local COUNT=0

    if [ ! -d "$PRISM" ]; then
        LOGW "prism carriers dir missing; skipping home layout"
        return 0
    fi

    LOG "- Setting clean UN1CA home layout in all CSC default_workspace.xml files"

    while IFS= read -r -d '' FILE; do
        cat > "$FILE" <<'XML'
<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<favorites xmlns:launcher="http://schemas.android.com/apk/res/com.sec.android.app.launcher">
    <homeGridInfo default="4x6" />
    <home>
        <!-- One UI 8 first-boot layout: weather above the app row. -->
        <appwidget screen="0" packageName="com.sec.android.daemonapp" className="com.sec.android.daemonapp.appwidget.WeatherAppWidget2x1" x="0" y="1" spanX="2" spanY="2" />
        <favorite screen="0" packageName="com.sec.android.gallery3d" className="com.samsung.android.gallery.app.activity.GalleryActivity" x="0" y="4" />
        <favorite screen="0" packageName="com.android.vending" className="com.android.vending.AssetBrowserActivity" x="1" y="4" />
        <favorite screen="0" packageName="com.sec.android.app.myfiles" className="com.sec.android.app.myfiles.ui.MainActivity" x="2" y="4" />
        <favorite screen="0" packageName="com.android.settings" className="com.android.settings.Settings" x="3" y="4" />
    </home>
    <hotseat>
        <favorite screen="0" packageName="com.samsung.android.dialer" className="com.samsung.android.dialer.DialtactsActivity" />
        <favorite screen="1" packageName="com.google.android.apps.messaging" className="com.google.android.apps.messaging.ui.ConversationListActivity" />
        <favorite screen="2" packageName="com.sec.android.app.camera" className="com.sec.android.app.camera.Camera" />
    </hotseat>
</favorites>
XML
        COUNT=$((COUNT + 1))
    done < <(find "$PRISM" -type f -name 'default_workspace.xml' -print0 2>/dev/null)

    LOG "  - Rewrote $COUNT CSC workspace file(s)"
}

_EXYNOS9810_FINAL_RESTORE_BLUETOOTH_LIB()
{
    local PATCH="$SRC_DIR/unica/patches/bluetooth/customize.sh"

    if [ ! -f "$PATCH" ]; then
        LOGW "Bluetooth library patcher not found: $PATCH"
        return 0
    fi

    LOG "- Re-patching matching Android 16 Bluetooth JNI lib after boot baseline"
    . "$PATCH" || return 1
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/lib64/libbluetooth_jni.so" 0 0 644 "u:object_r:system_lib_file:s0"
}

_EXYNOS9810_FINAL_SET_PROP()
{
    local FILE="$1"
    local PROP="$2"
    local VALUE="$3"

    [ -f "$FILE" ] || return 0
    sed -i "/^$PROP=/d" "$FILE"
    echo "$PROP=$VALUE" >> "$FILE"
}

_EXYNOS9810_FINAL_DELETE_PROP()
{
    local FILE="$1"
    local PROP="$2"

    [ -f "$FILE" ] || return 0
    sed -i "/^$PROP=/d" "$FILE"
}

_EXYNOS9810_FINAL_ENSURE_TARGET_IDENTITY()
{
    local MODEL
    local NAME
    local STOCK_INCREMENTAL
    local FIRST_API="${TARGET_PRODUCT_SHIPPING_API_LEVEL:-26}"
    local FILE
    local PREFIX

    case "$TARGET_CODENAME" in
        starlte)
            MODEL="SM-G960F"
            NAME="starltexx"
            STOCK_INCREMENTAL="G960FXXUHFVG4"
            ;;
        star2lte)
            MODEL="SM-G965F"
            NAME="star2ltexx"
            STOCK_INCREMENTAL="G965FXXUHFVG4"
            ;;
        crownlte)
            MODEL="SM-N960F"
            NAME="crownltexx"
            STOCK_INCREMENTAL="N960FXXUHFVG4"
            FIRST_API="${TARGET_PRODUCT_SHIPPING_API_LEVEL:-27}"
            ;;
        *)
            return 0
            ;;
    esac

    LOG "- Enforcing final Exynos9810 target identity"

    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/system/system/build.prop" "ro.product.device" "$TARGET_CODENAME"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/system/system/build.prop" "ro.product.model" "$MODEL"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/system/system/build.prop" "ro.product.name" "$NAME"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/system/system/build.prop" "ro.build.flavor" "$NAME-user"

    for FILE in \
        "$WORK_DIR/vendor/build.prop:vendor" \
        "$WORK_DIR/vendor/vendor_dlkm/etc/build.prop:vendor_dlkm" \
        "$WORK_DIR/vendor/odm_dlkm/etc/build.prop:odm_dlkm" \
        "$WORK_DIR/odm/etc/build.prop:odm" \
        "$WORK_DIR/system/odm/etc/build.prop:odm" \
        "$WORK_DIR/system/product/etc/build.prop:product" \
        "$WORK_DIR/system/system/product/etc/build.prop:product"; do
        PREFIX="${FILE##*:}"
        FILE="${FILE%:*}"
        [ -f "$FILE" ] || continue

        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.product.$PREFIX.brand" "samsung"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.product.$PREFIX.device" "$TARGET_CODENAME"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.product.$PREFIX.manufacturer" "samsung"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.product.$PREFIX.model" "$MODEL"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.product.$PREFIX.name" "$NAME"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.$PREFIX.build.fingerprint" \
            "samsung/$NAME/$TARGET_CODENAME:10/QP1A.190711.020/$STOCK_INCREMENTAL:user/release-keys"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.$PREFIX.build.version.incremental" "$STOCK_INCREMENTAL"
    done

    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.product.first_api_level" "$FIRST_API"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.board.first_api_level" "$FIRST_API"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.vendor.build.version.sdk" "33"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.vndk.version" "33"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.vendor.api_level" "33"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.board.api_level" "33"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.product.board" "exynos9810"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" "ro.board.platform" "universal9810"
}

_EXYNOS9810_FINAL_RAM_TWEAKS()
{
    local FILE
    local PROP

    LOG "- Applying balanced Exynos9810 RAM profile"

    # Keep the requested legacy framework profile in one property file so the
    # Android property loader cannot see conflicting copies. The old boot-time
    # ram_tweaks service remains disabled: it changed VM, I/O and GPU sysfs
    # state after boot and caused reclaim storms on the 6 GB Exynos9810 build.
    #
    # The profile deliberately trims only cached/empty app slots. PSI LMKD,
    # Samsung DHA whitelisting and the stock zram policy stay intact so alarms,
    # wearables, push notifications, camera and Samsung framework services do
    # not get killed just to make the memory meter look lower.
    for FILE in \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/system/system/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop"; do
        for PROP in \
            ro.sys.fw.bg_apps_limit \
            ro.sys.fw.bg_cached_ratio \
            ro.config.dha_cached_max \
            ro.config.dha_cached_min \
            ro.config.dha_empty_max \
            ro.config.dha_empty_min \
            ro.config.dha_lmk_scale \
            ro.config.dha_pwhitelist_enable \
            persist.sys.fw.trim_enable_memory \
            ro.sys.fw.use_trim_settings; do
            _EXYNOS9810_FINAL_DELETE_PROP "$FILE" "$PROP"
        done
    done

    FILE="$WORK_DIR/system/system/build.prop"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.sys.fw.bg_apps_limit" "20"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.sys.fw.bg_cached_ratio" "0.50"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.config.dha_cached_max" "24"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.config.dha_cached_min" "8"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.config.dha_empty_max" "32"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.config.dha_empty_min" "8"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.config.dha_lmk_scale" "0.545"
    _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.config.dha_pwhitelist_enable" "1"

    rm -f "$WORK_DIR/system/system/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/system/system/bin/ram_tweaks.sh" \
        "$WORK_DIR/system/system_ext/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/system/system_ext/bin/ram_tweaks.sh" \
        "$WORK_DIR/system/vendor/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/system/vendor/bin/ram_tweaks.sh" \
        "$WORK_DIR/vendor/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/vendor/bin/ram_tweaks.sh"
}

_EXYNOS9810_FINAL_ENSURE_DISPLAY_PROPS()
{
    # The legacy device-stack module is optional now that its runtime payloads
    # are embedded in the ROM. Keep the compositor baseline in this final
    # self-contained layer so a donor-free build receives the same settings.
    LOG "- Applying embedded Exynos9810 display compatibility properties"

    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/system/system/build.prop" \
        "persist.sys.unica.nativeblur" "true"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" \
        "ro.surface_flinger.max_frame_buffer_acquired_buffers" "3"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" \
        "debug.sf.disable_backpressure" "1"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" \
        "debug.sf.latch_unsignaled" "0"
}

_EXYNOS9810_FINAL_RESTORE_RAMPLUS_FILES()
{
    local FSTAB="$WORK_DIR/vendor/etc/fstab.ramplus"
    local INIT="$WORK_DIR/vendor/etc/init/init.ramplus.rc"

    # The base vendor may not carry Samsung's legacy RAM Plus descriptors.
    # Keep these small, device-neutral files in the ROM so the feature does
    # not depend on an external donor tree.
    LOG "- Restoring embedded Exynos9810 RAM Plus descriptors"
    mkdir -p "$(dirname "$FSTAB")" "$(dirname "$INIT")"

    cat > "$FSTAB" <<'EOF'
# Android fstab file.
#<src>                  <mnt_point>         <type>    <mnt_flags and options>                               <fs_mgr_flags>
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

# SWAP
/dev/block/zram0                                   none                swap      defaults                                              zramsize=50%,max_comp_streams=8,auto_configure
EOF

    cat > "$INIT" <<'EOF'
# KERNEL CORE MEMORY
on property:sys.boot_completed=1
    swapon_all /vendor/etc/fstab.ramplus
EOF

    _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/etc/fstab.ramplus" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/etc/init/init.ramplus.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_FINAL_RESTORE_EMBEDDED_REMOTEDISPLAY()
{
    local ROOT="$SRC_DIR/unica/patches/exynos9810_device_stack/remotedisplay"
    local PARTITION SRC DST ENTRY_PREFIX CONTEXT_PREFIX FILE REL MODE LABEL

    LOG "- Restoring embedded Exynos9810 Smart View and Wireless DeX stack"

    for PARTITION in system vendor; do
        SRC="$ROOT/$PARTITION"
        [ -d "$SRC" ] || {
            LOGE "Embedded Exynos9810 remotedisplay payload is missing: $SRC"
            return 1
        }

        if [ "$PARTITION" = "system" ]; then
            DST="$WORK_DIR/system/system"
            ENTRY_PREFIX="system"
            CONTEXT_PREFIX="/system"
        else
            DST="$WORK_DIR/vendor"
            ENTRY_PREFIX="vendor"
            CONTEXT_PREFIX="/vendor"
        fi

        mkdir -p "$DST"
        cp -a "$SRC/." "$DST/"

        while IFS= read -r -d '' FILE; do
            REL="${FILE#$SRC/}"
            MODE="$(stat -c '%a' "$FILE")"
            LABEL="u:object_r:${PARTITION}_file:s0"
            case "$REL" in
                lib/*|lib64/*|framework/*)
                    [ "$PARTITION" = "system" ] && LABEL="u:object_r:system_lib_file:s0"
                    ;;
            esac
            _EXYNOS9810_FINAL_SET_METADATA "$PARTITION" "$ENTRY_PREFIX/$REL" \
                0 0 "$MODE" "$LABEL"
        done < <(find "$SRC" \( -type f -o -type l \) -print0)
    done
}

_EXYNOS9810_FINAL_RESTORE_EMBEDDED_SENSORS()
{
    local SRC="$SRC_DIR/unica/patches/exynos9810_device_stack/sensors2/vendor"
    local FILE REL DST MODE USER GROUP LABEL

    [ -d "$SRC" ] || {
        LOGE "Embedded Exynos9810 sensor payload is missing: $SRC"
        return 1
    }

    LOG "- Restoring embedded Exynos9810 sensor HAL stack"
    mkdir -p "$WORK_DIR/vendor"
    cp -a "$SRC/." "$WORK_DIR/vendor/"

    while IFS= read -r -d '' FILE; do
        REL="${FILE#$SRC/}"
        DST="$WORK_DIR/vendor/$REL"
        USER=0
        GROUP=0
        MODE=644
        LABEL="u:object_r:vendor_file:s0"
        case "$REL" in
            bin/hw/android.hardware.sensors@1.0-service)
                GROUP=2000
                MODE=755
                LABEL="u:object_r:hal_sensors_default_exec:s0"
                ;;
            etc/init/*.rc|etc/vintf/manifest/*.xml|etc/permissions/*.xml|etc/sensors/*)
                MODE=644
                LABEL="u:object_r:vendor_configs_file:s0"
                ;;
            lib*/hw/*.so|lib*/sensors*.so)
                MODE=644
                LABEL="u:object_r:vendor_file:s0"
                ;;
        esac
        chmod "$MODE" "$DST" || return 1
        chown "$USER:$GROUP" "$DST" 2>/dev/null || true
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" \
            "$USER" "$GROUP" "$MODE" "$LABEL"
    done < <(find "$SRC" \( -type f -o -type l \) -print0)
}

_EXYNOS9810_FINAL_RESTORE_BASE_MDF_STACK()
{
    # DeKnox replaces libmdf.so with a small stub, but the One UI 8 S22
    # framework still calls Samsung's MDF JNI from system_server during Wi-Fi
    # startup. Restore the source-base MDF libraries late so system_server can
    # create WifiService without crashing in MdfUtils.isMdfEnforced().
    local BASE="$FW_DIR/SM-S901B_EUX/system/system"
    local REL SRC DST

    [ -f "$BASE/lib64/libmdf.so" ] || {
        LOGE "Source-base MDF library is missing: $BASE/lib64/libmdf.so"
        return 1
    }

    LOG "- Restoring source-base Samsung MDF JNI stack"
    for REL in \
        lib/libmdf.so \
        lib64/libmdf.so \
        lib/libmdfpp_req.so \
        lib64/libmdfpp_req.so; do
        SRC="$BASE/$REL"
        [ -f "$SRC" ] || {
            LOGE "Source-base MDF component is missing: $SRC"
            return 1
        }
        DST="$WORK_DIR/system/system/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        chmod 644 "$DST" || return 1
        _EXYNOS9810_FINAL_SET_METADATA "system" "system/$REL" \
            0 0 644 "u:object_r:system_lib_file:s0"
    done

    strings -a "$WORK_DIR/system/system/lib64/libmdf.so" | \
        grep -qF "Java_com_samsung_android_security_mdf_MdfUtils_isMdfEnforced" || {
        LOGE "Final system libmdf.so lacks MdfUtils.isMdfEnforced JNI"
        return 1
    }
}

_EXYNOS9810_FINAL_RESTORE_DOLBY_ATMOS_STACK()
{
    # Keep the software Dolby DAP3 stack paired with the Exynos9810 audio HAL.
    # The S22 donor's Dolby firmware/configuration is not interchangeable with
    # the legacy provider and can silently disable the Atmos effect.
    local ROOT="$EXYNOS9810_LEGACY_PORT_DIR/vendor"
    local REL SRC DST LABEL

    [ -n "$ROOT" ] && [ -d "$ROOT" ] || return 0
    LOG "- Restoring Exynos9810 Dolby Atmos/DAP3 stack"

    for REL in \
        etc/audio_effects.xml \
        etc/audio_effects_sec.xml \
        etc/audio_effects_spatializer.xml \
        etc/audio_policy_configuration.xml \
        etc/audio_policy_configuration_sec.xml \
        etc/audio_policy_volumes.xml \
        etc/dax3_media_codecs_dolby_audio.xml \
        etc/media_codecs_dolby_audio.xml \
        etc/dolby/dax-default.xml \
        lib/soundfx/libswdap.so \
        lib64/soundfx/libswdap.so; do
        SRC="$ROOT/$REL"
        [ -f "$SRC" ] || continue
        DST="$WORK_DIR/vendor/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1

        case "$REL" in
            etc/*) LABEL="u:object_r:vendor_configs_file:s0" ;;
            *) LABEL="u:object_r:vendor_file:s0" ;;
        esac
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" \
            0 0 644 "$LABEL"
    done

    # Restore every legacy soundfx shim as a matched set. Android 16's
    # audioserver rejects a partial effect configuration and repeatedly dies
    # before boot_completed, leaving the device on Optimizing apps 100%.
    for REL in \
        lib/soundfx/libaudioeffectoffload.so \
        lib/soundfx/libaudiopreprocessing.so \
        lib/soundfx/libaudiosaplus_sec.so \
        lib/soundfx/libbundlewrapper.so \
        lib/soundfx/libdownmix.so \
        lib/soundfx/libdynproc.so \
        lib/soundfx/libeffectproxy.so \
        lib/soundfx/libhapticgenerator.so \
        lib/soundfx/libldnhncr.so \
        lib/soundfx/libmysound.so \
        lib/soundfx/libmyspace.so \
        lib/soundfx/libreverbwrapper.so \
        lib/soundfx/libsamsungSoundbooster_plus.so \
        lib/soundfx/libswdap.so \
        lib/soundfx/libswspatializer.so \
        lib/soundfx/libvisualizer.so \
        lib64/soundfx/libaudioeffectoffload.so \
        lib64/soundfx/libaudiopreprocessing.so \
        lib64/soundfx/libaudiosaplus_sec.so \
        lib64/soundfx/libbundlewrapper.so \
        lib64/soundfx/libdownmix.so \
        lib64/soundfx/libdynproc.so \
        lib64/soundfx/libeffectproxy.so \
        lib64/soundfx/libhapticgenerator.so \
        lib64/soundfx/libldnhncr.so \
        lib64/soundfx/libmysound.so \
        lib64/soundfx/libmyspace.so \
        lib64/soundfx/libreverbwrapper.so \
        lib64/soundfx/libsamsungSoundbooster_plus.so \
        lib64/soundfx/libswdap.so \
        lib64/soundfx/libswspatializer.so \
        lib64/soundfx/libvisualizer.so; do
        SRC="$ROOT/$REL"
        [ -f "$SRC" ] || continue
        DST="$WORK_DIR/vendor/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" \
            0 0 644 "u:object_r:vendor_file:s0"
    done

    # The legacy floating-feature baseline already advertises Dolby support;
    # assert it here in case a target overlay replaced that XML.
    local FEATURE="$WORK_DIR/vendor/etc/floating_feature.xml"
    if [ -f "$FEATURE" ]; then
        grep -q "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DOLBY_AUDIO" "$FEATURE" || \
            LOGW "Dolby feature key is absent from floating_feature.xml"
    fi
}

_EXYNOS9810_FINAL_RESTORE_TARGET_AUDIO_STACK()
{
    # Keep the proven Exynos9810 target audio as the final word. Each device
    # has its own mixer, firmware and SoundBooster variant in the repository,
    # so a build never depends on a private donor checkout.
    local ROOT="$EXYNOS9810_EMBEDDED_AUDIO_DIR/$TARGET_CODENAME"
    local REL SRC DST LABEL BOOSTER_VERSION

    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0
    [ -d "$ROOT" ] || {
        LOGE "Embedded Exynos9810 audio stack missing: $ROOT"
        return 1
    }

    case "$TARGET_CODENAME" in
        crownlte) BOOSTER_VERSION=950 ;;
        *) BOOSTER_VERSION=900 ;;
    esac

    LOG "- Restoring embedded Exynos9810 audio stack for $TARGET_CODENAME"
    for REL in \
        etc/mixer_gains.xml \
        etc/mixer_paths.xml \
        etc/SoundBoosterParam.txt \
        firmware/APBargeIn_AUDIO_SLSI.bin \
        firmware/APBiBF_AUDIO_SLSI.bin \
        firmware/APDV_AUDIO_SLSI.bin \
        firmware/AP_AUDIO_SLSI.bin \
        firmware/SoundBoosterParam.bin \
        lib/hw/audio.primary.exynos9810.so \
        lib/libaudio_soundtrigger.so \
        lib/libaudiodebugfs.so \
        lib/libaudioproxy.so \
        lib/vndk/libaudioroute.so \
        "lib/lib_SoundBooster_ver${BOOSTER_VERSION}.so" \
        "lib64/lib_SoundBooster_ver${BOOSTER_VERSION}.so"; do
        SRC="$ROOT/$REL"
        [ -f "$SRC" ] || {
            LOGE "Embedded Exynos9810 audio component missing: vendor/$REL"
            return 1
        }
        DST="$WORK_DIR/vendor/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1

        case "$REL" in
            etc/*) LABEL="u:object_r:vendor_configs_file:s0" ;;
            firmware/*) LABEL="u:object_r:vendor_fw_file:s0" ;;
            *) LABEL="u:object_r:vendor_file:s0" ;;
        esac
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" \
            0 0 644 "$LABEL"
    done
}

_EXYNOS9810_FINAL_RESTORE_TARGET_CAMERA_STACK()
{
    # Re-assert device-matched camera binaries after generic camera patches.
    local ROOT="$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/$TARGET_CODENAME/vendor"
    local GLOBAL="$EXYNOS9810_LEGACY_PORT_DIR/vendor"
    local REL SRC DST

    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0
    [ -d "$ROOT" ] || return 0

    LOG "- Restoring target-matched Exynos9810 camera HAL for $TARGET_CODENAME"
    for REL in \
        bin/hw/vendor.samsung.hardware.camera.provider@4.0-service \
        etc/init/vendor.samsung.hardware.camera.provider@4.0-service.rc \
        lib/vendor.samsung.hardware.camera.provider@4.0-legacy.so \
        lib/vendor.samsung.hardware.camera.provider@4.0.so \
        lib/hw/camera.unihal.default.so \
        lib64/hw/camera.unihal.default.so; do
        SRC="$GLOBAL/$REL"
        [ -f "$SRC" ] || continue
        DST="$WORK_DIR/vendor/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        case "$REL" in
            bin/*) _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" 0 2000 755 "u:object_r:hal_camera_default_exec:s0" ;;
            etc/*) _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" 0 0 644 "u:object_r:vendor_configs_file:s0" ;;
            *) _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" 0 0 644 "u:object_r:vendor_file:s0" ;;
        esac
    done

    for REL in \
        lib/hw/camera.exynos9810.so \
        lib/libexynoscamera3.so \
        lib64/hw/camera.exynos9810.so \
        lib64/libexynoscamera3.so; do
        SRC="$ROOT/$REL"
        [ -f "$SRC" ] || continue
        DST="$WORK_DIR/vendor/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" \
            0 0 644 "u:object_r:vendor_file:s0"
    done
}

_EXYNOS9810_FINAL_TUNE_AUDIO_VOLUME_CURVES()
{
    local TABLE="$WORK_DIR/vendor/etc/default_volume_tables.xml"
    local POLICY="$WORK_DIR/vendor/etc/audio_policy_volumes.xml"

    if [ ! -f "$TABLE" ] || [ ! -f "$POLICY" ]; then
        LOGW "Audio volume tables are missing; skipping Exynos9810 attenuation"
        return 0
    fi

    LOG "- Applying Exynos9810 speaker calibration and safe output attenuation"

    python3 - "$TABLE" "$POLICY" <<'PY' || return 1
import sys
import xml.etree.ElementTree as ET

table_path, policy_path = sys.argv[1:]

# The legacy WM1814/WM5110 mixer is already the proven Exynos9810 device mixer. The
# One UI 8 framework, however, maps its short volume-index range onto these
# generic curves too aggressively. Increase attenuation only below 100%; keep
# the final point at 0 mB so maximum media/call volume is unchanged.
table_updates = {
    "DEFAULT_SYSTEM_VOLUME_CURVE": [(1, -4200), (33, -3000), (66, -1800), (100, -600)],
    "DEFAULT_MEDIA_VOLUME_CURVE": [(1, -6800), (20, -5000), (60, -2300), (100, -600)],
    "DEFAULT_DEVICE_CATEGORY_SPEAKER_VOLUME_CURVE": [(1, -6800), (20, -5000), (60, -2300), (100, -600)],
}

tree = ET.parse(table_path)
root = tree.getroot()
seen = set()
for ref in root.findall("reference"):
    name = ref.get("name")
    if name not in table_updates:
        continue
    points = ref.findall("point")
    values = table_updates[name]
    if len(points) != len(values):
        raise SystemExit(f"unexpected point count for {name}: {len(points)}")
    for node, (index, attenuation) in zip(points, values):
        node.text = f"{index},{attenuation}"
    seen.add(name)
missing = set(table_updates) - seen
if missing:
    raise SystemExit(f"missing volume references: {sorted(missing)}")
ET.indent(tree, space="    ")
tree.write(table_path, encoding="UTF-8", xml_declaration=True)

# Ring/alarm/notification speaker curves live directly in the policy file.
policy_updates = {
    "AUDIO_STREAM_RING": [(1, -4200), (33, -2800), (66, -1400), (100, -600)],
    "AUDIO_STREAM_ALARM": [(0, -4200), (33, -2800), (66, -1400), (100, -600)],
    "AUDIO_STREAM_NOTIFICATION": [(1, -4200), (33, -2800), (66, -1400), (100, -600)]
}
tree = ET.parse(policy_path)
root = tree.getroot()
seen = set()
for volume in root.findall("volume"):
    stream = volume.get("stream")
    if volume.get("deviceCategory") != "DEVICE_CATEGORY_SPEAKER" or stream not in policy_updates:
        continue
    points = volume.findall("point")
    values = policy_updates[stream]
    if len(points) != len(values):
        raise SystemExit(f"unexpected point count for {stream}: {len(points)}")
    for node, (index, attenuation) in zip(points, values):
        node.text = f"{index},{attenuation}"
    seen.add(stream)
missing = set(policy_updates) - seen
if missing:
    raise SystemExit(f"missing speaker curves: {sorted(missing)}")
ET.indent(tree, space="    ")
tree.write(policy_path, encoding="UTF-8", xml_declaration=True)
PY

    return 0
}

_EXYNOS9810_FINAL_STAGE_KERNELSU_NEXT()
{
    # KernelSU Next's legacy kernel scanner only crowns a manager found as a
    # normal /data/app/.../base.apk. An otherwise byte-identical APK placed in
    # /system/app is ignored, leaving the manager without its KernelSU fd and
    # showing "v2 signature not found in kernel" after every clean boot.
    #
    # Keep the official, upstream-signed release outside PackageManager's
    # system-app scan paths and install it normally after PackageManager is
    # ready. packages.list then changes, the kernel scanner sees base.apk and
    # crowns the manager immediately, exactly like a manual adb/package-
    # installer install.
    local EXPECTED_SHA256="5bf844d1431127dbb76042e9341de19216fdd7d394c01b3c96cc21216c8c69a5"
    local PAYLOAD_DIR="$WORK_DIR/system/system/etc/unica/ksunext"
    local PAYLOAD="$PAYLOAD_DIR/KernelSUNext.apk"
    local SCRIPT="$WORK_DIR/system/system/bin/unica_ksunext_installer.sh"
    local RC="$WORK_DIR/system/system/etc/init/unica_ksunext_installer.rc"
    local SCRIPT_SRC="$MODPATH/kernelsu/unica_ksunext_installer.sh"
    local RC_SRC="$MODPATH/kernelsu/unica_ksunext_installer.rc"

    if [ ! -f "$EXYNOS9810_KERNELSU_NEXT_APK" ]; then
        LOGW "KernelSU Next APK not found: $EXYNOS9810_KERNELSU_NEXT_APK"
        return 1
    fi
    if [ ! -f "$SCRIPT_SRC" ] || [ ! -f "$RC_SRC" ]; then
        LOGE "KernelSU Next first-boot installer files are missing"
        return 1
    fi

    if [ "$(sha256sum "$EXYNOS9810_KERNELSU_NEXT_APK" | cut -d ' ' -f 1)" != "$EXPECTED_SHA256" ]; then
        LOGE "Unexpected KernelSU Next v3.1.0 (33024) payload hash"
        return 1
    fi

    LOG "- Staging KernelSU Next for first-boot /data/app installation"

    # Remove both the earlier platform-stage preload and any decoded copy, so
    # PackageManager never registers this release as a system application.
    _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "system/app/KernelSUNext"

    mkdir -p "$PAYLOAD_DIR" "$(dirname "$SCRIPT")" "$(dirname "$RC")"
    cp -f "$EXYNOS9810_KERNELSU_NEXT_APK" "$PAYLOAD" || return 1
    cp -f "$SCRIPT_SRC" "$SCRIPT" || return 1
    cp -f "$RC_SRC" "$RC" || return 1

    chmod 0644 "$PAYLOAD" "$RC"
    chmod 0755 "$SCRIPT"

    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/unica" 0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/unica/ksunext" 0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/unica/ksunext/KernelSUNext.apk" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/init/unica_ksunext_installer.rc" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/bin/unica_ksunext_installer.sh" 0 2000 755 "u:object_r:system_file:s0"
}


_EXYNOS9810_FINAL_STAGE_LAUNCHER_DEFAULTS()
{
    # One UI Home stores the Media page/Google Discover switch in a
    # DataStore file under /data, so a system build.prop or workspace XML
    # cannot set its clean-install default. Install a one-shot first-boot
    # helper that changes only that key and leaves later user choices alone.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local SCRIPT="$WORK_DIR/system/system/bin/unica_launcher_defaults.sh"
    local RC="$WORK_DIR/system/system/etc/init/unica_launcher_defaults.rc"
    local SCRIPT_SRC="$MODPATH/launcher/unica_launcher_defaults.sh"
    local RC_SRC="$MODPATH/launcher/unica_launcher_defaults.rc"

    [ -f "$SCRIPT_SRC" ] && [ -f "$RC_SRC" ] || {
        LOGE "One UI Home default helper files are missing"
        return 1
    }

    LOG "- Disabling One UI Home Media page / Google Discover by default"
    mkdir -p "$(dirname "$SCRIPT")" "$(dirname "$RC")"
    cp -f "$SCRIPT_SRC" "$SCRIPT" || return 1
    cp -f "$RC_SRC" "$RC" || return 1
    chmod 0755 "$SCRIPT"
    chmod 0644 "$RC"

    _EXYNOS9810_FINAL_SET_METADATA "system" "system/bin/unica_launcher_defaults.sh" \
        0 2000 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/init/unica_launcher_defaults.rc" \
        0 0 644 "u:object_r:system_file:s0"
}


_EXYNOS9810_FINAL_PATCH_CAMERA_FRONT_DYNAMIC_FOV()
{
    # One UI 8's S22 camera exposes a front-camera FOV toggle that the legacy
    # Exynos9810 front sensor/HAL cannot implement. On the 9810 this is a
    # software crop choice, not a second physical front lens. Letting the app
    # calculate the S22 dynamic-FOV value causes camera-id 1 to be reconfigured
    # with an unsupported stream; the HAL then stops delivering frames (-110).
    # Keep the UI route alive by always returning the camera app's native-FOV
    # value (0x3e8 == 1000 == 1.0x). The button therefore remains harmless and
    # the normal front preview/photo path stays on the supported stream.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local ZOOM="$APK_DIR/smali_classes3/com/sec/android/app/camera/engine/ZoomController.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1

    LOG "- Clamping unsupported Exynos9810 front-camera FOV to native 1.0x"

    if [ ! -f "$ZOOM" ]; then
        LOGW "ZoomController.smali not found; skipping front camera crash fix"
        return 0
    fi

    python3 - "$ZOOM" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r"(?ms)^(?P<header>\.method[^\n]*getFrontCropAngleZoomValue\([^\n]*\)I\n)"
    r".*?^\.end method"
)
match = pattern.search(text)
if not match:
    raise SystemExit("getFrontCropAngleZoomValue()I not found")

method = match.group(0)
if "# UN1CA: native front FOV guard" in method:
    print("already patched")
    sys.exit(0)

replacement = (
    match.group("header")
    + "    # UN1CA: native front FOV guard\n"
    + "    .locals 1\n\n"
    + "    const/16 v0, 0x3e8\n\n"
    + "    return v0\n"
    + ".end method"
)
text = text[:match.start()] + replacement + text[match.end():]
path.write_text(text)
print("patched")
PY
}

_EXYNOS9810_FINAL_PATCH_CAMERA_NETWORK_ERRORS()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local LOCATION="$APK_DIR/smali_classes4/com/sec/android/app/camera/provider/CameraLocationManager.smali"
    local ERRORS="$APK_DIR/smali_classes3/com/sec/android/app/camera/CameraErrorEventHandler.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1

    LOG "- Hardening One UI 8 Camera network/error callbacks for Exynos9810"

    if [ -f "$LOCATION" ]; then
        python3 - "$LOCATION" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()

def replace_method(src, name, body):
    pattern = rf"(?ms)^\.method (?P<header>[^\n]* {re.escape(name)}\([^\n]*\)[^\n]*\n).*?^\.end method"
    match = re.search(pattern, src)
    if not match:
        return src, False
    header = match.group("header")
    return src[:match.start()] + ".method " + header + body + "\n.end method" + src[match.end():], True

replacements = {
    "isNetworkLocationProviderEnabled": "    .locals 2\n\n    const-string v0, \"UN1CA\"\n    const-string v1, \"Exynos9810 camera: force network provider available\"\n\n    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I\n\n    const/4 p0, 0x1\n\n    return p0",
    "isLocationAvailable": "    .locals 2\n\n    const-string v0, \"UN1CA\"\n    const-string v1, \"Exynos9810 camera: bypass legacy location availability gate\"\n\n    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I\n\n    const/4 p0, 0x1\n\n    return p0",
    "startAddressRequest": "    .locals 2\n\n    const-string v0, \"UN1CA\"\n    const-string v1, \"Exynos9810 camera: skip SemLocation address request\"\n\n    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I\n\n    return-void",
}

missing = []
for name, body in replacements.items():
    text, ok = replace_method(text, name, body)
    if not ok:
        missing.append(name)

if missing:
    raise SystemExit(f"Camera location methods not found: {', '.join(missing)}")

path.write_text(text)
PY
    fi

    if [ -f "$ERRORS" ]; then
        python3 - "$ERRORS" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()

needle = ".method private handleCameraError(I)V\n    .locals 9\n"
if needle not in text:
    raise SystemExit("handleCameraError not found")

marker = "Exynos9810 camera: ignore stale callback error -20"
if marker not in text:
    text = text.replace(
        needle,
        needle + """\n    const/16 v0, -0x14\n\n    if-ne p1, v0, :exynos9810_keep_camera_error_final\n\n    const-string p0, \"UN1CA\"\n\n    const-string p1, \"Exynos9810 camera: ignore stale callback error -20\"\n\n    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I\n\n    return-void\n\n    :exynos9810_keep_camera_error_final\n""",
        1,
    )

path.write_text(text)
PY
    fi

    find "$APK_DIR/res" -type f -name strings.xml -print0 2>/dev/null | \
        xargs -0 sed -i \
            -e 's|<string name="unknown_error_callback_msg">.*</string>|<string name="unknown_error_callback_msg">Camera callback ignored</string>|' \
            -e 's|<string name="no_network_connection_error">.*</string>|<string name="no_network_connection_error">Camera network check ignored</string>|'
}

_EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_STREAM()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI="$APK_DIR/smali_classes3/com/samsung/android/camera/core2/device/CamDeviceImpl.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1
    [ -f "$SMALI" ] || {
        LOGE "CamDeviceImpl.smali not found in SamsungCamera.apk"
        return 1
    }

    LOG "- Disabling incompatible One UI 8 preview callback ImageReader on Exynos9810"
    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
match = re.search(
    r"(?ms)^\.method[^\n]* i0\(Lcom/samsung/android/camera/core2/container/SessionConfig\$PreviewCbConfigCollector;\)V\n.*?^\.end method",
    text,
)
if not match:
    raise SystemExit("CamDeviceImpl.i0 not found")

method = """.method public final i0(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;)V
    .locals 2

    const-string v0, "UN1CA"

    const-string v1, "Exynos9810 camera: skip preview callback ImageReader stream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method"""
text = text[:match.start()] + method + text[match.end():]
path.write_text(text)
PY
}

_EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_GUARD()
{
    # Companion to _EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_STREAM above.
    # That patch neuters CamDeviceImpl.i0() so the incompatible One UI 8 preview
    # callback ImageReader stream is never configured -- which means the preview
    # callback ImageReader (fields X/Y) stays null. But the front camera's beauty
    # pipeline (SW_FACE_DETECTION) still enables a repeating request that asks for a
    # "main preview callback" target, and CamDeviceImpl then throws
    # CamDeviceException.NO_PREVIEW_IMAGE_READER because that ImageReader is null.
    # The engine goes PREVIEWING -> SHUTDOWN and the whole camera freezes (frozen/
    # blurred frame, dead UI) on both fresh front open and front<->back switching.
    #
    # Fix: in the two repeating-request builders, when a preview-callback ImageReader
    # is requested (count > 0) but the reader is null, skip that capture target
    # (branch to the block's exit label) instead of throwing. Live preview keeps
    # running and switching works both ways; only the real-time face-beauty preview
    # overlay -- which this legacy vendor cannot feed anyway -- is dropped.
    #
    # Verified on SM-G965F (star2lte): front open stays PREVIEWING, and front<->back
    # switching completes cleanly with no NO_PREVIEW_IMAGE_READER / SHUTDOWN.
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI="$APK_DIR/smali_classes3/com/samsung/android/camera/core2/device/CamDeviceImpl.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1
    [ -f "$SMALI" ] || {
        LOGE "CamDeviceImpl.smali not found in SamsungCamera.apk"
        return 1
    }

    LOG "- Guarding One UI 8 preview-callback repeating requests against null ImageReader on Exynos9810"
    python3 - "$SMALI" <<'PY' || return 1
import re
import sys

p = sys.argv[1]
s = open(p).read()

# Each repeating-request preview-callback guard looks like:
#     if-lez v5, :<label>
#
#     iget-object v0, p0, ...CamDeviceImpl;->X|Y:Landroid/media/ImageReader;
#
#     sget-object v1, ...CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:...
#
#     invoke-static {v0, v1}, ...CamDeviceChecker;->a(...)V   # throws if v0 == null
# Turn the throw-if-null checker into a skip-if-null branch to <label>.
pat = re.compile(
    r'(if-lez v5, :(cond_\w+)\n'
    r'\n'
    r'    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->[XY]:Landroid/media/ImageReader;\n)'
    r'\n'
    r'    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException\$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/camera/core2/exception/CamDeviceException\$Type;\n'
    r'\n'
    r'    invoke-static \{v0, v1\}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a\(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException\$Type;\)V\n'
)

s2, n = pat.subn(lambda m: m.group(1) + '\n    if-eqz v0, :' + m.group(2) + '\n', s)
if n == 0:
    already = re.search(
        r'iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->[XY]:Landroid/media/ImageReader;\n\n    if-eqz v0, :cond_',
        s,
    )
    if already:
        print("already patched")
        sys.exit(0)
    print("PATTERN_NOT_FOUND")
    sys.exit(1)
if n < 4:
    sys.stderr.write("WARN: expected 4 preview-callback guard sites, patched %d\n" % n)
open(p, "w").write(s2)
print("patched %d site(s)" % n)
PY
}

_EXYNOS9810_FINAL_PATCH_CAMERA_REPEATING_PREVIEW_SURFACE()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI="$APK_DIR/smali_classes3/com/samsung/android/camera/core2/maker/MakerRepeatingModeManager.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1
    [ -f "$SMALI" ] || {
        LOGE "MakerRepeatingModeManager.smali not found in SamsungCamera.apk"
        return 1
    }

    LOG "- Routing private preview repeating mode to the real preview surface on Exynos9810"
    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()

pattern = (
    r'(?ms)'
    r'(?P<prefix>    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager\$RepeatingMode;'
    r'->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager\$RepeatingMode;\n\n'
    r'    const-string v2, "PRIVATE_PREVIEW_SURFACE"\n\n)'
    r'    invoke-direct \{v0, v2, v1\}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager\$RepeatingKey;'
    r'-><init>\(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager\$RepeatingMode;\)V'
)

replacement = (
    r'\g<prefix>'
    '    sget-object v3, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;'
    '->PREVIEW_SURFACE:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;\n\n'
    '    invoke-direct {v0, v2, v3}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;'
    '-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V'
)

text, count = re.subn(pattern, replacement, text, count=1)
if count != 1:
    if 'const-string v2, "PRIVATE_PREVIEW_SURFACE"' in text and 'invoke-direct {v0, v2, v3}' in text:
        raise SystemExit(0)
    raise SystemExit("PRIVATE_PREVIEW_SURFACE repeating key block not found")

path.write_text(text)
PY
}

_EXYNOS9810_FINAL_PATCH_CAMERA_CAPTURE_SESSION_STREAMS()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI="$APK_DIR/smali_classes3/com/samsung/android/camera/core2/device/CamDeviceImpl.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1
    [ -f "$SMALI" ] || {
        LOGE "CamDeviceImpl.smali not found in SamsungCamera.apk"
        return 1
    }

    LOG "- Disabling incompatible eager One UI 8 picture ImageReader stream on Exynos9810"
    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
match = re.search(
    r"(?ms)^\.method[^\n]* d0\(Lcom/samsung/android/camera/core2/container/SessionConfig;Lcom/samsung/android/camera/core2/CamDevice\$SessionMode;\)I\n.*?^\.end method",
    text,
)
if not match:
    raise SystemExit("CamDeviceImpl.d0 not found")

method = match.group(0)
method = method.replace(
    "    iget-object v8, v1, Lcom/samsung/android/camera/core2/container/SessionConfig;->h:Lcom/samsung/android/camera/core2/container/PictureStreamInfo;\n\n"
    "    if-eqz v8, :cond_3\n",
    "    iget-object v8, v1, Lcom/samsung/android/camera/core2/container/SessionConfig;->h:Lcom/samsung/android/camera/core2/container/PictureStreamInfo;\n\n"
    "    const/4 v8, 0x0\n\n"
    "    if-eqz v8, :cond_3\n",
    1,
)
method = method.replace(
    "    iget-object v1, v1, Lcom/samsung/android/camera/core2/container/SessionConfig;->i:Lcom/samsung/android/camera/core2/container/PictureStreamInfo;\n\n"
    "    if-nez v1, :cond_4\n",
    "    iget-object v1, v1, Lcom/samsung/android/camera/core2/container/SessionConfig;->i:Lcom/samsung/android/camera/core2/container/PictureStreamInfo;\n\n"
    "    const/4 v1, 0x0\n\n"
    "    if-nez v1, :cond_4\n",
    1,
)
if "const/4 v8, 0x0\n\n    if-eqz v8, :cond_3" not in method:
    raise SystemExit("Failed to disable picture depth stream local")
if "const/4 v1, 0x0\n\n    if-nez v1, :cond_4" not in method:
    raise SystemExit("Failed to disable thumbnail stream local")

text = text[:match.start()] + method + text[match.end():]
path.write_text(text)
PY

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        'h0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V' \
        "$(cat <<'EOF'
    .locals 2

    const-string v0, "UN1CA"

    const-string v1, "Exynos9810 camera: skip eager picture ImageReader stream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V

    return-void
EOF
)" || return 1
}

_EXYNOS9810_FINAL_PATCH_CAMERA_PROVIDEO_ICON_CRASH()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1

    # The obfuscated class holding this method (originally "C2.p", but this
    # is an R8-assigned synthetic name that can differ across otherwise
    # logically-identical rebuilds/targets) is located by its unique
    # literal string rather than by class/file name, since that is stable.
    SMALI="$(grep -rl 'Cannot find resource ID:' "$APK_DIR" 2>/dev/null | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "Pro Video icon-lookup smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Fixing Pro Video mode crash on missing quick-setting icon resource"
    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()

old = (
    "    if-nez v1, :cond_2\n\n"
    "    new-instance p1, Ljava/lang/StringBuilder;\n\n"
    "    const-string v1, \"Cannot find resource ID:\""
)
new = (
    "    if-nez v1, :cond_2\n\n"
    "    const-string v1, \"\"\n\n"
    "    return-object v1\n\n"
    "    new-instance p1, Ljava/lang/StringBuilder;\n\n"
    "    const-string v1, \"Cannot find resource ID:\""
)
if new not in text:
    if old not in text:
        raise SystemExit("Pro Video icon-lookup crash site not found")
    text = text.replace(old, new, 1)
    path.write_text(text)
PY
}

_EXYNOS9810_FINAL_PATCH_CAMERA_SCENE_DETECTION_NODE()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI="$APK_DIR/smali_classes3/com/samsung/android/camera/core2/node/NodeFeatureLoader.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1
    [ -f "$SMALI" ] || {
        LOGE "NodeFeatureLoader.smali not found in SamsungCamera.apk"
        return 1
    }

    LOG "- Forcing Exynos9810 camera onto the dummy scene-detection node"
    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()

# NodeFeatureLoader.b lists vendor-lib names that must NOT be resolved to
# their real node implementation, forcing NodeFactory to fall back to the
# built-in dummy node. The donor S22 firmware's floating-feature vendor-lib
# list still advertises "scene_detection.samsung.v1" (inherited unmodified
# for this Exynos9810 port), so the app builds the real SribSceneDetectionNode
# even though this SoC has no such AI/NPU backing.
if '"scene_detection"' in text:
    raise SystemExit(0)

match = re.search(
    r"(?ms)^\.method static constructor <clinit>\(\)V\n(.*?)^\.end method",
    text,
)
if not match:
    raise SystemExit("NodeFeatureLoader <clinit> not found")

body = match.group(1)
locals_match = re.search(r"\.locals (\d+)", body)
of_match = re.search(
    r"invoke-static/range \{v0 \.\. v(\d+)\}, Ljava/util/List;->of\(((?:Ljava/lang/Object;)+)\)Ljava/util/List;",
    body,
)
if not locals_match or not of_match:
    raise SystemExit("NodeFeatureLoader <clinit> shape not recognized")

old_locals = int(locals_match.group(1))
last_reg = int(of_match.group(1))
new_reg = last_reg + 1
new_locals = old_locals + 1
if new_reg != old_locals:
    raise SystemExit("NodeFeatureLoader <clinit> register layout unexpected")

new_body = body.replace(f".locals {old_locals}", f".locals {new_locals}", 1)
new_body = new_body.replace(
    f"invoke-static/range {{v0 .. v{last_reg}}}, Ljava/util/List;->of({of_match.group(2)})Ljava/util/List;",
    f'    const-string v{new_reg}, "scene_detection"\n\n'
    f"    invoke-static/range {{v0 .. v{new_reg}}}, Ljava/util/List;->of({of_match.group(2)}Ljava/lang/Object;)Ljava/util/List;",
    1,
)
if new_body == body:
    raise SystemExit("Failed to extend NodeFeatureLoader ignore-list")

text = text[:match.start(1)] + new_body + text[match.end(1):]
path.write_text(text)
PY
}

_EXYNOS9810_FINAL_PATCH_CAMERA_SCENE_DETECTION_STREAM()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI="$APK_DIR/smali_classes3/com/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1
    [ -f "$SMALI" ] || {
        LOGE "AutoBeautyPhotoMaker.smali not found in SamsungCamera.apk"
        return 1
    }

    LOG "- Disabling Exynos9810 camera scene-detection preview-callback stream"
    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()

# Applying scene_detection_mode enables the SCENE_DETECTION repeating key,
# which requests an extra MAIN_PREVIEW_CALLBACK ImageReader stream via
# PhotoMakerBase.applyRepeatingKey - independent of whether the scene
# detection node itself is real or dummy. On this Exynos9810 port that
# ImageReader is never actually created, so CamDeviceImpl throws
# "There is no preview image reader" and the generic Request error handler
# force-shuts-down the whole Engine state machine (breaking shooting-mode
# switching and capture). Located by the unobfuscated RepeatingKey field
# name rather than the lambda's R8-assigned method name, since that number
# can shift between otherwise-identical rebuilds.
match = re.search(
    r"(?ms)^\.method[^\n]*\n(?:(?!^\.end method).)*?"
    r"REPEATING_KEY_SCENE_DETECTION:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager\$RepeatingKey;"
    r".*?^\.end method",
    text,
)
if not match:
    raise SystemExit("SCENE_DETECTION repeating-key executor not found")

method = match.group(0)
old = (
    "    if-lez p1, :cond_0\n\n"
    "    const/4 p1, 0x1\n\n"
    "    goto :goto_0\n\n"
    "    :cond_0\n"
    "    const/4 p1, 0x0\n\n"
    "    :goto_0\n"
)
new = "    const/4 p1, 0x0\n\n"
if new in method and old not in method:
    pass
else:
    if old not in method:
        raise SystemExit("SCENE_DETECTION repeating-key enable logic not found")
    method = method.replace(old, new, 1)
    text = text[:match.start()] + method + text[match.end():]
    path.write_text(text)
PY
}

_EXYNOS9810_FINAL_INSTALL_NATIVE_CAMERA()
{
    # Keep the exact stock One UI 8 v26 app/cameraserver pair. The v2 UniHAL
    # payload is byte-identical to the previously working build except for a
    # tiny hook in unused executable padding: on a cold camera session it
    # restores Samsung's option-2 flag to the JPEG stream before the existing
    # buffer-manager repair runs. Without that self-heal, the first photo can
    # leave JPEG in the repeating preview request, exhaust PIPE_3AA_CAPTURE
    # (P6), and wedge the provider until reboot.
    local SRC="$MODPATH/native_camera"
    local APK_SRC="$SRC/SamsungCamera.apk"
    local HAL_SRC="$SRC/unihal_main@2.1.so"
    local CAMERASERVER_SRC="$SRC/cameraserver"
    local APK_DST="$WORK_DIR/system/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local HAL_DST="$WORK_DIR/vendor/lib/unihal_main@2.1.so"
    local CAMERASERVER_DST="$WORK_DIR/system/system/bin/cameraserver"

    [ -f "$APK_SRC" ] || {
        LOGE "Native SamsungCamera payload missing: $APK_SRC"
        return 1
    }
    [ -f "$HAL_SRC" ] || {
        LOGE "Native camera UniHAL payload missing: $HAL_SRC"
        return 1
    }
    [ -f "$CAMERASERVER_SRC" ] || {
        LOGE "Native camera cameraserver payload missing: $CAMERASERVER_SRC"
        return 1
    }
    [ -d "$(dirname "$APK_DST")" ] || {
        LOGE "SamsungCamera destination directory missing: $(dirname "$APK_DST")"
        return 1
    }
    [ -d "$(dirname "$HAL_DST")" ] || {
        LOGE "UniHAL destination directory missing: $(dirname "$HAL_DST")"
        return 1
    }
    [ -d "$(dirname "$CAMERASERVER_DST")" ] || {
        LOGE "cameraserver destination directory missing: $(dirname "$CAMERASERVER_DST")"
        return 1
    }

    # Refuse to package a silently replaced or stale payload. These are the
    # hashes of the exact proven SamsungCamera APK (One UI 8 v26 base plus the
    # working Motion Photo SURFACE-mode stack), cold-session-safe 32-bit
    # UniHAL and cameraserver combination.
    [ "$(sha256sum "$APK_SRC" | cut -d ' ' -f 1)" = \
        "45d1d3c89ad7abc8b34e335f3953c8334553f94b2156bd775879d860162e5a23" ] || {
        LOGE "Unexpected native SamsungCamera payload hash"
        return 1
    }
    [ "$(sha256sum "$HAL_SRC" | cut -d ' ' -f 1)" = \
        "62c55a3f65779160839af2dffc88a07eb48e875abacad49b862d0d8e0c40de16" ] || {
        LOGE "Unexpected native camera UniHAL payload hash"
        return 1
    }
    [ "$(sha256sum "$CAMERASERVER_SRC" | cut -d ' ' -f 1)" = \
        "06d1c14dd93b39b399beb97e0eb06e0dd0f08a3da2d643a96f588c488b43d061" ] || {
        LOGE "Unexpected native camera cameraserver payload hash"
        return 1
    }

    LOG "- Installing One UI 8 v26 native camera stack with cold-session JPEG repair"

    # Prevent the global apktool rebuild pass from overwriting this proven APK
    # with an older decoded Camera2-bridge variant.
    rm -rf "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    cp -f "$APK_SRC" "$APK_DST" || return 1
    cp -f "$HAL_SRC" "$HAL_DST" || return 1
    cp -f "$CAMERASERVER_SRC" "$CAMERASERVER_DST" || return 1
    chmod 0644 "$APK_DST" "$HAL_DST" || return 1
    chmod 0755 "$CAMERASERVER_DST" || return 1
}

_EXYNOS9810_FINAL_REPATCH_APPS()
{
    LOG "- Re-applying Exynos9810 Camera/Bluetooth/Settings patches after final restore"

    _EXYNOS9810_FINAL_IMPORT_FUNCTIONS || return 1

    # Keep the known-booting Exynos9810 baseline SamsungCamera restored by
    # _EXYNOS9810_RESTORE_BOOTING_SYSTEM_CORE. Do not replace it here with the
    # later S22-native camera payload: that override regresses the
    # portrait-photo -> gallery -> back lifecycle on the legacy HAL.
    _EXYNOS9810_FINAL_INSTALL_NATIVE_CAMERA || return 1

    _EXYNOS9810_FINAL_RESTORE_BLUETOOTH_LIB || return 1
    rm -rf "$APKTOOL_DIR/system/app/BluetoothAgent/BluetoothAgent.apk"
    _EXYNOS9810_PATCH_BLUETOOTH_AGENT || return 1

}

_EXYNOS9810_DELETE_METADATA()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local CONTEXT="$3"
    local RAW_CONTEXT
    local ESCAPED_CONTEXT

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"

    awk -v entry="$ENTRY" '$1 != entry { print }' \
        "$WORK_DIR/configs/fs_config-$PARTITION" > "$WORK_DIR/configs/fs_config-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"

    RAW_CONTEXT="$CONTEXT"
    ESCAPED_CONTEXT="/$(_HANDLE_SPECIAL_CHARS "${CONTEXT#/}")"
    awk -v raw="$RAW_CONTEXT" -v escaped="$ESCAPED_CONTEXT" \
        '$1 != raw && $1 != escaped { print }' \
        "$WORK_DIR/configs/file_context-$PARTITION" > "$WORK_DIR/configs/file_context-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/file_context-$PARTITION.tmp" "$WORK_DIR/configs/file_context-$PARTITION"
}

_EXYNOS9810_REMOVE_STALE_PRECOMPILED_SEPOLICY()
{
    local FILE
    local REL

    LOG "- Removing stale Exynos9810 ODM precompiled SELinux policy"
    for FILE in \
        "odm/etc/selinux/precompiled_sepolicy" \
        "odm/etc/selinux/precompiled_sepolicy.plat_sepolicy_and_mapping.sha256" \
        "odm/etc/selinux/precompiled_sepolicy.system_ext_sepolicy_and_mapping.sha256"; do
        for REL in "$WORK_DIR/$FILE" "$WORK_DIR/system/$FILE" "$WORK_DIR/system/system/$FILE"; do
            rm -f "$REL"
        done
        _EXYNOS9810_DELETE_METADATA "odm" "$FILE" "/$FILE"
        _EXYNOS9810_DELETE_METADATA "system" "$FILE" "/$FILE"
    done
}

_EXYNOS9810_FINAL_APPLY_EMBEDDED_SEPOLICY()
{
    local TEMPLATE="$SRC_DIR/unica/mods/zzzz_exynos9810_boot_restore/customize.sh"
    local VENDOR_CIL="$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
    local PLAT_CIL="$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"

    [ -f "$TEMPLATE" ] || {
        LOGE "Embedded Exynos9810 SELinux rule template is missing: $TEMPLATE"
        return 1
    }
    [ -f "$VENDOR_CIL" ] || {
        LOGE "Embedded Exynos9810 vendor SELinux policy is missing: $VENDOR_CIL"
        return 1
    }
    [ -f "$PLAT_CIL" ] || {
        LOGE "Embedded Exynos9810 platform SELinux policy is missing: $PLAT_CIL"
        return 1
    }

    LOG "- Applying embedded Exynos9810 SELinux compatibility rules"
    python3 - "$TEMPLATE" "$VENDOR_CIL" "$PLAT_CIL" <<'PY' || return 1
from pathlib import Path
import sys

template, vendor_cil, plat_cil = map(Path, sys.argv[1:])
lines = template.read_text().splitlines()

def quoted_block(marker):
    start = next(i for i, line in enumerate(lines) if marker in line)
    rules = []
    for line in lines[start + 1:]:
        if line.strip() == '"':
            break
        line = line.strip()
        if line.startswith("("):
            rules.append(line)
    return rules

def heredoc_block(marker):
    start = next(i for i, line in enumerate(lines) if marker in line)
    rules = []
    for line in lines[start + 1:]:
        if line.strip() == "ENFORCING_ALLOW_RULES_EOF":
            break
        line = line.strip()
        if line.startswith("("):
            rules.append(line)
    return rules

def append_unique(path, rules):
    existing = set(path.read_text().splitlines())
    with path.open("a", encoding="utf-8") as handle:
        for rule in rules:
            if rule not in existing:
                handle.write(rule + "\n")
                existing.add(rule)

append_unique(vendor_cil, quoted_block('local SUPPLEMENTARY_RULES="'))
append_unique(plat_cil, quoted_block('local PLAT_PERMISSIVE_RULES="'))
append_unique(plat_cil, heredoc_block("<<'ENFORCING_ALLOW_RULES_EOF'"))
PY
}

_EXYNOS9810_RESTORE_GRAPHICS_MAPPER_COMPAT()
{
    local ROOT="$SRC_DIR/unica/mods/zzzz_exynos9810_boot_restore/exynos9810_graphics"
    local REL SRC DST LABEL

    EXYNOS9810_GRAPHICS_MAPPER_BRIDGE_PRESENT=false
    [ -d "$ROOT" ] || {
        LOGW "Embedded Exynos9810 graphics payload is absent; keeping target-native graphics"
        return 0
    }

    LOG "- Applying embedded Exynos9810 graphics compatibility libraries"

    for REL in \
        lib/android.hardware.graphics.mapper@2.0.so \
        lib/android.hardware.graphics.mapper@2.1.so \
        lib/libgralloctypes.so \
        lib/libnativewindow.so \
        lib64/android.hardware.graphics.mapper@2.0.so \
        lib64/android.hardware.graphics.mapper@2.1.so \
        lib64/libgralloctypes.so \
        lib64/libnativewindow.so; do
        SRC="$ROOT/system/$REL"
        [ -f "$SRC" ] || {
            LOGE "Embedded Exynos9810 system graphics component missing: system/$REL"
            return 1
        }
        DST="$WORK_DIR/system/system/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        case "$REL" in
            *android.hardware.graphics.mapper*|*libgralloctypes*)
                LABEL="u:object_r:same_process_hal_file:s0" ;;
            *)
                LABEL="u:object_r:system_lib_file:s0" ;;
        esac
        _EXYNOS9810_FINAL_SET_METADATA "system" "system/$REL" \
            0 0 644 "$LABEL"
    done

    for REL in \
        lib/libgralloctypes-v33.so \
        lib64/libgralloctypes-v33.so \
        lib64/stock-vndk29-graphics/android.hardware.graphics.allocator@2.0.so \
        lib64/stock-vndk29-graphics/android.hardware.graphics.common@1.0.so \
        lib64/stock-vndk29-graphics/android.hardware.graphics.mapper@2.0.so \
        lib64/stock-vndk29-graphics/libc++.graphics.so; do
        SRC="$ROOT/vendor/$REL"
        [ -f "$SRC" ] || {
            LOGE "Embedded Exynos9810 vendor graphics component missing: vendor/$REL"
            return 1
        }
        DST="$WORK_DIR/vendor/$REL"
        mkdir -p "$(dirname "$DST")"
        cp -af "$SRC" "$DST" || return 1
        _EXYNOS9810_FINAL_SET_METADATA "vendor" "vendor/$REL" \
            0 0 644 "u:object_r:vendor_file:s0"
    done

    if [ -f "$WORK_DIR/vendor/lib/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" ] &&
       [ -f "$WORK_DIR/vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" ]; then
        EXYNOS9810_GRAPHICS_MAPPER_BRIDGE_PRESENT=true
    fi
}

_EXYNOS9810_FINAL_CLEAN_GRAPHICS_STATE()
{
    local ARCH_DIR FILE

    LOG "- Finalizing Exynos9810 legacy graphics state for enforcing boot"

    # Repeat the proven Android 16 graphics restore at the very end so an
    # incremental workdir cannot reintroduce the incompatible stock S9 mapper.
    _EXYNOS9810_RESTORE_GRAPHICS_MAPPER_COMPAT || return 1

    # The known-good image resolves its HIDL interface libraries from the
    # Android 16 system namespace. Private vendor copies form a mixed ABI and
    # make the passthrough mapper fail to load.
    for ARCH_DIR in lib lib64; do
        for FILE in \
            "android.hardware.graphics.mapper@2.0.so" \
            "android.hardware.graphics.mapper@2.1.so" \
            "android.hardware.graphics.allocator@2.0.so" \
            "android.hardware.graphics.common@1.0.so" \
            "libc++.graphics.so" \
            "libgralloctypes.so" \
            "libgralloctypes-v33.so"; do
            rm -f "$WORK_DIR/vendor/$ARCH_DIR/$FILE"
            _EXYNOS9810_DELETE_METADATA "vendor" \
                "vendor/$ARCH_DIR/$FILE" \
                "/vendor/$ARCH_DIR/$FILE"
        done

        for FILE in \
            "$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.1-impl.so" \
            "$WORK_DIR/system/system/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so" \
            "$WORK_DIR/system/system/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.1-impl.so"; do
            [ ! -e "$FILE" ] || rm -f "$FILE"
        done

        for REL in \
            "vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.1-impl.so" \
            "system/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so" \
            "system/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.1-impl.so"; do
            case "$REL" in
                vendor/*) _EXYNOS9810_DELETE_METADATA "vendor" "$REL" "/$REL" ;;
                system/*) _EXYNOS9810_DELETE_METADATA "system" "$REL" "/$REL" ;;
            esac
        done

        if [ "$EXYNOS9810_GRAPHICS_MAPPER_BRIDGE_PRESENT" = true ]; then
            FILE="$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so"
            [ -f "$FILE" ] || {
                LOGE "Proven mapper@2.1 bridge missing after final cleanup: $FILE"
                return 1
            }
        else
            FILE="$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so"
            [ -f "$FILE" ] || {
                LOGE "Target-native mapper implementation missing after final cleanup: $FILE"
                return 1
            }
        fi
    done

    # This must be repeated at the end because a later restore/debloat pass
    # can repopulate the nested system/odm path in an incremental workdir.
    _EXYNOS9810_REMOVE_STALE_PRECOMPILED_SEPOLICY

    for FILE in \
        "$WORK_DIR/system/odm/etc/selinux/precompiled_sepolicy" \
        "$WORK_DIR/system/odm/etc/selinux/precompiled_sepolicy.plat_sepolicy_and_mapping.sha256" \
        "$WORK_DIR/system/odm/etc/selinux/precompiled_sepolicy.system_ext_sepolicy_and_mapping.sha256"; do
        [ ! -e "$FILE" ] || {
            LOGE "Stale precompiled Exynos9810 SELinux policy remains: $FILE"
            return 1
        }
    done
}

_EXYNOS9810_FINAL_KEEP_STORE_UPDATABLE_APPS_SIGNED()
{
    # These packages must keep their original Samsung signatures. Stale apktool
    # decode folders from previous builds would make the global rebuild pass
    # platform-sign them, which blocks Galaxy Store updates.
    LOG "- Keeping Samsung Account, Bixby and Customization Services donor-signed"

    rm -rf \
        "$APKTOOL_DIR/system/priv-app/SamsungAccount/SamsungAccount.apk" \
        "$APKTOOL_DIR/system/priv-app/Bixby/Bixby.apk" \
        "$APKTOOL_DIR/system/app/Personalization/Personalization.apk"
}

_EXYNOS9810_FINAL_FIX_BIXBY_KEYLAYOUT()
{
    local KEYLAYOUT_DIR="$WORK_DIR/system/system/usr/keylayout"
    local FILE
    local COUNT=0

    [ -d "$KEYLAYOUT_DIR" ] || return 0

    LOG "- Enabling dynamic Exynos9810 Bixby key remapping for physical key 703"
    while IFS= read -r -d "" FILE; do
        if grep -qE "^key[[:space:]]+703[[:space:]]+" "$FILE" 2>/dev/null; then
            # Use a neutral Samsung keycode carrier for the physical Bixby key.
            # SystemServer uses scan code 703 directly and consumes it before
            # dispatching the action selected in UN1CA Settings. CAMERA and
            # ASSIST both also trigger stock handlers on this One UI 8 base.
            sed -i -E "s/^(key[[:space:]]+703[[:space:]]+)[^[:space:]]+(.*)$/\1USER\2/" "$FILE"
            COUNT=$((COUNT + 1))
        fi
    done < <(find "$KEYLAYOUT_DIR" -maxdepth 1 -type f -name "*.kl" -print0)

    LOG "  - Remapped key 703 in $COUNT keylayout file(s) to USER"
}

_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_RECOVERY()
{
    # zzzz_exynos9810_boot_restore fully wipes and rebuilds $WORK_DIR/vendor
    # from the pristine legacy-port source (rm -rf + cp -a), which runs
    # *after* the Exynos9810 device-stack patch module, undoing any earlier in-place
    # patch to a vendor file. This module runs later still, so it's the
    # place that actually survives into the final build.
    #
    # Exiting or backgrounding Portrait can leave the legacy HAL in RUN while
    # Camera2 is already flushing. The old port workaround merely extended the
    # wait from ~3.1s to ~25.1s and then still called __android_log_assert(),
    # killing the entire camera provider and leaving Samsung Camera black.
    # Restore the stock wait and redirect only its timeout branch to
    # m_transitState()'s normal state-commit path. That returns success to
    # ExynosCamera::flush(), which then performs its existing complete pipe,
    # thread, request-list and buffer cleanup instead of aborting the provider.
    local LIB="$WORK_DIR/vendor/lib/libexynoscamera3.so"
    local LONG_WAIT
    local STOCK_WAIT
    local RECOVER

    # Each target overlay installs its own device HAL. The state-machine code
    # is equivalent, but camera-id/log-context offsets differ between S9 and
    # S9+/Note9, so keep a context-checked byte sequence for each layout.
    case "$TARGET_CODENAME" in
        star2lte|crownlte)
            LONG_WAIT="39483a4f3a4d06f5296b6ff0fa0478447f447d448146013452d2d6f8c830"
            STOCK_WAIT="39483a4f3a4d06f5296b6ff01e0478447f447d448146013452d2d6f8c830"
            RECOVER="39483a4f3a4d06f5296b6ff01e0478447f447d44814601342fd2d6f8c830"
            ;;
        starlte)
            LONG_WAIT="39483a4f3a4d06f6882b6ff0fa0478447f447d448146013452d2d6f8c030"
            STOCK_WAIT="39483a4f3a4d06f6882b6ff01e0478447f447d448146013452d2d6f8c030"
            RECOVER="39483a4f3a4d06f6882b6ff01e0478447f447d44814601342fd2d6f8c030"
            ;;
        *)
            LOGE "Unsupported Exynos9810 camera target: $TARGET_CODENAME"
            return 1
            ;;
    esac

    if [ ! -f "$LIB" ]; then
        LOGE "Exynos9810 camera HAL missing for $TARGET_CODENAME"
        return 1
    fi

    local RESULT
    RESULT="$(python3 - "$LIB" "$LONG_WAIT" "$STOCK_WAIT" "$RECOVER" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
long_wait = bytes.fromhex(sys.argv[2])
stock_wait = bytes.fromhex(sys.argv[3])
recover = bytes.fromhex(sys.argv[4])
data = path.read_bytes()

counts = (data.count(long_wait), data.count(stock_wait), data.count(recover))
if counts == (1, 0, 0):
    path.write_bytes(data.replace(long_wait, recover, 1))
    print("patched-long")
elif counts == (0, 1, 0):
    path.write_bytes(data.replace(stock_wait, recover, 1))
    print("patched-stock")
elif counts == (0, 0, 1):
    print("present")
else:
    print(f"unknown:{counts[0]}:{counts[1]}:{counts[2]}")
PY
)" || return 1

    case "$RESULT" in
        patched-long|patched-stock)
            LOG "- Making Exynos9810 camera flush timeout recover through full cleanup"
            ;;
        present)
            LOG "- Exynos9810 camera flush recovery already present"
            ;;
        *)
            LOGE "Exynos9810 camera flush recovery pattern mismatch for $TARGET_CODENAME ($RESULT)"
            return 1
            ;;
    esac
}

_EXYNOS9810_FINAL_PATCH_CAMERA_LLS_SINGLE_FRAME()
{
    # The One UI 8 camera sends a normal single-photo request, but the legacy
    # Exynos9810 HAL independently upgrades low-light scenes to a four-frame
    # LLS/LLHDR capture. Samsung's newer request lifecycle does not reserve the
    # extra legacy FLITE buffers: P6 exhausts after the first capture, PIPE_3AA
    # starts returning -38, and opening QuickView merely exposes the already
    # wedged session. Route Samsung-camera calls through checkLDCaptureMode()'s
    # existing disabled/single-frame path. Non-Samsung Camera2 clients already
    # take that path, so stream configuration and ordinary third-party capture
    # behavior remain unchanged.
    local LIB="$WORK_DIR/vendor/lib/libexynoscamera3.so"
    local ORIGINAL
    local PATCHED

    # checkLDCaptureMode() is built at a different address for every device
    # HAL, which changes both branch and BL encodings even though the source
    # logic is the same. Force its existing disabled/single-frame branch with
    # a target-specific contextual match.
    case "$TARGET_CODENAME" in
        star2lte)
            ORIGINAL="fcf757f908b307bb204604f58475fef7bbfa"
            PATCHED="fcf757f908b320e0204604f58475fef7bbfa"
            ;;
        starlte)
            ORIGINAL="fcf75afc08b307bb204604f58475fef715fb"
            PATCHED="fcf75afc08b320e0204604f58475fef715fb"
            ;;
        crownlte)
            ORIGINAL="fcf7d1f808b307bb204604f58475fef769fa"
            PATCHED="fcf7d1f808b320e0204604f58475fef769fa"
            ;;
        *)
            LOGE "Unsupported Exynos9810 camera target: $TARGET_CODENAME"
            return 1
            ;;
    esac

    if [ ! -f "$LIB" ]; then
        LOGE "Exynos9810 camera HAL missing for $TARGET_CODENAME"
        return 1
    fi

    local RESULT
    RESULT="$(python3 - "$LIB" "$ORIGINAL" "$PATCHED" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
old = bytes.fromhex(sys.argv[2])
new = bytes.fromhex(sys.argv[3])
data = path.read_bytes()

old_count = data.count(old)
new_count = data.count(new)
if old_count == 1 and new_count == 0:
    path.write_bytes(data.replace(old, new, 1))
    print("patched")
elif old_count == 0 and new_count == 1:
    print("present")
else:
    print(f"unknown:{old_count}:{new_count}")
PY
)" || return 1

    case "$RESULT" in
        patched)
            LOG "- Forcing stable single-frame low-light photo capture on Exynos9810"
            ;;
        present)
            LOG "- Exynos9810 single-frame low-light capture fix already present"
            ;;
        *)
            LOGE "Exynos9810 single-frame LLS byte pattern mismatch for $TARGET_CODENAME ($RESULT)"
            return 1
            ;;
    esac
}

_EXYNOS9810_FINAL_PATCH_CAMERA_PORTRAIT_RESUME()
{
    # Samsung Camera opens camera 0 with shootingmode=0, starts the legacy HAL's
    # fast-AE thread, and only then supplies the restored Portrait mode (25).
    # On return from Gallery the fast-AE path programs FLITE first; Portrait's
    # normal pipeline then repeats VIDIOC_S_FMT and the Exynos9810 driver rejects
    # it with EINVAL/-38, leaving a black/frozen camera UI while the provider is
    # still alive. Keep fast-AE for Photo and every existing supported mode, add
    # Portrait to checkFastenAeStableEnable(), and re-run that check immediately
    # before the delayed fast-AE thread touches the sensor. By then mode 25 has
    # arrived, so only Portrait skips the unsafe pre-run.
    #
    local LIB="$WORK_DIR/vendor/lib/libexynoscamera3.so"
    local MODE_ORIGINAL
    local MODE_PATCHED
    local THREAD_ORIGINAL
    local THREAD_PATCHED

    # The three device HALs implement the same fast-AE lifecycle at different
    # addresses. These blocks were derived from each target's own ARM/Thumb
    # code; no S9+ instructions are ever copied into the S9 or Note9 binary.
    case "$TARGET_CODENAME" in
        star2lte)
            MODE_ORIGINAL="d4f80801122141f054fb16280cd0d4f80801122141f04dfb172805d0d4f80801022141f034fa"
            MODE_PATCHED="d4f80801122141f054fb16280cd017280ad0192808d000bf00bf00bfd4f80801022141f034fa"
            THREAD_ORIGINAL="44f6d630cde900b5029003203649364a79447a4452f01eed"
            THREAD_PATCHED="d4f8c800800020180069eff7c4fde0b102e000bf00bf00bf"
            ;;
        starlte)
            MODE_ORIGINAL="d4f80801122138f0c4fe16280cd0d4f80801122138f0bdfe172805d0"
            MODE_PATCHED="d4f80801122138f0c4fe16280cd017280ad0192808d000bf00bf00bf"
            THREAD_ORIGINAL="44f6d630cde900b5029003203649374a79447a443df0b0ee"
            THREAD_PATCHED="d4f8c000800020180069f0f71ffae0b102e000bf00bf00bf"
            ;;
        crownlte)
            MODE_ORIGINAL="d4f80801122141f0c2fe16280cd0d4f80801122141f0bbfe172805d0"
            MODE_PATCHED="d4f80801122141f0c2fe16280cd017280ad0192808d000bf00bf00bf"
            THREAD_ORIGINAL="44f6d630cde900b5029003203649364a79447a4454f084ed"
            THREAD_PATCHED="d4f8c800800020180069eff7b0fde0b102e000bf00bf00bf"
            ;;
        *)
            LOGE "Unsupported Exynos9810 camera target: $TARGET_CODENAME"
            return 1
            ;;
    esac

    if [ ! -f "$LIB" ]; then
        LOGE "Exynos9810 camera HAL missing for $TARGET_CODENAME"
        return 1
    fi

    local RESULT
    RESULT="$(python3 - "$LIB" "$MODE_ORIGINAL" "$MODE_PATCHED" "$THREAD_ORIGINAL" "$THREAD_PATCHED" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
pairs = [
    ("mode", bytes.fromhex(sys.argv[2]), bytes.fromhex(sys.argv[3])),
    ("thread", bytes.fromhex(sys.argv[4]), bytes.fromhex(sys.argv[5])),
]
data = path.read_bytes()
changed = []

for name, old, new in pairs:
    old_count = data.count(old)
    new_count = data.count(new)
    if old_count == 1 and new_count == 0:
        data = data.replace(old, new, 1)
        changed.append(name)
    elif old_count == 0 and new_count == 1:
        pass
    else:
        print(f"unknown:{name}:{old_count}:{new_count}")
        raise SystemExit(2)

for name, old, new in pairs:
    if data.count(old) != 0 or data.count(new) != 1:
        print(f"verify-failed:{name}:{data.count(old)}:{data.count(new)}")
        raise SystemExit(3)

if changed:
    path.write_bytes(data)
    print("patched:" + ",".join(changed))
else:
    print("present")
PY
)" || {
        LOGE "Exynos9810 Portrait resume patch failed for $TARGET_CODENAME ($RESULT)"
        return 1
    }

    case "$RESULT" in
        patched:*)
            LOG "- Preventing Exynos9810 Portrait preview failure after returning from Gallery"
            ;;
        present)
            LOG "- Exynos9810 Portrait resume fix already present"
            ;;
        *)
            LOGE "Exynos9810 Portrait resume byte pattern mismatch for $TARGET_CODENAME ($RESULT)"
            return 1
            ;;
    esac
}

_EXYNOS9810_FINAL_PATCH_CAMERA_REPROCESSING_RECOVERY()
{
    # A failed legacy reprocessing frame normally reaches a hard assertion in
    # m_captureStreamThreadFunc (pipe 205). __android_log_assert() aborts the
    # entire provider, so every camera client remains broken until Android is
    # rebooted. Redirect only that exact, context-checked call site to the
    # function's existing nonfatal cleanup path. The single-frame LLS patch
    # prevents the known P6 starvation; this remains a last-resort recovery
    # guard if a malformed frame still reaches the vendor failure branch.
    local LIB="$WORK_DIR/vendor/lib/libexynoscamera3.so"
    local ORIGINAL
    local PATCHED

    # The assertion site and its normal cleanup target have different Thumb
    # branch encodings in every device HAL. Keep each replacement inside the
    # target's own function; never copy an S9+ branch into S9 or Note9 code.
    case "$TARGET_CODENAME" in
        starlte)
            ORIGINAL="43f6aa10cde9000600200549064a064b79447a447b4419f0acee"
            PATCHED="43f6aa10cde9000600200549064a064b79447a447b4499e500bf"
            ;;
        star2lte)
            ORIGINAL="43f6aa10cde9000600200349044a044b79447a447b4427f0f0ec"
            PATCHED="43f6aa10cde9000600200349044a044b79447a447b44fef71dbe"
            ;;
        crownlte)
            ORIGINAL="43f6aa10cde9000600200349044a044b79447a447b4429f028ea"
            PATCHED="43f6aa10cde9000600200349044a044b79447a447b44fef71dbe"
            ;;
        *)
            LOGE "Unsupported Exynos9810 camera target: $TARGET_CODENAME"
            return 1
            ;;
    esac

    if [ ! -f "$LIB" ]; then
        LOGW "Exynos9810 camera HAL missing for $TARGET_CODENAME, skipping reprocessing recovery"
        return 0
    fi

    local RESULT
    RESULT="$(python3 - "$LIB" "$ORIGINAL" "$PATCHED" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
old = bytes.fromhex(sys.argv[2])
new = bytes.fromhex(sys.argv[3])
data = path.read_bytes()

old_count = data.count(old)
new_count = data.count(new)
if old_count == 1 and new_count == 0:
    path.write_bytes(data.replace(old, new, 1))
    print("patched")
elif old_count == 0 and new_count == 1:
    print("present")
else:
    print(f"unknown:{old_count}:{new_count}")
PY
)" || return 1

    case "$RESULT" in
        patched)
            LOG "- Making Exynos9810 camera reprocessing failure recoverable"
            ;;
        present)
            LOG "- Exynos9810 camera reprocessing recovery already present"
            ;;
        *)
            LOGE "Exynos9810 reprocessing recovery pattern mismatch for $TARGET_CODENAME ($RESULT)"
            return 1
            ;;
    esac
}

_EXYNOS9810_FINAL_PRUNE_LAUNCHER_DEBLOATED_FAVORITES()
{
    local APK_DIR="$APKTOOL_DIR/system/priv-app/TouchWizHome_2017/TouchWizHome_2017.apk"
    local PRISM_DIR="$WORK_DIR/system/prism/etc/carriers"
    local FILE
    local REMOVED

    DECODE_APK "system" "system/priv-app/TouchWizHome_2017/TouchWizHome_2017.apk" || return 1

    LOG "- Pruning debloated-app references from every launcher seed source"

    while IFS= read -r -d '' FILE; do
        REMOVED="$(python3 - "$FILE" <<'PY'
import json
import sys
import xml.etree.ElementTree as ET

path = sys.argv[1]

# These packages are absent from the final image. Samsung's launcher seeds its
# database from both APK resources and CSC/Prism application-order and restore
# files. Keeping an absent package in any of those sources creates a permanent
# pending-restore icon even after a clean data format.
packages = {
    "com.sec.android.app.popupcalculator",
    "com.samsung.android.app.notes",
    "com.samsung.android.voc",
    "com.samsung.sree",
    "com.samsung.android.globalgoals",
    "com.sec.android.app.sbrowser",
    "com.samsung.android.oneconnect",
    "com.sec.android.app.voicenote",
    "com.sec.android.app.shealth",
    "com.samsung.android.app.watchmanager",
    "com.samsung.android.app.tips",
    "com.samsung.android.tvplus",
    "com.samsung.android.game.gamehome",
    "com.samsung.android.arzone",
    "com.samsung.android.messaging",
    "com.google.android.gm",
    "com.google.android.apps.maps",
    "com.google.android.youtube",
    "com.google.android.apps.youtube.music",
    "com.google.android.apps.docs",
    "com.google.android.videos",
    "com.google.android.apps.tachyon",
    "com.google.android.apps.photos",
    "com.microsoft.office.officehubrow",
    "com.microsoft.skydrive",
    "com.microsoft.office.outlook",
}

removed = 0

if path.endswith(".json"):
    with open(path, encoding="utf-8") as stream:
        root = json.load(stream)

    def prune(value):
        global removed
        if isinstance(value, list):
            kept = []
            for item in value:
                if isinstance(item, dict) and any(v in packages for v in item.values()):
                    removed += 1
                    continue
                kept.append(prune(item))
            return kept
        if isinstance(value, dict):
            return {key: prune(item) for key, item in value.items()}
        return value

    root = prune(root)
    if removed:
        with open(path, "w", encoding="utf-8") as stream:
            json.dump(root, stream, ensure_ascii=True, indent=4)
            stream.write("\n")
else:
    tree = ET.parse(path)
    root = tree.getroot()

    def references_removed_package(element):
        return any(value in packages for value in element.attrib.values())

    changed = True
    while changed:
        changed = False
        for parent in root.iter():
            for child in list(parent):
                if references_removed_package(child) or (
                        child.tag.rsplit("}", 1)[-1] == "folder" and len(child) == 0):
                    parent.remove(child)
                    removed += 1
                    changed = True

    if removed:
        if hasattr(ET, "indent"):
            ET.indent(tree, space="    ")
        tree.write(path, encoding="utf-8", xml_declaration=True)

print(removed)
PY
)" || return 1
        if [ "${REMOVED:-0}" -gt 0 ] 2>/dev/null; then
            LOG "  - ${FILE#$WORK_DIR/}: removed $REMOVED entries"
        fi
    done < <(
        find "$APK_DIR/res" "$PRISM_DIR" -type f \
            \( -iname '*workspace*.xml' -o -iname '*application_order*.xml' \
               -o -iname '*suggested*.xml' -o -iname 'restore*.json' \) \
            -print0 2>/dev/null
    )

    # The loop above is the function's last command, so without this its exit
    # status is whatever the final file's "removed > 0" test returned -- a file
    # with nothing to prune (which depends purely on find's ordering) would
    # fail the whole module.
    return 0
}

_EXYNOS9810_FINAL_ADD_VISUAL_CLOUD_CORE()
{
    # Photo Editor's cloud/AI edit paths call into
    # com.samsung.android.visual.cloudcore, which the legacy-port source
    # firmware does not ship at all (it is not debloated anywhere -- it was
    # simply never present). Previously this was delivered out-of-band as the
    # UN1CA_9810_Fixphotoeditor TWRP zip; bundle it here so a stock build has
    # a working photo editor without a second flash.
    #
    # Galaxy Store (system/priv-app/GalaxyApps_OPEN) needs no equivalent step:
    # it exists in the source firmware, so dropping it from the debloat lists
    # is enough, and its stock permission/sysconfig XMLs are left untouched.
    local EXPECTED_SHA256="9e698cea74694fd90c1338d17e385d2e969c08fd5a9ec243409d8e09a95a4bdd"
    local APK_SRC="$MODPATH/visualcloudcore/VisualCloudCore.apk"
    local XML_SRC="$MODPATH/visualcloudcore/signature-permissions-com.samsung.android.visual.cloudcore.xml"
    local APK_DST="$WORK_DIR/system/system/app/VisualCloudCore/VisualCloudCore.apk"
    local XML_DST="$WORK_DIR/system/system/etc/permissions/signature-permissions-com.samsung.android.visual.cloudcore.xml"

    if [ ! -f "$APK_SRC" ] || [ ! -f "$XML_SRC" ]; then
        LOGE "VisualCloudCore payload is missing"
        return 1
    fi
    if [ "$(sha256sum "$APK_SRC" | cut -d ' ' -f 1)" != "$EXPECTED_SHA256" ]; then
        LOGE "Unexpected VisualCloudCore payload hash"
        return 1
    fi

    LOG "- Adding VisualCloudCore for Photo Editor"

    mkdir -p "$(dirname "$APK_DST")" "$(dirname "$XML_DST")"
    cp -f "$APK_SRC" "$APK_DST" || return 1
    cp -f "$XML_SRC" "$XML_DST" || return 1
    chmod 0644 "$APK_DST" "$XML_DST"

    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/VisualCloudCore" 0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/VisualCloudCore/VisualCloudCore.apk" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/etc/permissions/signature-permissions-com.samsung.android.visual.cloudcore.xml" 0 0 644 "u:object_r:system_file:s0"

    # Never let a helper's exit status become this function's -- a non-zero
    # return here fails the whole module and aborts the build.
    return 0
}

_EXYNOS9810_FINAL_VERIFY_PHOTO_EDITOR_STACK()
{
    local REL
    local ARC_PUBLIC="$WORK_DIR/system/system/etc/public.libraries-arcsoft.txt"
    local PHOTO_PERMS="$WORK_DIR/system/system/etc/permissions/privapp-permissions-com.sec.android.mimage.photoretouching.xml"
    local CLOUD_PERMS="$WORK_DIR/system/system/etc/permissions/signature-permissions-com.samsung.android.visual.cloudcore.xml"

    LOG "- Verifying Photo Editor stack for $TARGET_CODENAME"

    for REL in \
        system/system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk \
        system/system/app/VisualCloudCore/VisualCloudCore.apk \
        system/system/etc/public.libraries-arcsoft.txt \
        system/system/etc/permissions/privapp-permissions-com.sec.android.mimage.photoretouching.xml \
        system/system/etc/permissions/signature-permissions-com.samsung.android.visual.cloudcore.xml \
        system/system/lib64/libarcsoft_photoeditor.arcsoft.so \
        system/system/lib64/libobjectcapture.arcsoft.so \
        system/system/lib64/libobjectcapture_jni.arcsoft.so; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Required Photo Editor component is missing: /${REL#system/}"
            return 1
        }
    done

    unzip -tqq \
        "$WORK_DIR/system/system/priv-app/PhotoEditor_AIFull/PhotoEditor_AIFull.apk" || {
        LOGE "PhotoEditor_AIFull.apk is corrupt"
        return 1
    }
    unzip -tqq \
        "$WORK_DIR/system/system/app/VisualCloudCore/VisualCloudCore.apk" || {
        LOGE "VisualCloudCore.apk is corrupt"
        return 1
    }

    for REL in \
        libobjectcapture.arcsoft.so \
        libobjectcapture_jni.arcsoft.so; do
        grep -Fxq "$REL" "$ARC_PUBLIC" || {
            LOGE "Photo Editor public library is not published: $REL"
            return 1
        }
    done

    grep -q 'package="com.sec.android.mimage.photoretouching"' "$PHOTO_PERMS" || {
        LOGE "Photo Editor privileged permissions are invalid"
        return 1
    }
    grep -q 'package="com.samsung.android.visual.cloudcore"' "$CLOUD_PERMS" || {
        LOGE "VisualCloudCore signature permissions are invalid"
        return 1
    }

    return 0
}

_EXYNOS9810_FINAL_ENABLE_SIM_VARIANT_ACCEPTANCE()
{
    # The unified ROM selects the physical topology from Samsung EFS at install
    # and first boot. Samsung's stock mismatch handler asks for a factory reset
    # and races Setup Wizard, so it must never display on Exynos9810.
    local DIR="$APKTOOL_DIR/system/framework/telephony-common.jar"
    local CONTROLLER

    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0
    DECODE_APK "system" "system/framework/telephony-common.jar" || return 1
    CONTROLLER="$(find "$DIR" -path '*/com/android/internal/telephony/uicc/UiccController.smali' | head -n 1)"
    [ -f "$CONTROLLER" ] || {
        LOGE "UiccController SIM mismatch class was not found"
        return 1
    }

    LOG "- Permanently disabling Samsung's obsolete SIM reset dialog"
    python3 - "$CONTROLLER" <<'PY' || return 1
from pathlib import Path
import re
import sys

controller = Path(sys.argv[1])
c = controller.read_text()
pattern = re.compile(
    r'(\.method private blacklist onSimCountMismatched\(Landroid/os/AsyncResult;\)V\n'
    r'\s+\.locals \d+\n)(.*?)(\n\.end method)', re.S)
match = pattern.search(c)
if not match:
    raise SystemExit("SIM mismatch method pattern not found")
replacement = match.group(1) + '\n    return-void\n' + match.group(3)
c, count = pattern.subn(replacement, c, count=1)
if count != 1:
    raise SystemExit("SIM mismatch method was not patched exactly once")
controller.write_text(c)
PY

    python3 - "$CONTROLLER" <<'PY' || return 1
from pathlib import Path
import re, sys
c = Path(sys.argv[1]).read_text()
m = re.search(r'\.method private blacklist onSimCountMismatched\(Landroid/os/AsyncResult;\)V\s+\.locals \d+\s+(\S+)', c)
if not m or m.group(1) != 'return-void':
    raise SystemExit("SIM mismatch dialog no-op verification failed")
PY
}

_EXYNOS9810_FINAL_ADD_VIBRATOR_AIDL_HAL()
{
    # The 9810 vendor only ships a HIDL vibrator HAL, but the One UI 8 framework
    # binds android.hardware.vibrator over AIDL exclusively, so no vibrator ever
    # registers: hasVibrator() is false, there is no Vibrate mode in Sound
    # settings and nothing on the device buzzes.
    #
    # This installs Samsung's real N770F (Android 13) AIDL vibrator HAL. Earlier
    # this shipped a hand-written stub that drove enable/intensity only; it
    # booted and buzzed for notifications, but One UI maps keyboard and most
    # touch haptics to *composition primitives* (a keyboard tap is a single
    # PRIMITIVE_CLICK), and a stub that reports no primitives makes the framework
    # drop those vibrations entirely. The real HAL implements primitives and the
    # full haptic engine (cp_trigger/haptic_engine sysfs nodes), so keyboard and
    # UI haptics work.
    #
    # Why this binary is safe where an S22 donor was not: it is the N770F build,
    # same Exynos9810 SoC family, ARMv8.0 -- verified to contain zero LSE/v8.2
    # opcodes, so it does not SIGILL the way the ARMv8.2 Exynos2200 binary did.
    # It also implements a *real* vendor.samsung.hardware.vibrator.ISehVibrator
    # (BnSehVibrator), so AidlHalWrapper::supportsHapticEngine() finds a valid
    # extension and does not null-deref -- no stub extension is needed. Verified
    # on a live star2lte: all dynamic deps resolve and the service runs.
    #
    # Its two versioned NDK deps (AOSP IVibrator V1, Seh V3) are shipped
    # alongside it because the device carries different-versioned copies
    # (AOSP V3-ndk, Seh V5-ndk); bringing the matching versions avoids a soname
    # mismatch. Lives here rather than in the platform patches because
    # zzzz_exynos9810_boot_restore rebuilds $WORK_DIR/vendor from the pristine
    # legacy-port source afterwards, which would discard it.
    local SRC="$MODPATH/vibrator/seh"
    local BIN="vendor.samsung.hardware.vibrator-service"
    local RC="vendor.samsung.hardware.vibrator-default.rc"
    local XML="vendor.samsung.hardware.vibrator-default.xml"
    local LIB1="android.hardware.vibrator-V1-ndk_platform.so"
    local LIB2="vendor.samsung.hardware.vibrator-V3-ndk_platform.so"

    # sha256 of each payload file; guards against a truncated/altered vendor blob.
    local -A SHA=(
        ["$BIN"]="ab48aab0f718e7dd52fe1a96f2389bbcd3b0d9bc8da08301ad0ee89db7d1eb62"
        ["$RC"]="96653e11ab16af4c826aaa84d10f6021532191838f2cd95dee208473e24c815e"
        ["$XML"]="d53ff90be9aa2bdb162eb593ad21998dbede710294b4bedb2b995a7eda7e73c3"
        ["lib64/$LIB1"]="1b43861fdb8e433c0adfda2d3872d5c9170600f733b05869d633fecda8119598"
        ["lib64/$LIB2"]="69cf61d51e4c5b3c7d6b43a790ca3cfcf8f4b7828b9aa8b4a5696118cae9dce1"
    )
    local REL
    for REL in "${!SHA[@]}"; do
        if [ ! -f "$SRC/$REL" ]; then
            LOGE "Vibrator AIDL HAL payload missing: $REL"
            return 1
        fi
        if [ "$(sha256sum "$SRC/$REL" | cut -d ' ' -f 1)" != "${SHA[$REL]}" ]; then
            LOGE "Unexpected vibrator AIDL HAL payload hash: $REL"
            return 1
        fi
    done
    if [ ! -d "$WORK_DIR/vendor" ]; then
        LOGW "No vendor partition in work dir, skipping vibrator AIDL HAL"
        return 0
    fi

    LOG "- Adding Samsung N770F AIDL vibrator HAL (real haptic engine + primitives)"

    # Retire the previous stub HAL if a stale build left it behind.
    local STALE
    for STALE in "bin/hw/unica.vibrator-service" "etc/init/unica.vibrator.rc" \
                 "etc/vintf/manifest/unica.vibrator.xml"; do
        if [ -e "$WORK_DIR/vendor/$STALE" ]; then
            rm -f "$WORK_DIR/vendor/$STALE"
            _EXYNOS9810_DELETE_METADATA "vendor" "vendor/$STALE" "/vendor/$STALE"
        fi
    done

    install -D -m 755 "$SRC/$BIN"  "$WORK_DIR/vendor/bin/hw/$BIN"          || return 1
    install -D -m 644 "$SRC/$RC"   "$WORK_DIR/vendor/etc/init/$RC"         || return 1
    install -D -m 644 "$SRC/$XML"  "$WORK_DIR/vendor/etc/vintf/manifest/$XML" || return 1
    install -D -m 644 "$SRC/lib64/$LIB1" "$WORK_DIR/vendor/lib64/$LIB1"    || return 1
    install -D -m 644 "$SRC/lib64/$LIB2" "$WORK_DIR/vendor/lib64/$LIB2"    || return 1

    # Exec label matches the LegacyPort vendor_file_contexts rule for this exact
    # binary name (u:object_r:hal_vibrator_default_exec:s0); the libs and configs
    # take the standard vendor labels.
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "bin/hw/$BIN" 0 0 755 \
        "u:object_r:hal_vibrator_default_exec:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "etc/init/$RC" 0 0 644 \
        "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "etc/vintf/manifest" 0 0 755 \
        "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "etc/vintf/manifest/$XML" 0 0 644 \
        "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "lib64/$LIB1" 0 0 644 \
        "u:object_r:vendor_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "lib64/$LIB2" 0 0 644 \
        "u:object_r:vendor_file:s0"

    # Never let a helper's exit status become this function's -- a non-zero
    # return here fails the whole module and aborts the build.
    return 0
}

_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN()
{
    # crownlte is the only exynos9810 target with a digitizer. unica/patches/spen
    # already installs the S Pen apps from the b0qxxx prebuilts, because it sees
    # the S22 source has no S Pen while the Note9 target firmware does. Two things
    # it does NOT do, and without them every one of those apps stays inert:
    #
    #  1. The system feature is never declared. The patch reads
    #     com.sec.feature.spen_usp_level40.xml out of the *extracted target
    #     firmware* purely as a detection probe; it never copies it into the ROM.
    #     /system comes from the S22 source, which has no such file, so
    #     hasSystemFeature("com.sec.feature.spen_usp") is false and the whole
    #     S Pen stack disables itself.
    #
    #  2. The S Pen floating features are lost. zzzz_exynos9810_boot_restore
    #     rebuilds vendor from the legacy port (an SM-N770F HXA3 base), which
    #     carries only FACTORY_SUPPORT_FTL_SPEN_TYPE=none. Verified by diffing a
    #     built vendor/etc/floating_feature.xml: byte-identical to the legacy
    #     port's, not the target's.
    #
    # Values are verbatim from SM-N960F stock. The digitizer driver is kernel
    # side (no wacom blobs in either vendor tree), so nothing is needed here for
    # the hardware path.
    [[ "$TARGET_CODENAME" == "crownlte" ]] || return 0

    local SRC="$MODPATH/spen/com.sec.feature.spen_usp_level40.xml"
    local DST="$WORK_DIR/system/system/etc/permissions/com.sec.feature.spen_usp_level40.xml"

    if [ ! -f "$SRC" ]; then
        LOGE "S Pen feature declaration is missing"
        return 1
    fi

    LOG "- Enabling S Pen for crownlte"

    mkdir -p "$(dirname "$DST")"
    cp -f "$SRC" "$DST" || return 1
    chmod 0644 "$DST"
    _EXYNOS9810_FINAL_SET_METADATA "system" \
        "system/etc/permissions/com.sec.feature.spen_usp_level40.xml" 0 0 644 \
        "u:object_r:system_file:s0"

    # Do not leave Note9 without the small factory-side S Pen silo/eject
    # receiver. Upstream debloat removes FactoryAirCommandManager globally
    # because it is factory cruft on non-pen phones, but crownlte uses it as the
    # bridge for insert/remove handling. Without it the S Pen framework feature
    # is present but eject events never reach the Samsung S Pen stack reliably.
    local FACM_SRC=""
    local TARGET_FW_PATH
    TARGET_FW_PATH="$(cut -d "/" -f 1 -s <<< "$TARGET_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$TARGET_FIRMWARE")"
    for CANDIDATE in \
        "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/crownlte/pen/app/FactoryAirCommandManager" \
        "$FW_DIR/$TARGET_FW_PATH/system/system/app/FactoryAirCommandManager" \
        "$FW_DIR/SM-N960F_PHN/system/system/app/FactoryAirCommandManager"; do
        if [ -f "$CANDIDATE/FactoryAirCommandManager.apk" ]; then
            FACM_SRC="$CANDIDATE"
            break
        fi
    done

    if [ -n "$FACM_SRC" ]; then
        LOG "- Restoring Note9 FactoryAirCommandManager for S Pen eject events"
        rm -rf "$WORK_DIR/system/system/app/FactoryAirCommandManager"
        mkdir -p "$WORK_DIR/system/system/app/FactoryAirCommandManager"
        cp -f "$FACM_SRC/FactoryAirCommandManager.apk" \
            "$WORK_DIR/system/system/app/FactoryAirCommandManager/FactoryAirCommandManager.apk" || return 1
        chmod 0755 "$WORK_DIR/system/system/app/FactoryAirCommandManager"
        chmod 0644 "$WORK_DIR/system/system/app/FactoryAirCommandManager/FactoryAirCommandManager.apk"
        _EXYNOS9810_FINAL_SET_METADATA "system" \
            "system/app/FactoryAirCommandManager" 0 0 755 \
            "u:object_r:system_file:s0"
        _EXYNOS9810_FINAL_SET_METADATA "system" \
            "system/app/FactoryAirCommandManager/FactoryAirCommandManager.apk" 0 0 644 \
            "u:object_r:system_file:s0"
    else
        LOGW "FactoryAirCommandManager source not found; S Pen eject handling may stay broken"
    fi

    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION" "40"
    # BLE S Pen remote is enabled with the donor's "crown,button" spec replaced
    # by "builtin,button": a user-reported fix proved the builtin spec keeps the
    # BLE controller factory alive, while the crown value made it return null
    # and killed AirCommandUiService (G2.j.h -> U2.j.k NPE). The smali guard in
    # _EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL stays in place as
    # a backstop, so even a null controller degrades to "remote unavailable"
    # instead of taking down the whole S Pen stack.
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN" "TRUE"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC" "builtin,button"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SPEN_ALERT" "TRUE"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID" "A3LEJPN960"

    # The garage spec is the one S Pen config that is NOT verbatim from N960F
    # stock -- the Note9's own floating_feature.xml has no such key, because the
    # Pie-era AirCommand did not read one. The One UI 8 AirCommand from b0qxxx
    # does, and it does not tolerate the key being absent: SpenGarageSpecParser
    # (w1.e.b) returns null on an empty spec and falls through to a default that
    # dereferences an application singleton which has not been constructed yet
    # at that point. The Intrinsics null check throws, and because the parse
    # happens in a static initializer the NPE surfaces as
    # ExceptionInInitializerError while ActivityThread is installing
    # SettingsDynamicProvider -- AirCommand dies before it ever starts, so every
    # S Pen feature is dead even with the feature declaration above in place.
    #
    # Keys and enum values below are re-derived directly from the parser's own
    # switch statement (w1.e.b), not guessed from convention -- the only five
    # keys it recognizes are type/bundled/tip_type/unbundled_spec/no_charge;
    # anything else (e.g. the "position"/"tip_direction" this used to carry)
    # falls through to a default arm that just logs "parseSpec : unknown key"
    # and is otherwise a no-op, so it was dropped.
    # The Note8 One UI 8 UN1CA port fixes S Pen with this minimal garage spec.
    # Keeping it minimal avoids pushing AirCommand into unsupported BLE remote
    # code paths on the legacy Exynos9810 vendor stack.
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC" \
        "type=insert, bundled=true"

    _EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK

    # Never let a helper's exit status become this function's -- a non-zero
    # return here fails the whole module and aborts the entire build.
    return 0
}

_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK()
{
    # Defence in depth for the garage-spec crash fixed above. The floating
    # feature makes SpenGarageSpecParser (w1.e.b) parse a real spec and return
    # early, so the buggy fallback is never entered -- but that relies on the
    # value actually reaching SemFloatingFeature at runtime. This patches the
    # fallback itself so AirCommand cannot die even if it is entered.
    #
    # The fallback runs when the parsed spec is null. It picks a garage type by
    # interrogating a lazily-created singleton, w1.b.k, which is constructed in
    # AirCommandApplication.onCreate(). ContentProviders are installed *before*
    # Application.onCreate() runs, so during SettingsDynamicProvider creation
    # that field is still null. Samsung's own code asserts it is not:
    #     sget-object v1, Lw1/b;->k:Lw1/b;
    #     invoke-static {v1}, Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    # checkNotNull throws NPE, which surfaces as ExceptionInInitializerError
    # because the parse happens in a static initializer, killing the process
    # before it starts. This is a genuine Samsung bug, not a porting artifact.
    #
    # The patch drops both checkNotNull calls and adds a null guard that falls
    # through to the existing :cond_a arm (Lx1/k;->c == INSERT), which is the
    # correct garage type for crownlte anyway. When the singleton *is* set the
    # original branching is preserved byte for byte, so this only changes
    # behaviour on the path that currently crashes.
    [[ "$TARGET_CODENAME" == "crownlte" ]] || return 0

    local APK_DIR="$APKTOOL_DIR/system/priv-app/AirCommand/AirCommand.apk"
    local PARSER="$APK_DIR/smali/w1/e.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/AirCommand/AirCommand.apk" || return 1

    LOG "- Hardening AirCommand S Pen garage spec fallback"

    if [ ! -f "$PARSER" ]; then
        LOGW "SpenGarageSpecParser smali not found; skipping fallback hardening"
        return 0
    fi

    python3 - "$PARSER" <<'PY' || return 0
import sys
p = sys.argv[1]
s = open(p).read()

old = (
    '    sget-object v1, Lw1/b;->k:Lw1/b;\n'
    '\n'
    '    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V\n'
    '\n'
    '    invoke-virtual {v1}, Lw1/b;->j()Z\n'
)
new = (
    '    sget-object v1, Lw1/b;->k:Lw1/b;\n'
    '\n'
    '    if-eqz v1, :cond_a\n'
    '\n'
    '    invoke-virtual {v1}, Lw1/b;->j()Z\n'
)

old2 = (
    '    sget-object v1, Lw1/b;->k:Lw1/b;\n'
    '\n'
    '    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V\n'
    '\n'
    '    invoke-virtual {v1}, Lw1/b;->c()Z\n'
)
new2 = (
    '    sget-object v1, Lw1/b;->k:Lw1/b;\n'
    '\n'
    '    invoke-virtual {v1}, Lw1/b;->c()Z\n'
)

if old not in s or old2 not in s:
    if 'if-eqz v1, :cond_a' in s:
        print("already patched")
        sys.exit(0)
    print("PATTERN_NOT_FOUND")
    sys.exit(1)

s = s.replace(old, new, 1).replace(old2, new2, 1)
open(p, "w").write(s)
print("ok")
PY

    # Never let a helper's exit status become this function's -- a non-zero
    # return here fails the whole module and aborts the entire build.
    return 0
}

_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL()
{
    # Some Note9 logs from the 2026-07-26 test build show AirCommand dying
    # later than the garage-spec path, inside AirCommandUiService creation:
    #
    #   java.lang.NullPointerException:
    #     Attempt to invoke virtual method 'void U2.j.k(Context)'
    #     at G2.j.h(...)
    #
    # G2.j.h asks the BLE S Pen controller factory for a U2.j instance and then
    # immediately initializes it. On crownlte ports that factory can return null
    # when the donor BLE-remote stack does not expose the exact modern provider
    # AirCommand expects. Treat that as "BLE remote unavailable" instead of
    # killing the whole AirCommand UI; silo insert/eject handling and basic Air
    # Command are still useful without the remote-controller object.
    [[ "$TARGET_CODENAME" == "crownlte" ]] || return 0

    local APK_DIR="$APKTOOL_DIR/system/priv-app/AirCommand/AirCommand.apk"
    local CONTROLLER="$APK_DIR/smali/G2/j.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/AirCommand/AirCommand.apk" || return 0

    LOG "- Hardening AirCommand BLE controller initialization"

    if [ ! -f "$CONTROLLER" ]; then
        LOGE "AirCommand BLE controller smali not found; cannot guarantee Note9 S Pen support"
        return 1
    fi

    python3 - "$CONTROLLER" <<'PY' || return 1
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()
old = """    iput-object p2, p0, LG2/j;->i:LU2/j;

    iget-object v0, p0, LG2/j;->d:Landroid/content/Context;

    invoke-virtual {p2, v0}, LU2/j;->k(Landroid/content/Context;)V

    new-instance p2, Lg2/f;
"""
new = """    iput-object p2, p0, LG2/j;->i:LU2/j;

    if-eqz p2, :unica_skip_ble_spen_controller_init

    iget-object v0, p0, LG2/j;->d:Landroid/content/Context;

    invoke-virtual {p2, v0}, LU2/j;->k(Landroid/content/Context;)V

    :unica_skip_ble_spen_controller_init
    new-instance p2, Lg2/f;
"""
if old not in text:
    if ":unica_skip_ble_spen_controller_init" in text:
        print("already patched")
        raise SystemExit(0)
    print("PATTERN_NOT_FOUND")
    raise SystemExit(1)
path.write_text(text.replace(old, new, 1))
print("ok")
PY

    grep -q ":unica_skip_ble_spen_controller_init" "$CONTROLLER" || {
        LOGE "Note9 AirCommand BLE null guard was not applied"
        return 1
    }

    return 0
}

_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_BLE_PROTOCOL()
{
    # The One UI 8 built-in S Pen driver uses the newer command protocol:
    # stop=5, start=3 and reset=3,2. Crown's Wacom controller instead needs
    # its charging module explicitly cycled with 0,1 before charge/reset and
    # uses 0 to stop. Without that translation the BLE scanner works, but the
    # pen never advertises and Air Actions ends in SCANNING_TIMEOUT/TICTOC_FAIL.
    [[ "$TARGET_CODENAME" == "crownlte" ]] || return 0

    local APK_DIR="$APKTOOL_DIR/system/priv-app/AirCommand/AirCommand.apk"
    local RUNNABLE="$APK_DIR/smali/j3/b.smali"
    local WACOM_DRIVER="$APK_DIR/smali/j3/a.smali"
    local CONTINUOUS="$APK_DIR/smali/androidx/activity/d.smali"
    local BLE_DRIVER="$APK_DIR/smali/U2/k.smali"
    local BUILTIN_DRIVER="$APK_DIR/smali/U2/c.smali"
    local DEVICE_PROFILE="$APK_DIR/smali/b3/b.smali"
    local CROWN_PROFILE="$APK_DIR/smali/b3/a.smali"
    local APP_FEATURES="$APK_DIR/smali/a3/a.smali"
    local TICTOC_WORKER="$APK_DIR/smali/A/j.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/AirCommand/AirCommand.apk" || return 1
    [ -f "$RUNNABLE" ] || {
        LOGE "AirCommand Wacom runnable not found; cannot apply crown BLE protocol"
        return 1
    }
    [ -f "$WACOM_DRIVER" ] && [ -f "$CONTINUOUS" ] && [ -f "$BLE_DRIVER" ] && \
        [ -f "$BUILTIN_DRIVER" ] && [ -f "$DEVICE_PROFILE" ] && [ -f "$CROWN_PROFILE" ] && \
        [ -f "$APP_FEATURES" ] && [ -f "$TICTOC_WORKER" ] || {
        LOGE "AirCommand built-in S Pen driver files are missing"
        return 1
    }

    LOG "- Translating One UI 8 S Pen BLE commands to the Note9 Wacom protocol"
    python3 - "$RUNNABLE" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()

if ":unica_crown_start" in text:
    print("already patched")
    raise SystemExit(0)

reset_old = '''    invoke-virtual {p0}, Lj3/a;->a()V

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Lm5/b;->s0(J)V

    const-string v0, "2"
'''
reset_new = '''    invoke-virtual {p0}, Lj3/a;->a()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "2"
'''

stop_old = '''    const-string v0, "5"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V
'''
stop_new = '''    const-string v0, "0"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V
'''

start_old = '''    :pswitch_1
    iget-object p0, p0, Lj3/b;->g:Lj3/a;

    invoke-virtual {p0}, Lj3/a;->a()V

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V
'''
start_new = '''    :pswitch_1
    iget-object p0, p0, Lj3/b;->g:Lj3/a;

    invoke-virtual {p0}, Lj3/a;->a()V

    :unica_crown_start
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V
'''

for name, old in (("reset", reset_old), ("stop", stop_old), ("start", start_old)):
    count = text.count(old)
    if count != 1:
        raise SystemExit(f"{name} pattern count is {count}, expected 1")
    replacement = {"reset": reset_new, "stop": stop_new, "start": start_new}[name]
    text = text.replace(old, replacement, 1)

path.write_text(text)
print("ok")
PY

    python3 - "$CONTINUOUS" "$BLE_DRIVER" <<'PY' || return 1
from pathlib import Path
import sys

continuous = Path(sys.argv[1])
driver = Path(sys.argv[2])

text = continuous.read_text()
if ":unica_crown_continuous_charge" not in text:
    old = '''    :pswitch_2
    iget-object p0, p0, Landroidx/activity/d;->g:Ljava/lang/Object;

    check-cast p0, Lj3/a;

    invoke-virtual {p0}, Lj3/a;->a()V

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "4"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V
'''
    new = '''    :pswitch_2
    iget-object p0, p0, Landroidx/activity/d;->g:Ljava/lang/Object;

    check-cast p0, Lj3/a;

    invoke-virtual {p0}, Lj3/a;->a()V

    :unica_crown_continuous_charge
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V
'''
    if text.count(old) != 1:
        raise SystemExit("continuous-charge pattern mismatch")
    continuous.write_text(text.replace(old, new, 1))

text = driver.read_text()
if ":unica_crown_legacy_button" not in text:
    old = '''    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v3, v2, v5
'''
    new = '''    array-length v3, v2

    if-nez v3, :unica_crown_check_legacy_button

    goto :goto_1

    :unica_crown_check_legacy_button
    const/4 v9, 0x1

    if-ne v3, v9, :cond_1

    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v9, :unica_crown_legacy_click

    const/4 v9, 0x2

    if-eq v3, v9, :unica_crown_legacy_long_click

    goto :cond_1

    :unica_crown_legacy_click
    move-object/from16 v9, p0

    iget-object v10, v9, LU2/j;->j:Lg2/e;

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v7}, LU2/j;->c(IJLjava/lang/String;)LS2/l;

    move-result-object v3

    invoke-virtual {v10, v3}, Lg2/e;->x(LS2/q;)V

    goto/16 :cond_b

    :unica_crown_legacy_long_click
    move-object/from16 v9, p0

    iget-object v10, v9, LU2/j;->j:Lg2/e;

    const/4 v3, 0x2

    invoke-static {v3, v0, v1, v7}, LU2/j;->c(IJLjava/lang/String;)LS2/l;

    move-result-object v3

    invoke-virtual {v10, v3}, Lg2/e;->x(LS2/q;)V

    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v7}, LU2/j;->c(IJLjava/lang/String;)LS2/l;

    move-result-object v3

    invoke-virtual {v10, v3}, Lg2/e;->x(LS2/q;)V

    goto/16 :cond_b

    :cond_1
    aget-byte v3, v2, v5
'''
    if text.count(old) != 1:
        raise SystemExit("legacy button pattern mismatch")
    driver.write_text(text.replace(old, new, 1))
PY

    # Donor built-in S Pen uses 600 ms for both limits. Stock crown uses
    # 200 ms between transactions and 20 ms between individual sysfs writes.
    # Keeping 600 ms stretches every 800 ms TicToc phase to roughly 2 seconds,
    # breaks the advertisement signature and starves pairing UI callbacks.
    python3 - "$WACOM_DRIVER" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()
if "UN1CA_CROWN_STOCK_WACOM_TIMING" in text:
    print("already patched")
    raise SystemExit(0)

transaction = '''.method public final a()V
    .locals 4
'''
if transaction not in text:
    raise SystemExit("crown transaction timing method not found")

start = text.index(transaction)
end = text.index(".end method", start)
method = text[start:end]
if method.count("const-wide/16 v2, 0x258") != 1:
    raise SystemExit("transaction 600ms constant mismatch")
method = method.replace("const-wide/16 v2, 0x258", "const-wide/16 v2, 0xc8", 1)
method = method.replace("    .locals 4\n", "    .locals 4\n\n    # UN1CA_CROWN_STOCK_WACOM_TIMING\n", 1)
text = text[:start] + method + text[end:]

write_sig = ".method public final declared-synchronized h(Ljava/lang/String;)V"
start = text.index(write_sig)
end = text.index(".end method", start)
method = text[start:end]
if method.count("const-wide/16 v3, 0x258") != 1:
    raise SystemExit("command 600ms constant mismatch")
method = method.replace("const-wide/16 v3, 0x258", "const-wide/16 v3, 0x14", 1)
text = text[:start] + method + text[end:]
path.write_text(text)
print("ok")
PY

    # Keep One UI 8's service/UI architecture, but describe the built-in pen
    # as the legacy Note9 Crown device. The donor otherwise scans for Crown and
    # then tries to discover a Sticky/Pro GATT service, advertises SPEN02, and
    # enables motion/advanced-charge paths which the Note9 pen cannot provide.
    python3 - "$DEVICE_PROFILE" "$CROWN_PROFILE" "$APP_FEATURES" "$BUILTIN_DRIVER" <<'PY' || return 1
from pathlib import Path
import sys

device, crown, features, driver = map(Path, sys.argv[1:])

text = device.read_text()
if "UN1CA_CROWN_ONEUI8_PROFILE" not in text:
    replacements = (
        ('const-string v0, "0000FD6C-0000-1000-8000-00805F9B34FB"',
         'const-string v0, "EDFEC62E-9910-0BAC-5241-D8BDA6932A2F"'),
        ('''    const/16 p0, 0x546

    return p0

    :pswitch_0''', '''    # UN1CA_CROWN_ONEUI8_PROFILE: no motion sensor data
    const/4 p0, 0x0

    return p0

    :pswitch_0'''),
        ('''    new-instance p0, LD0/c;

    new-instance v0, LB4/i;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LB4/i;-><init>(I)V

    invoke-direct {p0, v0}, LD0/c;-><init>(LB4/i;)V

    return-object p0

    :pswitch_0''', '''    # Crown advertises only its service UUID; it has no SPEN02 payload.
    const/4 p0, 0x0

    return-object p0

    :pswitch_0'''),
    )
    for old, new in replacements:
        if text.count(old) != 1:
            raise SystemExit("Crown device-profile pattern mismatch")
        text = text.replace(old, new, 1)

    # Modern built-in pens expose a color characteristic and standby mode.
    # Crown exposes neither; retaining these flags causes reads/writes against
    # characteristics absent from the Note9 GATT service.
    for signature, old, new in (
        (".method public final i()Z", "    const/4 p0, 0x1", "    const/4 p0, 0x0"),
        (".method public l()Z", "    instance-of p0, p0, Lb3/a;", "    const/4 p0, 0x0"),
    ):
        start = text.index(signature)
        end = text.index(".end method", start)
        method = text[start:end]
        if method.count(old) != 1:
            raise SystemExit(f"Crown capability pattern mismatch in {signature}")
        method = method.replace(old, new, 1)
        text = text[:start] + method + text[end:]
    device.write_text(text)

text = crown.read_text()
if "UN1CA_CROWN_STOCK_CHARGE_DURATION" not in text:
    old = '''    const-wide/16 v0, 0x23

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J'''
    new = '''    # UN1CA_CROWN_STOCK_CHARGE_DURATION
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J'''
    if text.count(old) != 1 or text.count('const-string p0, "builtin"') != 1:
        raise SystemExit("Crown charge/name profile pattern mismatch")
    text = text.replace(old, new, 1).replace('const-string p0, "builtin"', 'const-string p0, "crown"', 1)
    crown.write_text(text)

text = features.read_text()
if "UN1CA_CROWN_APPLICATION_FEATURES" not in text:
    for field in ("b", "c", "d", "i"):
        old = f'''    iput-boolean v1, v0, Lb3/c;->{field}:Z'''
        new = f'''    # UN1CA_CROWN_APPLICATION_FEATURES
    const/4 v1, 0x0

    iput-boolean v1, v0, Lb3/c;->{field}:Z

    const/4 v1, 0x1'''
        if text.count(old) != 1:
            raise SystemExit(f"Crown application feature {field} pattern mismatch")
        text = text.replace(old, new, 1)
    features.write_text(text)

text = driver.read_text()
marker = "UN1CA_CROWN_OPERATION_MODE"
if marker not in text:
    signature = ".method public final declared-synchronized y(LS2/j;Lc3/a;)V"
    start = text.index(signature)
    end = text.index(".end method", start) + len(".end method")
    method = '''.method public final declared-synchronized y(LS2/j;Lc3/a;)V
    .locals 3

    # UN1CA_CROWN_OPERATION_MODE: stock Crown only supports DEFAULT and does
    # not write the mode characteristic for that state.
    sget-object v0, LS2/j;->c:LS2/j;

    if-ne p1, v0, :unica_crown_mode_unsupported

    iput-object p1, p0, LU2/k;->y:LS2/j;

    new-instance v0, LS2/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LS2/e;-><init>(I)V

    goto :unica_crown_mode_done

    :unica_crown_mode_unsupported
    new-instance v0, LS2/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LS2/e;-><init>(I)V

    :unica_crown_mode_done
    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lc3/a;->a(LS2/e;J)V

    return-void
.end method'''
    text = text[:start] + method + text[end:]
    driver.write_text(text)
PY

    # Crown's TicToc finder does not invoke the normal charge/reset routines.
    # It toggles advertisement with one raw command per phase: 1=on, 0=off.
    # Calling startCharge here ends in mode EB and suppresses the E9 BLE
    # advertisement, so the scan sees zero devices even though sysfs succeeds.
    python3 - "$TICTOC_WORKER" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()
if "prepareTicToc : crown advertisement off" in text:
    print("already patched")
    raise SystemExit(0)

prepare_old = '''    const-string v3, "WacomDriver"

    const-string v4, "prepareTicToc : perform reset before TicToc"

    invoke-static {v3, v4, v9}, Lk5/a;->w(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONException;)I

    invoke-virtual {v2}, Lj3/a;->f()V

    invoke-virtual {v2}, Lj3/a;->c()V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Lm5/b;->s0(J)V

    iget-object v2, v1, LP2/g;->p:Lj3/a;

    invoke-virtual {v2}, Lj3/a;->f()V
'''
prepare_new = '''    const-string v3, "WacomDriver"

    const-string v4, "prepareTicToc : crown advertisement off"

    invoke-static {v3, v4, v9}, Lk5/a;->w(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONException;)I

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lj3/a;->h(Ljava/lang/String;)V
'''

finish_old = '''    invoke-virtual {v0}, Lj3/a;->d()V
'''
finish_new = '''    const-string v2, "1"

    invoke-virtual {v0, v2}, Lj3/a;->h(Ljava/lang/String;)V
'''

phase_on_old = '''    invoke-virtual {v9}, Lj3/a;->d()V
'''
phase_on_new = '''    const-string v11, "1"

    invoke-virtual {v9, v11}, Lj3/a;->h(Ljava/lang/String;)V
'''

phase_off_old = '''    invoke-virtual {v9}, Lj3/a;->f()V
'''
phase_off_new = '''    const-string v11, "0"

    invoke-virtual {v9, v11}, Lj3/a;->h(Ljava/lang/String;)V
'''

filter_old = '''    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, LR2/b;->a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V
'''
filter_new = '''    const/4 v7, 0x0

    # Crown uses the legacy service UUID and does not emit SPEN02.
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, LR2/b;->a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V
'''

for name, old, new in (
    ("prepare", prepare_old, prepare_new),
    ("finish", finish_old, finish_new),
    ("phase-on", phase_on_old, phase_on_new),
    ("phase-off", phase_off_old, phase_off_new),
    ("legacy-filter", filter_old, filter_new),
):
    count = text.count(old)
    if count != 1:
        raise SystemExit(f"crown TicToc {name} pattern count is {count}, expected 1")
    text = text.replace(old, new, 1)

path.write_text(text)
print("ok")
PY
}

_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_SYSFS_BRIDGE()
{
    # One UI 8 routes BLE charging commands through SemInputDeviceManager and
    # the modern sysinput HAL. Crown's stock framework writes the command
    # directly to the Wacom sysfs node. Keep the modern route as a fallback,
    # but restore the proven Note9 hardware bridge as the primary path.
    [[ "$TARGET_CODENAME" == "crownlte" ]] || return 0

    local JAR_DIR="$APKTOOL_DIR/system/framework/services.jar"
    local SERVICE

    DECODE_APK "system" "system/framework/services.jar" || return 1
    SERVICE="$(find "$JAR_DIR" -path '*/com/android/server/smartclip/SpenGestureManagerService.smali' | head -n 1)"
    [ -f "$SERVICE" ] || {
        LOGE "SpenGestureManagerService.smali not found; cannot restore Note9 BLE sysfs bridge"
        return 1
    }

    LOG "- Restoring the stock Note9 S Pen BLE sysfs hardware bridge"
    python3 - "$SERVICE" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
if "UN1CA Note9 direct BLE sysfs write succeeded" in text:
    print("already patched")
    raise SystemExit(0)

pattern = re.compile(
    r"^\.method public final writeBleSpenCommand\(Ljava/lang/String;\)V\n.*?^\.end method$",
    re.MULTILINE | re.DOTALL,
)
replacement = r'''.method public final writeBleSpenCommand(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "SpenGestureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeBleSpenCommand : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/class/sec/sec_epen/epen_ble_charging_mode"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    const-string v1, "UN1CA Note9 direct BLE sysfs write succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "UN1CA Note9 direct BLE sysfs write failed; trying sysinput HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenBleChargeMode(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "UN1CA Note9 BLE sysinput fallback failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method'''

text, count = pattern.subn(replacement, text, count=1)
if count != 1:
    raise SystemExit(f"writeBleSpenCommand pattern count is {count}, expected 1")
path.write_text(text)
print("ok")
PY

    grep -q "UN1CA Note9 direct BLE sysfs write succeeded" "$SERVICE" || {
        LOGE "Note9 direct BLE sysfs bridge was not applied"
        return 1
    }
}

_EXYNOS9810_FINAL_PATCH_CAMERA_SEAMLESS_ZOOM_GUARD()
{
    # The S22 One UI 8 camera asks CameraService for its synthetic
    # BACK_SEAMLESS_ZOOM camera (ID 20). Exynos9810 only exposes the real
    # legacy camera IDs, so the query throws from the background capture
    # logging path and kills SamsungCamera after the shutter is pressed.
    # The app already treats a null seamless-zoom array as "unsupported".
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local COMMON="$APK_DIR/smali_classes3/com/sec/android/app/camera/engine/CommonEngine.smali"
    local PROVIDER="$APK_DIR/smali_classes3/com/sec/android/app/camera/engine/core/CapabilityProvider.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1

    # The dumpstate reproduces the crash on starlte. star2lte and crownlte
    # already have working camera paths; leave those targets untouched.
    if [ "$TARGET_CODENAME" != "starlte" ]; then
        LOG "- Keeping native seamless-zoom behavior for $TARGET_CODENAME"
        return 0
    fi

    LOG "- Guarding S22 seamless-zoom camera ID on Exynos9810 (starlte only)"

    python3 - "$COMMON" "$PROVIDER" <<'PY' || return 1
from pathlib import Path
import re
import sys

common = Path(sys.argv[1])
provider = Path(sys.argv[2])

common_text = common.read_text()
common_pattern = re.compile(
    r"(?ms)^\.method public getSeamlessZoomValueArray\(\)\[I\n.*?^\.end method"
)
common_method = """.method public getSeamlessZoomValueArray()[I
    .locals 1

    const-string v0, "CommonEngine"

    const-string p0, "UN1CA: seamless zoom disabled for legacy Exynos9810 cameras"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method"""
if not common_pattern.search(common_text):
    raise SystemExit("CommonEngine seamless zoom method not found")
if "UN1CA: seamless zoom disabled for legacy Exynos9810 cameras" not in common_text:
    common.write_text(common_pattern.sub(common_method, common_text, count=1))

provider_text = provider.read_text()
provider_pattern = re.compile(
    r"(?ms)^\.method private createSeamlessZoomValueArray\(\)V\n.*?^\.end method"
)
provider_method = """.method private createSeamlessZoomValueArray()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/core/CapabilityProvider;->mSeamlessZoomValueArray:[I

    return-void
.end method"""
if not provider_pattern.search(provider_text):
    raise SystemExit("CapabilityProvider seamless zoom method not found")
if "mSeamlessZoomValueArray:[I" in provider_text and "new-array v0, v0, [I" not in provider_text:
    provider.write_text(provider_pattern.sub(provider_method, provider_text, count=1))
PY

    # Do not allow a starlte build to ship the unguarded S22 seamless-zoom
    # query: the legacy provider has no camera id 20.
    if [ "$TARGET_CODENAME" = "starlte" ]; then
        grep -q "UN1CA: seamless zoom disabled for legacy Exynos9810 cameras" "$COMMON" || {
            LOG "ERROR: starlte seamless-zoom guard was not applied to CommonEngine"
            return 1
        }
        grep -q "new-array v0, v0, \[I" "$PROVIDER" || {
            LOG "ERROR: starlte seamless-zoom provider guard was not applied"
            return 1
        }
    fi

    return 0
}

_EXYNOS9810_FINAL_PATCH_CAMERA_QR_POPUP_CRASH()
{
    # Three related QR-code fixes in SamsungCamera.apk:
    #
    # (1) Enable QR scanning. The camera detects QR codes entirely in software:
    #     the app-side core2 node SaivQRCodeNode runs QRBarcodeDecoder, which
    #     loads libQREngine.camera.samsung.so (present in /system/lib64 and
    #     ARMv8.0-safe) -- it does NOT need the vendor camera HAL. Detection was
    #     off only because x1/e classifies this device as a low-tier "lite" QR
    #     device (SUPPORT_QR_CODE_DETECTION_LITE=true via the v15<=0 branch), and
    #     PhotoPresenter.createManagers() only builds QrCodeDetectionManager when
    #     detection is on AND _LITE is off. Force _LITE=false so the full
    #     auto-detect manager is created and QR scanning works.
    #
    # (2) Defensive null-guard. Independent of (1), Samsung calls
    #     mQrCodeDetectionManager.restoreQrPopup() with no null check in
    #     handleQuickSettingToastVisibilityChanged() (they guard the same field
    #     in stopQrCodeDetectionManager()). If the manager is ever null a
    #     quick-setting toast -- e.g. toggling Motion Photo -- FCs the app. Mirror
    #     Samsung's guard at both restoreQrPopup() call sites so it can never NPE.
    #
    # (3) Route the Photo and QR makers around UniHAL. The One UI 8 app requests
    #     a software preview-callback stream, but the Exynos9810 UniHAL layer
    #     drops that stream while retaining it in the framework session. The
    #     orphaned stream has max_buffers=0 and freezes preview after eight
    #     seconds. Marking only these makers as non-Samsung bypasses UniHAL so
    #     the legacy HAL receives every configured stream. Other modes retain
    #     their stock Samsung-camera path.
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local PP_SMALI
    local FEAT_SMALI
    local QR_CONTROLLER_SMALI
    local MAKER_BASE_SMALI
    local QR_MANAGER_SMALI

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1

    PP_SMALI="$(find "$APK_DIR" -path '*shootingmode/photo/PhotoPresenter.smali' | head -n 1)"
    if [ -z "$PP_SMALI" ] || [ ! -f "$PP_SMALI" ]; then
        LOGE "PhotoPresenter.smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Null-guarding QrCodeDetectionManager to stop quick-setting toast camera crash"
    python3 - "$PP_SMALI" <<'PY' || return 1
import re, sys
path = sys.argv[1]
text = open(path).read()

pat = re.compile(
    r'(    iget-object (v\d+), p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;\n\n)'
    r'(    invoke-virtual \{\2\}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->restoreQrPopup\(\)V\n)'
)
n = [0]
def repl(m):
    reg = m.group(2)
    lbl = f":qr_guard_{n[0]}"
    n[0] += 1
    return m.group(1) + f"    if-eqz {reg}, {lbl}\n\n" + m.group(3) + f"\n    {lbl}\n"

new, cnt = pat.subn(repl, text)
if cnt == 0:
    # Some SamsungCamera payloads already contain equivalent guards using
    # compiler-generated :cond_* labels. Treat those as patched as well.
    call = r'Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->restoreQrPopup\(\)V'
    calls = list(re.finditer(call, text))
    if len(calls) == 2:
        guarded = True
        for match in calls:
            block = text[max(0, match.start() - 260):match.start()]
            if not re.search(r'if-eqz v\d+, :cond_\w+', block):
                guarded = False
                break
        if guarded or ':qr_guard_0' in text:
            raise SystemExit(0)  # already guarded
    raise SystemExit("restoreQrPopup crash site not found")
if cnt != 2:
    raise SystemExit(f"expected 2 restoreQrPopup guard sites, patched {cnt}")
open(path, "w").write(new)
PY

    # Exynos9810 uses the legacy Core2 software QR node. The S22 camera's
    # capability probe can incorrectly advertise HAL QR support when it runs
    # against the legacy camera provider, sending the request through public
    # HAL keys that do not exist on the 9810. Keep this controller on the
    # private software path and use the S9/S9+ QR-only mode (2); mode 3 also
    # asks the legacy provider for Data Matrix support and produces no result.
    QR_CONTROLLER_SMALI="$(find "$APK_DIR" -path '*engine/QrController.smali' -print -quit)"
    if [ -z "$QR_CONTROLLER_SMALI" ] || [ ! -f "$QR_CONTROLLER_SMALI" ]; then
        LOGE "QrController.smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Routing SamsungCamera QR detection through the Exynos9810 software node"
    python3 - "$QR_CONTROLLER_SMALI" <<'PY' || return 1
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()

hal_pattern = re.compile(
    r"(?ms)^\.method public isQrCodeDetectionInHalAvailable\(\)Z\n.*?^\.end method"
)
hal_replacement = """.method public isQrCodeDetectionInHalAvailable()Z
    .locals 1

    # Exynos9810 has no One UI 8 HAL QR metadata; use Core2 software decode.
    const/4 v0, 0x0

    return v0
.end method"""
if "Exynos9810 has no One UI 8 HAL QR metadata" not in text:
    text, count = hal_pattern.subn(hal_replacement, text, count=1)
    if count != 1:
        raise SystemExit("isQrCodeDetectionInHalAvailable method not found")

mode_pattern = re.compile(
    r"(sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->X:Lcom/samsung/android/camera/core2/MakerPrivateKey;\n\n"
    r"    const/4 v2, )0x3(\n)"
)
text, count = mode_pattern.subn(r"\g<1>0x2\2", text, count=1)
if count == 0 and "MakerPrivateKey;->X:Lcom/samsung/android/camera/core2/MakerPrivateKey;\n\n    const/4 v2, 0x2" not in text:
    raise SystemExit("legacy QR detection mode assignment not found")
if count > 1:
    raise SystemExit(f"expected one legacy QR mode assignment, patched {count}")

# skipQrCodeDetection(false) restores this controller-level default after a
# photo. Keep it aligned with the throttled Photo manager; otherwise the first
# capture silently switches software QR decoding back to the unstable 500 ms
# cadence.
interval_needle = (
    "    move-result v0\n\n"
    "    int-to-long v0, v0\n\n"
    "    sput-wide v0, Lcom/sec/android/app/camera/engine/QrController;->QR_CODE_DETECTION_INTERVAL:J\n"
)
interval_replacement = (
    "    move-result v0\n\n"
    "    const/16 v0, 0x5dc\n\n"
    "    int-to-long v0, v0\n\n"
    "    sput-wide v0, Lcom/sec/android/app/camera/engine/QrController;->QR_CODE_DETECTION_INTERVAL:J\n"
)
if interval_replacement not in text:
    count = text.count(interval_needle)
    if count != 1:
        raise SystemExit(f"expected one controller QR interval initialization, found {count}")
    text = text.replace(interval_needle, interval_replacement, 1)

path.write_text(text)
PY

    # UniHAL on the Exynos9810 omits the software QR preview-callback stream.
    # Bypass it only for the dedicated scanner and normal Photo maker, the two
    # sessions which feed SaivQRCodeNode. This preserves Samsung routing for
    # video and every unrelated shooting mode.
    MAKER_BASE_SMALI="$(find "$APK_DIR" -path '*core2/maker/MakerBase.smali' -print -quit)"
    if [ -z "$MAKER_BASE_SMALI" ] || [ ! -f "$MAKER_BASE_SMALI" ]; then
        LOGE "MakerBase.smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Routing Photo and QR callback streams directly to the Exynos9810 HAL"
    python3 - "$MAKER_BASE_SMALI" <<'PY' || return 1
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()
marker = "Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;"
needle = "    sget-object v2, Lcom/samsung/android/camera/core2/PublicMetadata;->a:Ljava/util/List;\n"
guards = """    instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/QrPhotoMaker;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    if-nez v2, :cond_0

"""

if marker not in text:
    count = text.count(needle)
    if count != 1:
        raise SystemExit(f"expected one Samsung-camera parameter assignment, found {count}")
    text = text.replace(needle, guards + needle, 1)
else:
    qr_guard = "instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/QrPhotoMaker;"
    if qr_guard not in text:
        raise SystemExit("AutoBeautyPhotoMaker guard exists without QrPhotoMaker guard")

path.write_text(text)
PY

    # With samsungcamera=false, the legacy Exynos9810 HAL delivers standard
    # Camera2 capture callbacks but not Samsung's shutter vendor metadata.
    # AutoBeautyPhotoMaker still receives and saves the JPEG, then Camera's
    # sequence controller rejects PICTURE_RECEIVED because SHUTTER_RECEIVED
    # never happened. Synthesize that one missing callback immediately before
    # Core2's software capture-available callback. The guard keeps every maker
    # which still uses UniHAL on its stock callback path.
    PHOTO_MAKER_BASE_SMALI="$(find "$APK_DIR" -path '*core2/maker/PhotoMakerBase.smali' -print -quit)"
    if [ -z "$PHOTO_MAKER_BASE_SMALI" ] || [ ! -f "$PHOTO_MAKER_BASE_SMALI" ]; then
        LOGE "PhotoMakerBase.smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Restoring Exynos9810 Photo capture callback ordering"
    python3 - "$PHOTO_MAKER_BASE_SMALI" <<'PY' || return 1
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()
marker = "# Exynos9810 legacy HAL does not publish Samsung shutter metadata."
needle = """    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->getMakerTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, p0}, Lcom/samsung/android/camera/core2/callback/helper/CallbackHelper$PictureCallbackHelper;->a(Ljava/lang/String;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILjava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V
"""
replacement = """    # Exynos9810 legacy HAL does not publish Samsung shutter metadata.
    instance-of v0, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    if-eqz v0, :exynos9810_shutter_done

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->getMakerTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/camera/core2/callback/helper/CallbackHelper$PictureCallbackHelper;->g(Ljava/lang/String;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILjava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    :exynos9810_shutter_done
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->getMakerTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, p0}, Lcom/samsung/android/camera/core2/callback/helper/CallbackHelper$PictureCallbackHelper;->a(Ljava/lang/String;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILjava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V
"""

if marker not in text:
    count = text.count(needle)
    if count != 1:
        raise SystemExit(f"expected one software capture-available callback, found {count}")
    text = text.replace(needle, replacement, 1)

path.write_text(text)
PY

    # Software decoding takes 500-850 ms on Exynos9810. The stock 500 ms Photo
    # cadence can overlap decoder work until the legacy HAL stops returning
    # capture results. Limit both Photo and the dedicated scanner to one frame
    # per 1500 ms; this retains the QR popup while leaving enough headroom for
    # screenshots and other foreground load.
    QR_MANAGER_SMALI="$(find "$APK_DIR" -path '*shootingmode/photo/QrCodeDetectionManager.smali' -print -quit)"
    if [ -z "$QR_MANAGER_SMALI" ] || [ ! -f "$QR_MANAGER_SMALI" ]; then
        LOGE "QrCodeDetectionManager.smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Throttling Exynos9810 Photo QR decoding to a stable 1500 ms cadence"
    python3 - "$QR_MANAGER_SMALI" <<'PY' || return 1
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()
marker = "    const/16 v0, 0x5dc\n"
pattern = re.compile(
    r"(?ms)(^\.method static constructor <clinit>\(\)V\n.*?"
    r"invoke-static \{v0\}, Li0/b;->d\(Lx1/i;\)I\n\n"
    r"    move-result v0\n)"
)
if marker not in text:
    text, count = pattern.subn(r"\g<1>\n" + marker, text, count=1)
    if count != 1:
        raise SystemExit("Photo QR interval initialization not found")

path.write_text(text)
PY

    LOG "- Throttling Exynos9810 dedicated QR scanning to a stable 1500 ms cadence"
    python3 - "$APK_DIR/smali_classes4/com/sec/android/app/camera/shootingmode/qr/QrPresenter.smali" <<'PY' || return 1
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r"(?ms)(^\.method private enableQrDetection\(Z\)V\n.*?const-wide/16 v0, )(?:0x64|0x1f4)(\n)"
)
new, count = pattern.subn(r"\g<1>0x5dc\2", text, count=1)
if count == 0 and re.search(
    r"(?ms)^\.method private enableQrDetection\(Z\)V\n.*?const-wide/16 v0, 0x5dc\n",
    text,
) is None:
    raise SystemExit("QrPresenter detection interval assignment not found")
if count > 1:
    raise SystemExit(f"expected one QrPresenter interval assignment, patched {count}")
path.write_text(new)
PY

    # Force full (non-lite) QR detection so QrCodeDetectionManager is built.
    FEAT_SMALI="$(grep -rlE 'Lx1/e;->s0\(\)Z' "$APK_DIR" 2>/dev/null \
        | xargs -r grep -lE 'SUPPORT_QR_CODE_DETECTION_LITE:Lx1/c;' 2>/dev/null | head -n 1)"
    if [ -z "$FEAT_SMALI" ] || [ ! -f "$FEAT_SMALI" ]; then
        LOG "- QR lite gate is absent; SamsungCamera already uses the non-lite QR path"
        return 0
    fi

    LOG "- Forcing full QR-code detection (disabling lite gate) so QR scanning works"
    python3 - "$FEAT_SMALI" <<'PY' || return 1
import re, sys
path = sys.argv[1]
text = open(path).read()

# In the sole s0()-gated lite computation, the "device is lite" branch sets
# v1=1; make it 0 so SUPPORT_QR_CODE_DETECTION_LITE is always false and the full
# QrCodeDetectionManager (software SaivQRCodeNode path) is used.
pat = re.compile(
    r'(invoke-static \{\}, Lx1/e;->s0\(\)Z\n\n'
    r'    move-result v1\n\n'
    r'    if-nez v1, :cond_\w+\n\n'
    r'    const/4 v1, )0x1(\n)'
)
new, n = pat.subn(r'\g<1>0x0\2', text)
if n == 0:
    # SamsungCamera revisions can retain the feature symbol while changing
    # the surrounding control flow. Do not fail a build when the old literal
    # sequence is absent; the existing APK path remains valid and the
    # QrCodeDetectionManager null guards above are still applied.
    print("QR lite gate sequence already changed; leaving current gate intact")
    raise SystemExit(0)
if n != 1:
    raise SystemExit(f"expected 1 QR lite gate, patched {n}")
open(path, "w").write(new)
PY
}

_EXYNOS9810_FINAL_FIX_WALLPAPER_OBJECTCAPTURE()
{
    # Preserve the complete S22 One UI 8 wallpaper stack. Its optional ArcSoft
    # subject segmentation advertises support but cannot initialize on the
    # Exynos9810 compute stack, so DressRoom waits forever at "Applying". Make
    # the stock app report that optional effect as unsupported; it then uses
    # its normal bitmap crop/apply fallback without replacing any S22 library.
    local APK_REL="system/priv-app/DressRoom/DressRoom.apk"
    local APK_DIR="$APKTOOL_DIR/system/priv-app/DressRoom/DressRoom.apk"
    local SMALI

    [ -f "$WORK_DIR/system/$APK_REL" ] || {
        LOGE "S22 One UI 8 DressRoom is missing"
        return 1
    }

    LOG "- Patching S22 DressRoom object-capture fallback for Exynos9810"
    DECODE_APK "system" "$APK_REL" || return 1
    SMALI="$(find "$APK_DIR" -type f \
        -path '*/com/samsung/android/app/sdk/deepsky/wallpaper/objectcapture/ObjectCaptureImpl.smali' \
        -print -quit)"
    [ -n "$SMALI" ] && [ -f "$SMALI" ] || {
        LOGE "DressRoom ObjectCaptureImpl smali not found"
        return 1
    }

    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r"\.method public isObjectCaptureSupported\(\)Z\n.*?\n\.end method",
    re.S,
)
replacement = """.method public isObjectCaptureSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method"""
new, count = pattern.subn(replacement, text, count=1)
if count != 1:
    raise SystemExit(f"expected one DressRoom object-capture gate, patched {count}")
path.write_text(new)
PY

    return 0
}

_EXYNOS9810_FINAL_FIX_SNAP_IMAGETAGGER_MODEL_PAIR()
{
    # N770F HXA3 exposes Edgetpu_M/prob and prob_openset. The newer S22
    # ImageTagger requests the absent Edgetpu_M/prob_L2 node and crashes SNAP
    # while processing an incoming Bluetooth image. NobleROM's Exynos9810
    # ImageTagger exports every JNI method used by the current stack without
    # requesting the unavailable L2 output.
    local SRC="$MODPATH/imagetagger/libImageTagger.camera.samsung.so"
    local DST="$WORK_DIR/system/system/lib64/libImageTagger.camera.samsung.so"
    local MODEL="$WORK_DIR/vendor/saiv/image_understanding/db/aig_classifier/aig_classifier_cnn.tf"
    local EXPECTED_SHA256="8bffcc418eb5de1903ec56142577295f200c5fb1748f4c8d5647d18e1eea5043"

    [ -f "$DST" ] || {
        LOG "- SNAP ImageTagger: destination is absent, skipping"
        return 0
    }
    [ -f "$MODEL" ] || {
        LOGW "SNAP ImageTagger model is missing; keeping the donor library and skipping compatibility pairing"
        return 0
    }
    [ -f "$SRC" ] || {
        LOGE "SNAP ImageTagger compatibility payload is missing: $SRC"
        return 1
    }
    [ "$(sha256sum "$SRC" | cut -d ' ' -f 1)" = "$EXPECTED_SHA256" ] || {
        LOGE "Unexpected SNAP ImageTagger compatibility payload hash"
        return 1
    }

    grep -aFq 'Edgetpu_M/prob' "$MODEL" || {
        LOGE "N770F AIG model does not expose Edgetpu_M/prob"
        return 1
    }
    grep -aFq 'Edgetpu_M/prob_openset' "$MODEL" || {
        LOGE "N770F AIG model does not expose Edgetpu_M/prob_openset"
        return 1
    }
    if grep -aFq 'Edgetpu_M/prob_L2' "$SRC"; then
        LOGE "Compatibility ImageTagger still requests unavailable prob_L2"
        return 1
    fi

    LOG "- Pairing SNAP with legacy Exynos9810 ImageTagger (prob/prob_openset model)"
    cp -f "$SRC" "$DST" || return 1
    chmod 0644 "$DST" || return 1
    _EXYNOS9810_FINAL_SET_METADATA "system" \
        "system/lib64/libImageTagger.camera.samsung.so" \
        0 0 644 "u:object_r:system_lib_file:s0"

    return 0
}

_EXYNOS9810_FINAL_PATCH_ONEUI8_IPSERVICE()
{
    # Keep the S22 One UI 8 IPService, but disable its incompatible legacy
    # gallery-classifier initialization. On Exynos9810 the S22 Java/JNI pair
    # jumps through an invalid native entry while processing a newly applied
    # wallpaper, killing com.samsung.ipservice with SIGSEGV before Java can
    # catch it. Wallpaper apply itself does not require scene classification.
    local APK_REL="system/priv-app/IPService/IPService.apk"
    local APK_DIR="$APKTOOL_DIR/system/priv-app/IPService/IPService.apk"
    local SMALI

    [ -f "$WORK_DIR/system/$APK_REL" ] || {
        LOGE "S22 One UI 8 IPService is missing"
        return 1
    }

    LOG "- Patching S22 One UI 8 IPService wallpaper classifier for Exynos9810"
    DECODE_APK "system" "$APK_REL" || return 1

    SMALI="$(find "$APK_DIR" -type f \
        -path '*/com/samsung/ipservice/common/w.smali' -print -quit)"
    [ -n "$SMALI" ] && [ -f "$SMALI" ] || {
        LOGE "IPService VizManager smali not found"
        return 1
    }

    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r"\.method public final declared-synchronized c\(\)V\n.*?\n\.end method",
    re.S,
)
replacement = """.method public final declared-synchronized c()V
    .locals 1

    # VZGalleryClassifier's S22 JNI entry is incompatible with the legacy
    # Exynos9810 image stack. Leave the classifier null; callers already treat
    # that as an optional feature and continue without scene tagging.
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ipservice/common/w;->b:Lvizinsight/atl/vzimageclassifier/VZGalleryClassifier;

    return-void
.end method"""
new, count = pattern.subn(replacement, text, count=1)
if count != 1:
    raise SystemExit(f"expected one IPService classifier initializer, patched {count}")
path.write_text(new)
PY

    return 0
}

_EXYNOS9810_FINAL_PATCH_PERSONALIZATION_DATABASE_KEYS()
{
    # Rubin and the current full Smart Suggestions package encrypt their Room
    # databases through AndroidKeyStore. The legacy Exynos9810 keymaster cannot
    # upgrade those S22-era key blobs: Rubin receives an empty password and
    # crashes in SemSQLiteSecureOpenHelper, while Smart Suggestions throws
    # KEY_REQUIRES_UPGRADE. Keep the One UI 8 applications, but derive stable
    # 256-bit local database passwords without the incompatible keymaster path.
    local RUBIN_REL="system/priv-app/RubinVersion37/RubinVersion37.apk"
    local RUBIN_DIR="$APKTOOL_DIR/system/priv-app/RubinVersion37/RubinVersion37.apk"
    local SMART_REL="system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk"
    local SMART_DIR="$APKTOOL_DIR/system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk"
    local RUBIN_SMALI SMART_SMALI

    [ -f "$WORK_DIR/system/$RUBIN_REL" ] || {
        LOGE "Rubin personalization service is missing"
        return 1
    }
    [ -f "$WORK_DIR/system/$SMART_REL" ] || {
        LOGE "Samsung Smart Suggestions is missing"
        return 1
    }

    LOG "- Patching Rubin secure-database keys for legacy Exynos9810 keymaster"
    DECODE_APK "system" "$RUBIN_REL" || return 1
    RUBIN_SMALI="$(find "$RUBIN_DIR" -type f -path '*/F4/a.smali' -print -quit)"
    [ -n "$RUBIN_SMALI" ] && [ -f "$RUBIN_SMALI" ] || {
        LOGE "Rubin database-key provider smali not found"
        return 1
    }

    python3 - "$RUBIN_SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r"\.method public static B\(Landroid/content/Context;Ljava/lang/String;\)\[B\n"
    r".*?\n\.end method",
    re.S,
)
replacement = """.method public static B(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UN1CA9810-Rubin:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method"""
new, count = pattern.subn(replacement, text, count=1)
if count != 1:
    raise SystemExit(f"expected one Rubin database-key method, patched {count}")
path.write_text(new)
PY

    LOG "- Patching Smart Suggestions database keys for legacy Exynos9810 keymaster"
    DECODE_APK "system" "$SMART_REL" || return 1
    # The Galaxy Store "full-global-release" flavor renamed the obfuscated
    # provider (C5/b) to the explicit DatabaseKeyStoreImpl class in the
    # March 2026 release. Accept both layouts.
    SMART_SMALI="$(find "$SMART_DIR" -type f -name 'DatabaseKeyStoreImpl.smali' -print -quit)"
    if [ -z "$SMART_SMALI" ]; then
        SMART_SMALI="$(find "$SMART_DIR" -type f -path '*/C5/b.smali' -print -quit)"
    fi
    [ -n "$SMART_SMALI" ] && [ -f "$SMART_SMALI" ] || {
        LOGE "Smart Suggestions database-key provider smali not found"
        return 1
    }

    python3 - "$SMART_SMALI" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
# March 2026 release: the provider is the explicit DatabaseKeyStoreImpl
# class and createKey is private with no Context reachable, so derive
# the stable password from Build.MODEL plus the key name instead of
# the legacy keymaster path.
pattern = re.compile(
    r"\.method private final createKey\(Ljava/lang/String;\)\[B\n.*?\n\.end method",
    re.S,
)
replacement = """.method private final createKey(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "UN1CA9810-SmartSuggestions:"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method"""
new, count = pattern.subn(replacement, text, count=1)
if count != 1:
    # Older releases: obfuscated provider with a Context-accessible key
    # derivation method.
    pattern = re.compile(
        r"\.method public final a\(Ljava/lang/String;\)\[B\n.*?\n\.end method",
        re.S,
    )
    replacement = """.method public final a(Ljava/lang/String;)[B
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UN1CA9810-SmartSuggestions:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method"""
    new, count = pattern.subn(replacement, text, count=1)
if count != 1:
    raise SystemExit(f"expected one Smart Suggestions database-key method, patched {count}")
path.write_text(new)
PY

    return 0
}

_EXYNOS9810_FINAL_PIN_QUICK_SHARE_STACK()
{
    # ShareLive is tightly coupled to the MCF/MDX framework shipped in the S22
    # One UI 8 source. Galaxy Store can otherwise install a newer data APK that
    # expects newer framework services and breaks Quick Share. Keep the matched
    # source APK and give the system package a ceiling version so PackageManager
    # ignores/removes incompatible lower-version data updates after flashing.
    local APK_REL="system/priv-app/ShareLive/ShareLive.apk"
    local APK_DIR="$APKTOOL_DIR/system/priv-app/ShareLive/ShareLive.apk"
    local VERSION_FILE="$APK_DIR/apktool.yml"

    [ -f "$WORK_DIR/system/$APK_REL" ] || {
        LOGE "S22 One UI 8 ShareLive is missing"
        return 1
    }

    LOG "- Pinning the matched S22 One UI 8 Quick Share stack"
    DECODE_APK "system" "$APK_REL" || return 1
    [ -f "$VERSION_FILE" ] || {
        LOGE "ShareLive apktool metadata is missing"
        return 1
    }

    python3 - "$VERSION_FILE" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
new, count = re.subn(
    r"(?m)^(\s*versionCode:\s*)\d+\s*$",
    r"\g<1>2147483000",
    text,
    count=1,
)
if count != 1:
    raise SystemExit("ShareLive versionCode not found")
path.write_text(new)
PY

    # The APK is rebuilt and signed later in this build. Donor oat/art files
    # still reference the original APK checksum and make ART reject the app
    # image at runtime. Let dex2oat regenerate a matching cache on first boot.
    _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "system/priv-app/ShareLive/oat"

    return 0
}

_EXYNOS9810_FINAL_PORT_N770_MOTION_PHOTO()
{
    local SRC="$MODPATH/native_motionphoto"
    local REL

    LOG "- Installing the proven Motion Photo service stack for the Exynos9810 camera"

    # The proven stack is the S901B 5.0.46 Motion Photo service (with the
    # Exynos9810 HEVC encoder color-format fix and native Android 16 SUME IPC)
    # plus its matching S901B JNI libraries, shipped byte-exact as verified on
    # device. The N770F SUME Message.smali null-Parcelable patch is not needed:
    # this S901B generation speaks the Android 16 camera-client IPC natively.
    for REL in \
        "MotionPhoto.apk" \
        "libapex_motionphoto_utils_jni.media.samsung.so" \
        "libmotionphoto_jni.media.samsung.so"; do
        if [ ! -f "$SRC/$REL" ]; then
            LOGE "Required Motion Photo component is missing: $SRC/$REL"
            return 1
        fi
    done

    # Refuse to package a silently replaced or stale payload.
    [ "$(sha256sum "$SRC/MotionPhoto.apk" | cut -d ' ' -f 1)" = \
        "ac75f71a3645703825ec3c8f5523bb71805c8543404e9b4620707d8755045673" ] || {
        LOGE "Unexpected Motion Photo APK payload hash"
        return 1
    }
    [ "$(sha256sum "$SRC/libapex_motionphoto_utils_jni.media.samsung.so" | cut -d ' ' -f 1)" = \
        "584a27299bd6d2dbe27efcb6ad2575df147df01a2eb9de9c57154c2dfdb345c6" ] || {
        LOGE "Unexpected Motion Photo apex utils JNI payload hash"
        return 1
    }
    [ "$(sha256sum "$SRC/libmotionphoto_jni.media.samsung.so" | cut -d ' ' -f 1)" = \
        "cba34ded68fdf1fedce5439bda6b4c4c8831e91e4123948e3305c2e657024c81" ] || {
        LOGE "Unexpected Motion Photo JNI payload hash"
        return 1
    }

    _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "system/app/MotionPhoto"

    # Keep the byte-exact proven APK: remove the apktool entry so the global
    # rebuild pass cannot round-trip the Kotlin/Hilt APK and drift from what
    # was verified on device.
    rm -rf "$APKTOOL_DIR/system/app/MotionPhoto"

    mkdir -p "$WORK_DIR/system/system/app/MotionPhoto"
    cp -f "$SRC/MotionPhoto.apk" \
        "$WORK_DIR/system/system/app/MotionPhoto/MotionPhoto.apk" || return 1
    cp -f "$SRC/libapex_motionphoto_utils_jni.media.samsung.so" \
        "$WORK_DIR/system/system/lib64/libapex_motionphoto_utils_jni.media.samsung.so" || return 1
    cp -f "$SRC/libmotionphoto_jni.media.samsung.so" \
        "$WORK_DIR/system/system/lib64/libmotionphoto_jni.media.samsung.so" || return 1

    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/MotionPhoto" \
        0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/MotionPhoto/MotionPhoto.apk" \
        0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/lib64/libapex_motionphoto_utils_jni.media.samsung.so" \
        0 0 644 "u:object_r:system_lib_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/lib64/libmotionphoto_jni.media.samsung.so" \
        0 0 644 "u:object_r:system_lib_file:s0"
}

_EXYNOS9810_FINAL_FORCE_S3NRN82_NFC()
{
    local NFC_ROOT="$SRC_DIR/unica/patches/exynos9810_device_stack/nfc"
    local COMMON_ROOT="$NFC_ROOT/common"
    local TARGET_ROOT="$NFC_ROOT/$TARGET_CODENAME"

    [ -d "$COMMON_ROOT/vendor" ] && [ -d "$TARGET_ROOT/vendor" ] || {
        LOGE "Exynos9810 S3NRN82 NFC payload is missing for $TARGET_CODENAME"
        return 1
    }

    LOG "- Re-applying S3NRN82 NFC after vendor baseline restore"

    rm -f \
        "$WORK_DIR/vendor/bin/hw/nxp.android.hardware.nfc@1.1-service" \
        "$WORK_DIR/vendor/etc/init/nxp.android.hardware.nfc@1.1-service.rc" \
        "$WORK_DIR/vendor/etc/libnfc-nxp.conf" \
        "$WORK_DIR/vendor/etc/nfc/libnfc-nxp_RF.conf" \
        "$WORK_DIR/vendor/lib64/nfc_nci_nxp.so" \
        "$WORK_DIR/vendor/lib64/vendor.nxp.nxpnfc@1.0.so" \
        "$WORK_DIR/vendor/lib64/vendor.nxp.nxpnfc@1.1.so"

    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/bin/hw/nxp.android.hardware.nfc@1.1-service" \
        "/vendor/bin/hw/nxp\\.android\\.hardware\\.nfc@1\\.1-service"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/etc/init/nxp.android.hardware.nfc@1.1-service.rc" \
        "/vendor/etc/init/nxp\\.android\\.hardware\\.nfc@1\\.1-service\\.rc"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/etc/libnfc-nxp.conf" \
        "/vendor/etc/libnfc-nxp\\.conf"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/etc/nfc/libnfc-nxp_RF.conf" \
        "/vendor/etc/nfc/libnfc-nxp_RF\\.conf"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/lib64/nfc_nci_nxp.so" \
        "/vendor/lib64/nfc_nci_nxp\\.so"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/lib64/vendor.nxp.nxpnfc@1.0.so" \
        "/vendor/lib64/vendor\\.nxp\\.nxpnfc@1\\.0\\.so"
    _EXYNOS9810_FINAL_DELETE_METADATA_PREFIX "vendor" \
        "vendor/lib64/vendor.nxp.nxpnfc@1.1.so" \
        "/vendor/lib64/vendor\\.nxp\\.nxpnfc@1\\.1\\.so"

    cp -a "$COMMON_ROOT/vendor/." "$WORK_DIR/vendor/" || return 1
    cp -a "$TARGET_ROOT/vendor/." "$WORK_DIR/vendor/" || return 1
    mkdir -p "$WORK_DIR/system/system/lib64"
    cp -f "$COMMON_ROOT/system/lib64/libnfc_sec_jni.so" \
        "$WORK_DIR/system/system/lib64/libnfc_sec_jni.so" || return 1

    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" \
        "ro.vendor.nfc.feature.chipname" "SLSI"
    _EXYNOS9810_FINAL_SET_PROP "$WORK_DIR/vendor/build.prop" \
        "ro.vendor.nfc.info.antpos" "1"
    sed -i '/^persist.nfc_vendor_extn.lib_file_name=/d' "$WORK_DIR/vendor/build.prop" || return 1

    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "bin/hw/sec.android.hardware.nfc@1.2-service" \
        0 2000 755 "u:object_r:hal_nfc_default_exec:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "etc/init/sec.android.hardware.nfc@1.2-service.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "etc/vintf/manifest/sec.android.hardware.nfc@1.2-service.xml" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "etc/libnfc-sec-vendor.conf" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "etc/permissions/android.hardware.nfc.xml" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "etc/nfc/sec_s3nrn82_rfreg.bin" \
        0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "firmware/nfc/sec_s3nrn82_firmware.bin" \
        0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "lib64/nfc_nci_sec.so" \
        0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" \
        "lib64/vendor.samsung.hardware.nfc@2.0.so" \
        0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" \
        "system/lib64/libnfc_sec_jni.so" \
        0 0 644 "u:object_r:system_lib_file:s0"

    [ -f "$WORK_DIR/vendor/bin/hw/sec.android.hardware.nfc@1.2-service" ] || {
        LOGE "S3NRN82 NFC service was not staged"
        return 1
    }
}

_EXYNOS9810_FINAL_VERIFY_SHARING_STACK()
{
    local REL

    LOG "- Verifying Quick Share and Bluetooth file-transfer stack"
    for REL in \
        system/apex/com.android.bt.apex \
        system/app/BluetoothAgent/BluetoothAgent.apk \
        system/app/MdxKitService/MdxKitService.apk \
        system/etc/default-permissions/default-permissions-com.samsung.android.mcfds.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.mcfserver.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.mdx.kit.xml \
        system/etc/permissions/mcfsdk.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.app.sharelive.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.mcfds.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.mcfserver.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.mdx.xml \
        system/etc/sysconfig/sharelive_app_link.xml \
        system/framework/mcfsdk.jar \
        system/lib64/libImageTagger.camera.samsung.so \
        system/lib64/libbluetooth_jni.so \
        system/priv-app/MCFDeviceSync/MCFDeviceSync.apk \
        system/priv-app/ShareLive/ShareLive.apk; do
        [ -f "$WORK_DIR/system/$REL" ] || {
            LOGE "Required sharing component is missing: /$REL"
            return 1
        }
    done

    return 0
}

_EXYNOS9810_FINAL_VERIFY_WALLPAPER_AND_BRIEF_STACK()
{
    local REL

    LOG "- Verifying One UI 8 wallpaper and Now Brief packages"
    for REL in \
        system/priv-app/DressRoom/DressRoom.apk \
        system/priv-app/IPService/IPService.apk \
        system/priv-app/Moments/Moments.apk \
        system/priv-app/RubinVersion37/RubinVersion37.apk \
        system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk \
        system/priv-app/SpriteWallpaper/SpriteWallpaper.apk; do
        [ -f "$WORK_DIR/system/$REL" ] || {
            LOGE "Required One UI 8 package is missing: /$REL"
            return 1
        }
    done

    return 0
}

_EXYNOS9810_FINAL_VERIFY_WEATHER_PAYLOAD()
{
    local APK="$WORK_DIR/system/system/app/SamsungWeather/SamsungWeather.apk"
    local REL

    LOG "- Verifying supplied Samsung Weather payload"
    [ -s "$APK" ] || {
        LOGE "Samsung Weather 1.7.30.50 payload is missing"
        return 1
    }

    for REL in \
        system/app/Weather_SEP11.0 \
        system/priv-app/SamsungWeather \
        system/priv-app/Weather; do
        [ ! -e "$WORK_DIR/system/$REL" ] || {
            LOGE "Old Weather payload remains in the final workdir: /$REL"
            return 1
        }
    done

    return 0
}

_EXYNOS9810_FINAL_VERIFY_RAM_PROFILE()
{
    local FILE
    local PROFILE="$WORK_DIR/system/system/build.prop"
    local EXPECTED
    local PROP
    local COUNT

    LOG "- Verifying balanced Exynos9810 RAM profile"

    [ -f "$PROFILE" ] || {
        LOGE "System build.prop is missing while verifying the RAM profile"
        return 1
    }

    for EXPECTED in \
        "ro.sys.fw.bg_apps_limit=20" \
        "ro.sys.fw.bg_cached_ratio=0.50" \
        "ro.config.dha_cached_max=24" \
        "ro.config.dha_cached_min=8" \
        "ro.config.dha_empty_max=32" \
        "ro.config.dha_empty_min=8" \
        "ro.config.dha_lmk_scale=0.545" \
        "ro.config.dha_pwhitelist_enable=1"; do
        PROP="${EXPECTED%%=*}"
        COUNT="$(grep -F -c "${PROP}=" "$PROFILE" || true)"
        if [ "$COUNT" -ne 1 ] || ! grep -F -q "$EXPECTED" "$PROFILE"; then
            LOGE "Requested RAM property is missing or duplicated: $EXPECTED"
            return 1
        fi
    done

    for FILE in \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/system/system/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop"; do
        [ -f "$FILE" ] || continue
        if grep -q -E '^(persist\.sys\.fw\.trim_enable_memory=|ro\.sys\.fw\.use_trim_settings=)' "$FILE"; then
            LOGE "Removed trim override remains in $FILE"
            return 1
        fi
    done

    # Donor vendor files contain unrelated legacy ro.config.dha_* settings.
    # Check only the exact profile properties so those valid donor settings do
    # not look like duplicate copies of the requested profile.
    for FILE in \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop"; do
        [ -f "$FILE" ] || continue
        for PROP in \
            ro.sys.fw.bg_apps_limit \
            ro.sys.fw.bg_cached_ratio \
            ro.config.dha_cached_max \
            ro.config.dha_cached_min \
            ro.config.dha_empty_max \
            ro.config.dha_empty_min \
            ro.config.dha_lmk_scale \
            ro.config.dha_pwhitelist_enable; do
            if grep -F -q "${PROP}=" "$FILE"; then
                LOGE "RAM profile property is duplicated outside system/system/build.prop: ${PROP} in $FILE"
                return 1
            fi
        done
    done

    [ ! -e "$WORK_DIR/system/system/etc/init/ram_tweaks.rc" ] || {
        LOGE "Custom ram_tweaks init service remains in the final workdir"
        return 1
    }
    [ ! -e "$WORK_DIR/system/system/bin/ram_tweaks.sh" ] || {
        LOGE "Custom ram_tweaks helper remains in the final workdir"
        return 1
    }
    for FILE in \
        "$WORK_DIR/system/system_ext/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/system/system_ext/bin/ram_tweaks.sh" \
        "$WORK_DIR/system/vendor/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/system/vendor/bin/ram_tweaks.sh" \
        "$WORK_DIR/vendor/etc/init/ram_tweaks.rc" \
        "$WORK_DIR/vendor/bin/ram_tweaks.sh"; do
        [ ! -e "$FILE" ] || {
            LOGE "Custom ram_tweaks file remains in the final workdir: $FILE"
            return 1
        }
    done

    return 0
}

_EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH()
{
    local KEY="$1"
    local VALUE="$2"
    local FILE

    _EXYNOS9810_FINAL_RESTORE_FLOATING_FEATURE_FILES || return 1

    for FILE in \
        "$WORK_DIR/system/system/etc/floating_feature.xml" \
        "$WORK_DIR/vendor/etc/floating_feature.xml"; do
        [ -f "$FILE" ] || {
            LOGE "Floating-feature file is missing: $FILE"
            return 1
        }

        if grep -q "<$KEY>" "$FILE"; then
            sed -i "s|<$KEY>[^<]*</$KEY>|<$KEY>$VALUE</$KEY>|" "$FILE"
        elif grep -q "</SecFloatingFeatureSet>" "$FILE"; then
            sed -i "/<\/SecFloatingFeatureSet>/i\\    <$KEY>$VALUE</$KEY>" "$FILE"
        else
            printf '    <%s>%s</%s>\n' "$KEY" "$VALUE" "$KEY" >> "$FILE"
            printf '</SecFloatingFeatureSet>\n' >> "$FILE"
        fi
    done
}

_EXYNOS9810_FINAL_RESTORE_FLOATING_FEATURE_FILES()
{
    local SOURCE="$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/floating_feature.xml"
    local PARTITION
    local FILE

    [ -f "$SOURCE" ] || {
        LOGE "Embedded Exynos9810 floating-feature baseline is missing: $SOURCE"
        return 1
    }

    # A late vendor restore may remove the vendor copy while retaining the
    # system copy. Restore the same embedded baseline before applying the
    # final feature edits so both partitions remain coherent.
    for PARTITION in system vendor; do
        if [ "$PARTITION" = "system" ]; then
            FILE="$WORK_DIR/system/system/etc/floating_feature.xml"
        else
            FILE="$WORK_DIR/vendor/etc/floating_feature.xml"
        fi
        if [ ! -f "$FILE" ]; then
            mkdir -p "$(dirname "$FILE")"
            cp -af "$SOURCE" "$FILE" || return 1
            _EXYNOS9810_FINAL_SET_METADATA "$PARTITION" \
                "$PARTITION/etc/floating_feature.xml" 0 0 644 \
                "u:object_r:${PARTITION}_file:s0"
        fi
    done
}

_EXYNOS9810_FINAL_ENABLE_REPORTED_FEATURES()
{
    LOG "- Enabling Samsung user-requested Quick Panel and Smart View features"

    _EXYNOS9810_FINAL_RESTORE_FLOATING_FEATURE_FILES || return 1

    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION" "TRUE" || return 1
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF" "TRUE" || return 1
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE" "TRUE" || return 1
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE" "TRUE" || return 1
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_GAMEBOOSTER_MANUAL_ROUTINE" "TRUE" || return 1
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_MMFW_CONFIG_SMART_MIRRORING_PACKAGE_NAME" \
        "com.samsung.android.smartmirroring" || return 1
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_SMART_VIEW_APP_CAST_SUPPORTED" "TRUE" || return 1
}

_EXYNOS9810_FINAL_ENABLE_EXTRA_BRIGHTNESS()
{
    # Settings and vendor display services read different copies of this file.
    # Keep the feature identical in both partitions after every late restore.
    _EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH \
        "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS" "TRUE" || return 1
    return 0
}

_EXYNOS9810_FINAL_SET_BRIGHTNESS_PROFILE()
{
    local FILE
    local KEY="SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS"

    # This runs after every system/vendor donor restore. Keep both copies on
    # the native Exynos9810 protocol so no late N770F overlay can restore mode 4.
    for FILE in \
        "$WORK_DIR/system/system/etc/floating_feature.xml" \
        "$WORK_DIR/vendor/etc/floating_feature.xml"; do
        [ -f "$FILE" ] || {
            LOGE "Floating-feature file is missing: $FILE"
            return 1
        }

        if grep -q "<$KEY>" "$FILE"; then
            sed -i "s|<$KEY>[^<]*</$KEY>|<$KEY>3</$KEY>|" "$FILE"
        else
            sed -i "/<\/SecFloatingFeatureSet>/i\\    <$KEY>3</$KEY>" "$FILE"
        fi
    done
}

_EXYNOS9810_FINAL_REMOVE_STALE_SYSTEM_BOOT_DEBUG()
{
    if [ "${EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG:-false}" = "true" ]; then
        return 0
    fi

    # A preserved work.dir can contain a logger from an earlier diagnostic run.
    # Remove both payload and metadata before the production verifier runs.
    local REL
    for REL in \
        system/etc/init/unica_exynos9810_debug.rc \
        system/bin/unica_exynos9810_bootlog.sh; do
        if [ -e "$WORK_DIR/system/$REL" ]; then
            LOG "- Removing stale system boot logger: /$REL"
        fi
        _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "$REL"
    done
}

_EXYNOS9810_FINAL_SERVICES_CONTAINS()
{
    local NEEDLE="$1"
    local DECODED="$APKTOOL_DIR/system/framework/services.jar"
    local JAR="$WORK_DIR/system/system/framework/services.jar"

    if [ -d "$DECODED" ]; then
        grep -R -F -q -- "$NEEDLE" "$DECODED"
        return $?
    fi

    [ -f "$JAR" ] || return 1
    strings -a "$JAR" | grep -qF "$NEEDLE"
}

_EXYNOS9810_FINAL_VERIFY_REPORTED_BUG_FIXES()
{
    local FEATURE_SYSTEM="$WORK_DIR/system/system/etc/floating_feature.xml"
    local FEATURE_VENDOR="$WORK_DIR/vendor/etc/floating_feature.xml"
    local RADIO_MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml"
    local SEHRADIO_MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml"
    local FACE_MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest/face-default-sec.xml"
    local REL ACTUAL EXPECTED FEATURE

    LOG "- Verifying Exynos9810 user-reported bug fixes"

    [ -f "$FACE_MANIFEST" ] || {
        LOGE "Exynos9810 face HAL VINTF fragment is missing"
        return 1
    }
    grep -qF '@2.0::ISehBiometricsFace/default' "$FACE_MANIFEST" || {
        LOGE "Exynos9810 HIDL face HAL VINTF declaration is missing"
        return 1
    }

    [ -f "$RADIO_MANIFEST" ] || {
        LOGE "Coherent Exynos9810 IRadio 1.6 manifest is missing"
        return 1
    }
    grep -q '@1.6::IRadio/slot1' "$RADIO_MANIFEST" || {
        LOGE "Exynos9810 IRadio 1.6 slot1 declaration is missing"
        return 1
    }
    grep -q '@1.6::IRadio/slot2' "$RADIO_MANIFEST" || {
        LOGE "Exynos9810 IRadio 1.6 slot2 declaration is missing"
        return 1
    }
    [ -f "$SEHRADIO_MANIFEST" ] && \
        grep -q '<instance>imsd</instance>' "$SEHRADIO_MANIFEST" && \
        grep -q '<instance>imsd2</instance>' "$SEHRADIO_MANIFEST" || {
        LOGE "Exynos9810 IMS radio-channel declarations are missing"
        return 1
    }

    # Verify the final live-tested compatibility combination. The N770F RIL
    # libraries remain paired, while radio-v5 supplies the legacy rild,
    # channel transport and imsd bridge that restored IMEI and stable LTE.
    for REL in \
        "bin/hw/rild:73aadda1643784e51356b02eadab843a1ed1f454197a3a4c810ee1a26f44fda9" \
        "lib64/vendor.samsung.hardware.radio.channel@2.0.so:976539c14a6d1a9742f62bed4c83595ec5a692b19f4d610c47d63744d83ab87a" \
        "lib64/libsec-ril.so:b563250ff898412917b8ee3d48685392f61371e638b24ba81e2c6f2b1a555a2b" \
        "lib64/libril_sem.so:a6eac3c33beb6a532b1a5f494401530100a031e843164e2a936633837697222a"; do
        EXPECTED="${REL#*:}"
        REL="${REL%%:*}"
        [ -f "$WORK_DIR/vendor/$REL" ] || {
            LOGE "Required coherent radio component is missing: /vendor/$REL"
            return 1
        }
        ACTUAL="$(sha256sum "$WORK_DIR/vendor/$REL" | awk '{print $1}')"
        [ "$ACTUAL" = "$EXPECTED" ] || {
            LOGE "Mixed Exynos9810 radio stack detected: /vendor/$REL"
            return 1
        }
    done

    ACTUAL="$(sha256sum "$WORK_DIR/system/system/bin/imsd" | awk '{print $1}')"
    [ "$ACTUAL" = "e06f961c0260d04090b5342157fe3c82cf102af80da632bed01dfa092f1bd9b8" ] || {
        LOGE "Exynos9810 tested imsd bridge is missing or was replaced"
        return 1
    }

    for REL in \
        system/system/etc/permissions/signature-permissions-com.sec.android.app.clockpackage.xml \
        system/system/etc/sysconfig/clockpackageapp.xml \
        system/system/priv-app/SmartManager_v5/SmartManager_v5.apk \
        system/system/media/battery_protection.spi \
        vendor/etc/fstab.ramplus \
        vendor/etc/init/init.ramplus.rc \
        system/system/app/SmartMirroring/SmartMirroring.apk \
        system/system/framework/com.android.media.remotedisplay.jar \
        system/system/lib64/libremotedisplay_wfd.so \
        system/system/lib64/libwfds.so \
        vendor/bin/vendor.samsung.hardware.security.hdcp.wifidisplay-service \
        vendor/lib64/omx/libOMX.Exynos.AVC.WFD.Encoder.so; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Required user-reported feature component is missing: /$REL"
            return 1
        }
    done

    for REL in \
        system/system/app/ClockPackage \
        system/system/priv-app/ClockPackage \
        system/system/app/GalaxyWearable \
        system/system/priv-app/GalaxyWearable \
        system/system/app/GearManager \
        system/system/priv-app/GearManager \
        system/system/app/GearManagerStub \
        system/system/priv-app/GearManagerStub \
        system/system/app/SamsungMessages \
        system/system/priv-app/SamsungMessages \
        system/system/priv-app/EasySetup \
        system/system/etc/permissions/signature-permissions-com.samsung.android.app.watchmanager.xml \
        system/system/etc/permissions/com.sec.feature.saccessorymanager.xml \
        system/system/etc/permissions/com.android.future.usb.accessory.xml \
        system/system/etc/default-permissions/default-permissions-com.samsung.android.messaging.xml \
        system/system/etc/default-permissions/default-permissions-com.samsung.android.easysetup.xml \
        system/system/etc/permissions/privapp-permissions-com.samsung.android.easysetup.xml \
        system/system/framework/com.android.future.usb.accessory.jar; do
        [ ! -e "$WORK_DIR/$REL" ] || {
            LOGE "Removed Watch/Messages/EasySetup/USB or Clock APK component remains: /$REL"
            return 1
        }
    done

    for REL in \
        vendor/bin/hw/android.hardware.sensors@1.0-service \
        vendor/etc/init/android.hardware.sensors@1.0-service.rc \
        vendor/etc/vintf/manifest/android.hardware.sensors@1.0.xml \
        vendor/bin/hw/vendor.samsung.hardware.vibrator-service \
        vendor/etc/vintf/manifest/vendor.samsung.hardware.vibrator-default.xml; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Required Exynos9810 sensor/haptic component is missing: /$REL"
            return 1
        }
    done
    ACTUAL="$(stat -c '%a' "$WORK_DIR/vendor/etc/init/android.hardware.sensors@1.0-service.rc")"
    [ "$ACTUAL" = "644" ] || {
        LOGE "Sensors init rc has insecure mode $ACTUAL; Android init will skip it"
        return 1
    }
    ACTUAL="$(stat -c '%a' "$WORK_DIR/vendor/bin/hw/android.hardware.sensors@1.0-service")"
    [ "$ACTUAL" = "755" ] || {
        LOGE "Sensors HAL service binary has invalid mode $ACTUAL"
        return 1
    }

    for REL in \
        system/system/lib/libmdf.so \
        system/system/lib64/libmdf.so; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Samsung MDF JNI library is missing: /$REL"
            return 1
        }
        strings -a "$WORK_DIR/$REL" | \
            grep -qF "Java_com_samsung_android_security_mdf_MdfUtils_isMdfEnforced" || {
            LOGE "Samsung MDF JNI library lacks isMdfEnforced symbol: /$REL"
            return 1
        }
    done
    for FEATURE in \
        'SdpManagerImpl$SdpHandler' \
        'Native_Sdp_TestSdpIoctl' \
        'testSdpIoctl' \
        'SdpFileSystem'; do
        _EXYNOS9810_FINAL_SERVICES_CONTAINS "$FEATURE" && {
            LOGE "Final services.jar still contains boot-crashing Knox SDP bootstrap: $FEATURE"
            return 1
        }
    done
    strings -a "$WORK_DIR/system/system/framework/services.jar" | \
        grep -qF "Lio/mesalabs/unica/PlayIntegrityHooks;" && {
        strings -a "$WORK_DIR/system/system/framework/framework.jar" | \
            grep -qF "io/mesalabs/unica/PlayIntegrityHooks" || {
            LOGE "Final services.jar references PlayIntegrityHooks, but framework.jar does not provide it"
            return 1
        }
    }

    for REL in "$FEATURE_SYSTEM" "$FEATURE_VENDOR"; do
        [ -f "$REL" ] || {
            LOGE "Floating-feature file is missing: $REL"
            return 1
        }
        grep -q '<SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS>TRUE</SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS>' "$REL" || {
            LOGE "Extra brightness is not enabled in $REL"
            return 1
        }
        grep -q '<SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS>3</SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS>' "$REL" || {
            LOGE "Exynos9810 auto-brightness mode is not set in $REL"
            return 1
        }
        grep -q '<SEC_FLOATING_FEATURE_COMMON_CONFIG_DYN_RESOLUTION_CONTROL>WQHD,FHD,HD</SEC_FLOATING_FEATURE_COMMON_CONFIG_DYN_RESOLUTION_CONTROL>' "$REL" || {
            LOGE "Dynamic resolution control is not enabled in $REL"
            return 1
        }
        grep -q '<SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE>65303</SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE>' "$REL" || {
            LOGE "Samsung screen colour modes are not enabled in $REL"
            return 1
        }
        for FEATURE in \
            '<SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION>TRUE</SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION>' \
            '<SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF>TRUE</SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF>' \
            '<SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE>TRUE</SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE>' \
            '<SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE>TRUE</SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE>' \
            '<SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_GAMEBOOSTER_MANUAL_ROUTINE>TRUE</SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_GAMEBOOSTER_MANUAL_ROUTINE>' \
            '<SEC_FLOATING_FEATURE_MMFW_CONFIG_SMART_MIRRORING_PACKAGE_NAME>com.samsung.android.smartmirroring</SEC_FLOATING_FEATURE_MMFW_CONFIG_SMART_MIRRORING_PACKAGE_NAME>' \
            '<SEC_FLOATING_FEATURE_SMART_VIEW_APP_CAST_SUPPORTED>TRUE</SEC_FLOATING_FEATURE_SMART_VIEW_APP_CAST_SUPPORTED>'; do
            grep -qF "$FEATURE" "$REL" || {
                LOGE "Required Quick Panel/Smart View feature is missing in $REL: $FEATURE"
                return 1
            }
        done
    done

    grep -q '^persist.sys.unica.nativeblur=true$' "$WORK_DIR/system/system/build.prop" || {
        LOGE "Live blur is not enabled by default"
        return 1
    }

    grep -q '^ro.surface_flinger.max_frame_buffer_acquired_buffers=3$' "$WORK_DIR/vendor/build.prop" || {
        LOGE "Exynos9810 SurfaceFlinger buffer limit is not applied"
        return 1
    }
    grep -q '^debug.sf.disable_backpressure=1$' "$WORK_DIR/vendor/build.prop" || {
        LOGE "Exynos9810 SurfaceFlinger backpressure tuning is not applied"
        return 1
    }
    grep -q '^debug.sf.latch_unsignaled=0$' "$WORK_DIR/vendor/build.prop" || {
        LOGE "Exynos9810 SurfaceFlinger latch policy is not applied"
        return 1
    }

    grep -q '^ro.vendor.nfc.feature.chipname=SLSI$' "$WORK_DIR/vendor/build.prop" || {
        LOGE "Exynos9810 S3NRN82 NFC chip property is not applied"
        return 1
    }
    [ -f "$WORK_DIR/vendor/bin/hw/sec.android.hardware.nfc@1.2-service" ] || {
        LOGE "Exynos9810 S3NRN82 NFC service is missing"
        return 1
    }
    [ ! -e "$WORK_DIR/vendor/bin/hw/nxp.android.hardware.nfc@1.1-service" ] || {
        LOGE "NXP NFC service regression: SN100U service remains"
        return 1
    }

    if [ "${EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG:-false}" != "true" ]; then
        for REL in \
            system/system/etc/init/unica_exynos9810_debug.rc \
            system/system/bin/unica_exynos9810_bootlog.sh; do
            [ ! -e "$WORK_DIR/$REL" ] || {
                LOGE "Production build still contains boot logger: /$REL"
                return 1
            }
        done
    fi

    if [ "${EXYNOS9810_ENABLE_VENDOR_BOOT_TRACE:-false}" != "true" ]; then
        [ ! -e "$WORK_DIR/vendor/etc/init/unica_exynos9810_trace.rc" ] || {
            LOGE "Production build still contains vendor boot trace"
            return 1
        }
    fi

    return 0
}

_EXYNOS9810_FINAL_ENABLE_NOW_BRIEF_WIDGET()
{
    local REL="system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk"
    local DIR="$APKTOOL_DIR/system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk"
    local MANIFEST="$DIR/AndroidManifest.xml"

    [ -f "$WORK_DIR/system/$REL" ] || {
        LOGW "Samsung Smart Suggestions missing; skipping Now Brief provider enable"
        return 0
    }
    DECODE_APK "system" "$REL" || return 1
    [ -f "$MANIFEST" ] || {
        LOGE "Samsung Smart Suggestions manifest was not decoded"
        return 1
    }

    LOG "- Enabling the One UI 8 Now Brief home-screen widget provider"
    python3 - "$MANIFEST" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
pattern = re.compile(
    r'(<receiver\s+android:enabled=")false("[^>]*android:name="'
    r'com\.samsung\.android\.smartsuggestions\.feature\.aisuggestion\.ui\.appwidget\.AiSuggestionAppWidgetReceiver")'
)
new, count = pattern.subn(r'\g<1>true\g<2>', text, count=1)
if count != 1:
    raise SystemExit(f"expected one Now Brief receiver, patched {count}")
path.write_text(new)
PY
}

_EXYNOS9810_FINAL_VERIFY_ENFORCING_BOOT_STATE()
{
    local CIL="$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
    local INIT="$WORK_DIR/vendor/etc/init/init.baseband.rc"
    local RULE

    LOG "- Verifying final Exynos9810 enforcing boot state"

    [ -f "$CIL" ] || {
        LOGE "Final Exynos9810 vendor SELinux policy is missing"
        return 1
    }

    for RULE in \
        '(allow vendor_init radio_prop (file (read open getattr)))' \
        '(allow vendor_init vold_prop (property_service (set)))' \
        '(allow mobicore mobicore_prop (property_service (set)))' \
        '(allow system_server hal_graphics_composer_service (service_manager (find)))' \
        '(allow system_server sysfs_sec (file (open write getattr)))' \
        '(allow samsungpowersoundplay audio_service (service_manager (find)))'; do
        grep -qF "$RULE" "$CIL" || {
            LOGE "Final Exynos9810 SELinux policy is missing: $RULE"
            return 1
        }
    done

    [ -f "$INIT" ] || {
        LOGE "Final Exynos9810 baseband init file is missing"
        return 1
    }
    grep -q '^on property:ro\.vendor\.multisim\.simslotcount=' "$INIT" || {
        LOGE "Final Exynos9810 baseband init lacks an exported SIM trigger"
        return 1
    }
    if grep -q '^on property:ro\.multisim\.simslotcount=' "$INIT"; then
        LOGE "Final Exynos9810 baseband init uses an enforcing-blocked SIM trigger"
        return 1
    fi

    if find "$WORK_DIR" -path '*/odm/etc/selinux/precompiled_sepolicy*' -type f | grep -q .; then
        LOGE "Stale ODM precompiled SELinux policy remains in the final workdir"
        return 1
    fi
}


_EXYNOS9810_FINAL_REPATCH_APPS
_EXYNOS9810_FINAL_RESTORE_LEGACY_RADIO_STACK
_EXYNOS9810_FINAL_RESTORE_RADIO_VINTF
_EXYNOS9810_FINAL_APPLY_TESTED_RADIO_RESTORE_V5
_EXYNOS9810_FINAL_KEEP_STORE_UPDATABLE_APPS_SIGNED
_EXYNOS9810_FINAL_DEBLOAT
_EXYNOS9810_FINAL_VERIFY_SAMSUNG_CLOUD_ABSENT
_EXYNOS9810_FINAL_RESTORE_BOOT_PARITY_OVERLAYS
_EXYNOS9810_FINAL_RESTORE_DAAGENT
_EXYNOS9810_FINAL_RESTORE_FEATURE_APPS
_EXYNOS9810_FINAL_DISABLE_UNSUPPORTED_ESIM
_EXYNOS9810_FINAL_PATCH_SECURE_FOLDER_DESKTOP_MODE
_EXYNOS9810_FINAL_RESTORE_CLOCK_STRUCTURE
_EXYNOS9810_FINAL_SET_HOME_LAYOUT
_EXYNOS9810_FINAL_STAGE_LAUNCHER_DEFAULTS
_EXYNOS9810_FINAL_ENABLE_NOW_BRIEF_WIDGET
_EXYNOS9810_FINAL_PRUNE_LAUNCHER_DEBLOATED_FAVORITES
_EXYNOS9810_FINAL_RAM_TWEAKS
_EXYNOS9810_FINAL_ENSURE_DISPLAY_PROPS
_EXYNOS9810_FINAL_RESTORE_DOLBY_ATMOS_STACK
_EXYNOS9810_FINAL_RESTORE_TARGET_AUDIO_STACK
_EXYNOS9810_FINAL_RESTORE_RAMPLUS_FILES
_EXYNOS9810_FINAL_RESTORE_EMBEDDED_REMOTEDISPLAY
_EXYNOS9810_FINAL_RESTORE_EMBEDDED_SENSORS
_EXYNOS9810_FINAL_RESTORE_TARGET_CAMERA_STACK
_EXYNOS9810_FINAL_PATCH_CAMERA_FRONT_DYNAMIC_FOV
_EXYNOS9810_FINAL_TUNE_AUDIO_VOLUME_CURVES
_EXYNOS9810_FINAL_STAGE_KERNELSU_NEXT
_EXYNOS9810_FINAL_ADD_VISUAL_CLOUD_CORE
_EXYNOS9810_FINAL_VERIFY_PHOTO_EDITOR_STACK
_EXYNOS9810_FINAL_ENABLE_SIM_VARIANT_ACCEPTANCE
_EXYNOS9810_FINAL_ADD_VIBRATOR_AIDL_HAL
_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN
_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL
_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_SYSFS_BRIDGE
_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_BLE_PROTOCOL
_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_RECOVERY
_EXYNOS9810_FINAL_PATCH_CAMERA_LLS_SINGLE_FRAME
_EXYNOS9810_FINAL_PATCH_CAMERA_PORTRAIT_RESUME
_EXYNOS9810_FINAL_PATCH_CAMERA_REPROCESSING_RECOVERY
_EXYNOS9810_FINAL_PATCH_CAMERA_QR_POPUP_CRASH
_EXYNOS9810_FINAL_PATCH_CAMERA_SEAMLESS_ZOOM_GUARD
_EXYNOS9810_FINAL_FIX_BIXBY_KEYLAYOUT
_EXYNOS9810_FINAL_FIX_WALLPAPER_OBJECTCAPTURE
_EXYNOS9810_FINAL_FIX_SNAP_IMAGETAGGER_MODEL_PAIR
_EXYNOS9810_FINAL_PATCH_ONEUI8_IPSERVICE
_EXYNOS9810_FINAL_PATCH_PERSONALIZATION_DATABASE_KEYS
_EXYNOS9810_FINAL_PORT_N770_MOTION_PHOTO
_EXYNOS9810_FINAL_FORCE_S3NRN82_NFC
_EXYNOS9810_FINAL_PIN_QUICK_SHARE_STACK
_EXYNOS9810_FINAL_VERIFY_SHARING_STACK
_EXYNOS9810_FINAL_VERIFY_WALLPAPER_AND_BRIEF_STACK
_EXYNOS9810_FINAL_VERIFY_WEATHER_PAYLOAD
_EXYNOS9810_FINAL_VERIFY_RAM_PROFILE
_EXYNOS9810_FINAL_ENABLE_EXTRA_BRIGHTNESS
_EXYNOS9810_FINAL_SET_BRIGHTNESS_PROFILE
_EXYNOS9810_FINAL_ENABLE_REPORTED_FEATURES
_EXYNOS9810_FINAL_CLEAN_GRAPHICS_STATE || return 1
_EXYNOS9810_FINAL_APPLY_EMBEDDED_SEPOLICY || return 1
_EXYNOS9810_FINAL_ENSURE_TARGET_IDENTITY
_EXYNOS9810_FINAL_VERIFY_ENFORCING_BOOT_STATE || return 1
_EXYNOS9810_FINAL_REMOVE_STALE_SYSTEM_BOOT_DEBUG
_EXYNOS9810_FINAL_RESTORE_BASE_MDF_STACK || return 1
_EXYNOS9810_FINAL_VERIFY_REPORTED_BUG_FIXES
