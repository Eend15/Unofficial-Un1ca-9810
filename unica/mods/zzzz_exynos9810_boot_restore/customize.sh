SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_ALLOW_EXTERNAL_DONOR="${EXYNOS9810_ALLOW_EXTERNAL_DONOR:-false}"
EXYNOS9810_METADATA_DIR="$SRC_DIR/platform/exynos9810/metadata"
EXYNOS9810_EMBEDDED_PORT_DIR="$SRC_DIR/unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port"
EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-}"
EXYNOS9810_HAS_DONOR=false
EXYNOS9810_SOFTWARE_KEYMASTER4_DIR="$SRC_DIR/unica/patches/exynos9810_device_stack/keymaster4/vendor"
EXYNOS9810_USED_VENDOR_METADATA_SNAPSHOT=false
EXYNOS9810_USED_ODM_METADATA_SNAPSHOT=false

if [ "$EXYNOS9810_ALLOW_EXTERNAL_DONOR" = "true" ] && \
   [ -n "$EXYNOS9810_LEGACY_PORT_DIR" ] && \
   [ -d "$EXYNOS9810_LEGACY_PORT_DIR/vendor" ]; then
    EXYNOS9810_HAS_DONOR=true
    LOG "Using explicitly selected Exynos9810 donor overlay"
else
    EXYNOS9810_LEGACY_PORT_DIR="$EXYNOS9810_EMBEDDED_PORT_DIR"
    if [ -d "$EXYNOS9810_LEGACY_PORT_DIR/vendor" ]; then
        EXYNOS9810_HAS_DONOR=true
        LOG "- Using repository-embedded Exynos9810 boot baseline"
    else
        EXYNOS9810_LEGACY_PORT_DIR=""
        LOGW "Embedded Exynos9810 boot baseline is missing; donor-dependent restores are disabled"
    fi
fi
EXYNOS9810_DEVICE_VENDOR_DIR="$EXYNOS9810_LEGACY_PORT_DIR/device_port/device"
EXYNOS9810_LEGACY_KEYMASTER_VENDOR_DIR="$EXYNOS9810_EMBEDDED_PORT_DIR/device_port/device/common/vendor"

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

_EXYNOS9810_SET_METADATA_SAFE()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local USER="$3"
    local GROUP="$4"
    local MODE="$5"
    local LABEL="$6"
    local PATTERN

    while [[ "${ENTRY:0:1}" == "/" ]]; do
        ENTRY="${ENTRY:1}"
    done
    [ "$PARTITION" != "system" ] && [[ "$ENTRY" != "$PARTITION/"* ]] && ENTRY="$PARTITION/$ENTRY"

    LOG "- Adding metadata for /$ENTRY (uid:$USER gid:$GROUP mode:$MODE selabel:$LABEL)"

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"
    PATTERN="/$(_HANDLE_SPECIAL_CHARS "$ENTRY")"

    awk -v entry="$ENTRY" '$1 != entry { print }' \
        "$WORK_DIR/configs/fs_config-$PARTITION" > "$WORK_DIR/configs/fs_config-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"
    echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$WORK_DIR/configs/fs_config-$PARTITION"

    awk -v pattern="$PATTERN" '$1 != pattern { print }' \
        "$WORK_DIR/configs/file_context-$PARTITION" > "$WORK_DIR/configs/file_context-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/file_context-$PARTITION.tmp" "$WORK_DIR/configs/file_context-$PARTITION"
    echo "$PATTERN $LABEL" >> "$WORK_DIR/configs/file_context-$PARTITION"
}

_EXYNOS9810_SET_FS_CONFIG_SAFE()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local USER="$3"
    local GROUP="$4"
    local MODE="$5"

    while [[ "${ENTRY:0:1}" == "/" ]]; do
        ENTRY="${ENTRY:1}"
    done
    [ "$PARTITION" != "system" ] && [[ "$ENTRY" != "$PARTITION/"* ]] && ENTRY="$PARTITION/$ENTRY"

    LOG "- Adding fs_config for /$ENTRY (uid:$USER gid:$GROUP mode:$MODE)"

    touch "$WORK_DIR/configs/fs_config-$PARTITION"
    awk -v entry="$ENTRY" '$1 != entry { print }' \
        "$WORK_DIR/configs/fs_config-$PARTITION" > "$WORK_DIR/configs/fs_config-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"
    echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$WORK_DIR/configs/fs_config-$PARTITION"
}

_EXYNOS9810_DEFAULT_MODE()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local SOURCE="$3"

    if [ -d "$SOURCE" ]; then
        echo 755
        return 0
    fi

    case "$ENTRY" in
        "$PARTITION/bin/"*|"$PARTITION/bin")
            echo 755
            ;;
        "$PARTITION/xbin/"*|"$PARTITION/xbin")
            echo 755
            ;;
        *)
            echo 644
            ;;
    esac
}

_EXYNOS9810_DEDUP_METADATA()
{
    local PARTITION="$1"
    local FILE

    for FILE in "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"; do
        [ -f "$FILE" ] || continue
        awk '{ if (!($1 in order)) keys[++n] = $1; order[$1] = $0 } END { for (i = 1; i <= n; i++) print order[keys[i]] }' "$FILE" > "$FILE.tmp"
        mv -f "$FILE.tmp" "$FILE"
    done
}

_EXYNOS9810_SANITIZE_METADATA()
{
    local PARTITION="$1"
    local DEFAULT_LABEL="$2"

    [ -f "$WORK_DIR/configs/fs_config-$PARTITION" ] && \
        awk 'NF >= 5 && $1 !~ /^[0-9]+$/ { print }' "$WORK_DIR/configs/fs_config-$PARTITION" \
            > "$WORK_DIR/configs/fs_config-$PARTITION.tmp" && \
        mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"

    [ -f "$WORK_DIR/configs/file_context-$PARTITION" ] && \
        awk -v label="$DEFAULT_LABEL" 'NF == 1 { print $1 " " label; next } NF >= 2 { print }' \
            "$WORK_DIR/configs/file_context-$PARTITION" \
            > "$WORK_DIR/configs/file_context-$PARTITION.tmp" && \
            mv -f "$WORK_DIR/configs/file_context-$PARTITION.tmp" "$WORK_DIR/configs/file_context-$PARTITION"
}

_EXYNOS9810_RESTORE_METADATA_SNAPSHOT()
{
    local PARTITION="$1"
    local FS_CONFIG="$EXYNOS9810_METADATA_DIR/known_good_fs_config-$PARTITION"
    local FILE_CONTEXT="$EXYNOS9810_METADATA_DIR/known_good_file_context-$PARTITION"

    if [ ! -s "$FS_CONFIG" ] || [ ! -s "$FILE_CONTEXT" ]; then
        return 1
    fi

    LOG "- Restoring known-booting /$PARTITION fs_config and file_context metadata"
    cp -f "$FS_CONFIG" "$WORK_DIR/configs/fs_config-$PARTITION"
    cp -f "$FILE_CONTEXT" "$WORK_DIR/configs/file_context-$PARTITION"

    case "$PARTITION" in
        "vendor")
            EXYNOS9810_USED_VENDOR_METADATA_SNAPSHOT=true
            ;;
        "odm")
            EXYNOS9810_USED_ODM_METADATA_SNAPSHOT=true
            ;;
    esac
}

_EXYNOS9810_ENSURE_TREE_METADATA()
{
    local PARTITION="$1"
    local ROOT="$2"
    local DEFAULT_LABEL="$3"
    local DEFAULT_USER="${4:-0}"
    local DEFAULT_GROUP="${5:-0}"
    local FS_CONFIG="$WORK_DIR/configs/fs_config-$PARTITION"
    local FILE_CONTEXT="$WORK_DIR/configs/file_context-$PARTITION"
    local ENTRY
    local MODE
    local USER
    local GROUP
    local LABEL
    local PATTERN

    touch "$FS_CONFIG" "$FILE_CONTEXT"

    while IFS= read -r -d '' ENTRY; do
        ENTRY="${ENTRY#$ROOT/}"
        [ "$ENTRY" ] || continue
        [ "$PARTITION" != "system" ] && [[ "$ENTRY" != "$PARTITION/"* ]] && ENTRY="$PARTITION/$ENTRY"

        if ! grep -q -F "$ENTRY " "$FS_CONFIG" 2> /dev/null; then
            MODE="$(_EXYNOS9810_DEFAULT_MODE "$PARTITION" "$ENTRY" "$ROOT/${ENTRY#$PARTITION/}")"
            USER="$DEFAULT_USER"
            GROUP="$DEFAULT_GROUP"
            if [ -d "$ROOT/${ENTRY#$PARTITION/}" ] && [ "$PARTITION" = "vendor" ]; then
                GROUP=2000
            fi
            echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$FS_CONFIG"
        fi

        PATTERN="$(_HANDLE_SPECIAL_CHARS "$ENTRY")"
        if ! grep -q -F "/$PATTERN " "$FILE_CONTEXT" 2> /dev/null; then
            LABEL="$(_GET_SELINUX_LABEL "$PARTITION" "/$ENTRY" 2> /dev/null || true)"
            [ "$LABEL" ] || LABEL="$DEFAULT_LABEL"
            echo "/$PATTERN $LABEL" >> "$FILE_CONTEXT"
        fi
    done < <(find "$ROOT" -mindepth 1 -print0)
}

_EXYNOS9810_RESTORE_VENDOR_BASELINE()
{
    LOG "- Restoring final known-booting Exynos9810 vendor baseline"

    rm -rf "$WORK_DIR/vendor"
    mkdir -p "$WORK_DIR/vendor"
    cp -a "$EXYNOS9810_LEGACY_PORT_DIR/vendor"/. "$WORK_DIR/vendor"/

    # The proven 9810 vendor is layered. The generic VNDK33 donor vendor alone
    # is not boot-complete: Trustonic/mcRegistry, legacy sensor/keymaster bits
    # and the physical device HALs live under device_port. A previous cleanup
    # rebuilt vendor from only the generic tree, producing a much smaller image
    # that bootlooped before Android could return useful logs.
    if [ -d "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/vendor" ]; then
        LOG "- Applying common Exynos9810 vendor boot overlay"
        cp -a "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/vendor"/. \
            "$WORK_DIR/vendor"/ || return 1
    fi
    if [ -d "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/star2lte/vendor" ]; then
        LOG "- Applying proven star2lte Exynos9810 vendor boot overlay"
        cp -a "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/star2lte/vendor"/. \
            "$WORK_DIR/vendor"/ || return 1
    fi

    _EXYNOS9810_RESTORE_METADATA_SNAPSHOT "vendor" || \
        _EXYNOS9810_ENSURE_TREE_METADATA "vendor" "$WORK_DIR/vendor" "u:object_r:vendor_file:s0" 0 0

    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/fstab.samsungexynos9810" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/fstab.exynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/hw" 0 0 755 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/hw/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/vintf/manifest/android.hardware.health@2.1-samsung.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/android.hardware.keymaster@3.0-service.rc" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/vendor.samsung.hardware.camera.provider@4.0-service.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/unica_exynos9810_trace.rc" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/selinux" 0 2000 755 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/selinux/vendor_file_contexts" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/fs_config_dirs" 0 0 444 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/fs_config_files" 0 0 444 "u:object_r:vendor_file:s0"

    if [ -f "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" ] && \
       [ ! -f "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc" ]; then
        mkdir -p "$WORK_DIR/vendor/etc/init/hw"
        cp -pf "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" \
            "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"
    fi
}

_EXYNOS9810_APPLY_TARGET_VENDOR_DELTA()
{
    local REFERENCE_VENDOR="$EXYNOS9810_DEVICE_VENDOR_DIR/star2lte/vendor"
    local TARGET_VENDOR="$EXYNOS9810_DEVICE_VENDOR_DIR/$TARGET_CODENAME/vendor"
    local ENTRY
    local REL
    local REMOVED=0
    local COPIED=0

    if [ "$EXYNOS9810_HAS_DONOR" != true ]; then
        LOG "- Keeping repository-built Exynos9810 target vendor; no external donor overlay"
        return 0
    fi

    case "$TARGET_CODENAME" in
        star2lte)
            # The restored VNDK33 tree is the exact baseline proven on the S9+.
            # Do not replace any of its hardware blobs with the older donor
            # overlay: several camera/audio libraries intentionally differ.
            LOG "- Keeping the proven star2lte Note10 Lite/VNDK33 vendor"
            return 0
            ;;
        starlte|crownlte)
            ;;
        *)
            LOGE "Unsupported Exynos9810 vendor target: $TARGET_CODENAME"
            return 1
            ;;
    esac

    if [ ! -d "$REFERENCE_VENDOR" ]; then
        LOGE "Required star2lte vendor reference is missing: $REFERENCE_VENDOR"
        return 1
    fi
    if [ ! -d "$TARGET_VENDOR" ]; then
        LOGE "Required $TARGET_CODENAME vendor hardware overlay is missing: $TARGET_VENDOR"
        return 1
    fi

    LOG "- Converting the proven VNDK33 vendor hardware layer to $TARGET_CODENAME"

    # The booting baseline already contains the star2lte hardware layer. Remove
    # only entries that came from that layer and do not exist for the selected
    # target. This is important for starlte (single rear camera) and crownlte
    # (different dual-camera, audio and NFC blobs), while leaving the generic
    # Note10 Lite VNDK33 services, manifests and compatibility libraries intact.
    while IFS= read -r -d '' ENTRY; do
        REL="${ENTRY#$REFERENCE_VENDOR/}"
        if [ -e "$TARGET_VENDOR/$REL" ] || [ -L "$TARGET_VENDOR/$REL" ]; then
            continue
        fi

        rm -f "$WORK_DIR/vendor/$REL"
        _EXYNOS9810_DELETE_METADATA "vendor" "vendor/$REL" "/vendor/$REL"
        REMOVED=$((REMOVED + 1))
    done < <(find "$REFERENCE_VENDOR" \( -type f -o -type l \) -print0)

    # These are the original device-matched Exynos9810 hardware blobs: camera
    # HAL/setfiles/OIS, audio DSP+mixer, sensors, NFC, TEE and the vendor RRO.
    # They are an overlay, not a replacement vendor, so ro.vndk.version=33 and
    # the known-booting Note10 Lite vendor core stay unchanged.
    cp -a "$TARGET_VENDOR"/. "$WORK_DIR/vendor"/ || {
        LOGE "Failed to apply the $TARGET_CODENAME vendor hardware overlay"
        return 1
    }

    _EXYNOS9810_ENSURE_TREE_METADATA \
        "vendor" "$TARGET_VENDOR" "u:object_r:vendor_file:s0" 0 0

    # Fail the build instead of silently packaging a mixed-device vendor.
    while IFS= read -r -d '' ENTRY; do
        REL="${ENTRY#$TARGET_VENDOR/}"
        if [ -L "$ENTRY" ]; then
            if [ ! -L "$WORK_DIR/vendor/$REL" ] || \
                    [ "$(readlink "$ENTRY")" != "$(readlink "$WORK_DIR/vendor/$REL")" ]; then
                LOGE "Vendor symlink verification failed for $TARGET_CODENAME: $REL"
                return 1
            fi
        elif ! cmp -s "$ENTRY" "$WORK_DIR/vendor/$REL"; then
            LOGE "Vendor blob verification failed for $TARGET_CODENAME: $REL"
            return 1
        fi
        COPIED=$((COPIED + 1))
    done < <(find "$TARGET_VENDOR" \( -type f -o -type l \) -print0)

    LOG "  - Verified $COPIED target blobs; removed $REMOVED star2lte-only blobs"
}

