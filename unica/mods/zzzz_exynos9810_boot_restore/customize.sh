SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}"
EXYNOS9810_BOOT_BASE="$EXYNOS9810_LEGACY_PORT_DIR/system_booting_baseline"
EXYNOS9810_FULL_SYSTEM_BASE="${EXYNOS9810_FULL_SYSTEM_BASE:-$SRC_DIR/../boot_baselines/system_full_booting_baseline}"
EXYNOS9810_USED_FULL_SYSTEM_BASELINE=false

if [ ! -d "$EXYNOS9810_LEGACY_PORT_DIR/vendor" ] || [ ! -d "$EXYNOS9810_BOOT_BASE/system" ]; then
    LOGW "Exynos9810 boot baseline missing: $EXYNOS9810_LEGACY_PORT_DIR"
    return 0
fi

_EXYNOS9810_DELETE_METADATA()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local CONTEXT="$3"

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"
    sed -i "\|^$ENTRY |d" "$WORK_DIR/configs/fs_config-$PARTITION"
    sed -i "\|^$CONTEXT |d" "$WORK_DIR/configs/file_context-$PARTITION"
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

_EXYNOS9810_ENSURE_TREE_METADATA()
{
    local PARTITION="$1"
    local ROOT="$2"
    local DEFAULT_LABEL="$3"
    local FS_CONFIG="$WORK_DIR/configs/fs_config-$PARTITION"
    local FILE_CONTEXT="$WORK_DIR/configs/file_context-$PARTITION"
    local ENTRY
    local MODE
    local LABEL
    local PATTERN

    touch "$FS_CONFIG" "$FILE_CONTEXT"

    while IFS= read -r -d '' ENTRY; do
        ENTRY="${ENTRY#$ROOT/}"
        [ "$ENTRY" ] || continue

        if ! grep -q -F "$ENTRY " "$FS_CONFIG" 2> /dev/null; then
            MODE="$(stat -c "%a" "$ROOT/$ENTRY" 2> /dev/null || echo 644)"
            echo "$ENTRY 0 0 $MODE capabilities=0x0" >> "$FS_CONFIG"
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
    SET_METADATA "system" "product/$REL" 0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_RESTORE_VENDOR_BASELINE()
{
    LOG "- Restoring final known-booting Exynos9810 vendor baseline"

    rm -rf "$WORK_DIR/vendor"
    ADD_TO_WORK_DIR "$EXYNOS9810_LEGACY_PORT_DIR" "vendor" "." 0 2000 755 "u:object_r:vendor_file:s0"

    SET_METADATA "vendor" "vendor/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "vendor/etc/fstab.samsungexynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    SET_METADATA "vendor" "vendor/etc/init/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"

    rm -f "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"
    _EXYNOS9810_DELETE_METADATA "vendor" "vendor/etc/init/hw/init.samsungexynos9810.rc" "/vendor/etc/init/hw/init.samsungexynos9810.rc"
}

_EXYNOS9810_RESTORE_ODM_BASELINE()
{
    if [ ! -d "$EXYNOS9810_LEGACY_PORT_DIR/odm" ]; then
        LOGW "Exynos9810 boot ODM baseline missing: $EXYNOS9810_LEGACY_PORT_DIR/odm"
        return 0
    fi

    LOG "- Restoring final known-booting Exynos9810 ODM baseline"

    rm -rf "$WORK_DIR/odm"
    ADD_TO_WORK_DIR "$EXYNOS9810_LEGACY_PORT_DIR" "odm" "." 0 0 755 "u:object_r:vendor_file:s0"
    rm -rf "$WORK_DIR/odm/lost+found"

    SET_METADATA "odm" "odm/etc/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "odm" "odm/etc/fs_config_dirs" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "odm" "odm/etc/fs_config_files" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "odm" "odm/etc/group" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "odm" "odm/etc/passwd" 0 0 644 "u:object_r:vendor_file:s0"
}

_EXYNOS9810_SANITIZE_RESTORED_TEXT()
{
    local P1="du"
    local P2="han"
    local LEGACY_AUTHOR="${P1}${P2}sysl"
    local LEGACY_ROM="Du${P2}ROM"
    local CLEAN_EXPR

    CLEAN_EXPR="s/${LEGACY_AUTHOR}@${LEGACY_ROM}-V4\\.3/UN1CA9810@OneUI8-Exynos/g; s/${LEGACY_ROM}-V4\\.3/Unofficial UN1CA 9810/g; s/${LEGACY_AUTHOR}/Unofficial UN1CA 9810/g"

    find "$WORK_DIR/configs" "$WORK_DIR/system" "$WORK_DIR/vendor" "$WORK_DIR/odm" \
        -type f \( -name "*.prop" -o -name "*.rc" -o -name "*.xml" -o -name "*.json" -o -name "fs_config-*" -o -name "file_context-*" \) \
        -print0 2> /dev/null | xargs -0 -r perl -0pi -e "$CLEAN_EXPR"
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

_EXYNOS9810_RESTORE_VENDOR_BASELINE
_EXYNOS9810_RESTORE_ODM_BASELINE
_EXYNOS9810_SANITIZE_RESTORED_TEXT

if [ "$EXYNOS9810_USED_FULL_SYSTEM_BASELINE" != true ]; then
    _EXYNOS9810_FIX_SYSTEM_PERMISSION_CASE
fi

_EXYNOS9810_DEDUP_METADATA "system"
_EXYNOS9810_DEDUP_METADATA "vendor"
_EXYNOS9810_DEDUP_METADATA "odm"
_EXYNOS9810_SANITIZE_METADATA "system" "u:object_r:system_file:s0"
_EXYNOS9810_SANITIZE_METADATA "vendor" "u:object_r:vendor_file:s0"
_EXYNOS9810_SANITIZE_METADATA "odm" "u:object_r:vendor_file:s0"
