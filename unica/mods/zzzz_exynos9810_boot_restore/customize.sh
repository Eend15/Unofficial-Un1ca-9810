SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}"
EXYNOS9810_BOOT_BASE="$EXYNOS9810_LEGACY_PORT_DIR/system_booting_baseline"
EXYNOS9810_FULL_SYSTEM_BASE="${EXYNOS9810_FULL_SYSTEM_BASE:-$SRC_DIR/../boot_baselines/system_full_booting_baseline}"
EXYNOS9810_METADATA_DIR="$SRC_DIR/platform/exynos9810/metadata"
EXYNOS9810_USED_FULL_SYSTEM_BASELINE=false
EXYNOS9810_USED_VENDOR_METADATA_SNAPSHOT=false
EXYNOS9810_USED_ODM_METADATA_SNAPSHOT=false

if [ ! -d "$EXYNOS9810_LEGACY_PORT_DIR/vendor" ] || [ ! -d "$EXYNOS9810_BOOT_BASE/system" ]; then
    LOGW "Exynos9810 boot baseline missing: $EXYNOS9810_LEGACY_PORT_DIR"
    return 0
fi

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

_EXYNOS9810_RESTORE_FULL_SYSTEM_BASELINE()
{
    if [ ! -d "$EXYNOS9810_FULL_SYSTEM_BASE/system" ]; then
        return 1
    fi

    LOG "- Restoring final full known-booting Exynos9810 system baseline"

    rm -rf "$WORK_DIR/system"
    mkdir -p "$WORK_DIR/system"
    cp -a "$EXYNOS9810_FULL_SYSTEM_BASE"/. "$WORK_DIR/system"/

    _EXYNOS9810_ENSURE_TREE_METADATA "system" "$WORK_DIR/system" "u:object_r:system_file:s0"
    EXYNOS9810_USED_FULL_SYSTEM_BASELINE=true
}

_EXYNOS9810_RESTORE_SYSTEM()
{
    local REL="$1"
    local TARGET="$WORK_DIR/system/$REL"

    rm -rf "$TARGET"
    ADD_TO_WORK_DIR "$EXYNOS9810_BOOT_BASE" "system" "$REL" 0 0 755 "u:object_r:system_file:s0"
}