_EXYNOS9810_SET_BUILD_PROP()
{
    local FILE="$1"
    local PROP="$2"
    local VALUE="$3"

    [ -f "$FILE" ] || return 0
    sed -i "/^$PROP=/d" "$FILE"
    echo "$PROP=$VALUE" >> "$FILE"
}

_EXYNOS9810_DELETE_BUILD_PROP()
{
    local FILE="$1"
    local PROP="$2"

    [ -f "$FILE" ] || return 0
    sed -i "/^$PROP=/d" "$FILE"
}

_EXYNOS9810_APPLY_TARGET_VENDOR_IDENTITY()
{
    local MODEL
    local NAME
    local STOCK_INCREMENTAL
    local FIRST_API
    local FILE_SPEC
    local FILE
    local PREFIX
    local FINGERPRINT

    case "$TARGET_CODENAME" in
        star2lte)
            # The baseline already carries the proven G965F identity.
            return 0
            ;;
        starlte)
            MODEL="SM-G960F"
            NAME="starltexx"
            STOCK_INCREMENTAL="G960FXXUHFVG4"
            FIRST_API=26
            ;;
        crownlte)
            MODEL="SM-N960F"
            NAME="crownltexx"
            STOCK_INCREMENTAL="N960FXXUHFVG4"
            FIRST_API=27
            ;;
        *)
            LOGE "Unsupported Exynos9810 vendor identity target: $TARGET_CODENAME"
            return 1
            ;;
    esac

    LOG "- Applying final $TARGET_CODENAME identity to vendor, vendor_dlkm, odm_dlkm and ODM"
    FINGERPRINT="samsung/$NAME/$TARGET_CODENAME:10/QP1A.190711.020/$STOCK_INCREMENTAL:user/release-keys"

    for FILE_SPEC in \
        "$WORK_DIR/vendor/build.prop:vendor" \
        "$WORK_DIR/vendor/vendor_dlkm/etc/build.prop:vendor_dlkm" \
        "$WORK_DIR/vendor/odm_dlkm/etc/build.prop:odm_dlkm" \
        "$WORK_DIR/odm/etc/build.prop:odm"; do
        PREFIX="${FILE_SPEC##*:}"
        FILE="${FILE_SPEC%:*}"
        [ -f "$FILE" ] || continue

        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.product.$PREFIX.brand" "samsung"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.product.$PREFIX.device" "$TARGET_CODENAME"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.product.$PREFIX.manufacturer" "samsung"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.product.$PREFIX.model" "$MODEL"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.product.$PREFIX.name" "$NAME"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.$PREFIX.build.fingerprint" "$FINGERPRINT"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.$PREFIX.build.version.incremental" "$STOCK_INCREMENTAL"
        _EXYNOS9810_SET_BUILD_PROP "$FILE" "ro.factory.model" "$MODEL"
    done

    # Keep the Note10 Lite Android 13/VNDK33 contract that makes this vendor
    # boot against the One UI 8 system. Only the physical-device identity and
    # original shipping API differ between S9/S9+/Note9.
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.product.first_api_level" "$FIRST_API"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.board.first_api_level" "$FIRST_API"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.vendor.build.version.sdk" "33"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.vndk.version" "33"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.vendor.api_level" "33"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.board.api_level" "33"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.product.board" "exynos9810"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.hardware.gralloc" "exynos9810"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.board.platform" "universal9810"
}

_EXYNOS9810_KEEP_SETUP_WIZARD_ENABLED()
{
    local FILE

    LOG "- Keeping Samsung setup wizard enabled after vendor baseline restore"

    for FILE in \
        "$WORK_DIR/system/system/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop"; do
        [ -f "$FILE" ] || continue

        _EXYNOS9810_DELETE_BUILD_PROP "$FILE" "persist.sys.setupwizard"
        _EXYNOS9810_DELETE_BUILD_PROP "$FILE" "persist.sys.setupwizard.user_setup_complete"
        _EXYNOS9810_DELETE_BUILD_PROP "$FILE" "ro.setupwizard.mode"
        _EXYNOS9810_DELETE_BUILD_PROP "$FILE" "setupwizard.feature.enable_quick_start_flow"
    done

    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/system/product/etc/build.prop" \
        "ro.setupwizard.mode" "OPTIONAL"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/system/product/etc/build.prop" \
        "setupwizard.feature.enable_quick_start_flow" "false"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/system/system/product/etc/build.prop" \
        "ro.setupwizard.mode" "OPTIONAL"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/system/system/product/etc/build.prop" \
        "setupwizard.feature.enable_quick_start_flow" "false"
}

_EXYNOS9810_USE_SENSORS_HAL_1_0()
{
    # Put the sensor stack back on the HAL 1.0 service that matches the
    # Exynos9810's own libraries, instead of the 2.0 multihal service.
    #
    # Both vendor bases ship android.hardware.sensors@2.0-service.multihal, but
    # the Exynos9810 sensor libraries are legacy HAL 1.0 modules (they export
    # HAL_MODULE_INFO_SYM, not sensorsHalGetSubHal). multihal finds no sub-HAL
    # entry point and registers nothing, so sensorservice reports "No Sensors on
    # the device" -- no auto brightness, no auto rotation, no proximity.
    #
    # The previous attempt at this (_EXYNOS9810_FIX_SENSOR_SUBHALS) fixed the
    # mismatch from the other end, replacing the libraries with N770F HAL 2.0
    # sub-HALs. Two problems with that:
    #
    #  1. It could not work as written. Platform patches run before mods, and
    #     _EXYNOS9810_APPLY_TARGET_VENDOR_DELTA below copies the device vendor
    #     overlay -- which contains sensors.{sensorhub,bio,grip}.so -- over the
    #     top afterwards, restoring the stock 1.0 libraries every time.
    #  2. Even when force-applied by hand it introduces phantom sensors. The
    #     N770F sub-HAL implements AutoRotation (android.sensor.device_orientation)
    #     and an Auto Brightness Sensor that the Exynos9810 sensorhub MCU
    #     (BCM47752KUB1G, fw BR0122072000) never populates. One UI binds to those
    #     in preference to the working accelerometer and light sensors and then
    #     waits forever. Measured live on star2lte: the kernel tracked a finger
    #     over the light sensor perfectly (sysfs 175 -> 8 -> 175) while
    #     mAmbientLux stayed pinned at 25.0, and AutoRotation sat at
    #     active-count=2 with 0 events across a HAL restart and repeated physical
    #     rotations.
    #
    # Going to 1.0 keeps the device's own libraries, so no phantom sensors exist,
    # and it also keeps sensors.bio.so (HRM), which the N770F hals.conf drops.
    # This is the tested legacy Exynos9810 configuration, where rotation works.
    #
    # Allowed by VINTF: the vendor declares ro.board.api_level=33, and
    # compatibility_matrix.7.xml (Android 13) lists android.hardware.sensors
    # <version>1.0</version>. Only matrix 8+ requires AIDL v2.
    #
    # The legacy vendor already carries lib{,64}/hw/android.hardware.sensors@1.0-impl.so
    # and etc/sensors/hals.conf; only the service binary and its init entry are
    # missing, and those come from the target's own stock firmware.
    # TARGET_FIRMWARE is MODEL/CSC/IMEI; the extracted tree is MODEL_CSC.
    local FW_VENDOR
    FW_VENDOR="$FW_DIR/$(cut -d "/" -f 1 -s <<< "$TARGET_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$TARGET_FIRMWARE")/vendor"
    local MISSING=false
    local F

    LOG "- Switching sensors HAL 2.0 multihal -> 1.0 service"

    for F in "bin/hw/android.hardware.sensors@1.0-service" \
             "etc/init/android.hardware.sensors@1.0-service.rc"; do
        if [ ! -f "$FW_VENDOR/$F" ]; then
            LOGW "Missing $F in target firmware; keeping the 2.0 multihal sensors HAL"
            MISSING=true
        fi
    done
    for F in "lib/hw/android.hardware.sensors@1.0-impl.so" \
             "lib64/hw/android.hardware.sensors@1.0-impl.so" \
             "etc/sensors/hals.conf"; do
        if [ ! -f "$WORK_DIR/vendor/$F" ]; then
            LOGW "Missing vendor/$F; keeping the 2.0 multihal sensors HAL"
            MISSING=true
        fi
    done
    $MISSING && return 0

    # Service binary + init entry (service vendor.sensors-hal-1-0, class hal).
    install -D -m 755 "$FW_VENDOR/bin/hw/android.hardware.sensors@1.0-service" \
        "$WORK_DIR/vendor/bin/hw/android.hardware.sensors@1.0-service" || return 1
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/android.hardware.sensors@1.0-service" \
        0 2000 755 "u:object_r:hal_sensors_default_exec:s0"

    install -D -m 644 "$FW_VENDOR/etc/init/android.hardware.sensors@1.0-service.rc" \
        "$WORK_DIR/vendor/etc/init/android.hardware.sensors@1.0-service.rc" || return 1
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/android.hardware.sensors@1.0-service.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"

    # Retire the 2.0 multihal service, its init entry and its VINTF fragment.
    for F in "bin/hw/android.hardware.sensors@2.0-service.multihal" \
             "etc/init/android.hardware.sensors@2.0-service-multihal.rc" \
             "etc/vintf/manifest/android.hardware.sensors@2.0-multihal.xml"; do
        if [ -e "$WORK_DIR/vendor/$F" ]; then
            rm -f "$WORK_DIR/vendor/$F"
            _EXYNOS9810_DELETE_METADATA "vendor" "vendor/$F" "/vendor/$F"
        fi
    done

    # Declare 1.0 in its place, matching the stock manifest entry verbatim.
    cat > "$WORK_DIR/vendor/etc/vintf/manifest/android.hardware.sensors@1.0.xml" <<'EOF'
<manifest version="1.0" type="device">
    <hal format="hidl">
        <name>android.hardware.sensors</name>
        <transport>hwbinder</transport>
        <version>1.0</version>
        <interface>
            <name>ISensors</name>
            <instance>default</instance>
        </interface>
        <fqname>@1.0::ISensors/default</fqname>
    </hal>
</manifest>
EOF
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/vintf/manifest/android.hardware.sensors@1.0.xml" \
        0 0 644 "u:object_r:vendor_configs_file:s0"

    return 0
}

_EXYNOS9810_PATCH_FINAL_VENDOR_BOOT_COMPAT()
{
    local RC

    LOG "- Applying final Exynos9810 vendor boot compat"

    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.vendor.build.security_patch" "2026-05-05"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.hardware.keystore" "mdfpp"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.security.keystore.keytype" "sak"
    sed -i '/^ro.hardware.keystore_desede=/d' "$WORK_DIR/vendor/build.prop" 2> /dev/null || true

    # Keep the donor's single, internally consistent LMKD/DHA profile. Do not
    # add target-specific cache limits or a second boot-time VM tuning service:
    # the 12-Aug dump showed those layers causing zram thrashing and startup
    # ANRs across unrelated system apps. Android's defaults remain in control.

    RC="$WORK_DIR/vendor/etc/init/android.hardware.keymaster@3.0-service.rc"
    if [ -f "$RC" ] && ! grep -q 'interface android.hardware.keymaster@3.0::IKeymasterDevice default' "$RC"; then
        awk '
            {
                print
                if ($0 ~ /^service vendor\.keymaster-3-0 /) {
                    print "    interface android.hardware.keymaster@3.0::IKeymasterDevice default"
                }
            }
        ' "$RC" > "$RC.tmp" && mv "$RC.tmp" "$RC"
    fi

    RC="$WORK_DIR/vendor/etc/init/android.hardware.health@2.1-service-samsung.rc"
    if [ -f "$RC" ] && ! grep -q 'interface android.hardware.health@2.1::IHealth default' "$RC"; then
        awk '
            {
                print
                if ($0 ~ /^service health-hal-2-1-samsung /) {
                    print "    interface android.hardware.health@2.1::IHealth default"
                }
            }
        ' "$RC" > "$RC.tmp" && mv "$RC.tmp" "$RC"
    fi
    if [ -f "$RC" ] && ! grep -q 'interface android.hardware.health@2.0::IHealth default' "$RC"; then
        awk '
            {
                print
                if ($0 ~ /^service health-hal-2-1-samsung /) {
                    print "    interface android.hardware.health@2.0::IHealth default"
                }
            }
        ' "$RC" > "$RC.tmp" && mv "$RC.tmp" "$RC"
    fi

    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/android.hardware.keymaster@3.0-service.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/android.hardware.health@2.1-service-samsung.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/android.hardware.keymaster@3.0-service" 0 0 755 "u:object_r:hal_keymaster_default_exec:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/android.hardware.keymaster@4.0-service" 0 0 755 "u:object_r:hal_keymaster_default_exec:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/android.hardware.gatekeeper@1.0-service" 0 0 755 "u:object_r:hal_gatekeeper_default_exec:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/android.hardware.health@2.1-service-samsung" 0 0 755 "u:object_r:hal_health_default_exec:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/secril_config_svc" 0 2000 755 "u:object_r:vendor_secril_config_svc_exec:s0"

    # lhd is the BCM4775 loader daemon: it downloads the firmware the sensorhub
    # MCU runs. init refuses to start a service whose binary carries no domain
    # transition, so with the generic vendor_file label it never runs, the MCU
    # never boots, and every sensor reads zero behind an otherwise healthy HAL
    # ("[SSPBBD]: ssp_down == true" in dmesg). That kills auto rotation and auto
    # brightness. gpsd survives the same mislabel only because its init entry
    # names a seclabel explicitly; label it correctly regardless.
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/lhd" 0 0 755 "u:object_r:lhd_exec:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/bin/hw/gpsd" 0 0 755 "u:object_r:gpsd_exec:s0"
}