_EXYNOS9810_RESTORE_PRODUCT()
{
    local REL="$1"
    local SRC="$EXYNOS9810_BOOT_BASE/product/$REL"
    local DST="$WORK_DIR/system/product/$REL"

    if [ ! -e "$SRC" ] && [ ! -L "$SRC" ]; then
        LOGE "Required Exynos9810 boot product file is missing: $SRC"
        return 1
    fi

    rm -rf "$DST"
    mkdir -p "$(dirname "$DST")"
    cp -a "$SRC" "$DST"
    _EXYNOS9810_SET_METADATA_SAFE "system" "product/$REL" 0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_RESTORE_VENDOR_BASELINE()
{
    LOG "- Restoring final known-booting Exynos9810 vendor baseline"

    rm -rf "$WORK_DIR/vendor"
    mkdir -p "$WORK_DIR/vendor"
    cp -a "$EXYNOS9810_LEGACY_PORT_DIR/vendor"/. "$WORK_DIR/vendor"/
    _EXYNOS9810_RESTORE_METADATA_SNAPSHOT "vendor" || \
        _EXYNOS9810_ENSURE_TREE_METADATA "vendor" "$WORK_DIR/vendor" "u:object_r:vendor_file:s0" 0 0

    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/fstab.samsungexynos9810" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/fstab.exynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/hw" 0 0 755 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA_SAFE "vendor" "vendor/etc/init/hw/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
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

_EXYNOS9810_KEEP_SETUP_WIZARD_ENABLED()
{
    local FILE

    LOG "- Keeping Samsung setup wizard enabled after boot baseline restore"

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

_EXYNOS9810_PATCH_FINAL_VENDOR_BOOT_COMPAT()
{
    local RC

    LOG "- Applying final Exynos9810 vendor boot compat"

    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.vendor.build.security_patch" "2026-05-05"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.hardware.keystore" "mdfpp"
    _EXYNOS9810_SET_BUILD_PROP "$WORK_DIR/vendor/build.prop" "ro.security.keystore.keytype" "sak"
    sed -i '/^ro.hardware.keystore_desede=/d' "$WORK_DIR/vendor/build.prop" 2> /dev/null || true

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
}

_EXYNOS9810_WRITE_FINAL_BOOT_TRACE()
{
    if [ "${EXYNOS9810_ENABLE_VENDOR_BOOT_TRACE:-false}" != "true" ]; then
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

if ! _EXYNOS9810_RESTORE_FULL_SYSTEM_BASELINE; then
    LOG "- Restoring final known-booting Exynos9810 system baseline"

    _EXYNOS9810_RESTORE_SYSTEM "system/build.prop"
    _EXYNOS9810_RESTORE_PRODUCT "etc/build.prop"
    _EXYNOS9810_RESTORE_SYSTEM "system/framework"
    _EXYNOS9810_RESTORE_SYSTEM "system/lib"
    _EXYNOS9810_RESTORE_SYSTEM "system/lib64"
    _EXYNOS9810_RESTORE_SYSTEM "system/etc/init/audioserver.rc"
    _EXYNOS9810_RESTORE_SYSTEM "system/system_ext/etc"
    _EXYNOS9810_RESTORE_SYSTEM "system/app/BluetoothAgent"
    _EXYNOS9810_RESTORE_SYSTEM "system/priv-app/SamsungCamera"
    _EXYNOS9810_RESTORE_SYSTEM "system/priv-app/SecSettings"

    if [ -f "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/system/system_ext/apex/com.android.vndk.v33.apex" ]; then
        rm -f "$WORK_DIR/system/system/system_ext/apex/com.android.vndk.v31.apex"
        _EXYNOS9810_DELETE_METADATA "system" "system/system_ext/apex/com.android.vndk.v31.apex" "/system/system_ext/apex/com.android.vndk.v31.apex"
        ADD_TO_WORK_DIR "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common" \
            "system" "system/system_ext/apex/com.android.vndk.v33.apex" 0 0 644 "u:object_r:system_file:s0"
    fi
fi

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
_EXYNOS9810_RESTORE_VENDOR_BASELINE
_EXYNOS9810_PATCH_FINAL_VENDOR_BOOT_COMPAT
_EXYNOS9810_RESTORE_ODM_BASELINE
_EXYNOS9810_SANITIZE_RESTORED_TEXT
_EXYNOS9810_WRITE_FINAL_BOOT_TRACE
if [ "$EXYNOS9810_USED_VENDOR_METADATA_SNAPSHOT" != true ]; then
    _EXYNOS9810_RESTORE_VENDOR_BIN_GROUPS
fi

_EXYNOS9810_SET_METADATA_SAFE "system" "odm/etc/build.prop" 0 0 644 "u:object_r:system_file:s0"
_EXYNOS9810_SET_METADATA_SAFE "system" "system/bin/unica_exynos9810_bootlog.sh" 0 2000 755 "u:object_r:system_file:s0"

if [ "$EXYNOS9810_USED_FULL_SYSTEM_BASELINE" != true ]; then
    _EXYNOS9810_FIX_SYSTEM_PERMISSION_CASE
fi

_EXYNOS9810_DEDUP_METADATA "system"
_EXYNOS9810_DEDUP_METADATA "vendor"
_EXYNOS9810_DEDUP_METADATA "odm"
_EXYNOS9810_SANITIZE_METADATA "system" "u:object_r:system_file:s0"
_EXYNOS9810_SANITIZE_METADATA "vendor" "u:object_r:vendor_file:s0"
_EXYNOS9810_SANITIZE_METADATA "odm" "u:object_r:vendor_file:s0"