_EXYNOS9810_APPLY_SUPPLEMENTARY_SEPOLICY()
{
    # Missing SELinux allow rules for this legacy exynos9810 vendor.
    #
    # These MUST be applied here, AFTER _EXYNOS9810_RESTORE_VENDOR_BASELINE
    # has wiped and re-copied a pristine vendor tree. The upstream
    # unica/patches/selinux/customize.sh runs much earlier in the module
    # pipeline, so anything it appends to vendor_sepolicy.cil gets thrown
    # away by the "rm -rf $WORK_DIR/vendor" in the vendor baseline restore.
    # Re-appending here is the only place the rules survive into vendor.img.
    #
    # This device compiles sepolicy fresh from these .cil files at every
    # boot (no precompiled_sepolicy blob), so appended CIL allow-rules take
    # effect on next boot. The boot-critical rules are the vendor_init
    # property_service sets: this legacy vendor's init.rc sets properties
    # like ro.crypto.state directly from vendor_init, which the donor's
    # platform/system_ext sepolicy never granted. Under permissive these
    # are logged-but-allowed; under real enforcing they block, and a blocked
    # ro.crypto.state set stalls whatever init.rc trigger waits on it,
    # hanging boot at the splash screen. The remaining rules are later-boot
    # service_manager lookups / prop sets for optional features that only
    # fail their feature rather than blocking boot, included for completeness.
    #
    # Rule list captured by booting under the permissive kernel and diffing
    # "avc: denied" tuples from logcat -b kernel against the loaded policy.
    local CIL="$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
    local RULE
    local SUPPLEMENTARY_RULES="
(typepermissive surfaceflinger)
(typepermissive cameraserver)
(typepermissive mediaswcodec)
(typepermissive hal_graphics_allocator_default)
(typepermissive hal_graphics_composer_default)
(typepermissive vendor_init)
(allow vendor_init bootloader_prop (property_service (set)))
(allow vendor_init build_prop (property_service (set)))
(allow vendor_init config_prop (property_service (set)))
(allow vendor_init default_prop (property_service (set)))
(allow vendor_init property_socket (sock_file (write)))
(allow vendor_init init (unix_stream_socket (connectto)))
(allow vendor_init net_dns_prop (property_service (set)))
(allow vendor_init shell_prop (property_service (set)))
(allow vendor_init userdebug_or_eng_prop (property_service (set)))
(allow vendor_init vold_prop (property_service (set)))
(allow vendor_init vold_status_prop (property_service (set)))
(allow vendor_init wifi_prop (property_service (set)))
(allow vendor_init mobicore_prop (file (read open getattr)))
(allow vendor_init radio_prop (file (read open getattr)))
(allow vendor_init init_service_status_private_prop (file (read open getattr)))
(allow vendor_init radio_prop (property_service (set)))
(allow vendor_init telephony_prop (property_service (set)))
(allow mobicore mobicore_prop (property_service (set)))
(allow nfc default_android_service (service_manager (find)))
(allow hwservicemanager vendor_configs_file (dir (search read open getattr)))
(allow hwservicemanager vendor_configs_file (file (read open getattr map)))
(allow hwservicemanager vendor_apex_file (dir (search getattr)))
(allow hwservicemanager vendor_file (dir (search getattr)))
(allow servicemanager vendor_configs_file (dir (search read open getattr)))
(allow servicemanager vendor_configs_file (file (read open getattr map)))
(allow servicemanager vendor_apex_file (dir (search getattr)))
(allow servicemanager vendor_file (dir (search getattr)))
(allow audioserver vendor_configs_file (dir (search read open getattr)))
(allow audioserver vendor_configs_file (file (read open getattr map)))
(typeattributeset same_process_hal_file_33_0 (same_process_hal_file))
(typeattributeset hal_graphics_mapper_hwservice_33_0 (hal_graphics_mapper_hwservice))
(typeattributeset hal_graphics_allocator_hwservice_33_0 (hal_graphics_allocator_hwservice))
(allow domain same_process_hal_file (dir (ioctl read getattr lock open search)))
(allow domain same_process_hal_file (file (read getattr map execute open)))
(allow platform_app hal_graphics_mapper_hwservice (hwservice_manager (find)))
(allow platform_app hal_graphics_allocator_hwservice (hwservice_manager (find)))
(allow cameraserver hal_graphics_mapper_hwservice (hwservice_manager (find)))
(allow cameraserver hal_graphics_allocator_hwservice (hwservice_manager (find)))
(allow mediaswcodec hal_graphics_mapper_hwservice (hwservice_manager (find)))
(allow mediaswcodec hal_graphics_allocator_hwservice (hwservice_manager (find)))
(allow surfaceflinger_33_0 same_process_hal_file_33_0 (dir (ioctl read getattr lock open search)))
(allow surfaceflinger_33_0 same_process_hal_file_33_0 (file (ioctl read getattr lock map execute open)))
(allow cameraserver_33_0 same_process_hal_file_33_0 (dir (ioctl read getattr lock open search)))
(allow cameraserver_33_0 same_process_hal_file_33_0 (file (ioctl read getattr lock map execute open)))
(allow mediaswcodec_33_0 same_process_hal_file_33_0 (dir (ioctl read getattr lock open search)))
(allow mediaswcodec_33_0 same_process_hal_file_33_0 (file (ioctl read getattr lock map execute open)))
(allow surfaceflinger_33_0 graphics_config_writable_prop (file (read getattr map open)))
(allow cameraserver_33_0 hal_graphics_mapper_hwservice_33_0 (hwservice_manager (find)))
(allow cameraserver_33_0 hal_graphics_allocator_hwservice_33_0 (hwservice_manager (find)))
(allow mediaswcodec_33_0 hal_graphics_mapper_hwservice_33_0 (hwservice_manager (find)))
(allow mediaswcodec_33_0 hal_graphics_allocator_hwservice_33_0 (hwservice_manager (find)))
(allow priv_app log_tag_prop (property_service (set)))
(allow priv_app sqlite_log_prop (property_service (set)))
(allow samsungpowersoundplay audio_service (service_manager (find)))
(allow system_server default_android_service (service_manager (find)))
(allow system_server hal_graphics_composer_service (service_manager (find)))
(allow system_server sysfs_sec (file (open write getattr)))
(allow teed_app knoxzt_service (service_manager (find)))
(allow mediaserver media_quality_service (service_manager (find)))
(allow system_app tracingproxy_service (service_manager (find)))
(allow system_app system_suspend_control_service (service_manager (find)))
(allow system_app system_suspend_control_internal_service (service_manager (find)))
(allow system_app logpersistd_logging_prop (property_service (set)))
(allow hal_audio_default hal_system_suspend_service (service_manager (find)))
"

    if [ ! -f "$CIL" ]; then
        LOGW "Exynos9810 vendor_sepolicy.cil missing; cannot apply supplementary SELinux rules"
        return 0
    fi

    LOG "- Applying supplementary Exynos9810 vendor SELinux allow rules"

    while IFS= read -r RULE; do
        [ "$RULE" ] || continue
        if ! grep -q -F "$RULE" "$CIL"; then
            echo "$RULE" >> "$CIL"
        fi
    done <<< "$SUPPLEMENTARY_RULES"

    # Platform-side typepermissive. Verified by booting the enforcing
    # DS-ACK kernel with these appended to the plat CIL: without them the
    # policy never even loads (broken set caused reboot loops), and the
    # platform_app one is required for launcher/SystemUI to load the vendor
    # Vulkan ICD via the sphal namespace (missing it crash-loops the UI
    # at "Phone is starting..."). bootanim covers the boot animation.
    local PLAT_CIL="$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"
    local PLAT_RULE
    local PLAT_PERMISSIVE_RULES="
(typepermissive init)
(typepermissive ueventd)
(typepermissive apexd)
(typepermissive vold)
(typepermissive logd)
(typepermissive servicemanager)
(typepermissive hwservicemanager)
(typepermissive vndservicemanager)
(typepermissive zygote)
(typepermissive system_server)
(typepermissive su)
(typepermissive platform_app)
(typepermissive bootanim)
(typepermissive adbd)
(allow appdomain vendor_file (dir (read open getattr search)))
(allow appdomain gpu_device (chr_file (open read write ioctl getattr)))
(allow audioserver vendor_file (dir (read open getattr search)))
"

    if [ ! -f "$PLAT_CIL" ]; then
        LOGW "Exynos9810 plat_sepolicy.cil missing; cannot apply supplementary platform SELinux typepermissive"
        return 0
    fi

    LOG "- Applying supplementary Exynos9810 platform SELinux typepermissive"

    while IFS= read -r PLAT_RULE; do
        [ "$PLAT_RULE" ] || continue
        if ! grep -q -F "$PLAT_RULE" "$PLAT_CIL"; then
            echo "$PLAT_RULE" >> "$PLAT_CIL"
        fi
    done <<< "$PLAT_PERMISSIVE_RULES"

    # Precise allow rules derived from the FULL avc: denied set observed on
    # this device (both the permissive-boot ring and enforcing-boot ring).
    # Every tuple the device ever tried and got denied becomes an explicit
    # allow so enforcing behaves like permissive for real workloads.
    local EXTRA_CIL="$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"
    if [ -f "$EXTRA_CIL" ]; then
        # The /apex mount root (vendor_apex_file) is scanned by every EGL/Vulkan
        # loader and many daemons. Ring-buffer eviction hid some early-boot
        # denials (permissioncontroller_app, network_stack, sgdisk, sdcardd), so
        # grant the directory search globally instead of per-domain: a missing
        # search here aborts EGL with "Assertion failed: !gpuCount" and kills
        # apps (PermissionController, GMS, KSU manager). No neverallow blocks it.
        cat >> "$EXTRA_CIL" <<'ENFORCING_ALLOW_RULES_EOF'
(allow domain vendor_apex_file (dir (search)))
(allow aconfigd vendor_apex_file (dir (search)))
(allow aconfigd_mainline vendor_apex_file (dir (search)))
(allow adbd su (process (dyntransition)))
(allow art_boot vendor_apex_file (dir (search)))
(allow at_distributor exported_radio_prop (file (getattr open read)))
(allow at_distributor vendor_apex_file (dir (search)))
(allow atrace vendor_apex_file (dir (search)))
(allow audioserver vendor_apex_file (dir (search)))
(allow audioserver vendor_file (dir (open read)))
(allow auditctl vendor_apex_file (dir (search)))
(allow bootanim vendor_file (dir (open read)))
(allow bootchecker vendor_apex_file (dir (search)))
(allow bootchecker vendor_file (file (getattr open read)))
(allow bootstat vendor_apex_file (dir (search)))
(allow boringssl_self_test vendor_apex_file (dir (search)))
(allow bpfloader vendor_apex_file (dir (search)))
(allow cameraserver vendor_file (dir (open read)))
(allow connfwexe vendor_apex_file (dir (search)))
(allow credstore vendor_apex_file (dir (search)))
(allow ddexe vendor_apex_file (dir (search)))
(allow derive_classpath vendor_apex_file (dir (search)))
(allow derive_sdk vendor_apex_file (dir (search)))
(allow dsms vendor_apex_file (dir (search)))
(allow dumpstate trace_data_file (dir (getattr)))
(allow dumpstate vendor_apex_file (dir (getattr search)))
(allow dumpstate vendor_file (file (read)))
(allow ewlogd vendor_apex_file (dir (search)))
(allow extra_free_kbytes vendor_apex_file (dir (search)))
(allow flags_health_check vendor_apex_file (dir (search)))
(allow fsck fsck (capability (kill)))
(allow fsck sysfs_scsi_host (dir (search)))
(allow fsck sysfs_scsi_host (file (getattr)))
(allow fsck vendor_apex_file (dir (search)))
(allow gatekeeperd vendor_apex_file (dir (search)))
(allow gmscore_app adbd_prop (file (read)))
(allow gmscore_app privapp_data_file (file (ioctl)))
(allow gmscore_app system_adbd_prop (file (read)))
(allow gmscore_app vendor_apex_file (dir (search)))
(allow gpuservice vendor_apex_file (dir (search)))
(allow gsid vendor_apex_file (dir (search)))
(allow hal_allocator_default vendor_apex_file (dir (search)))
(allow hal_wifi_supplicant_default system_file (file (read)))
(allow heatmap_default app_efs_file (dir (search)))
(allow heatmap_default app_efs_file (file (open read write)))
(allow heatmap_default sysfs (dir (open read)))
(allow heatmap_default sysfs (file (open read)))
(allow heatmap_default sysfs_battery (file (open read)))
(allow heatmap_default sysfs_batteryinfo (dir (search)))
(allow heatmap_default vendor_apex_file (dir (search)))
(allow idmap vendor_apex_file (dir (search)))
(allow imsd vendor_apex_file (dir (search)))
(allow incidentd vendor_apex_file (dir (search)))
(allow init efs_file (file (append)))
(allow init proc (dir (add_name)))
(allow init proc (file (create write)))
(allow init su (process (noatsecure rlimitinh siginh transition)))
(allow init sysfs (dir (add_name)))
(allow init sysfs_battery (file (create)))
(allow init sysfs_batteryinfo (dir (add_name)))
(allow init sysfs_fs_f2fs (dir (add_name)))
(allow init sysfs_mmc_host (dir (add_name)))
(allow init sysfs_mmc_host (file (create)))
(allow init sysfs_net (dir (add_name)))
(allow init sysfs_net (file (create)))
(allow init sysfs_scsi_host (dir (add_name)))
(allow init sysfs_scsi_host (file (create)))
(allow installd vendor_apex_file (dir (search)))
(allow installd vendor_file (file (getattr open read)))
(allow insthk vendor_apex_file (dir (search)))
(allow kcmdlinectrl proc_partition (file (getattr open read)))
(allow kcmdlinectrl sysfs_dt_firmware_android (dir (open read)))
(allow kcmdlinectrl sysfs_dt_firmware_android (file (getattr open read)))
(allow kcmdlinectrl sysfs_scsi_host (dir (search)))
(allow kcmdlinectrl sysfs_scsi_host (file (getattr open read)))
(allow kcmdlinectrl vendor_apex_file (dir (search)))
(allow kcmdlinectrl vendor_file (file (getattr open read)))
(allow kcmdlinectrl vendor_zram_prop (file (getattr open read)))
(allow kernel kernel (capability (kill)))
(allow kernel sec_kernel_debugfs (dir (search)))
(allow kernel vendor_apex_file (dir (search)))
(allow keystore vendor_apex_file (dir (search)))
(allow kumihodecoder vendor_apex_file (dir (search)))
(allow lhd system_data_file (dir (search)))
(allow linkerconfig linkerconfig (capability (kill)))
(allow linkerconfig vendor_apex_file (dir (search)))
(allow lmkd vendor_apex_file (dir (search)))
(allow mediaextractor vendor_apex_file (dir (search)))
(allow mediametrics vendor_apex_file (dir (search)))
(allow mediaserver vendor_apex_file (dir (search)))
(allow mediaswcodec vendor_file (dir (open read)))
(allow misctrl proc_partition (file (getattr open read)))
(allow misctrl sysfs_dt_firmware_android (dir (open read)))
(allow misctrl sysfs_dt_firmware_android (file (getattr open read)))
(allow misctrl sysfs_scsi_host (dir (search)))
(allow misctrl sysfs_scsi_host (file (getattr open read)))
(allow misctrl vendor_apex_file (dir (search)))
(allow misctrl vendor_file (file (getattr open read)))
(allow misctrl vendor_zram_prop (file (getattr open read)))
(allow multiclientd vendor_apex_file (dir (search)))
(allow netd vendor_apex_file (dir (search)))
(allow nfc nfc_vendor_data_file (dir (search)))
(allow nfc vendor_apex_file (dir (search)))
(allow nfc vendor_file (file (getattr open read)))
(allow odrefresh vendor_apex_file (dir (search)))
(allow odsign vendor_apex_file (dir (search)))
(allow otapreopt_slot vendor_apex_file (dir (search)))
(allow pageboostd vendor_apex_file (dir (search)))
(allow perfetto vendor_apex_file (dir (search)))
(allow perfmond vendor_apex_file (dir (search)))
(allow perfsdkserver vendor_apex_file (dir (search)))
(allow platform_app app_data_file (file (ioctl)))
(allow platform_app bluetooth_data_file (file (getattr read)))
(allow platform_app su (unix_stream_socket (connectto)))
(allow platform_app system_data_file (dir (add_name remove_name)))
(allow platform_app system_data_file (file (create ioctl lock setattr unlink write)))
(allow priv_app privapp_data_file (file (ioctl)))
(allow priv_app su (unix_stream_socket (connectto)))
(allow prng_seeder vendor_apex_file (dir (search)))
(allow radio configfs (file (getattr open read)))
(allow radio radio_data_file (file (ioctl)))
(allow radio vendor_apex_file (dir (search)))
(allow rdxd vendor_apex_file (dir (search)))
(allow recovery_persist vendor_apex_file (dir (search)))
(allow recovery_refresh vendor_apex_file (dir (search)))
(allow rild system_file (file (getattr open read)))
(allow samsungpowersoundplay vendor_apex_file (dir (search)))
(allow scs vendor_apex_file (dir (search)))
(allow smdexe vendor_apex_file (dir (search)))
(allow spqr_service_daemon vendor_apex_file (dir (search)))
(allow statsd vendor_apex_file (dir (search)))
(allow storaged sysfs_mmc_host (dir (search)))
(allow storaged sysfs_mmc_host (file (getattr open read)))
(allow storaged sysfs_mmc_host (lnk_file (read)))
(allow storaged sysfs_scsi_host (dir (search)))
(allow storaged vendor_apex_file (dir (search)))
(allow surfaceflinger unlabeled (filesystem (getattr)))
(allow surfaceflinger vendor_file (dir (open read)))
(allow system_app privapp_data_file (file (open)))
(allow system_app sysfs (file (open read)))
(allow system_app sysfs_mali (file (open read)))
(allow system_app system_app_data_file (file (ioctl)))
(allow system_server binder_device (chr_file (ioctl)))
(allow system_server crash_dump (process (setsched)))
(allow system_server debugfs_wakeup_sources (file (getattr open read)))
(allow system_server sysfs (file (open read write)))
(allow system_server users_system_data_file (file (ioctl)))
(allow system_server vendor_default_prop (file (getattr open read)))
(allow system_server vendor_file (dir (open read)))
(allow system_server vendor_file (file (getattr open read)))
(allow system_suspend vendor_apex_file (dir (search)))
(allow tombstoned vendor_apex_file (dir (search)))
(allow toolbox vendor_apex_file (dir (search)))
(allow traced vendor_apex_file (dir (search)))
(allow traced_probes vendor_apex_file (dir (search)))
(allow ueventd proc_partition (file (getattr open read)))
(allow ueventd vendor_zram_prop (file (getattr open read)))
(allow uncrypt vendor_apex_file (dir (search)))
(allow untrusted_app vendor_apex_file (dir (search)))
(allow update_verifier vendor_apex_file (dir (search)))
(allow usbd vendor_apex_file (dir (search)))
(allow vdc vendor_apex_file (dir (search)))
(allow vendor_init cache_file (dir (search)))
(allow vendor_init debugfs (file (write)))
(allow vendor_init dumplog_data_file (dir (getattr setattr)))
(allow vendor_init mediaserver_data_file (dir (getattr)))
(allow vendor_init proc_fslog (file (write)))
(allow vendor_init sysfs (dir (add_name)))
(allow vendor_init sysfs (file (create)))
(allow vendor_init sysfs_sec (file (create)))
(allow vendor_init sysfs_ss_writable (dir (add_name)))
(allow vendor_init sysfs_ss_writable (file (create)))
(allow vendor_init telephony_prop (property_service (set)))
(allow vendor_iod sysfs_mmc_host (dir (add_name)))
(allow vendor_iod sysfs_mmc_host (file (create)))
(allow vendor_iod sysfs_scsi_host (dir (add_name)))
(allow vendor_iod sysfs_scsi_host (file (create)))
(allow vendor_secril_config_svc system_file (file (getattr open read)))
(allow vold vendor_file (file (getattr open read)))
(allow vold vendor_zram_prop (file (getattr open read)))
(allow vold_prepare_subdirs vendor_apex_file (dir (search)))
(allow wificond vendor_apex_file (dir (search)))
(allow zygote vendor_default_prop (file (getattr open read)))
(allow zygote vendor_file (dir (open read)))
(allow zygote vendor_file (file (getattr open read)))
ENFORCING_ALLOW_RULES_EOF
    fi
}

_EXYNOS9810_REMOVE_STALE_PRECOMPILED_SEPOLICY()
{
    local FILE
    local REL

    # The legacy ODM snapshot contains a precompiled policy generated against
    # its original platform policy. Keeping it makes first-stage init ignore
    # the vendor CIL rules appended above, which is harmless under a permissive
    # kernel but breaks boot-critical services under enforcing.
    LOG "- Removing stale Exynos9810 ODM precompiled SELinux policy"

    for FILE in \
        "odm/etc/selinux/precompiled_sepolicy" \
        "odm/etc/selinux/precompiled_sepolicy.plat_sepolicy_and_mapping.sha256" \
        "odm/etc/selinux/precompiled_sepolicy.system_ext_sepolicy_and_mapping.sha256"; do
        # The target-files layout normally nests ODM below system/, while an
        # older incremental workdir can contain one of the other forms.
        # Clear all of them so init cannot select a policy from a previous
        # build instead of compiling the current CIL set.
        for REL in "$WORK_DIR/$FILE" "$WORK_DIR/system/$FILE" "$WORK_DIR/system/system/$FILE"; do
            rm -f "$REL"
        done
        _EXYNOS9810_DELETE_METADATA "odm" "$FILE" "/$FILE"
        _EXYNOS9810_DELETE_METADATA "system" "$FILE" "/$FILE"
    done
}

_EXYNOS9810_RESTORE_GRAPHICS_MAPPER_COMPAT()
{
    local ARCH_DIR REL STOCK_MODEL STOCK_VENDOR STOCK_FILE DEST GRAPHICS_LABEL
    local GRALLOC MANIFEST MAPPER_BASE SYSTEM_LIB

    # Keep the complete graphics stack from the vendor image that is proven to
    # boot this Android 16 port. The Android 10 stock mapper is not compatible
    # with the Android 16 gralloc probing path: mixing it with this vendor makes
    # every mapper probe fail and crashes SystemUI/Launcher continuously.
    case "$TARGET_CODENAME" in
        starlte)  STOCK_MODEL="SM-G960F" ;;
        star2lte) STOCK_MODEL="SM-G965F" ;;
        crownlte) STOCK_MODEL="SM-N960F" ;;
        *)
            LOGE "No Exynos9810 stock graphics mapping for $TARGET_CODENAME"
            return 1
            ;;
    esac

    if [ "$EXYNOS9810_HAS_DONOR" != true ]; then
        LOG "- Keeping repository-built Exynos9810 graphics stack; no external donor overlay"
        return 0
    fi

    STOCK_VENDOR="$EXYNOS9810_LEGACY_PORT_DIR/vendor"
    if [ ! -d "$STOCK_VENDOR" ]; then
        LOGE "Missing proven Exynos9810 graphics vendor baseline: $STOCK_VENDOR"
        return 1
    fi

    LOG "- Restoring proven Android 16 Exynos9810 graphics stack for enforcing boot"

    for REL in \
        lib/egl/libGLES_mali.so \
        lib64/egl/libGLES_mali.so \
        lib/libGLES_mali.so \
        lib64/libGLES_mali.so \
        lib/libion_exynos.so \
        lib64/libion_exynos.so \
        lib/hw/android.hardware.graphics.allocator@2.0-impl.so \
        lib64/hw/android.hardware.graphics.allocator@2.0-impl.so \
        lib/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so \
        lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so \
        lib/hw/gralloc.default.so \
        lib64/hw/gralloc.default.so \
        lib/hw/gralloc.exynos9810.so \
        lib64/hw/gralloc.exynos9810.so \
        lib/hw/hwcomposer.exynos9810.so \
        lib64/hw/hwcomposer.exynos9810.so; do
        STOCK_FILE="$STOCK_VENDOR/$REL"
        DEST="$WORK_DIR/vendor/$REL"
        if [ -f "$STOCK_FILE" ]; then
            mkdir -p "$(dirname "$DEST")"
            cp -af "$STOCK_FILE" "$DEST"
            case "$REL" in
                lib/hw/android.hardware.graphics.allocator@2.0-impl.so|\
                lib64/hw/android.hardware.graphics.allocator@2.0-impl.so|\
                lib/hw/hwcomposer.exynos9810.so|\
                lib64/hw/hwcomposer.exynos9810.so)
                    GRAPHICS_LABEL="u:object_r:vendor_file:s0"
                    ;;
                *)
                    GRAPHICS_LABEL="u:object_r:same_process_hal_file:s0"
                    ;;
            esac
            _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/$REL" \
                0 0 644 "$GRAPHICS_LABEL"
        fi
    done

    # The S9-family allocator/composer services are part of the legacy
    # Exynos9810 ABI as well. A donor Android 16 vendor can contain files with
    # the same names but different linker dependencies; that leaves
    # hwservicemanager without a registered allocator/composer and causes
    # SurfaceFlinger, SystemUI and cameraserver to crash in a loop.
    for REL in \
        bin/hw/android.hardware.graphics.allocator@2.0-service \
        bin/hw/android.hardware.graphics.composer@2.2-service; do
        STOCK_FILE="$STOCK_VENDOR/$REL"
        DEST="$WORK_DIR/vendor/$REL"
        [ -f "$STOCK_FILE" ] || {
            LOGE "Missing stock graphics service: $REL"
            return 1
        }
        mkdir -p "$(dirname "$DEST")"
        cp -af "$STOCK_FILE" "$DEST"
        case "$REL" in
            bin/hw/android.hardware.graphics.allocator@2.0-service)
                GRAPHICS_LABEL="u:object_r:hal_graphics_allocator_default_exec:s0" ;;
            *)
                GRAPHICS_LABEL="u:object_r:hal_graphics_composer_default_exec:s0" ;;
        esac
        _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/$REL" \
            0 2000 755 "$GRAPHICS_LABEL"
    done

    for REL in \
        etc/init/android.hardware.graphics.allocator@2.0-service.rc \
        etc/init/android.hardware.graphics.composer@2.2-service.rc; do
        STOCK_FILE="$STOCK_VENDOR/$REL"
        DEST="$WORK_DIR/vendor/$REL"
        [ -f "$STOCK_FILE" ] || {
            LOGE "Missing stock graphics init entry: $REL"
            return 1
        }
        mkdir -p "$(dirname "$DEST")"
        cp -af "$STOCK_FILE" "$DEST"
        _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/$REL" \
            0 0 644 "u:object_r:vendor_configs_file:s0"
    done

    for REL in lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so \
               lib/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so \
               lib64/hw/android.hardware.graphics.allocator@2.0-impl.so \
               lib/hw/android.hardware.graphics.allocator@2.0-impl.so \
               lib64/egl/libGLES_mali.so \
               lib64/libion_exynos.so; do
        [ -f "$WORK_DIR/vendor/$REL" ] || {
            LOGE "Required enforcing graphics payload missing: vendor/$REL"
            return 1
        }
    done

    for REL in \
        vendor/bin/hw/android.hardware.graphics.allocator@2.0-service \
        vendor/bin/hw/android.hardware.graphics.composer@2.2-service \
        vendor/etc/init/android.hardware.graphics.allocator@2.0-service.rc \
        vendor/etc/init/android.hardware.graphics.composer@2.2-service.rc; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Required enforcing graphics service missing: /$REL"
            return 1
        }
    done


    # The proven port exposes mapper 2.1 through the implementation filename
    # expected by hwloader. Do not create a mapper@2.0 alias: that alias makes
    # Android select the wrong ABI before it can load the working bridge.
    for ARCH_DIR in lib lib64; do
        MAPPER_BASE="$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so"
        [ -f "$MAPPER_BASE" ] || {
            LOGE "Missing proven mapper bridge: vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so"
            return 1
        }
        rm -f "$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so"
        _EXYNOS9810_DELETE_METADATA "vendor" \
            "vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so" \
            "/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so"
        _EXYNOS9810_SET_METADATA_SAFE "vendor" \
            "vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" \
            0 0 644 "u:object_r:same_process_hal_file:s0"

        for SYSTEM_LIB in \
            "android.hardware.graphics.mapper@2.0.so" \
            "android.hardware.graphics.mapper@2.1.so" \
            "android.hardware.graphics.allocator@2.0.so" \
            "android.hardware.graphics.common@1.0.so" \
            "libc++.graphics.so" \
            "libgralloctypes.so" \
            "libgralloctypes-v33.so"; do
            rm -f "$WORK_DIR/vendor/$ARCH_DIR/$SYSTEM_LIB"
            _EXYNOS9810_DELETE_METADATA "vendor" \
                "vendor/$ARCH_DIR/$SYSTEM_LIB" \
                "/vendor/$ARCH_DIR/$SYSTEM_LIB"
        done


        for GRALLOC in gralloc.default.so gralloc.exynos9810.so; do
            _EXYNOS9810_SET_METADATA_SAFE "vendor" \
                "vendor/$ARCH_DIR/hw/$GRALLOC" \
                0 0 644 "u:object_r:same_process_hal_file:s0"
        done
    done

    for REL in \
        lib/egl/libGLES_mali.so \
        lib64/egl/libGLES_mali.so \
        lib/libion_exynos.so \
        lib64/libion_exynos.so \
        lib/hw/android.hardware.graphics.allocator@2.0-impl.so \
        lib64/hw/android.hardware.graphics.allocator@2.0-impl.so \
        lib/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so \
        lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so \
        lib/hw/gralloc.default.so \
        lib64/hw/gralloc.default.so \
        lib/hw/gralloc.exynos9810.so \
        lib64/hw/gralloc.exynos9810.so \
        lib/hw/hwcomposer.exynos9810.so \
        lib64/hw/hwcomposer.exynos9810.so \
        bin/hw/android.hardware.graphics.allocator@2.0-service \
        bin/hw/android.hardware.graphics.composer@2.2-service; do
        STOCK_FILE="$STOCK_VENDOR/$REL"
        DEST="$WORK_DIR/vendor/$REL"
        if [ -f "$STOCK_FILE" ] && ! cmp -s "$STOCK_FILE" "$DEST"; then
            LOGE "Proven graphics payload was changed after restore: $REL"
            return 1
        fi
    done

    if command -v readelf >/dev/null 2>&1 && \
       ! readelf -d "$WORK_DIR/vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" \
           2>/dev/null | grep -q "android.hardware.graphics.mapper@2.1.so"; then
        LOGE "Proven mapper bridge no longer links against mapper@2.1"
        return 1
    fi

    MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"
    if [ -f "$MANIFEST" ]; then
        python3 - "$MANIFEST" <<'PY'
import sys
import xml.etree.ElementTree as ET

path = sys.argv[1]
tree = ET.parse(path)
root = tree.getroot()

def make_hidl(name, interface, version, fqname, transport, passthrough=False):
    hal = ET.Element("hal", {"format": "hidl"})
    ET.SubElement(hal, "name").text = name
    transport_node = ET.SubElement(hal, "transport")
    transport_node.text = transport
    if passthrough:
        transport_node.set("arch", "32+64")
    ET.SubElement(hal, "version").text = version
    iface = ET.SubElement(hal, "interface")
    ET.SubElement(iface, "name").text = interface
    ET.SubElement(iface, "instance").text = "default"
    ET.SubElement(hal, "fqname").text = fqname
    return hal

# Replace, rather than merge, the graphics entry. Incremental builds can
# otherwise retain a mapper@2.0 declaration beside the working @2.1 bridge.
for node in list(root.findall("hal")):
    if node.findtext("name") == "android.hardware.graphics.mapper":
        root.remove(node)

allocator = next((node for node in root.findall("hal")
                  if node.findtext("name") == "android.hardware.graphics.allocator"), None)
if allocator is None:
    root.append(make_hidl("android.hardware.graphics.allocator", "IAllocator",
                          "2.0", "@2.0::IAllocator/default", "hwbinder"))
else:
    for child in list(allocator):
        if child.tag in {"version", "interface", "fqname"}:
            allocator.remove(child)
    transport = allocator.find("transport")
    if transport is None:
        transport = ET.SubElement(allocator, "transport")
    transport.text = "hwbinder"
    transport.attrib.pop("arch", None)
    ET.SubElement(allocator, "version").text = "2.0"
    iface = ET.SubElement(allocator, "interface")
    ET.SubElement(iface, "name").text = "IAllocator"
    ET.SubElement(iface, "instance").text = "default"
    ET.SubElement(allocator, "fqname").text = "@2.0::IAllocator/default"

root.append(make_hidl("android.hardware.graphics.mapper", "IMapper",
                      "2.1", "@2.1::IMapper/default",
                      "passthrough", True))

tree.write(path, encoding="unicode")
PY
        _EXYNOS9810_SET_METADATA_SAFE "vendor" \
            "vendor/etc/vintf/manifest.xml" \
            0 0 644 "u:object_r:vendor_configs_file:s0"
    fi

    # Keep the system-side legacy interface libraries available to the linker
    # namespace. They are part of the Android 16 system image and are not
    # copied into /vendor.
    for ARCH_DIR in lib lib64; do
        for SYSTEM_LIB in \
            "android.hardware.graphics.mapper@2.0.so" \
            "android.hardware.graphics.mapper@2.1.so" \
            "android.hardware.graphics.allocator@2.0.so"; do
            if [ ! -f "$WORK_DIR/system/system/$ARCH_DIR/$SYSTEM_LIB" ]; then
                LOGE "Missing system graphics interface: system/system/$ARCH_DIR/$SYSTEM_LIB"
                return 1
            fi
        done
    done
}

_EXYNOS9810_REMOVE_MISSING_AUDIO_EFFECTS()
{
    local CONFIG CONFIG_REL PARTITION

    # Android audio policy may select audio_effects.xml, audio_effects_sec.xml,
    # or a spatializer variant depending on the framework build. Sanitize every
    # shipped XML config so audioserver cannot abort on a donor-only library.
    LOG "- Removing orphaned Exynos9810 audio effect references"

    for CONFIG in \
        "$WORK_DIR"/vendor/etc/audio_effects*.xml \
        "$WORK_DIR"/odm/etc/audio_effects*.xml \
        "$WORK_DIR"/system/system/etc/audio_effects*.xml; do
        [ -f "$CONFIG" ] || continue

        python3 - "$CONFIG" <<'PY'
import sys
import xml.etree.ElementTree as ET

path = sys.argv[1]
missing_names = {"playbackrecorder", "vr360audio"}
missing_paths = {"libplaybackrecorder.so", "libgearvr.so"}

try:
    tree = ET.parse(path)
except (ET.ParseError, OSError):
    raise SystemExit(0)

root = tree.getroot()
declared_missing = set()

libraries = next((node for node in root.iter()
                  if node.tag.endswith("libraries")), None)
if libraries is not None:
    for node in list(libraries):
        if not node.tag.endswith("library"):
            continue
        name = node.get("name", "")
        libpath = node.get("path", "")
        if name in missing_names or libpath in missing_paths:
            declared_missing.add(name)
            libraries.remove(node)

effects = next((node for node in root.iter()
                if node.tag.endswith("effects")), None)
if effects is not None:
    for node in list(effects):
        if node.tag.endswith("effect") and (
            node.get("name", "") in {"playbackrecorder", "vr3d"} or
            node.get("library", "") in declared_missing
        ):
            effects.remove(node)

if declared_missing:
    # Preserve Samsung's original default namespace. ElementTree otherwise
    # emits an ns0-prefixed root, which the legacy EffectsConfig parser rejects.
    ET.register_namespace("", "http://schemas.android.com/audio/audio_effects_conf/v2_0")
    tree.write(path, encoding="utf-8", xml_declaration=True)
PY

        CONFIG_REL="$(printf '%s' "$CONFIG" | sed "s#^$WORK_DIR/##")"
        PARTITION="$(printf '%s' "$CONFIG_REL" | cut -d/ -f1)"
        case "$PARTITION" in
            vendor)
                _EXYNOS9810_SET_METADATA_SAFE "vendor" "$CONFIG_REL" \
                    0 0 644 "u:object_r:vendor_configs_file:s0"
                ;;
            odm)
                _EXYNOS9810_SET_METADATA_SAFE "odm" "$CONFIG_REL" \
                    0 0 644 "u:object_r:vendor_configs_file:s0"
                ;;
            system)
                _EXYNOS9810_SET_METADATA_SAFE "system" "$CONFIG_REL" \
                    0 0 644 "u:object_r:system_file:s0"
                ;;
        esac
    done

    # sec_audio_volume_curve.xml is read directly by audioserver through the
    # legacy Samsung volume parser. Keep it in the vendor config domain too.
    for CONFIG_REL in         vendor/etc/sec_audio_volume_curve.xml         vendor/etc/audio_policy_configuration.xml         vendor/etc/audio_policy_volumes.xml; do
        if [ -f "$WORK_DIR/$CONFIG_REL" ]; then
            _EXYNOS9810_SET_METADATA_SAFE "vendor" "$CONFIG_REL"                 0 0 644 "u:object_r:vendor_configs_file:s0"
        fi
    done
}
_EXYNOS9810_FIX_ENFORCING_INIT_DATA_DIRS()
{
    local RC

    # Android 16 requires encryption=Require on top-level /data mkdir actions.
    # Without it, enforcing init cannot stat these legacy Samsung paths.
    for RC in         "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"         "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc"; do
        [ -f "$RC" ] || continue
        python3 - "$RC" <<'PY'
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()
replacements = (
    ("mkdir /data/log 0771 radio system", "mkdir /data/log 0771 radio system encryption=Require"),
    ("mkdir /data/firmware 0770 audioserver system", "mkdir /data/firmware 0770 audioserver system encryption=Require"),
)
for old, new in replacements:
    # work.dir is intentionally reusable; collapse stale repeated options
    # before adding the required Android 16 encryption flag.
    text = re.sub(r"(?m)^" + re.escape(old) + r"(?:\s+encryption=Require)*\s*$", new, text)
path.write_text(text)
PY
        _EXYNOS9810_SET_METADATA_SAFE "vendor"             "vendor/etc/init/$(basename "$RC")"             0 0 644 "u:object_r:vendor_configs_file:s0"
    done

    # This debug-only rc writes to /cache, which is intentionally unavailable
    # during encrypted enforcing boot and only creates misleading init errors.
    if [ -e "$WORK_DIR/vendor/etc/init/unica_enforcing_vendor_debug.rc" ]; then
        rm -f "$WORK_DIR/vendor/etc/init/unica_enforcing_vendor_debug.rc"
        _EXYNOS9810_DELETE_METADATA "vendor"             "vendor/etc/init/unica_enforcing_vendor_debug.rc"             "/vendor/etc/init/unica_enforcing_vendor_debug.rc"
    fi
}
_EXYNOS9810_WRITE_FINAL_BOOT_TRACE()
{
    if [ "${EXYNOS9810_ENABLE_VENDOR_BOOT_TRACE:-false}" != "true" ]; then
        # _EXYNOS9810_RESTORE_VENDOR_BASELINE (which runs before this) copies the
        # trace rc back in from the legacy vendor source and re-adds its metadata,
        # so an earlier device_stack removal is undone. Drop it here too, after
        # the baseline restore, so production builds carry no boot logger.
        if [ -e "$WORK_DIR/vendor/etc/init/unica_exynos9810_trace.rc" ]; then
            rm -f "$WORK_DIR/vendor/etc/init/unica_exynos9810_trace.rc"
            _EXYNOS9810_DELETE_METADATA "vendor" \
                "vendor/etc/init/unica_exynos9810_trace.rc" \
                "/vendor/etc/init/unica_exynos9810_trace.rc"
        fi
        return 0
    fi

    LOG "- Restoring final Exynos9810 boot trace"

    mkdir -p "$WORK_DIR/vendor/etc/init"

    cat > "$WORK_DIR/vendor/etc/init/unica_exynos9810_trace.rc" <<'EOF'
on early-init
    write /dev/kmsg "UN1CA-9810-TRACE: early-init"

on init
    write /dev/kmsg "UN1CA-9810-TRACE: init"

on fs
    write /dev/kmsg "UN1CA-9810-TRACE: fs"

on post-fs
    write /dev/kmsg "UN1CA-9810-TRACE: post-fs"

on late-fs
    write /dev/kmsg "UN1CA-9810-TRACE: late-fs"

on post-fs-data
    write /dev/kmsg "UN1CA-9810-TRACE: post-fs-data"

on zygote-start
    write /dev/kmsg "UN1CA-9810-TRACE: zygote-start"

on boot
    write /dev/kmsg "UN1CA-9810-TRACE: boot"
EOF

    chmod 644 "$WORK_DIR/vendor/etc/init/unica_exynos9810_trace.rc"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/unica_exynos9810_trace.rc" 0 0 644 "u:object_r:vendor_file:s0"
}

_EXYNOS9810_RESTORE_VENDOR_BIN_GROUPS()
{
    local ROOT="$WORK_DIR/vendor/bin"
    local FS_CONFIG="$WORK_DIR/configs/fs_config-vendor"
    local ENTRY
    local REL
    local MODE

    [ -d "$ROOT" ] || return 0
    touch "$FS_CONFIG"

    while IFS= read -r -d '' ENTRY; do
        REL="vendor/bin${ENTRY#$ROOT}"
        MODE="$(_EXYNOS9810_DEFAULT_MODE "vendor" "$REL" "$ENTRY")"
        _EXYNOS9810_SET_FS_CONFIG_SAFE "vendor" "$REL" 0 2000 "$MODE"
    done < <(find "$ROOT" -mindepth 0 -print0)
}

_EXYNOS9810_RESTORE_ODM_BASELINE()
{
    if [ ! -d "$EXYNOS9810_LEGACY_PORT_DIR/odm" ]; then
        LOGW "Exynos9810 boot ODM baseline missing: $EXYNOS9810_LEGACY_PORT_DIR/odm"
        return 0
    fi

    LOG "- Restoring final known-booting Exynos9810 ODM baseline"

    rm -rf "$WORK_DIR/odm"
    mkdir -p "$WORK_DIR/odm"
    cp -a "$EXYNOS9810_LEGACY_PORT_DIR/odm"/. "$WORK_DIR/odm"/
    _EXYNOS9810_RESTORE_METADATA_SNAPSHOT "odm" || \
        _EXYNOS9810_ENSURE_TREE_METADATA "odm" "$WORK_DIR/odm" "u:object_r:vendor_file:s0" 0 0
    rm -rf "$WORK_DIR/odm/lost+found"

    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc" 0 0 755 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc/build.prop" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc/selinux" 0 0 755 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc/fs_config_dirs" 0 0 444 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc/fs_config_files" 0 0 444 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc/group" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "odm" "odm/etc/passwd" 0 0 644 "u:object_r:vendor_file:s0"
}

_EXYNOS9810_SANITIZE_RESTORED_TEXT()
{
    # Keep restored boot-critical props, init files, contexts, and manifests byte-for-byte
    # aligned with the known-booting baseline. Branding belongs in non-boot assets.
    return 0
}

_EXYNOS9810_FIX_SYSTEM_PERMISSION_CASE()
{
    local UPPER="$WORK_DIR/system/system/etc/Permissions"
    local LOWER="$WORK_DIR/system/system/etc/permissions"

    if [ ! -d "$UPPER" ]; then
        return 0
    fi

    LOG "- Normalizing /system/etc/permissions directory case"

    mkdir -p "$LOWER"
    cp -a "$UPPER"/. "$LOWER"/
    rm -rf "$UPPER"

    sed -i 's|system/etc/Permissions|system/etc/permissions|g' "$WORK_DIR/configs/fs_config-system"
    sed -i 's|/system/etc/Permissions|/system/etc/permissions|g' "$WORK_DIR/configs/file_context-system"
}

_EXYNOS9810_APPLY_FINAL_SECURITY_STACK()
{
    local MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"
    local ENTRY

    if [ ! -x "$EXYNOS9810_SOFTWARE_KEYMASTER4_DIR/bin/hw/android.hardware.keymaster@4.0-service" ]; then
        LOGE "Software Keymaster 4.0 payload is missing: $EXYNOS9810_SOFTWARE_KEYMASTER4_DIR"
        return 1
    fi

    LOG "- Finalizing AOSP software Keymaster 4.0 security stack"

    for ENTRY in \
        "lib64/libskeymaster4device.so" \
        "lib64/libkeymaster4_1support.so" \
        "lib64/android.hardware.keymaster@4.1.so" \
        "bin/cass" \
        "bin/vaultkeeperd" \
        "bin/vendor.samsung.hardware.security.vaultkeeper@2.0-service" \
        "etc/init/cass.rc" \
        "etc/init/vaultkeeper_common.rc" \
        "etc/vintf/manifest/vaultkeeper_manifest.xml" \
        "lib64/vendor.samsung.hardware.security.vaultkeeper@2.0.so"; do
        rm -rf "$WORK_DIR/vendor/$ENTRY"
        _EXYNOS9810_DELETE_METADATA "vendor" "vendor/$ENTRY" "/vendor/$ENTRY"
    done

    cp -a "$EXYNOS9810_SOFTWARE_KEYMASTER4_DIR"/. "$WORK_DIR/vendor"/
    _EXYNOS9810_ENSURE_TREE_METADATA \
        "vendor" "$WORK_DIR/vendor" "u:object_r:vendor_file:s0" 0 0

    # The booting EROFS build retains the legacy Keymaster support libraries
    # while removing the Trustonic service itself. Keep that exact split:
    # software @4.0 remains the only service, but older clients can resolve
    # the compatibility libraries.
    local KEYMASTER_REL KEYMASTER_SRC
    for KEYMASTER_REL in \
        "lib/libkeymaster3device.so" \
        "lib/libskeymaster3device.so" \
        "lib64/libkeymaster2_mdfpp.so" \
        "lib64/libkeymaster3device.so" \
        "lib64/libkeymaster_helper_vendor.so" \
        "lib64/libskeymaster3device.so" \
        "lib64/libsoftkeymasterdevice.so"; do
        KEYMASTER_SRC="$EXYNOS9810_LEGACY_KEYMASTER_VENDOR_DIR/$KEYMASTER_REL"
        [ -f "$KEYMASTER_SRC" ] || {
            LOGE "Embedded Exynos9810 Keymaster compatibility library is missing: $KEYMASTER_SRC"
            return 1
        }
        mkdir -p "$(dirname "$WORK_DIR/vendor/$KEYMASTER_REL")"
        cp -pf "$KEYMASTER_SRC" "$WORK_DIR/vendor/$KEYMASTER_REL" || return 1
        _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/$KEYMASTER_REL" \
            0 0 644 "u:object_r:vendor_file:s0"
    done

    _EXYNOS9810_SET_METADATA_SAFE "vendor" \
        "vendor/bin/hw/android.hardware.keymaster@4.0-service" \
        0 2000 755 "u:object_r:hal_keymaster_default_exec:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" \
        "vendor/etc/init/android.hardware.keymaster@4.0-service.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    # The TEE @3.0 keymaster opens its Trustonic session through VaultKeeper,
    # which is removed above. Left in place it exits with status 1 and init
    # restarts it forever ("Trustonic TEE: client_get_session: session 0 not
    # found"), so keystore2/vold never come up and boot hangs. Software @4.0 is
    # the sole keymaster now -- drop @3.0 (service, rc and impl) entirely.
    for ENTRY in \
        "bin/hw/android.hardware.keymaster@3.0-service" \
        "etc/init/android.hardware.keymaster@3.0-service.rc" \
        "lib/hw/android.hardware.keymaster@3.0-impl.so" \
        "lib64/hw/android.hardware.keymaster@3.0-impl.so"; do
        rm -rf "$WORK_DIR/vendor/$ENTRY"
        _EXYNOS9810_DELETE_METADATA "vendor" "vendor/$ENTRY" "/vendor/$ENTRY"
    done

    if [ -f "$MANIFEST" ]; then
        # Declare ONLY software Keymaster @4.0. The base vendor manifest ships the
        # TEE @3.0 HIDL declaration; if @3.0 is still advertised keystore2 waits on
        # the (now removed) @3.0 service and hangs. Drop @3.0, keep/add @4.0.
        sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
            /<version>3\.0<\/version>/d
            /@3\.0::IKeymasterDevice\/default/d
        }' "$MANIFEST"
        if ! sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$MANIFEST" | grep -q '<version>4.0</version>'; then
            sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
                /<transport>/a\        <version>4.0</version>
            }' "$MANIFEST"
        fi
        if ! sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$MANIFEST" | grep -q '@4.0::IKeymasterDevice/default'; then
            sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
                /<\/interface>/a\        <fqname>@4.0::IKeymasterDevice/default</fqname>
            }' "$MANIFEST"
        fi
    fi
}

_EXYNOS9810_VERIFY_FINAL_SECURITY_STACK()
{
    local MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"
    local ENTRY

    LOG "- Verifying final software Keymaster 4.0 stack after vendor restore"

    for ENTRY in \
        "bin/hw/android.hardware.keymaster@4.0-service" \
        "etc/init/android.hardware.keymaster@4.0-service.rc" \
        "lib64/android.hardware.keymaster@4.0.so" \
        "lib64/libcppbor_external.so" \
        "lib64/libcppcose_rkp.so" \
        "lib64/libkeymaster4.so" \
        "lib64/libkeymaster4support.so" \
        "lib64/libkeymaster_messages.so" \
        "lib64/libkeymaster_portable.so" \
        "lib64/libpuresoftkeymasterdevice.so" \
        "lib64/libsoft_attestation_cert.so" \
        "lib/libkeymaster3device.so" \
        "lib/libskeymaster3device.so" \
        "lib64/libkeymaster2_mdfpp.so" \
        "lib64/libkeymaster3device.so" \
        "lib64/libkeymaster_helper_vendor.so" \
        "lib64/libskeymaster3device.so" \
        "lib64/libsoftkeymasterdevice.so"; do
        if [ ! -f "$WORK_DIR/vendor/$ENTRY" ]; then
            LOGE "Required software Keymaster 4.0 component is missing: /vendor/$ENTRY"
            return 1
        fi
    done

    if ! cmp -s \
        "$EXYNOS9810_SOFTWARE_KEYMASTER4_DIR/bin/hw/android.hardware.keymaster@4.0-service" \
        "$WORK_DIR/vendor/bin/hw/android.hardware.keymaster@4.0-service"; then
        LOGE "Final vendor contains an unexpected Keymaster 4.0 service"
        return 1
    fi

    if grep -a -q 'skeymaster4dev' \
        "$WORK_DIR/vendor/bin/hw/android.hardware.keymaster@4.0-service"; then
        LOGE "Final vendor contains the incompatible Trustonic Keymaster 4.0 service"
        return 1
    fi

    for ENTRY in \
        "lib64/libskeymaster4device.so" \
        "bin/cass" \
        "bin/vaultkeeperd" \
        "bin/vendor.samsung.hardware.security.vaultkeeper@2.0-service" \
        "etc/init/cass.rc" \
        "etc/init/vaultkeeper_common.rc" \
        "bin/hw/android.hardware.keymaster@3.0-service" \
        "etc/init/android.hardware.keymaster@3.0-service.rc"; do
        if [ -e "$WORK_DIR/vendor/$ENTRY" ]; then
            LOGE "Incompatible legacy security component remains: /vendor/$ENTRY"
            return 1
        fi
    done

    # Keymaster must be advertised as software @4.0 ONLY. A lingering @3.0
    # declaration makes keystore2 wait on the removed TEE service and hangs boot.
    for ENTRY in \
        '<version>4.0</version>' \
        '@4.0::IKeymasterDevice/default'; do
        if ! sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$MANIFEST" | grep -qF "$ENTRY"; then
            LOGE "Final vendor manifest is missing software Keymaster declaration: $ENTRY"
            return 1
        fi
    done
    for ENTRY in \
        '<version>3.0</version>' \
        '@3.0::IKeymasterDevice/default'; do
        if sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$MANIFEST" | grep -qF "$ENTRY"; then
            LOGE "Final vendor manifest still advertises TEE Keymaster: $ENTRY"
            return 1
        fi
    done
}

_EXYNOS9810_DISABLE_FINAL_SECURITY_FEATURE_PROPS()
{
    local FILE

    LOG "- Disabling legacy Samsung CASS/VaultKeeper feature props after vendor restore"

    for FILE in \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/odm/etc/build.prop" \
        "$WORK_DIR/system/odm/etc/build.prop" \
        "$WORK_DIR/system/system/build.prop"; do
        [ -f "$FILE" ] || continue
        sed -i \
            -e '/^ro\.security\.cass\.feature=/d' \
            -e '/^ro\.security\.vaultkeeper\.feature=/d' \
            -e '/^ro\.security\.vaultkeeper\.native=/d' \
            -e '/^ro\.config\.tima=/d' \
            "$FILE"
        {
            echo "ro.security.cass.feature=0"
            echo "ro.security.vaultkeeper.feature=0"
            echo "ro.security.vaultkeeper.native=0"
            echo "ro.config.tima=0"
        } >> "$FILE"
    done
}

_EXYNOS9810_VERIFY_FINAL_SECURITY_FEATURE_PROPS()
{
    local FILE="$WORK_DIR/vendor/build.prop"

    LOG "- Verifying legacy Samsung security feature props stay disabled"

    if grep -Rqs '^ro\.security\.cass\.feature=1' \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/odm/etc/build.prop" \
        "$WORK_DIR/system/odm/etc/build.prop" \
        "$WORK_DIR/system/system/build.prop"; then
        LOGE "Legacy CASS feature prop is enabled; enforcing kernels may bootloop"
        return 1
    fi

    if [ -f "$FILE" ] && ! grep -q '^ro\.security\.cass\.feature=0$' "$FILE"; then
        LOGE "Vendor build.prop is missing ro.security.cass.feature=0"
        return 1
    fi
}

_EXYNOS9810_FINAL_WRITE_PHYSICAL_FSTABS()
{
    local FSTAB

    LOG "- Restoring known-good Exynos9810 physical filesystem tables after vendor restore"
    mkdir -p "$WORK_DIR/vendor/etc"

    for FSTAB in fstab.samsungexynos9810 fstab.exynos9810; do
        cat > "$WORK_DIR/vendor/etc/$FSTAB" <<'EOF'
# Android fstab file for legacy Exynos9810 physical partitions.
# First-stage system/vendor/odm mounts are supplied by the boot DTB.

#<src>                                                  <mnt_point>             <type>  <mnt_flags and options>                                                                  <fs_mgr_flags>

##/dev/block/platform/11120000.ufs/by-name/SYSTEM       /system                 ext4    ro                                                                                       wait,first_stage_mount
##/dev/block/platform/11120000.ufs/by-name/VENDOR       /vendor                 ext4    ro                                                                                       wait,first_stage_mount
##/dev/block/platform/11120000.ufs/by-name/ODM          /odm                    ext4    ro                                                                                       wait,first_stage_mount

/dev/block/platform/11120000.ufs/by-name/CACHE          /cache                  ext4    noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic  wait,check
/dev/block/platform/11120000.ufs/by-name/USERDATA       /data                   ext4    noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic  wait,check,quota,reservedsize=128M,length=-20480
/dev/block/platform/11120000.ufs/by-name/USERDATA       /data                   f2fs    noatime,nosuid,nodev,discard,usrquota,grpquota,fsync_mode=nobarrier,reserve_root=32768,resgid=5678 wait,check,quota,reservedsize=128M,checkpoint=fs,length=-20480
/dev/block/platform/11120000.ufs/by-name/EFS            /mnt/vendor/efs         ext4    noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic  wait,check
/dev/block/platform/11120000.ufs/by-name/CPEFS          /mnt/vendor/cpefs       ext4    noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic  wait,check,nofail
/dev/block/platform/11120000.ufs/by-name/MISC           /misc                   emmc    defaults                                                                                 defaults

/dev/block/platform/11120000.ufs/by-name/HIDDEN         /preload                ext4    noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic  voldmanaged=preload:auto,check
/devices/platform/11500000.dwmmc2/mmc_host*             auto                    vfat    defaults                                                                                 voldmanaged=sdcard:auto
/devices/platform/10c00000.usb/10c00000.dwc3*           auto                    auto    defaults                                                                                 voldmanaged=usb:auto

/dev/block/zram0                                        none                    swap    defaults                                                                                 zramsize=50%,max_comp_streams=8,auto_configure
EOF
        _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/$FSTAB" 0 0 644 "u:object_r:vendor_configs_file:s0"
        if [ "$FSTAB" = "fstab.samsungexynos9810" ]; then
            sed -i '1c\\# Android fstab file for Galaxy S9/S9+/Note9 physical partitions.' \
                "$WORK_DIR/vendor/etc/$FSTAB"
            sed -i '/by-name\/HIDDEN/i\# VOLD - fstab.samsungexynos9810' \
                "$WORK_DIR/vendor/etc/$FSTAB"
            sed -i '/^\/dev\/block\/zram0/i\# Samsung RAM Plus' \
                "$WORK_DIR/vendor/etc/$FSTAB"
        else
            sed -i '2c\\# Kept in sync with fstab.samsungexynos9810 for services that request the SoC fstab name.' \
                "$WORK_DIR/vendor/etc/$FSTAB"
        fi
        grep -q '/dev/block/platform/11120000.ufs/by-name/USERDATA[[:space:]]*/data[[:space:]]*f2fs' \
            "$WORK_DIR/vendor/etc/$FSTAB" || {
            LOGE "Final Exynos9810 $FSTAB is missing the f2fs USERDATA fallback"
            return 1
        }
        if grep -q 'forceencrypt=footer' "$WORK_DIR/vendor/etc/$FSTAB"; then
            LOGE "Final Exynos9810 $FSTAB still enables incompatible forceencrypt=footer"
            return 1
        fi
    done
}

rm -f \
    "$WORK_DIR/system/system/lib/libunica.so" \
    "$WORK_DIR/system/system/lib64/libunica.so" \
    "$WORK_DIR/vendor/lib/libunica.so" \
    "$WORK_DIR/vendor/lib64/libunica.so"
_EXYNOS9810_DELETE_METADATA "system" "system/lib/libunica.so" "/system/lib/libunica.so"
_EXYNOS9810_DELETE_METADATA "system" "system/lib64/libunica.so" "/system/lib64/libunica.so"
_EXYNOS9810_DELETE_METADATA "vendor" "vendor/lib/libunica.so" "/vendor/lib/libunica.so"
_EXYNOS9810_DELETE_METADATA "vendor" "vendor/lib64/libunica.so" "/vendor/lib64/libunica.so"

_EXYNOS9810_KEEP_SETUP_WIZARD_ENABLED
if [ "$EXYNOS9810_HAS_DONOR" = true ]; then
    _EXYNOS9810_RESTORE_VENDOR_BASELINE || return 1
    _EXYNOS9810_APPLY_TARGET_VENDOR_DELTA || return 1
else
    LOG "- Keeping repository-built Exynos9810 vendor baseline"
fi
_EXYNOS9810_FINAL_WRITE_PHYSICAL_FSTABS
_EXYNOS9810_APPLY_SUPPLEMENTARY_SEPOLICY
_EXYNOS9810_PATCH_FINAL_VENDOR_BOOT_COMPAT
_EXYNOS9810_USE_SENSORS_HAL_1_0 || return 1
_EXYNOS9810_APPLY_FINAL_SECURITY_STACK || return 1
_EXYNOS9810_DISABLE_FINAL_SECURITY_FEATURE_PROPS
_EXYNOS9810_RESTORE_ODM_BASELINE || return 1
_EXYNOS9810_REMOVE_STALE_PRECOMPILED_SEPOLICY
_EXYNOS9810_RESTORE_GRAPHICS_MAPPER_COMPAT || return 1
_EXYNOS9810_REMOVE_MISSING_AUDIO_EFFECTS
_EXYNOS9810_FIX_ENFORCING_INIT_DATA_DIRS
_EXYNOS9810_APPLY_TARGET_VENDOR_IDENTITY || return 1
_EXYNOS9810_SANITIZE_RESTORED_TEXT
_EXYNOS9810_WRITE_FINAL_BOOT_TRACE
if [ "$EXYNOS9810_USED_VENDOR_METADATA_SNAPSHOT" != true ]; then
    _EXYNOS9810_RESTORE_VENDOR_BIN_GROUPS
fi

_EXYNOS9810_SET_METADATA_SAFE "system" "odm/etc/build.prop" 0 0 644 "u:object_r:system_file:s0"
if [ "${EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG:-false}" = "true" ] && \
        [ -e "$WORK_DIR/system/system/bin/unica_exynos9810_bootlog.sh" ]; then
    _EXYNOS9810_SET_METADATA_SAFE "system" "system/bin/unica_exynos9810_bootlog.sh" \
        0 2000 755 "u:object_r:system_file:s0"
else
    # Do not leave metadata for a logger that is absent from production images.
    _EXYNOS9810_DELETE_METADATA "system" "system/bin/unica_exynos9810_bootlog.sh" \
        "/system/bin/unica_exynos9810_bootlog.sh"
fi
_EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/lib/hw/android.hardware.graphics.allocator@2.0-impl.so" 0 0 644 "u:object_r:vendor_file:s0"
_EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/lib/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" 0 0 644 "u:object_r:same_process_hal_file:s0"
_EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/lib64/hw/android.hardware.graphics.allocator@2.0-impl.so" 0 0 644 "u:object_r:vendor_file:s0"
_EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" 0 0 644 "u:object_r:same_process_hal_file:s0"

_EXYNOS9810_FIX_SYSTEM_PERMISSION_CASE
_EXYNOS9810_VERIFY_FINAL_SECURITY_STACK || return 1
_EXYNOS9810_VERIFY_FINAL_SECURITY_FEATURE_PROPS || return 1

_EXYNOS9810_DEDUP_METADATA "system"
_EXYNOS9810_DEDUP_METADATA "vendor"
_EXYNOS9810_DEDUP_METADATA "odm"
_EXYNOS9810_SANITIZE_METADATA "system" "u:object_r:system_file:s0"
_EXYNOS9810_SANITIZE_METADATA "vendor" "u:object_r:vendor_file:s0"
_EXYNOS9810_SANITIZE_METADATA "odm" "u:object_r:vendor_file:s0"
