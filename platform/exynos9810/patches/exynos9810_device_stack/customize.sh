SKIPUNZIP=1

EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}"
EXYNOS9810_PATCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXYNOS9810_USE_N770_HXA3_VENDOR="${EXYNOS9810_USE_N770_HXA3_VENDOR:-false}"
EXYNOS9810_VENDOR_FIRMWARE="${EXYNOS9810_VENDOR_FIRMWARE:-SM-N770F_PHN}"
EXYNOS9810_PRESERVE_N770_VENDOR_IDENTITY="${EXYNOS9810_PRESERVE_N770_VENDOR_IDENTITY:-false}"
EXYNOS9810_DISABLE_SETUP_WIZARDS="${EXYNOS9810_DISABLE_SETUP_WIZARDS:-false}"
EXYNOS9810_KERNELSU_NEXT_APK="${EXYNOS9810_KERNELSU_NEXT_APK:-/mnt/c/Users/Admin/Downloads/KernelSU_Next_v3.0.0_32857-release.apk}"
EXYNOS9810_USE_LEGACY_RADIO_STACK="${EXYNOS9810_USE_LEGACY_RADIO_STACK:-false}"
EXYNOS9810_HXA3_VENDOR_BASE_APPLIED=false

if [ ! -d "$EXYNOS9810_LEGACY_PORT_DIR/device_port" ]; then
    LOGW "legacy Exynos9810 donor directory not found: $EXYNOS9810_LEGACY_PORT_DIR"
    LOGW "Set EXYNOS9810_LEGACY_PORT_DIR to apply Exynos9810 device overlays"
    return 0
fi

_EXYNOS9810_FILE_MODE()
{
    case "$1" in
        bin/*|*/bin/*|xbin/*|*/xbin/*|*.sh)
            echo 755
            ;;
        *)
            echo 644
            ;;
    esac
}

_EXYNOS9810_ADD_METADATA()
{
    local SRC="$1"
    local PARTITION="$2"
    local ENTRY_PREFIX="$3"
    local CONTEXT_PREFIX="$4"
    local LABEL="$5"
    local DIR_GROUP="$6"

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"

    while IFS= read -r f; do
        local REL="${f#$SRC}"
        REL="${REL#/}"

        local ENTRY="$ENTRY_PREFIX"
        local CONTEXT="$CONTEXT_PREFIX"
        if [ "$REL" ]; then
            ENTRY="$ENTRY/$REL"
            CONTEXT="$CONTEXT/$REL"
        fi

        local USER=0
        local GROUP=0
        local ENTRY_LABEL="$LABEL"
        local MODE
        if [ -d "$f" ]; then
            GROUP="$DIR_GROUP"
            MODE=755
        else
            MODE="$(_EXYNOS9810_FILE_MODE "$REL")"
            case "$ENTRY" in
                system/lib/*|system/lib64/*|system/product/lib/*|system/product/lib64/*|system/system_ext/lib/*|system/system_ext/lib64/*)
                    ENTRY_LABEL="u:object_r:system_lib_file:s0"
                    ;;
            esac
        fi

        awk -v key="$ENTRY" '$1 != key' "$WORK_DIR/configs/fs_config-$PARTITION" > "$WORK_DIR/configs/fs_config-$PARTITION.tmp"
        mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"
        awk -v key="$CONTEXT" '$1 != key' "$WORK_DIR/configs/file_context-$PARTITION" > "$WORK_DIR/configs/file_context-$PARTITION.tmp"
        mv -f "$WORK_DIR/configs/file_context-$PARTITION.tmp" "$WORK_DIR/configs/file_context-$PARTITION"
        echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$WORK_DIR/configs/fs_config-$PARTITION"
        echo "$CONTEXT $ENTRY_LABEL" >> "$WORK_DIR/configs/file_context-$PARTITION"
    done < <(find "$SRC")
}

_EXYNOS9810_SET_METADATA()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local CONTEXT="$3"
    local USER="$4"
    local GROUP="$5"
    local MODE="$6"
    local LABEL="$7"

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"
    awk -v key="$ENTRY" '$1 != key' "$WORK_DIR/configs/fs_config-$PARTITION" > "$WORK_DIR/configs/fs_config-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/fs_config-$PARTITION.tmp" "$WORK_DIR/configs/fs_config-$PARTITION"
    awk -v key="$CONTEXT" '$1 != key' "$WORK_DIR/configs/file_context-$PARTITION" > "$WORK_DIR/configs/file_context-$PARTITION.tmp"
    mv -f "$WORK_DIR/configs/file_context-$PARTITION.tmp" "$WORK_DIR/configs/file_context-$PARTITION"
    echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$WORK_DIR/configs/fs_config-$PARTITION"
    echo "$CONTEXT $LABEL" >> "$WORK_DIR/configs/file_context-$PARTITION"
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

_EXYNOS9810_RC_INSERT_AFTER_SERVICE()
{
    local RC="$1"
    local SERVICE="$2"
    local LINE="$3"

    [ -f "$RC" ] || return 0
    grep -Fxq "    $LINE" "$RC" && return 0
    sed -i "/^service $SERVICE /a\\    $LINE" "$RC"
}

_EXYNOS9810_COPY_TREE()
{
    local SRC="$1"
    local DST="$2"
    local PARTITION="$3"
    local ENTRY_PREFIX="$4"
    local CONTEXT_PREFIX="$5"
    local LABEL="$6"
    local DIR_GROUP="${7:-0}"

    [ -d "$SRC" ] || return 0

    LOG "- Applying legacy Exynos9810 donor overlay ${SRC//$EXYNOS9810_LEGACY_PORT_DIR\//}"
    mkdir -p "$DST"
    EVAL "cp -a \"$SRC/.\" \"$DST/\"" || return 1
    _EXYNOS9810_ADD_METADATA "$SRC" "$PARTITION" "$ENTRY_PREFIX" "$CONTEXT_PREFIX" "$LABEL" "$DIR_GROUP"
}

_EXYNOS9810_REPLACE_TREE()
{
    local SRC="$1"
    local DST="$2"
    shift 2

    if [ ! -d "$SRC" ]; then
        LOGE "Required Exynos9810 donor tree is missing: $SRC"
        return 1
    fi

    rm -rf "$DST"
    _EXYNOS9810_COPY_TREE "$SRC" "$DST" "$@"
}

_EXYNOS9810_REPLACE_EXTRACTED_PARTITION()
{
    local FW_BASE="$1"
    local PARTITION="$2"
    local DST="$3"

    [ -d "$FW_BASE/$PARTITION" ] || return 1

    LOG "- Applying extracted ${FW_BASE##*/} $PARTITION baseline"
    rm -rf "$DST"
    mkdir -p "$DST"
    EVAL "cp -a \"$FW_BASE/$PARTITION/.\" \"$DST/\"" || return 1

    if [ -f "$FW_BASE/fs_config-$PARTITION" ]; then
        EVAL "cp -a \"$FW_BASE/fs_config-$PARTITION\" \"$WORK_DIR/configs/fs_config-$PARTITION\"" || return 1
    fi
    if [ -f "$FW_BASE/file_context-$PARTITION" ]; then
        EVAL "cp -a \"$FW_BASE/file_context-$PARTITION\" \"$WORK_DIR/configs/file_context-$PARTITION\"" || return 1
    fi
}

_EXYNOS9810_COPY_FILE()
{
    local SRC="$1"
    local DST="$2"
    local PARTITION="$3"
    local ENTRY="$4"
    local CONTEXT="$5"
    local LABEL="$6"

    [ -f "$SRC" ] || return 0

    LOG "- Adding legacy Exynos9810 donor file ${SRC//$EXYNOS9810_LEGACY_PORT_DIR\//}"
    mkdir -p "$(dirname "$DST")"
    EVAL "cp -a \"$SRC\" \"$DST\"" || return 1
    case "$DST" in
        *.conf|*.prop|*.rc|*.txt|*.xml)
            EVAL "sed -i 's/\\r$//' \"$DST\"" || return 1
            ;;
    esac

    touch "$WORK_DIR/configs/fs_config-$PARTITION" "$WORK_DIR/configs/file_context-$PARTITION"
    if ! grep -q -F "$ENTRY " "$WORK_DIR/configs/fs_config-$PARTITION" 2> /dev/null; then
        echo "$ENTRY 0 0 644 capabilities=0x0" >> "$WORK_DIR/configs/fs_config-$PARTITION"
    fi
    if ! grep -q -F "$CONTEXT " "$WORK_DIR/configs/file_context-$PARTITION" 2> /dev/null; then
        echo "$CONTEXT $LABEL" >> "$WORK_DIR/configs/file_context-$PARTITION"
    fi
}

_EXYNOS9810_REPLACE_SMALI_METHOD()
{
    local FILE="$1"
    local METHOD="$2"
    local BODY="$3"
    local TMP="$FILE.tmp"

    awk -v FN="$METHOD" -v BODY="$BODY" '
        BEGIN { inside = 0; replaced = 0; n = split(BODY, lines, "\n") }
        /^\.method/ && index($0, FN) {
            print
            for (i = 1; i <= n; i++) print lines[i]
            inside = 1
            replaced = 1
            next
        }
        inside && /^\.end method/ {
            print
            inside = 0
            next
        }
        inside { next }
        { print }
        END { if (!replaced) exit 42 }
    ' "$FILE" > "$TMP" || {
        rm -f "$TMP"
        LOGE "Failed to patch method \"$METHOD\" in $FILE"
        return 1
    }

    mv -f "$TMP" "$FILE"
}

_EXYNOS9810_PATCH_SERVICES_SP_SOFTWARE_CRYPTO()
{
    local SMALI
    local CREATE_BODY
    local DECRYPT_BODY

    LOG "- Patching services.jar synthetic-password blob crypto for Exynos9810 keymaster"
    DECODE_APK "system" "system/framework/services.jar" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/framework/services.jar" -path "*/com/android/server/locksettings/SyntheticPasswordManager.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "SyntheticPasswordManager.smali not found in decoded services.jar"
        return 1
    fi

    CREATE_BODY="$(cat <<'EOF'
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    invoke-static {p3, v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object p0

    return-object p0
EOF
)"
    DECRYPT_BODY="$(cat <<'EOF'
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    invoke-static {p3, v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    return-object p0
EOF
)"

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "createSpBlob(Ljava/lang/String;[B[BJ)[B" "$CREATE_BODY" || return 1
    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "decryptSpBlob(Ljava/lang/String;[B[B)[B" "$DECRYPT_BODY" || return 1
}

_EXYNOS9810_PATCH_SEMWIFI_STDP_BOOTLOOP()
{
    local SMALI
    local CONSTRUCTOR_BODY
    local NOOP_BODY

    LOG "- Disabling Samsung STDP service bootloop on Exynos9810 enforcing"
    DECODE_APK "system" "system/framework/semwifi-service.jar" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/framework/semwifi-service.jar" -path "*/com/samsung/android/server/wifi/stdp/StandardPlusService.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "StandardPlusService.smali not found in decoded semwifi-service.jar"
        return 1
    fi

    CONSTRUCTOR_BODY="$(cat <<'EOF'
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusService;->mImpl:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    return-void
EOF
)"
    NOOP_BODY="$(cat <<'EOF'
    .locals 0

    return-void
EOF
)"

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "constructor <init>(Landroid/content/Context;)V" "$CONSTRUCTOR_BODY" || return 1
    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" "onBootPhase(I)V" "$NOOP_BODY" || return 1
    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" "onStart()V" "$NOOP_BODY" || return 1
}

_EXYNOS9810_PATCH_EXTENDED_ETHERNET_BOOTLOOP()
{
    local SMALI
    local NOOP_BODY

    LOG "- Disabling Samsung ExtendedEthernet bootphase on Exynos9810"
    DECODE_APK "system" "system/framework/services.jar" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/framework/services.jar" -path "*/com/android/server/ExtendedEthernetService.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "ExtendedEthernetService.smali not found in decoded services.jar"
        return 1
    fi

    NOOP_BODY="$(cat <<'EOF'
    .locals 0

    return-void
EOF
)"

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" "onBootPhase(I)V" "$NOOP_BODY" || return 1
}

_EXYNOS9810_PATCH_SYSTEMUI_LAUNCHER_PERMISSIONS()
{
    local MANIFEST
    local PERM

    LOG "- Adding One UI Home provider permission requests to SystemUI"
    DECODE_APK "system_ext" "priv-app/SystemUI/SystemUI.apk" || return 1

    MANIFEST="$APKTOOL_DIR/system_ext/priv-app/SystemUI/SystemUI.apk/AndroidManifest.xml"
    if [ ! -f "$MANIFEST" ]; then
        LOGE "SystemUI decoded AndroidManifest.xml not found"
        return 1
    fi

    for PERM in \
        "com.samsung.android.launcher.permission.READ_SETTINGS" \
        "com.samsung.android.launcher.permission.WRITE_SETTINGS" \
        "com.sec.android.app.launcher.permission.READ_SETTINGS" \
        "com.sec.android.app.launcher.permission.WRITE_SETTINGS"; do
        if ! grep -q -F "android:name=\"$PERM\"" "$MANIFEST"; then
            sed -i "/<application /i\\    <uses-permission android:name=\"$PERM\"/>" "$MANIFEST" || return 1
        fi
    done
}

_EXYNOS9810_WRITE_SYSTEMUI_LAUNCHER_PERMISSIONS()
{
    local SYSTEM_DST="$WORK_DIR/system/system/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml"
    local SYSTEM_EXT_DST

    if $TARGET_OS_BUILD_SYSTEM_EXT_PARTITION; then
        SYSTEM_EXT_DST="$WORK_DIR/system_ext/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml"
    else
        SYSTEM_EXT_DST="$WORK_DIR/system/system/system_ext/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml"
    fi

    LOG "- Granting SystemUI access to One UI Home launcher provider"
    mkdir -p "$(dirname "$SYSTEM_DST")" "$(dirname "$SYSTEM_EXT_DST")"
    cat > "$SYSTEM_DST" <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <privapp-permissions package="com.android.systemui">
        <permission name="com.samsung.android.launcher.permission.READ_SETTINGS"/>
        <permission name="com.samsung.android.launcher.permission.WRITE_SETTINGS"/>
        <permission name="com.sec.android.app.launcher.permission.READ_SETTINGS"/>
        <permission name="com.sec.android.app.launcher.permission.WRITE_SETTINGS"/>
    </privapp-permissions>
</permissions>
EOF
    cp -a "$SYSTEM_DST" "$SYSTEM_EXT_DST"

    _EXYNOS9810_SET_METADATA "system" \
        "system/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml" \
        "/system/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml" \
        0 0 644 "u:object_r:system_file:s0"
    if $TARGET_OS_BUILD_SYSTEM_EXT_PARTITION; then
        _EXYNOS9810_SET_METADATA "system_ext" \
            "etc/permissions/privapp-permissions-com.android.systemui-launcher.xml" \
            "/system_ext/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml" \
            0 0 644 "u:object_r:system_file:s0"
    else
        _EXYNOS9810_SET_METADATA "system" \
            "system/system_ext/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml" \
            "/system/system_ext/etc/permissions/privapp-permissions-com.android.systemui-launcher.xml" \
            0 0 644 "u:object_r:system_file:s0"
    fi
}

_EXYNOS9810_WRITE_WIFI_FEATURES()
{
    local DIR="$WORK_DIR/system/system/etc/permissions"
    local FEATURE
    local FILE

    LOG "- Restoring Exynos9810 framework feature declarations"
    mkdir -p "$DIR"

    for FEATURE in \
        android.hardware.usb.accessory \
        android.hardware.usb.host \
        android.hardware.wifi \
        android.hardware.wifi.direct \
        android.software.app_widgets; do
        FILE="$DIR/$FEATURE.xml"
        cat > "$FILE" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <feature name="$FEATURE" />
</permissions>
EOF
        _EXYNOS9810_SET_METADATA "system" \
            "system/etc/permissions/$FEATURE.xml" \
            "/system/etc/permissions/$FEATURE.xml" \
            0 0 644 "u:object_r:system_file:s0"
    done
}

_EXYNOS9810_WRITE_EXYNOS9810_KEYLAYOUTS()
{
    local KL_DIR="$WORK_DIR/system/system/usr/keylayout"

    LOG "- Adding Exynos9810 dedicated power key layouts"
    mkdir -p "$KL_DIR"

    cat > "$KL_DIR/wg_pwrkey.kl" <<'EOF'
key 116   POWER             WAKE
EOF

    cat > "$KL_DIR/gpio_keys.kl" <<'EOF'
key 114   VOLUME_DOWN
key 115   VOLUME_UP
key 116   POWER             WAKE
key 703   WINK
EOF

    _EXYNOS9810_SET_METADATA "system" "system/usr/keylayout/wg_pwrkey.kl" \
        "/system/usr/keylayout/wg_pwrkey.kl" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "system/usr/keylayout/gpio_keys.kl" \
        "/system/usr/keylayout/gpio_keys.kl" 0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_COPY_ROOTFS_FILE()
{
    local ROOTFS_IMG="$1"
    local SRC="$2"
    local MODE="${3:-644}"
    local USER="${4:-0}"
    local GROUP="${5:-0}"
    local DST="$WORK_DIR/system/${SRC#/}"
    local ENTRY="${SRC#/}"
    local TMP_FILE

    [ -f "$ROOTFS_IMG" ] || return 0

    TMP_FILE="$TMP_DIR/exynos9810_rootfs_${ENTRY//\//_}"
    rm -f "$TMP_FILE"
    mkdir -p "$(dirname "$TMP_FILE")"
    if ! debugfs -R "dump $SRC $TMP_FILE" "$ROOTFS_IMG" >/dev/null 2>&1; then
        LOGW "legacy Exynos9810 donor rootfs file not found: $SRC"
        return 0
    fi

    LOG "- Adding legacy Exynos9810 donor rootfs file $SRC"
    mkdir -p "$(dirname "$DST")"
    EVAL "cp -a \"$TMP_FILE\" \"$DST\"" || return 1

    touch "$WORK_DIR/configs/fs_config-system" "$WORK_DIR/configs/file_context-system"
    sed -i "\|^$ENTRY |d" "$WORK_DIR/configs/fs_config-system"
    sed -i "\|^/$ENTRY |d" "$WORK_DIR/configs/file_context-system"
    echo "$ENTRY $USER $GROUP $MODE capabilities=0x0" >> "$WORK_DIR/configs/fs_config-system"
    echo "/$ENTRY u:object_r:rootfs:s0" >> "$WORK_DIR/configs/file_context-system"
}

_EXYNOS9810_APPLY_ROOTFS()
{
    local ROOTFS_IMG="$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/rootfs.img"

    [ -f "$ROOTFS_IMG" ] || return 0

    LOG "- Applying Exynos9810 system-as-root files"
    _EXYNOS9810_COPY_ROOTFS_FILE "$ROOTFS_IMG" "/audit_filter_table"
    _EXYNOS9810_COPY_ROOTFS_FILE "$ROOTFS_IMG" "/dpolicy_system"
    _EXYNOS9810_COPY_ROOTFS_FILE "$ROOTFS_IMG" "/init.container.rc" 750 0 2000
    _EXYNOS9810_COPY_ROOTFS_FILE "$ROOTFS_IMG" "/init.environ.rc" 750 0 2000
    _EXYNOS9810_COPY_ROOTFS_FILE "$ROOTFS_IMG" "/sepolicy_version"

    touch "$WORK_DIR/configs/fs_config-system" "$WORK_DIR/configs/file_context-system"
    while read -r entry uid gid mode; do
        [ "$entry" ] || continue
        if [ "$entry" != "system" ]; then
            rm -rf "$WORK_DIR/system/$entry"
        fi
        mkdir -p "$WORK_DIR/system/$entry"
        sed -i "\|^$entry |d" "$WORK_DIR/configs/fs_config-system"
        sed -i "\|^/$entry |d" "$WORK_DIR/configs/file_context-system"
        echo "$entry $uid $gid $mode capabilities=0x0" >> "$WORK_DIR/configs/fs_config-system"
        echo "/$entry u:object_r:rootfs:s0" >> "$WORK_DIR/configs/file_context-system"
    done <<'EOF'
acct 0 0 755
apex 0 0 755
bootstrap-apex 0 0 755
cache 1000 2001 770
config 0 0 555
data 1000 1000 771
data_mirror 0 0 755
debug_ramdisk 0 0 755
dev 0 0 755
efs 0 0 755
linkerconfig 0 0 755
metadata 0 0 755
mnt 0 1000 755
odm 0 0 755
odm_dlkm 0 0 755
oem 0 0 755
omr 0 0 755
optics 0 0 755
postinstall 0 0 755
prism 0 0 755
proc 0 0 755
product 0 0 755
second_stage_resources 0 0 755
storage 0 1028 751
sys 0 0 755
system 0 0 755
system_dlkm 0 0 755
tmp 0 0 755
vendor 0 2000 755
vendor_dlkm 0 0 755
EOF

    while read -r entry target; do
        [ "$entry" ] || continue
        rm -rf "$WORK_DIR/system/$entry"
        ln -sf "$target" "$WORK_DIR/system/$entry"
        sed -i "\|^$entry |d" "$WORK_DIR/configs/fs_config-system"
        sed -i "\|^/$entry |d" "$WORK_DIR/configs/file_context-system"
        local USER=0
        local GROUP=0
        local LABEL="u:object_r:rootfs:s0"
        case "$entry" in
            init)
                GROUP=2000
                LABEL="u:object_r:init_exec:s0"
                ;;
        esac
        echo "$entry $USER $GROUP 777 capabilities=0x0" >> "$WORK_DIR/configs/fs_config-system"
        echo "/$entry $LABEL" >> "$WORK_DIR/configs/file_context-system"
    done <<'EOF'
bin /system/bin
bugreports /data/user_de/0/com.android.shell/files/bugreports
d /sys/kernel/debug
etc /system/etc
init /system/bin/init
sdcard /storage/self/primary
system_ext /system/system_ext
EOF
}

_EXYNOS9810_COPY_SYSTEM()
{
    _EXYNOS9810_COPY_TREE "$1" "$WORK_DIR/system/system" "system" "system" "/system" "u:object_r:system_file:s0" 0
}

_EXYNOS9810_COPY_PRODUCT()
{
    if ${TARGET_OS_BUILD_PRODUCT_PARTITION:-true}; then
        _EXYNOS9810_COPY_TREE "$1" "$WORK_DIR/product" "product" "product" "/product" "u:object_r:system_file:s0" 0
    else
        _EXYNOS9810_COPY_TREE "$1" "$WORK_DIR/system/product" "system" "product" "/product" "u:object_r:system_file:s0" 0
    fi
}

_EXYNOS9810_NORMALIZE_PRODUCT_LAYOUT()
{
    ${TARGET_OS_BUILD_PRODUCT_PARTITION:-true} && return 0

    LOG "- Normalizing product into Exynos9810 system-as-root /product"
    mkdir -p "$WORK_DIR/system/product"

    if [ -d "$WORK_DIR/system/system/product" ] && [ ! -L "$WORK_DIR/system/system/product" ]; then
        EVAL "cp -a \"$WORK_DIR/system/system/product/.\" \"$WORK_DIR/system/product/\"" || return 1
        rm -rf "$WORK_DIR/system/system/product"
    fi

    rm -rf "$WORK_DIR/system/system/product"
    ln -sf /product "$WORK_DIR/system/system/product"

    touch "$WORK_DIR/configs/fs_config-system" "$WORK_DIR/configs/file_context-system"
    sed -i 's|^system/product|product|' "$WORK_DIR/configs/fs_config-system"
    sed -i 's|^/system/product|/product|' "$WORK_DIR/configs/file_context-system"

    _EXYNOS9810_SET_METADATA "system" "product" "/product" 0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "system/product" "/system/product" 0 0 777 "u:object_r:system_file:s0"
    _EXYNOS9810_DEDUP_METADATA "system"
}

_EXYNOS9810_CLEAN_PRODUCT_LAYOUT()
{
    ${TARGET_OS_BUILD_PRODUCT_PARTITION:-true} && return 0

    rm -rf "$WORK_DIR/system/product/product"
    sed -i '\|^product/product |d' "$WORK_DIR/configs/fs_config-system"
    sed -i '\|^/product/product |d' "$WORK_DIR/configs/file_context-system"
    _EXYNOS9810_DEDUP_METADATA "system"
}

_EXYNOS9810_SET_PROP_FILE()
{
    local FILE="$1"
    local PROP="$2"
    local VALUE="$3"

    [ -f "$FILE" ] || return 0

    sed -i 's/\r$//' "$FILE"
    if grep -q "^${PROP}=" "$FILE"; then
        sed -i "s|^${PROP}=.*|${PROP}=${VALUE}|" "$FILE"
    else
        echo "${PROP}=${VALUE}" >> "$FILE"
    fi
}

_EXYNOS9810_DELETE_PROP_FILE()
{
    local FILE="$1"
    local PROP="$2"

    [ -f "$FILE" ] || return 0

    sed -i 's/\r$//' "$FILE"
    sed -i "\|^${PROP}=|d" "$FILE"
}

_EXYNOS9810_SET_PROP_ALL()
{
    local PROP="$1"
    local VALUE="$2"
    local FILE

    for FILE in \
        "$WORK_DIR/system/system/build.prop" \
        "$WORK_DIR/system/system/system_ext/etc/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/system_dlkm/etc/build.prop" \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/vendor/vendor_dlkm/etc/build.prop" \
        "$WORK_DIR/vendor/odm_dlkm/etc/build.prop" \
        "$WORK_DIR/odm/etc/build.prop"; do
        _EXYNOS9810_SET_PROP_FILE "$FILE" "$PROP" "$VALUE"
    done
}

_EXYNOS9810_SET_PROP_SYSTEM()
{
    local PROP="$1"
    local VALUE="$2"
    local FILE

    for FILE in \
        "$WORK_DIR/system/system/build.prop" \
        "$WORK_DIR/system/system/system_ext/etc/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/system_dlkm/etc/build.prop"; do
        _EXYNOS9810_SET_PROP_FILE "$FILE" "$PROP" "$VALUE"
    done
}

_EXYNOS9810_DELETE_PROP_VENDOR_SIDE()
{
    local PROP="$1"
    local FILE

    for FILE in \
        "$WORK_DIR/vendor/build.prop" \
        "$WORK_DIR/vendor/vendor_dlkm/etc/build.prop" \
        "$WORK_DIR/vendor/odm_dlkm/etc/build.prop" \
        "$WORK_DIR/odm/etc/build.prop" \
        "$WORK_DIR/system/odm/etc/build.prop"; do
        _EXYNOS9810_DELETE_PROP_FILE "$FILE" "$PROP"
    done
}

_EXYNOS9810_DELETE_VENDOR_ENTRY()
{
    local REL="$1"

    rm -f "$WORK_DIR/vendor/$REL"
    sed -i "\|^vendor/$REL |d" "$WORK_DIR/configs/fs_config-vendor"
    sed -i "\|^/vendor/$REL |d" "$WORK_DIR/configs/file_context-vendor"
}

_EXYNOS9810_DELETE_METADATA_PREFIX()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local CONTEXT="$3"

    [ -f "$WORK_DIR/configs/fs_config-$PARTITION" ] && \
        sed -i "\|^$ENTRY\(/\\| \)|d" "$WORK_DIR/configs/fs_config-$PARTITION"
    [ -f "$WORK_DIR/configs/file_context-$PARTITION" ] && \
        sed -i "\|^$CONTEXT\(/\\| \)|d" "$WORK_DIR/configs/file_context-$PARTITION"
}

_EXYNOS9810_COPY_HXA3_VENDOR_FILE()
{
    local FW_BASE="$1"
    local REL="$2"

    [ -f "$FW_BASE/vendor/$REL" ] || return 0

    mkdir -p "$(dirname "$WORK_DIR/vendor/$REL")"
    EVAL "cp -a \"$FW_BASE/vendor/$REL\" \"$WORK_DIR/vendor/$REL\"" || return 1
    _EXYNOS9810_SET_METADATA "vendor" "vendor/$REL" "/vendor/$REL" 0 0 "$(_EXYNOS9810_FILE_MODE "$REL")" "u:object_r:vendor_file:s0"
}

_EXYNOS9810_RESTORE_HXA3_VENDOR_CORE()
{
    $EXYNOS9810_HXA3_VENDOR_BASE_APPLIED || return 0

    local FW_BASE="$FW_DIR/$EXYNOS9810_VENDOR_FIRMWARE"
    [ -d "$FW_BASE/vendor" ] || return 0

    LOG "- Restoring N770F HXA3 VNDK33 core HAL services"

    _EXYNOS9810_DELETE_VENDOR_ENTRY "bin/hw/android.hardware.keymaster@3.0-service"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "etc/init/android.hardware.keymaster@3.0-service.rc"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "lib/hw/android.hardware.keymaster@3.0-impl.so"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "lib64/hw/android.hardware.keymaster@3.0-impl.so"

    _EXYNOS9810_DELETE_VENDOR_ENTRY "bin/hw/android.hardware.sensors@1.0-service"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "etc/init/android.hardware.sensors@1.0-service.rc"

    local REL
    for REL in \
        "bin/hw/android.hardware.keymaster@4.0-service" \
        "etc/init/android.hardware.keymaster@4.0-service.rc" \
        "lib64/android.hardware.keymaster@3.0.so" \
        "lib64/android.hardware.keymaster@4.0.so" \
        "lib64/android.hardware.keymaster@4.1.so" \
        "lib64/libkeymaster4.so" \
        "lib64/libkeymaster4_1support.so" \
        "lib64/libkeymaster4support.so" \
        "lib64/libkeymaster_helper.so" \
        "lib64/libkeymaster_messages.so" \
        "lib64/libkeymaster_portable.so" \
        "lib64/libpuresoftkeymasterdevice.so" \
        "lib64/libskeymaster4device.so" \
        "bin/hw/android.hardware.sensors@2.0-service.multihal" \
        "etc/init/android.hardware.sensors@2.0-service-multihal.rc" \
        "etc/vintf/manifest.xml" \
        "etc/vintf/compatibility_matrix.xml" \
        "etc/vintf/manifest/android.hardware.sensors@2.0-multihal.xml" \
        "bin/hw/vendor.samsung.hardware.health-service" \
        "etc/init/vendor.samsung.hardware.health-service.rc" \
        "bin/hw/vendor.samsung.hardware.vibrator@2.2-service" \
        "etc/init/vendor.samsung.hardware.vibrator@2.2-service.rc"; do
        _EXYNOS9810_COPY_HXA3_VENDOR_FILE "$FW_BASE" "$REL"
    done
}

_EXYNOS9810_RESTORE_HXA3_AI_MODELS()
{
    $EXYNOS9810_HXA3_VENDOR_BASE_APPLIED || return 0

    local FW_BASE="$FW_DIR/$EXYNOS9810_VENDOR_FIRMWARE"
    [ -d "$FW_BASE/vendor" ] || return 0

    LOG "- Restoring N770F HXA3 SNAP/SAIV model sets"

    local REL ENTRY_PREFIX CONTEXT_PREFIX LABEL CONFIG PREFIX
    for REL in "etc/saiv" "etc/singletake" "saiv"; do
        [ -d "$FW_BASE/vendor/$REL" ] || continue

        ENTRY_PREFIX="vendor/$REL"
        CONTEXT_PREFIX="/vendor/$REL"
        for CONFIG in \
            "$WORK_DIR/configs/fs_config-vendor" \
            "$WORK_DIR/configs/file_context-vendor"; do
            [ -f "$CONFIG" ] || continue
            if [[ "$CONFIG" == *fs_config* ]]; then
                PREFIX="$ENTRY_PREFIX"
            else
                PREFIX="$CONTEXT_PREFIX"
            fi
            awk -v p="$PREFIX" '$1 != p && index($1, p "/") != 1' \
                "$CONFIG" > "$CONFIG.tmp"
            mv -f "$CONFIG.tmp" "$CONFIG"
        done

        if [[ "$REL" == etc/* ]]; then
            LABEL="u:object_r:vendor_configs_file:s0"
        else
            LABEL="u:object_r:vendor_file:s0"
        fi
        _EXYNOS9810_REPLACE_TREE "$FW_BASE/vendor/$REL" \
            "$WORK_DIR/vendor/$REL" \
            "vendor" "$ENTRY_PREFIX" "$CONTEXT_PREFIX" "$LABEL" 2000
    done
}

_EXYNOS9810_APPLY_EXYNOS9810_CAMERA_BRIDGE()
{
    $EXYNOS9810_HXA3_VENDOR_BASE_APPLIED || return 0

    LOG "- Pairing S9 camera HAL with legacy Exynos9810 donor's matching UniHAL bridge"

    local ARCH LIB
    for ARCH in lib lib64; do
        _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/$EXYNOS9810_DEVICE/vendor/$ARCH/hw/camera.exynos9810.so" \
            "$WORK_DIR/vendor/$ARCH/hw/camera.exynos9810.so" \
            "vendor" "vendor/$ARCH/hw/camera.exynos9810.so" "/vendor/$ARCH/hw/camera.exynos9810.so" \
            "u:object_r:vendor_file:s0"
        _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/$EXYNOS9810_DEVICE/vendor/$ARCH/libexynoscamera3.so" \
            "$WORK_DIR/vendor/$ARCH/libexynoscamera3.so" \
            "vendor" "vendor/$ARCH/libexynoscamera3.so" "/vendor/$ARCH/libexynoscamera3.so" \
            "u:object_r:vendor_file:s0"

        for LIB in \
            "unihal_cutils@2.1.so" \
            "unihal_main@2.1.so" \
            "unihal_uniplugin@1.0.so"; do
            _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/vendor/$ARCH/$LIB" \
                "$WORK_DIR/vendor/$ARCH/$LIB" \
                "vendor" "vendor/$ARCH/$LIB" "/vendor/$ARCH/$LIB" \
                "u:object_r:vendor_file:s0"
        done
    done
}

_EXYNOS9810_PATCH_BLUETOOTH_AGENT()
{
    local APK="system/app/BluetoothAgent/BluetoothAgent.apk"
    local APK_DIR="$APKTOOL_DIR/system/app/BluetoothAgent/BluetoothAgent.apk"
    local SMALI

    [ -f "$WORK_DIR/system/$APK" ] || return 0

    LOG "- Disabling legacy BluetoothAgent BD test boot service"
    DECODE_APK "system" "$APK" || return 1

    SMALI="$APK_DIR/smali/com/sec/android/app/bluetoothagent/BluetoothBDAdrressReceiver.smali"
    if [ ! -f "$SMALI" ]; then
        LOGE "BluetoothBDAdrressReceiver.smali not found in BluetoothAgent.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "onReceive(Landroid/content/Context;Landroid/content/Intent;)V" \
        "$(cat <<'EOF'
    .locals 2

    const-string v0, "BluetoothBDAdrressReceiver"

    const-string v1, "UN1CA: skip legacy BD test service on exynos9810"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
EOF
)" || return 1

    SMALI="$APK_DIR/smali/com/sec/android/app/bluetoothagent/BluetoothBDTestService.smali"
    if [ ! -f "$SMALI" ]; then
        LOGE "BluetoothBDTestService.smali not found in BluetoothAgent.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "onStart(Landroid/content/Intent;I)V" \
        "$(cat <<'EOF'
    .locals 3

    move-object/from16 v0, p0

    const-string v1, "BluetoothBDTestService"

    const-string v2, "UN1CA: skip legacy BD test service on exynos9810"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
EOF
)" || return 1
}

_EXYNOS9810_PATCH_ONEUI8_CAMERA_APP()
{
    local APK="system/priv-app/SamsungCamera/SamsungCamera.apk"
    local SMALI

    [ -f "$WORK_DIR/system/$APK" ] || return 0

    LOG "- Keeping One UI 8 Camera and disabling Samsung SemLocation provider"
    DECODE_APK "system" "$APK" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/util/PackageUtil.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "PackageUtil.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "isSemLocationManagerSupported(Landroid/content/Context;)Z" \
        "$(cat <<'EOF'
    .locals 1

    const/4 p0, 0x0

    return p0
EOF
)" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/Camera.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "Camera.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "isSeamlessZoomAvailable(Lcom/sec/android/app/camera/interfaces/CameraId;)Z" \
        "$(cat <<'EOF'
    .locals 1

    const/4 v0, 0x0

    return v0
EOF
)" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/vizinsight/atl/vzimageclassifier/SceneDetector.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "SceneDetector.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "initilize()V" \
        "$(cat <<'EOF'
    .locals 2

    const-string v0, "SceneDetector"

    const-string v1, "UN1CA: disabled SceneDetector native init on exynos9810"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
EOF
)" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "SaliencyFoodPhotoMaker.smali not found in SamsungCamera.apk"
        return 1
    fi

    if ! grep -q "UN1CA: force Food maker to skip native saliency node" "$SMALI"; then
        EVAL "sed -i '/iput-boolean v0, p0, Lcom\\/samsung\\/android\\/camera\\/core2\\/maker\\/SaliencyFoodPhotoMaker;->mObjectDetectorAvailable:Z/a\\
\\
    # UN1CA: force Food maker to skip native saliency node on exynos9810\\
\\
    const/4 v0, 0x1\\
\\
    iput-boolean v0, p0, Lcom\\/samsung\\/android\\/camera\\/core2\\/maker\\/SaliencyFoodPhotoMaker;->mObjectDetectorAvailable:Z' \"$SMALI\"" || return 1
    fi

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/audio/MultiMicController.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "MultiMicController.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "prepare(IIII)V" \
        "$(cat <<'EOF'
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz v0, :cond_0

    const-string v0, "MultiMicController"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/audio/MultiMicController;->initialize(IIII)V

    sget-object p1, Lx1/c;->SUPPORT_PRO_VIDEO_AUDIO_INPUT_CONTROL:Lx1/c;

    invoke-static {p1}, Li0/b;->g(Lx1/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    :cond_0
    return-void
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "enableZoomFocus(ZI)V" \
        "$(cat <<'EOF'
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableZoomFocus : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiMicController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    if-eqz p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/MultiMicController;->setZoomValue(F)V

    :cond_0
    return-void
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "release()V" \
        "$(cat <<'EOF'
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/AudioUtil;->isMultiMicZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiMicController"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/audio/MultiMicController;->enableZoomFocus(ZI)V

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->release()V

    :cond_1
    return-void
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "setAudioFacing(I)V" \
        "$(cat <<'EOF'
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->getMultiMicFacing(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setSoundLocation(I)Z

    :cond_0
    return-void
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "setMicLevel(I)V" \
        "$(cat <<'EOF'
    .locals 2

    const-string/jumbo v0, "setMicLevel : "

    const-string v1, "MultiMicController"

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/a;->s(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMicSensitivity(II)Z

    :cond_0
    return-void
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "setMode(I)V" \
        "$(cat <<'EOF'
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    :cond_0
    return-void
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "setZoomValue(F)V" \
        "$(cat <<'EOF'
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/AudioUtil;->isMultiMicZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setZoomValue : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiMicController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/MultiMicController;->mManager:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioZoomLevel(F)V

    :cond_1
    return-void
EOF
)" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/layer/keyscreen/zoom/lenslist/ZoomLensListAdapter.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "ZoomLensListAdapter.smali not found in SamsungCamera.apk"
        return 1
    fi

    python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()
start = text.find(".method private isSelectedItem(Ljava/util/List;I)Z")
if start == -1:
    raise SystemExit("isSelectedItem(List,int) not found")
end = text.find(".end method", start)
if end == -1:
    raise SystemExit("isSelectedItem(List,int) end not found")
end += len(".end method")
method = text[start:end]

method = method.replace("    .locals 3", "    .locals 4", 1)

annotation_end = method.find("    .end annotation")
if annotation_end == -1:
    raise SystemExit("isSelectedItem annotation end not found")
annotation_end += len("    .end annotation")

if "unica_zoom_index_invalid" not in method:
    guard = """

    if-ltz p2, :unica_zoom_index_invalid

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :unica_zoom_index_invalid
"""
    method = method[:annotation_end] + guard + method[annotation_end:]

if "    move v3, p2" not in method:
    marker = "    const/4 v2, 0x1\n"
    if marker not in method:
        raise SystemExit("isSelectedItem const v2 marker not found")
    method = method.replace(marker, marker + "\n    move v3, p2\n", 1)

method = method.replace(
    "    add-int/2addr p2, v2\n\n    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;",
    "    add-int/lit8 v3, v3, 0x1\n\n    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;",
    1,
)

if "unica_zoom_range_valid" not in method:
    method = method.replace(
        "    sub-int/2addr p1, v2\n\n    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;",
        "    sub-int/2addr p1, v2\n\n    if-ge p1, p2, :unica_zoom_range_valid\n\n    const/4 v1, 0x0\n\n    goto :goto_1\n\n    :unica_zoom_range_valid\n\n    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;",
        1,
    )

if "unica_zoom_index_invalid" in method and "    :unica_zoom_index_invalid" not in method:
    method = method.replace(
        "    nop\n\n    :pswitch_data_0",
        "    :unica_zoom_index_invalid\n    const/4 v1, 0x0\n\n    return v1\n\n    nop\n\n    :pswitch_data_0",
        1,
    )

path.write_text(text[:start] + method + text[end:])
PY

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/util/ShootingModeMap.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "ShootingModeMap.smali not found in SamsungCamera.apk"
        return 1
    fi

    LOG "- Routing Portrait to the single rear camera on Exynos9810"
    EVAL "sed -i 's/Lcom\\/sec\\/android\\/app\\/camera\\/interfaces\\/CameraId;->BACK_TELE_DUAL_PORTRAIT/Lcom\\/sec\\/android\\/app\\/camera\\/interfaces\\/CameraId;->BACK/g' \"$SMALI\"" || return 1
    EVAL "sed -i 's/Lcom\\/sec\\/android\\/app\\/camera\\/interfaces\\/CameraId;->BACK_NORMAL_DUAL_PORTRAIT/Lcom\\/sec\\/android\\/app\\/camera\\/interfaces\\/CameraId;->BACK/g' \"$SMALI\"" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/engine/core/MakerBuilder.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "MakerBuilder.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        'lambda$initializeMakerMap$7(Lcom/sec/android/app/camera/engine/interfaces/InternalEngine;)Ljava/lang/Class;' \
        "$(cat <<'EOF'
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->MAKER_SINGLE_BOKEH_PHOTO:Ljava/lang/Class;

    return-object p0
EOF
)" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/shootingmode/feature/PortraitFeature.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "PortraitFeature.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature\$SupportedBokehEffectType;" \
        "$(cat <<'EOF'
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->SINGLE_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    return-object p0
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "getSupportedZoomType(I)Lcom/sec/android/app/camera/interfaces/ZoomType;" \
        "$(cat <<'EOF'
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ZoomType;->NOT_SUPPORTED:Lcom/sec/android/app/camera/interfaces/ZoomType;

    return-object p0
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "isAngleChangeSupported(I)Z" \
        "$(cat <<'EOF'
    .locals 1

    const/4 p0, 0x0

    return p0
EOF
)" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/shootingmode/portrait/PortraitZoomController.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "PortraitZoomController.smali not found in SamsungCamera.apk"
        return 1
    fi

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "getBokehLensZoomValue(I)I" \
        "$(cat <<'EOF'
    .locals 0

    return p1
EOF
)" || return 1

    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "refreshZoomProperty()V" \
        "$(cat <<'EOF'
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/common/zoom/ShootingModeZoomController;->refreshZoomProperty()V

    return-void
EOF
)" || return 1

    SMALI="$( { grep -RIl "invoke-static {p1}, Lu2/t;->c(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/interfaces/CameraSettings\$Key;" \
        "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" 2>/dev/null || true; } | head -n 1)"
    if [ -z "$SMALI" ]; then
        SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
            -path "*/v2/q.smali" | head -n 1)"
    fi

    if [ ! -f "$SMALI" ]; then
        LOGW "Skipping unsafe back bokeh lens select guard: SamsungCamera.apk does not contain the expected One UI 8 lens selector pattern"
    else
        python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()
marker = "UN1CA: ignored unsafe back bokeh lens select on exynos9810"
if marker not in text:
    needle = """    invoke-static {p1}, Lu2/t;->c(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v4
"""
    insert = needle + """
    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_BOKEH_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-ne v4, v6, :unica_allow_bokeh_lens_select

    const-string p0, "UN1CA: ignored unsafe back bokeh lens select on exynos9810"

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :unica_allow_bokeh_lens_select
"""
    if needle not in text:
        raise SystemExit("onLensSelect bokeh lens insertion point not found")
    text = text.replace(needle, insert, 1)
    path.write_text(text)
PY
    fi

    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk" \
        -path "*/com/sec/android/app/camera/CameraErrorEventHandler.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "CameraErrorEventHandler.smali not found in SamsungCamera.apk"
        return 1
    fi

    if ! grep -q "legacy Exynos9810 donor: ignore stale camera error -20" "$SMALI"; then
        EVAL "sed -i '0,/    const v0, 0x7f13083d/{s|    const v0, 0x7f13083d|    const/16 v0, -0x14\\n\\n    if-ne p1, v0, :exynos9810_keep_camera_error\\n\\n    const-string p0, \"legacy Exynos9810 donor: ignore stale camera error -20\"\\n\\n    invoke-static {p0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I\\n\\n    return-void\\n\\n    :exynos9810_keep_camera_error\\n    const v0, 0x7f13083d|}' \"$SMALI\"" || return 1
    fi
}

_EXYNOS9810_SET_FLOATING_FEATURE()
{
    local FILE="$1"
    local CONFIG="$2"
    local VALUE="$3"

    [ -f "$FILE" ] || return 0

    if grep -q "<$CONFIG>" "$FILE"; then
        sed -i "s|<$CONFIG>[^<]*</$CONFIG>|<$CONFIG>$VALUE</$CONFIG>|" "$FILE"
    else
        sed -i "/<\/SecFloatingFeatureSet>/i\\    <$CONFIG>$VALUE</$CONFIG>" "$FILE"
    fi
}

_EXYNOS9810_DELETE_FLOATING_FEATURE()
{
    local FILE="$1"
    local CONFIG="$2"

    [ -f "$FILE" ] || return 0
    sed -i "/<$CONFIG>/d" "$FILE"
}

_EXYNOS9810_PATCH_DEBLOATED_FLOATING_FEATURES()
{
    local FILE

    LOG "- Adjusting floating features for Exynos9810 debloat and QR support"

    for FILE in \
        "$WORK_DIR/system/system/etc/floating_feature.xml" \
        "$WORK_DIR/vendor/etc/floating_feature.xml"; do
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_AVATAR" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_DOWNLOAD_EFFECT" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_CAMERA_CONFIG_QRCODE_INTERVAL" "500"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_SMART_SUGGESTIONS_WIDGET" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBY_SUPPORT_CUSTOM_WAKEUP" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBY_SUPPORT_USERKWD_WAKEUP" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY" "FALSE"
        _EXYNOS9810_DELETE_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBYVISION_CONFIG_FUNCTIONS"
        _EXYNOS9810_DELETE_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBYVISION_CONFIG_QUICKMEASURE"
    done
}

_EXYNOS9810_PATCH_SETTINGS_DEVICE_IMAGE()
{
    local APK="system/priv-app/SecSettings/SecSettings.apk"
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk"
    local LAYOUT="$APK_DIR/res/layout/sec_device_info_settings_header.xml"
    local DRAWABLE="$APK_DIR/res/drawable/unica_exynos9810_device_image.xml"

    [ -f "$WORK_DIR/system/$APK" ] || return 0

    LOG "- Adding local Exynos9810 device image fallback to Settings"
    DECODE_APK "system" "$APK" || return 1

    [ -f "$LAYOUT" ] || return 0
    if ! grep -q "unica_exynos9810_device_image" "$LAYOUT"; then
        sed -i 's|android:id="@id/device_image"|android:id="@id/device_image" android:src="@drawable/unica_exynos9810_device_image"|' "$LAYOUT"
        sed -i 's|android:visibility="gone"|android:visibility="visible"|' "$LAYOUT"
    fi

    cat > "$DRAWABLE" <<'EOF'
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="96dp"
    android:height="96dp"
    android:viewportWidth="96"
    android:viewportHeight="96">
    <path android:fillColor="#2B2D31" android:pathData="M31,6h34c5,0 9,4 9,9v66c0,5 -4,9 -9,9H31c-5,0 -9,-4 -9,-9V15c0,-5 4,-9 9,-9z"/>
    <path android:fillColor="#111214" android:pathData="M33,11h30c3,0 5,2 5,5v60c0,3 -2,5 -5,5H33c-3,0 -5,-2 -5,-5V16c0,-3 2,-5 5,-5z"/>
    <path android:fillColor="#3A3D42" android:pathData="M42,14h12c1,0 2,1 2,2s-1,2 -2,2H42c-1,0 -2,-1 -2,-2s1,-2 2,-2z"/>
    <path android:fillColor="#7F858F" android:pathData="M48,76m-3,0a3,3 0,1 0,6 0a3,3 0,1 0,-6 0"/>
</vector>
EOF
}

_EXYNOS9810_PATCH_RT_CGROUPS()
{
    local RC="$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc"
    [ -f "$RC" ] || return 0

    LOG "- Reserving the Android 16 real-time CPU group"
    sed -i \
        -e 's|write /dev/cpuctl/bg_cached/cpu.rt_runtime_us 950000|write /dev/cpuctl/bg_cached/cpu.rt_runtime_us 0|' \
        -e 's|write /dev/cpuctl/bg_abnormal/cpu.rt_runtime_us 950000|write /dev/cpuctl/bg_abnormal/cpu.rt_runtime_us 0|' \
        "$RC"
    sed -i '/write \/dev\/cpuctl\/bg_abnormal\/cpu.rt_period_us 1000000/a\
    write /dev/cpuctl/cpu.rt_period_us 1000000\
    write /dev/cpuctl/cpu.rt_runtime_us 950000\
    write /dev/cpuctl/rt/cpu.rt_period_us 1000000\
    write /dev/cpuctl/rt/cpu.rt_runtime_us 950000' "$RC"
}

_EXYNOS9810_APPLY_KEYMASTER3()
{
    local SRC_BASE="$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common"
    local MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"
    local REL

    LOG "- Applying Exynos9810 Trustonic Keymaster 3.0 stack"

    _EXYNOS9810_DELETE_VENDOR_ENTRY "bin/hw/android.hardware.keymaster@4.0-service"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "etc/init/android.hardware.keymaster@4.0-service.rc"

    for REL in \
        "bin/hw/android.hardware.keymaster@3.0-service" \
        "etc/init/android.hardware.keymaster@3.0-service.rc" \
        "lib/libkeymaster3device.so" \
        "lib/libskeymaster3device.so" \
        "lib/hw/android.hardware.keymaster@3.0-impl.so" \
        "lib64/libkeymaster_helper_vendor.so" \
        "lib64/libkeymaster_mdfpp.so" \
        "lib64/libkeymaster_portable.so" \
        "lib64/libkeymaster2_mdfpp.so" \
        "lib64/libkeymaster3device.so" \
        "lib64/libpuresoftkeymasterdevice.so" \
        "lib64/libskeymaster3device.so" \
        "lib64/libsoftkeymasterdevice.so" \
        "lib64/hw/android.hardware.keymaster@3.0-impl.so"; do
        _EXYNOS9810_COPY_HXA3_VENDOR_FILE "$SRC_BASE" "$REL"
    done

    if [ -f "$MANIFEST" ]; then
        sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
            s/<version>4\.0<\/version>/<version>3.0<\/version>/
            s/@4\.0::IKeymasterDevice/@3.0::IKeymasterDevice/
        }' "$MANIFEST"
    fi

    _EXYNOS9810_RC_INSERT_AFTER_SERVICE \
        "$WORK_DIR/vendor/etc/init/android.hardware.keymaster@3.0-service.rc" \
        "vendor.keymaster-3-0" \
        "interface android.hardware.keymaster@3.0::IKeymasterDevice default"

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.keymaster@3.0-service" \
        "/vendor/bin/hw/android.hardware.keymaster@3.0-service" \
        0 2000 755 "u:object_r:hal_keymaster_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/init/android.hardware.keymaster@3.0-service.rc" \
        "/vendor/etc/init/android.hardware.keymaster@3.0-service.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_APPLY_AUDIO6_BRIDGE()
{
    local SRC="$EXYNOS9810_PATCH_DIR/audio6/vendor"
    local MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"

    if [ ! -d "$SRC" ]; then
        LOGW "Missing Android 16 audio bridge: $SRC"
        return 1
    fi

    LOG "- Applying Android 16 HIDL Audio 6.0 bridge"
    _EXYNOS9810_COPY_TREE "$SRC" "$WORK_DIR/vendor" \
        "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 2000

    if [ -f "$MANIFEST" ]; then
        sed -i '/<name>android.hardware.audio<\/name>/,/<\/hal>/ {
            s/<version>5\.0<\/version>/<version>6.0<\/version>/
            s/@5\.0::IDevicesFactory/@6.0::IDevicesFactory/
        }
        /<name>android.hardware.audio.effect<\/name>/,/<\/hal>/ {
            s/<version>5\.0<\/version>/<version>6.0<\/version>/
            s/@5\.0::IEffectsFactory/@6.0::IEffectsFactory/
        }' "$MANIFEST"
    fi
}

_EXYNOS9810_PATCH_AUDIO_INIT_SERVICES()
{
    local RC="$WORK_DIR/system/system/etc/init/audioserver.rc"

    [ -f "$RC" ] || return 0

    LOG "- Removing unavailable Android 16 AIDL audio service restarts"
    sed -i \
        -e '/vendor\.secaudiohal-aidl/d' \
        -e '/vendor\.audio-hal-aidl/d' \
        -e '/vendor\.audio-effect-hal-aidl/d' \
        -e '/vendor\.audio-hal-4-0-msd/d' \
        -e '/audio_proxy_service/d' \
        -e '/audio_parameter_parser_service/d' \
        "$RC"

    _EXYNOS9810_SET_METADATA "system" \
        "system/etc/init/audioserver.rc" \
        "/system/etc/init/audioserver.rc" \
        0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_APPLY_HEALTH21()
{
    local REL

    LOG "- Applying Exynos9810 HIDL Health 2.1 stack"

    _EXYNOS9810_DELETE_VENDOR_ENTRY "bin/hw/vendor.samsung.hardware.health-service"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "etc/init/vendor.samsung.hardware.health-service.rc"
    _EXYNOS9810_DELETE_VENDOR_ENTRY "etc/vintf/manifest/vendor.samsung.hardware.health-service.xml"

    for REL in \
        "bin/hw/android.hardware.health@2.1-service-samsung" \
        "etc/init/android.hardware.health@2.1-service-samsung.rc" \
        "etc/vintf/manifest/android.hardware.health@2.1-samsung.xml" \
        "lib/android.hardware.health@1.0.so" \
        "lib/android.hardware.health@2.0.so" \
        "lib/android.hardware.health@2.1.so" \
        "lib/vendor.samsung.hardware.health@2.0.so" \
        "lib/hw/android.hardware.health@2.0-impl-2.1-samsung.so" \
        "lib64/android.hardware.health@1.0.so" \
        "lib64/android.hardware.health@2.0.so" \
        "lib64/android.hardware.health@2.1.so" \
        "lib64/vendor.samsung.hardware.health@2.0.so" \
        "lib64/hw/android.hardware.health@2.0-impl-2.1-samsung.so"; do
        _EXYNOS9810_COPY_HXA3_VENDOR_FILE "$EXYNOS9810_LEGACY_PORT_DIR" "$REL"
    done

    _EXYNOS9810_RC_INSERT_AFTER_SERVICE \
        "$WORK_DIR/vendor/etc/init/android.hardware.health@2.1-service-samsung.rc" \
        "health-hal-2-1-samsung" \
        "interface android.hardware.health@2.0::IHealth default"
    if [ -f "$WORK_DIR/vendor/etc/init/android.hardware.health@2.1-service-samsung.rc" ] && \
            ! grep -Fxq "    interface android.hardware.health@2.1::IHealth default" \
                "$WORK_DIR/vendor/etc/init/android.hardware.health@2.1-service-samsung.rc"; then
        sed -i '/^    interface android.hardware.health@2.0::IHealth default/a\    interface android.hardware.health@2.1::IHealth default' \
            "$WORK_DIR/vendor/etc/init/android.hardware.health@2.1-service-samsung.rc"
    fi

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.health@2.1-service-samsung" \
        "/vendor/bin/hw/android.hardware.health@2.1-service-samsung" \
        0 0 755 "u:object_r:hal_health_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/init/android.hardware.health@2.1-service-samsung.rc" \
        "/vendor/etc/init/android.hardware.health@2.1-service-samsung.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/vintf/manifest/android.hardware.health@2.1-samsung.xml" \
        "/vendor/etc/vintf/manifest/android.hardware.health@2.1-samsung.xml" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_TARGET_IDENTITY()
{
    local MODEL
    local NAME
    local STOCK_INCREMENTAL
    local VENDOR_SECURITY_PATCH

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
            ;;
        *)
            return 0
            ;;
    esac

    LOG "- Applying $TARGET_CODENAME product/vendor identity"

    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/system/build.prop" "ro.product.device" "$TARGET_CODENAME"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/system/build.prop" "ro.product.model" "$MODEL"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/system/build.prop" "ro.product.name" "$NAME"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/system/build.prop" "ro.build.flavor" "$NAME-user"
    _EXYNOS9810_SET_PROP_ALL "ro.factory.model" "$MODEL"

    local FILE
    local PREFIX
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
        if [ "$EXYNOS9810_PRESERVE_N770_VENDOR_IDENTITY" = "true" ] && \
                { [ "$PREFIX" = "vendor" ] || [ "$PREFIX" = "vendor_dlkm" ] ||
                  [ "$PREFIX" = "odm" ] || [ "$PREFIX" = "odm_dlkm" ]; }; then
            continue
        fi
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.product.$PREFIX.brand" "samsung"
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.product.$PREFIX.device" "$TARGET_CODENAME"
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.product.$PREFIX.manufacturer" "samsung"
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.product.$PREFIX.model" "$MODEL"
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.product.$PREFIX.name" "$NAME"
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.$PREFIX.build.fingerprint" "samsung/$NAME/$TARGET_CODENAME:10/QP1A.190711.020/$STOCK_INCREMENTAL:user/release-keys"
        _EXYNOS9810_SET_PROP_FILE "$FILE" "ro.$PREFIX.build.version.incremental" "$STOCK_INCREMENTAL"
    done

    if [ "$EXYNOS9810_PRESERVE_N770_VENDOR_IDENTITY" != "true" ]; then
        _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.product.first_api_level" "${TARGET_PRODUCT_SHIPPING_API_LEVEL:-26}"
        _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.board.first_api_level" "${TARGET_PRODUCT_SHIPPING_API_LEVEL:-26}"
    fi
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.vendor.api_level" "$TARGET_BOARD_API_LEVEL"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.board.api_level" "$TARGET_BOARD_API_LEVEL"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.product.board" "exynos9810"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.board.platform" "universal9810"

    # Some N770F packages leave the vendor patchlevel blank even though the
    # matching system build.prop contains it. Keymaster treats that as zero
    # and refuses to configure its trustlet after rollback protection is set.
    if $EXYNOS9810_HXA3_VENDOR_BASE_APPLIED; then
        VENDOR_SECURITY_PATCH="$(sed -n 's/^ro.build.version.security_patch=//p' \
            "$FW_DIR/$EXYNOS9810_VENDOR_FIRMWARE/system/system/build.prop" | head -n 1)"
    else
        VENDOR_SECURITY_PATCH="$(sed -n 's/^ro.vendor.build.security_patch=//p' \
            "$EXYNOS9810_LEGACY_PORT_DIR/vendor/build.prop" | head -n 1)"
    fi
    if [ -n "$VENDOR_SECURITY_PATCH" ]; then
        _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
            "ro.vendor.build.security_patch" "$VENDOR_SECURITY_PATCH"
    fi

    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/product/etc/build.prop" "ro.product.page_size" "4096"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/product/etc/build.prop" "ro.product.cpu.pagesize.max" "4096"
}

_EXYNOS9810_APPLY_UN1GAGA_VENDOR_COMPAT()
{
    LOG "- Applying UN1GAGA-style legacy vendor compatibility"

    _EXYNOS9810_DELETE_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.boot.dynamic_partitions"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "dalvik.vm.dex2oat64.enabled" "true"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.incremental.enable" "yes"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.hardware.keystore" "mdfpp"
    _EXYNOS9810_DELETE_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.hardware.keystore_desede"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.security.keystore.keytype" "sak"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.zygote.disable_gl_preload" "true"
}

_EXYNOS9810_DISABLE_LEGACY_VAULTKEEPER()
{
    LOG "- Disabling legacy CASS/VaultKeeper vendor services"

    # These N770F services continuously restart on S9/N9 because their Trustonic
    # VaultKeeper trustlet never becomes ready, which breaks Samsung app flows.
    for REL in \
        "bin/cass" \
        "bin/vaultkeeperd" \
        "bin/vendor.samsung.hardware.security.vaultkeeper@2.0-service" \
        "etc/init/cass.rc" \
        "etc/init/vaultkeeper_common.rc" \
        "etc/vintf/manifest/vaultkeeper_manifest.xml" \
        "lib64/vendor.samsung.hardware.security.vaultkeeper@2.0.so"; do
        _EXYNOS9810_DELETE_VENDOR_ENTRY "$REL"
    done
}

_EXYNOS9810_REMOVE_N770_INIT_COLLISIONS()
{
    LOG "- Removing N770F init scripts that collide with S9/N9 init"

    # HXA3/VNDK33 Note10 Lite vendor ships init.exynos9810.rc. On S9/N9 the
    # kernel exposes ro.hardware=samsungexynos9810 and legacy Exynos9810 donor's
    # init.samsungexynos9810.rc owns the fs/late-fs stages. Keeping both files
    # makes init run two mount_all paths and the N770F script waits for
    # partitions such as sec_efs/spu that are not part of the S9 layout.
    _EXYNOS9810_DELETE_VENDOR_ENTRY "etc/init/init.exynos9810.rc"
}

_EXYNOS9810_DISABLE_SETUP_WIZARDS()
{
    if [ "$EXYNOS9810_DISABLE_SETUP_WIZARDS" != "true" ]; then
        return 0
    fi

    LOG "- Disabling setup wizards for Exynos9810 debug builds"

    rm -rf \
        "$WORK_DIR/system/system/priv-app/SecSetupWizard_Global" \
        "$WORK_DIR/system/system/system_ext/priv-app/SetupWizard" \
        "$WORK_DIR/system/system/app/SetupWizardLegalProvider" \
        "$WORK_DIR/system/product/priv-app/GooglePartnerSetup" \
        "$WORK_DIR/product/priv-app/GooglePartnerSetup"

    _EXYNOS9810_DELETE_METADATA_PREFIX "system" "system/priv-app/SecSetupWizard_Global" "/system/priv-app/SecSetupWizard_Global"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" "system/system_ext/priv-app/SetupWizard" "/system/system_ext/priv-app/SetupWizard"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" "system/app/SetupWizardLegalProvider" "/system/app/SetupWizardLegalProvider"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" "product/priv-app/GooglePartnerSetup" "/product/priv-app/GooglePartnerSetup"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" "system/product/priv-app/GooglePartnerSetup" "/system/product/priv-app/GooglePartnerSetup"
    _EXYNOS9810_DELETE_METADATA_PREFIX "product" "product/priv-app/GooglePartnerSetup" "/product/priv-app/GooglePartnerSetup"

    _EXYNOS9810_SET_PROP_SYSTEM "ro.setupwizard.mode" "DISABLED"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/product/etc/build.prop" "ro.setupwizard.mode" "DISABLED"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/product/etc/build.prop" "setupwizard.feature.enable_quick_start_flow" "false"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/system/product/etc/build.prop" "ro.setupwizard.mode" "DISABLED"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/system/system/product/etc/build.prop" "setupwizard.feature.enable_quick_start_flow" "false"
}

_EXYNOS9810_PATCH_SETTINGS_PROVIDER_SETUP_SKIP()
{
    local BOOLS

    if [ "$EXYNOS9810_DISABLE_SETUP_WIZARDS" != "true" ]; then
        return 0
    fi

    LOG "- Marking SettingsProvider defaults as provisioned for setup-skip builds"
    DECODE_APK "system" "system/priv-app/SettingsProvider/SettingsProvider.apk" || return 1

    BOOLS="$APKTOOL_DIR/system/priv-app/SettingsProvider/SettingsProvider.apk/res/values/bools.xml"
    if [ ! -f "$BOOLS" ]; then
        LOGE "SettingsProvider bools.xml not found"
        return 1
    fi

    sed -i \
        -e 's|<bool name="def_device_provisioned">false</bool>|<bool name="def_device_provisioned">true</bool>|' \
        -e 's|<bool name="def_user_setup_complete">false</bool>|<bool name="def_user_setup_complete">true</bool>|' \
        "$BOOLS" || return 1
}

_EXYNOS9810_PRELOAD_KERNELSU_NEXT()
{
    local DST_DIR="$WORK_DIR/system/system/app/KernelSUNext"
    local DST="$DST_DIR/KernelSUNext.apk"

    if [ ! -f "$EXYNOS9810_KERNELSU_NEXT_APK" ]; then
        LOGW "KernelSU Next APK not found: $EXYNOS9810_KERNELSU_NEXT_APK"
        return 0
    fi

    LOG "- Preloading KernelSU Next manager"
    mkdir -p "$DST_DIR"
    EVAL "cp -a \"$EXYNOS9810_KERNELSU_NEXT_APK\" \"$DST\"" || return 1
    _EXYNOS9810_SET_METADATA "system" \
        "system/app/KernelSUNext" \
        "/system/app/KernelSUNext" \
        0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" \
        "system/app/KernelSUNext/KernelSUNext.apk" \
        "/system/app/KernelSUNext/KernelSUNext.apk" \
        0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_RESTORE_EXYNOS9810_RADIO_STACK()
{
    local SRC
    local REL
    local DST

    if [ "$EXYNOS9810_USE_LEGACY_RADIO_STACK" != "true" ]; then
        return 0
    fi

    LOG "- Restoring Galaxy S9/Note9 radio stack"

    for REL in \
        vendor/bin/hw/rild \
        vendor/bin/secril_config_svc \
        vendor/lib/libaudio-ril.so \
        vendor/lib/libsec_semRil.so \
        vendor/lib/libsecril-client.so \
        vendor/lib64/android.hardware.radio.config@1.0.so \
        vendor/lib64/android.hardware.radio.config@1.1.so \
        vendor/lib64/android.hardware.radio.config@1.2.so \
        vendor/lib64/android.hardware.radio.config@1.3.so \
        vendor/lib64/android.hardware.radio.deprecated@1.0.so \
        vendor/lib64/android.hardware.radio@1.0.so \
        vendor/lib64/android.hardware.radio@1.1.so \
        vendor/lib64/android.hardware.radio@1.2.so \
        vendor/lib64/android.hardware.radio@1.3.so \
        vendor/lib64/android.hardware.radio@1.4.so \
        vendor/lib64/android.hardware.radio@1.5.so \
        vendor/lib64/android.hardware.radio@1.6.so \
        vendor/lib64/libril_sem.so \
        vendor/lib64/librilutils.so \
        vendor/lib64/libSemTelephonyProps.so \
        vendor/lib64/libsec-ril.so \
        vendor/lib64/libsec_semRil.so \
        vendor/lib64/libsecril-client.so \
        vendor/lib64/vendor.samsung.hardware.radio.bridge@2.0.so \
        vendor/lib64/vendor.samsung.hardware.radio.bridge@2.1.so \
        vendor/lib64/vendor.samsung.hardware.radio.channel@2.0.so \
        vendor/lib64/vendor.samsung.hardware.radio@2.0.so \
        vendor/lib64/vendor.samsung.hardware.radio@2.1.so \
        vendor/lib64/vendor.samsung.hardware.radio@2.2.so \
        vendor/etc/init/init.vendor.rilcommon.rc; do
        SRC="$EXYNOS9810_LEGACY_PORT_DIR/$REL"
        DST="$WORK_DIR/$REL"
        [ -f "$SRC" ] || continue
        mkdir -p "$(dirname "$DST")"
        EVAL "cp -a \"$SRC\" \"$DST\"" || return 1
    done

    if [ -f "$EXYNOS9810_LEGACY_PORT_DIR/vendor/etc/init/vendor.samsung.rilchip.slsi.rc" ]; then
        EVAL "cp -a \"$EXYNOS9810_LEGACY_PORT_DIR/vendor/etc/init/vendor.samsung.rilchip.slsi.rc\" \"$WORK_DIR/vendor/etc/init/vendor.sem.rilchip.rc\"" || return 1
    fi

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/rild" \
        "/vendor/bin/hw/rild" \
        0 2000 755 "u:object_r:rild_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/secril_config_svc" \
        "/vendor/bin/secril_config_svc" \
        0 2000 755 "u:object_r:vendor_secril_config_svc_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/init/init.vendor.rilcommon.rc" \
        "/vendor/etc/init/init\\.vendor\\.rilcommon\\.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/init/vendor.sem.rilchip.rc" \
        "/vendor/etc/init/vendor\\.sem\\.rilchip\\.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_WRITE_RIL_CP_AUDIO_FALLBACKS()
{
    local SRC="$WORK_DIR/vendor/firmware/CP_AUDIO_SLSI_SWA.bin"

    if [ ! -f "$SRC" ]; then
        LOGW "CP audio firmware missing; RIL fallback files were not written"
        return 0
    fi

    LOG "- Writing Exynos9810 RIL CP audio fallback files"

    _EXYNOS9810_COPY_FILE "$SRC" \
        "$WORK_DIR/system/system/etc/CP_AUDIO_SLSI.bin" \
        "system" "system/etc/CP_AUDIO_SLSI.bin" "/system/etc/CP_AUDIO_SLSI\\.bin" \
        "u:object_r:system_file:s0"

    _EXYNOS9810_COPY_FILE "$SRC" \
        "$WORK_DIR/system/prism/etc/carriers/single/EUX/CP_OMC_AUDIO_SLSI.bin" \
        "system" "prism/etc/carriers/single/EUX/CP_OMC_AUDIO_SLSI.bin" "/prism/etc/carriers/single/EUX/CP_OMC_AUDIO_SLSI\\.bin" \
        "u:object_r:system_file:s0"
}

_EXYNOS9810_WRITE_TELEPHONY_FEATURES()
{
    local SRC="$WORK_DIR/vendor/etc/permissions/android.hardware.telephony.gsm.xml"

    if [ ! -f "$SRC" ]; then
        LOGW "Telephony GSM feature XML missing from vendor"
        return 0
    fi

    LOG "- Publishing telephony feature XML from system partition"
    _EXYNOS9810_COPY_FILE "$SRC" \
        "$WORK_DIR/system/system/etc/permissions/android.hardware.telephony.gsm.xml" \
        "system" "system/etc/permissions/android.hardware.telephony.gsm.xml" "/system/etc/permissions/android\\.hardware\\.telephony\\.gsm\\.xml" \
        "u:object_r:system_file:s0"
}

_EXYNOS9810_PATCH_TELEPHONY_SLOT_TOPOLOGY()
{
    local SMALI

    LOG "- Aligning Android 16 telephony slot topology with Exynos9810 RIL"
    _EXYNOS9810_SET_PROP_SYSTEM "ro.telephony.sim_slots.count" "2"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.vendor.multisim.simslotcount" "2"

    DECODE_APK "system" "system/framework/telephony-common.jar" || return 1

    SMALI="$(find "$APKTOOL_DIR/system/framework/telephony-common.jar" \
        -path "*/com/android/internal/telephony/uicc/UiccController.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "UiccController.smali not found in telephony-common.jar"
        return 1
    fi

    if ! grep -q "UN1CA: keep UiccController slot arrays" "$SMALI"; then
        python3 - "$SMALI" <<'PY' || return 1
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()
needle = """    move-result p2

    new-instance v4, Ljava/lang/StringBuilder;
"""
replacement = """    move-result p2

    # UN1CA: keep UiccController slot arrays in sync with Samsung dual-slot RIL
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-ge p2, v4, :unica_slot_topology_ok

    move p2, v4

    :unica_slot_topology_ok
    new-instance v4, Ljava/lang/StringBuilder;
"""

if needle not in text:
    raise SystemExit("UiccController constructor slot-count needle not found")
path.write_text(text.replace(needle, replacement, 1))
PY
    fi
}

_EXYNOS9810_PATCH_ENFORCING_COMPAT()
{
    local PROP
    local RC
    local SRC

    LOG "- Applying Exynos9810 SELinux enforcing compatibility"

    # These are framework/global properties. Leaving them in vendor or odm makes
    # vendor_init hit hard SELinux denials on enforcing kernels before Android is
    # far enough along to recover cleanly.
    for PROP in \
        net.dns1 \
        net.dns2 \
        ro.arch \
        persist.demo.hdmirotationlock \
        ro.hdcp2.rx \
        ro.product.author \
        persist.sys.disable_rescue \
        ro.control_privapp_permissions \
        ro.frp.pst \
        ro.security.vaultkeeper.feature \
        ro.security.vaultkeeper.native \
        ro.config.num_speaker \
        ro.config.num_mic \
        ro.config.num_proximity \
        ro.config.speaker_amp \
        ro.config.bluetooth \
        ro.config.fmradio \
        ro.config.usb_by_primary \
        ro.config.a2dp_by_primary \
        ro.config.tima \
        ro.config.dmverity \
        ro.config.kap \
        wlan.wfd.hdcp \
        ro.opa.eligible_device \
        debug.performance.tuning \
        ro.kernel.android.checkjni \
        ro.kernel.checkjni \
        ro.config.nocheckin \
        fw.max_users \
        fw.show_multiuserui \
        fw.show_hidden_users \
        fw.power_user_switcher \
        persist.sys.unica.pif \
        persist.sys.pif.version \
        persist.sys.pif.fingerprint \
        boot.fps \
        shutdown.fps \
        ro.crypto.state \
        ro.boot.flash.locked \
        ro.surface_flinger.protected_contents \
        ro.sf.lcd_density \
        ro.sf.init.lcd_density \
        ro.gfx.driver.0 \
        ro.factory.model \
        ro.debuggable \
        ro.secure \
        ro.adb.secure \
        persist.service.adb.enable \
        persist.service.debuggable \
        ro.logd.kernel \
        persist.log.semlevel; do
        _EXYNOS9810_DELETE_PROP_VENDOR_SIDE "$PROP"
    done

    # Vendor init may only use exported vendor properties in triggers on
    # enforcing. Keep the baseband multisim triggers intact: Exynos9810's CP
    # needs ds_detect to be written before RIL can expose baseband/IMEI.
    RC="$WORK_DIR/vendor/etc/init/pa_daemon_kinibi.rc"
    if [ -f "$RC" ]; then
        sed -i 's/^on property:sys\.mobicoredaemon\.enable=true$/on property:vendor.sys.mobicoredaemon.enable=true/' "$RC"
    fi

    RC="$WORK_DIR/system/system/etc/init/insthk_kinibi.rc"
    if [ -f "$RC" ]; then
        sed -i 's/^on property:sys\.mobicoredaemon\.enable=true$/on property:vendor.sys.mobicoredaemon.enable=true/' "$RC"
    fi

    RC="$WORK_DIR/vendor/etc/init/init.recovery.samsungexynos9810.rc"
    if [ -f "$RC" ]; then
        sed -i \
            -e '/setprop ro\.debuggable /d' \
            -e '/setprop service\.adb\.root /d' \
            "$RC"
    fi

    RC="$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc"
    if [ -f "$RC" ]; then
        sed -i '/setprop ro\.crypto\.fuse_sdcard /d' "$RC"
    fi

    RC="$WORK_DIR/vendor/etc/init/init.baseband.rc"
    if [ -f "$RC" ]; then
        sed -i '/^# SS\/DS configuration/,$d' "$RC"
        cat >> "$RC" <<'EOF'

# SS/DS configuration
on boot
    write /sys/module/modem_ctrl_ss310ap/parameters/ds_detect 2
    setprop persist.radio.multisim.config dsds
EOF
    fi

    # Android 16's HIDL passthrough loader asks for the canonical mapper
    # module name. Samsung's Exynos9810 vendor only ships the 2.1-suffixed
    # mapper, so keep both names available like the working Exynos8895 port.
    for SRC in \
        "$WORK_DIR/vendor/lib/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" \
        "$WORK_DIR/vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so"; do
        if [ -f "$SRC" ] && [ ! -e "${SRC%-2.1.so}.so" ]; then
            cp -a "$SRC" "${SRC%-2.1.so}.so"
        fi
    done

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/vintf/manifest/android.hardware.health@2.1-samsung.xml" \
        "/vendor/etc/vintf/manifest/android\\.hardware\\.health@2\\.1-samsung\\.xml" \
        0 0 644 "u:object_r:vendor_configs_file:s0"

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/fstab.samsungexynos9810" \
        "/vendor/etc/fstab\\.samsungexynos9810" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/fstab.exynos9810" \
        "/vendor/etc/fstab\\.exynos9810" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/gpsd" \
        "/vendor/bin/hw/gpsd" \
        0 2000 755 "u:object_r:gpsd_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/gps.sh" \
        "/vendor/bin/hw/gps\\.sh" \
        0 2000 755 "u:object_r:gpsd_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/vendor.samsung.hardware.camera.provider@4.0-service" \
        "/vendor/bin/hw/vendor\\.samsung\\.hardware\\.camera\\.provider@4\\.0-service" \
        0 2000 755 "u:object_r:hal_camera_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.media.omx@1.0-service" \
        "/vendor/bin/hw/android\\.hardware\\.media\\.omx@1\\.0-service" \
        0 2000 755 "u:object_r:mediacodec_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/samsung.software.media.c2@1.0-service" \
        "/vendor/bin/hw/samsung\\.software\\.media\\.c2@1\\.0-service" \
        0 2000 755 "u:object_r:mediacodec_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.graphics.composer@2.2-service" \
        "/vendor/bin/hw/android\\.hardware\\.graphics\\.composer@2\\.2-service" \
        0 2000 755 "u:object_r:hal_graphics_composer_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/lib/hw" \
        "/vendor/lib/hw" \
        0 2000 755 "u:object_r:same_process_hal_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/lib64/hw" \
        "/vendor/lib64/hw" \
        0 2000 755 "u:object_r:same_process_hal_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/lib/hw/android.hardware.graphics.mapper@2.0-impl.so" \
        "/vendor/lib/hw/android\\.hardware\\.graphics\\.mapper@2\\.0-impl\\.so" \
        0 0 644 "u:object_r:same_process_hal_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl.so" \
        "/vendor/lib64/hw/android\\.hardware\\.graphics\\.mapper@2\\.0-impl\\.so" \
        0 0 644 "u:object_r:same_process_hal_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.health@2.1-service-samsung" \
        "/vendor/bin/hw/android\\.hardware\\.health@2\\.1-service-samsung" \
        0 0 755 "u:object_r:hal_health_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.power.samsung-service" \
        "/vendor/bin/hw/android\\.hardware\\.power\\.samsung-service" \
        0 2000 755 "u:object_r:hal_power_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/vendor.samsung.hardware.hyper-service" \
        "/vendor/bin/hw/vendor\\.samsung\\.hardware\\.hyper-service" \
        0 2000 755 "u:object_r:hal_hyper_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/vendor.samsung.hardware.miscpower@2.0-service" \
        "/vendor/bin/hw/vendor\\.samsung\\.hardware\\.miscpower@2\\.0-service" \
        0 2000 755 "u:object_r:hal_power_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/vendor.samsung.hardware.thermal@1.0-service" \
        "/vendor/bin/hw/vendor\\.samsung\\.hardware\\.thermal@1\\.0-service" \
        0 2000 755 "u:object_r:hal_thermal_default_exec:s0"
}

_EXYNOS9810_APPLY_BOOT_PROPS()
{
    LOG "- Applying Exynos9810 boot-critical props"

    _EXYNOS9810_SET_PROP_ALL "ro.product.author" "Unofficial UN1CA 9810"
    _EXYNOS9810_SET_PROP_ALL "ro.unica9810.name" "Unofficial UN1CA 9810"
    _EXYNOS9810_SET_PROP_ALL "ro.unica9810.edition" "unofficial"
    _EXYNOS9810_SET_PROP_ALL "ro.unica9810.branch" "Android-16"
    _EXYNOS9810_SET_PROP_ALL "persist.sys.disable_rescue" "true"
    _EXYNOS9810_SET_PROP_ALL "ro.control_privapp_permissions" "disable"
    _EXYNOS9810_SET_PROP_ALL "ro.frp.pst" ""
    _EXYNOS9810_SET_PROP_ALL "ro.security.vaultkeeper.feature" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.security.vaultkeeper.native" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.config.tima" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.config.dmverity" "false"
    _EXYNOS9810_SET_PROP_ALL "ro.config.kap" "false"
    _EXYNOS9810_SET_PROP_ALL "wlan.wfd.hdcp" "disable"
    _EXYNOS9810_SET_PROP_ALL "ro.opa.eligible_device" "true"
    _EXYNOS9810_SET_PROP_ALL "debug.performance.tuning" "1"
    _EXYNOS9810_SET_PROP_ALL "ro.lmk.use_psi" "true"
    _EXYNOS9810_SET_PROP_ALL "ro.lmk.kill_heaviest_task" "true"
    _EXYNOS9810_SET_PROP_ALL "ro.lmk.use_minfree_levels" "false"
    _EXYNOS9810_SET_PROP_ALL "ro.lmk.thrashing_limit" "30"
    _EXYNOS9810_SET_PROP_ALL "ro.lmk.thrashing_limit_decay" "50"
    _EXYNOS9810_SET_PROP_ALL "ro.kernel.android.checkjni" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.kernel.checkjni" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.config.nocheckin" "1"
    _EXYNOS9810_SET_PROP_ALL "fw.max_users" "30"
    _EXYNOS9810_SET_PROP_ALL "fw.show_multiuserui" "1"
    _EXYNOS9810_SET_PROP_ALL "fw.show_hidden_users" "1"
    _EXYNOS9810_SET_PROP_ALL "fw.power_user_switcher" "1"
    _EXYNOS9810_SET_PROP_ALL "persist.sys.unica.pif" "true"
    _EXYNOS9810_SET_PROP_ALL "persist.sys.pif.version" "20260603"
    _EXYNOS9810_SET_PROP_ALL "persist.sys.pif.fingerprint" "google/shiba_beta/shiba:CANARY/ZP11.260515.009/15513807:user/release-keys"
    _EXYNOS9810_SET_PROP_ALL "boot.fps" "30"
    _EXYNOS9810_SET_PROP_ALL "shutdown.fps" "30"
    _EXYNOS9810_SET_PROP_ALL "ro.crypto.state" "encrypted"
    _EXYNOS9810_SET_PROP_ALL "ro.boot.flash.locked" "1"
    _EXYNOS9810_SET_PROP_ALL "ro.surface_flinger.protected_contents" "1"
    _EXYNOS9810_SET_PROP_ALL "ro.sf.lcd_density" "420"
    _EXYNOS9810_SET_PROP_ALL "ro.sf.init.lcd_density" "560"
    _EXYNOS9810_SET_PROP_ALL "ro.gfx.driver.0" "com.samsung.gpudriver.S9MaliG72_90"

    _EXYNOS9810_SET_PROP_SYSTEM "persist.sys.usb.config" "mtp,adb"
    _EXYNOS9810_SET_PROP_SYSTEM "persist.service.adb.enable" "1"

    if [ "${EXYNOS9810_ENABLE_DEBUG_PROPS:-false}" = "true" ]; then
        _EXYNOS9810_SET_PROP_SYSTEM "ro.debuggable" "1"
        _EXYNOS9810_SET_PROP_SYSTEM "ro.secure" "0"
        _EXYNOS9810_SET_PROP_SYSTEM "ro.adb.secure" "0"
        _EXYNOS9810_SET_PROP_SYSTEM "persist.service.debuggable" "1"
        _EXYNOS9810_SET_PROP_SYSTEM "ro.logd.kernel" "true"
        _EXYNOS9810_SET_PROP_SYSTEM "persist.log.semlevel" "0xFFFFFFFF"
    fi
}

_EXYNOS9810_WRITE_SYSTEM_BOOT_DEBUG()
{
    if [ "${EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG:-false}" != "true" ]; then
        return 0
    fi

    LOG "- Adding Exynos9810 second-stage boot logger"

    mkdir -p "$WORK_DIR/system/system/etc/init" "$WORK_DIR/system/system/bin"

    cat > "$WORK_DIR/system/system/etc/init/unica_exynos9810_debug.rc" <<'EOF'
on early-init
    write /dev/kmsg "UN1CA-9810: Android second-stage init reached early-init"

on post-fs
    write /dev/kmsg "UN1CA-9810: post-fs reached"
    mkdir /cache/unica 0777 root root
    write /cache/unica/second_stage_post_fs.txt "post-fs reached"
    copy /proc/cmdline /cache/unica/cmdline.txt
    copy /proc/mounts /cache/unica/mounts_post_fs.txt
    copy /proc/partitions /cache/unica/partitions.txt
    start unica_exynos9810_bootlog

on post-fs-data
    write /dev/kmsg "UN1CA-9810: post-fs-data reached"
    mkdir /cache/unica 0777 root root
    write /cache/unica/post_fs_data.txt "post-fs-data reached"
    copy /proc/mounts /cache/unica/mounts_post_fs_data.txt

service unica_exynos9810_bootlog /system/bin/unica_exynos9810_bootlog.sh
    class core
    user root
    group root log readproc
    disabled
    oneshot
    seclabel u:r:su:s0
EOF

    cat > "$WORK_DIR/system/system/bin/unica_exynos9810_bootlog.sh" <<'EOF'
#!/system/bin/sh

OUT=/cache/unica
mkdir -p "$OUT"

{
    echo "UN1CA Exynos9810 boot logger"
    date
    echo
    echo "cmdline:"
    cat /proc/cmdline
    echo
    echo "mounts:"
    cat /proc/mounts
} > "$OUT/start.txt" 2>&1

getprop > "$OUT/props.txt" 2>&1
dmesg > "$OUT/dmesg_start.txt" 2>&1
logcat -b all -d -v threadtime > "$OUT/logcat_start.txt" 2>&1

logcat -b all -v threadtime -f "$OUT/logcat_live.txt" &
sleep 45

dmesg > "$OUT/dmesg_45s.txt" 2>&1
logcat -b all -d -v threadtime > "$OUT/logcat_45s.txt" 2>&1
sync
EOF

    chmod 644 "$WORK_DIR/system/system/etc/init/unica_exynos9810_debug.rc"
    chmod 755 "$WORK_DIR/system/system/bin/unica_exynos9810_bootlog.sh"

    _EXYNOS9810_SET_METADATA "system" "system/etc/init/unica_exynos9810_debug.rc" \
        "/system/etc/init/unica_exynos9810_debug.rc" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "system/bin/unica_exynos9810_bootlog.sh" \
        "/system/bin/unica_exynos9810_bootlog.sh" 0 2000 755 "u:object_r:system_file:s0"
}

_EXYNOS9810_WRITE_VENDOR_INIT_DEBUG()
{
    if [ "${EXYNOS9810_ENABLE_INIT_DEBUG:-true}" != "true" ]; then
        return 0
    fi

    LOG "- Adding Exynos9810 vendor init.debug boot logger"

    mkdir -p "$WORK_DIR/vendor/etc/init" "$WORK_DIR/vendor/bin"

    cat > "$WORK_DIR/vendor/etc/init/init.debug.rc" <<'EOF'
on early-init
    write /dev/kmsg "UN1CA-9810: init.debug early-init reached"

on post-fs
    write /dev/kmsg "UN1CA-9810: init.debug post-fs reached"
    mkdir /cache/unica 0777 root root
    write /cache/unica/init_debug_post_fs.txt "post-fs reached"
    copy /proc/cmdline /cache/unica/cmdline.txt
    copy /proc/mounts /cache/unica/mounts_post_fs.txt
    copy /proc/partitions /cache/unica/partitions.txt
    start unica9810_init_debug

on post-fs-data
    write /dev/kmsg "UN1CA-9810: init.debug post-fs-data reached"
    mkdir /cache/unica 0777 root root
    write /cache/unica/init_debug_post_fs_data.txt "post-fs-data reached"
    copy /proc/mounts /cache/unica/mounts_post_fs_data.txt

on property:sys.boot_completed=1
    write /dev/kmsg "UN1CA-9810: boot_completed reached"
    write /cache/unica/boot_completed.txt "1"

service unica9810_init_debug /vendor/bin/init_debug_log.sh
    class core
    user root
    group root log readproc
    disabled
    oneshot
    seclabel u:r:su:s0
EOF

    cat > "$WORK_DIR/vendor/bin/init_debug_log.sh" <<'EOF'
#!/system/bin/sh

OUT=/cache/unica
mkdir -p "$OUT"

{
    echo "UN1CA Exynos9810 init.debug logger"
    date
    echo
    echo "cmdline:"
    cat /proc/cmdline
    echo
    echo "mounts:"
    cat /proc/mounts
    echo
    echo "partitions:"
    cat /proc/partitions
} > "$OUT/init_debug_start.txt" 2>&1

getprop > "$OUT/props_start.txt" 2>&1
dmesg > "$OUT/dmesg_start.txt" 2>&1
logcat -b all -d -v threadtime > "$OUT/logcat_start.txt" 2>&1

logcat -b all -v threadtime -f "$OUT/logcat_live.txt" &
sleep 15
dmesg > "$OUT/dmesg_15s.txt" 2>&1
logcat -b all -d -v threadtime > "$OUT/logcat_15s.txt" 2>&1
sleep 45
dmesg > "$OUT/dmesg_60s.txt" 2>&1
logcat -b all -d -v threadtime > "$OUT/logcat_60s.txt" 2>&1
sync
EOF

    chmod 644 "$WORK_DIR/vendor/etc/init/init.debug.rc"
    chmod 755 "$WORK_DIR/vendor/bin/init_debug_log.sh"

    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/init.debug.rc" \
        "/vendor/etc/init/init.debug.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/bin/init_debug_log.sh" \
        "/vendor/bin/init_debug_log.sh" 0 2000 755 "u:object_r:vendor_file:s0"

    for rc in \
        "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" \
        "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"; do
        if [ -f "$rc" ] && ! grep -q "init.debug.rc" "$rc"; then
            {
                echo ""
                echo "# UN1CA 9810 boot debug"
                echo "import /vendor/etc/init/init.debug.rc"
            } >> "$rc"
        fi
    done
}

_EXYNOS9810_FIX_BOOT_METADATA()
{
    LOG "- Fixing Exynos9810 boot-critical metadata"

    # Android init imports every *.rc-like backup left in this directory.
    # Keep build-time backups out of the final vendor image.
    find "$WORK_DIR/vendor/etc/init" -maxdepth 1 -type f -name '*.bak_codex' -delete 2> /dev/null || true

    _EXYNOS9810_SET_METADATA "system" "system/build.prop" "/system/build.prop" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "system/system_ext/etc/build.prop" "/system/system_ext/etc/build.prop" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "product/etc/build.prop" "/product/etc/build.prop" 0 0 644 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "odm/etc/build.prop" "/odm/etc/build.prop" 0 0 644 "u:object_r:vendor_file:s0"

    _EXYNOS9810_SET_METADATA "vendor" "vendor/build.prop" "/vendor/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/vendor_dlkm/etc/build.prop" "/vendor/vendor_dlkm/etc/build.prop" 0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/odm_dlkm/etc/build.prop" "/vendor/odm_dlkm/etc/build.prop" 0 0 644 "u:object_r:vendor_file:s0"

    if [ -f "$WORK_DIR/vendor/bin/mcDriverDaemon" ]; then
        _EXYNOS9810_SET_METADATA "vendor" "vendor/bin/mcDriverDaemon" "/vendor/bin/mcDriverDaemon" \
            0 0 755 "u:object_r:mobicore_exec:s0"
    fi

    if [ -f "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" ]; then
        mkdir -p "$WORK_DIR/vendor/etc/init/hw"
        cp -a "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" \
            "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"
        _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/hw" "/vendor/etc/init/hw" \
            0 2000 755 "u:object_r:vendor_configs_file:s0"
        _EXYNOS9810_SET_METADATA "vendor" \
            "vendor/etc/init/hw/init.samsungexynos9810.rc" \
            "/vendor/etc/init/hw/init.samsungexynos9810.rc" \
            0 0 644 "u:object_r:vendor_configs_file:s0"
    fi

    _EXYNOS9810_SET_METADATA "odm" "odm/etc/build.prop" "/odm/etc/build.prop" 0 0 644 "u:object_r:vendor_file:s0"

    _EXYNOS9810_DEDUP_METADATA "system"
    _EXYNOS9810_DEDUP_METADATA "vendor"
    _EXYNOS9810_DEDUP_METADATA "odm"
}



_EXYNOS9810_SANITIZE_DONOR_BRANDING()
{
    LOG "- Sanitizing Exynos9810 donor branding"

    local P1="du"
    local P2="han"
    local LEGACY_AUTHOR="${P1}${P2}sysl"
    local LEGACY_ROM="Du${P2}ROM"
    local LEGACY_LIB="lib${P1}${P2}.so"
    local LEGACY_BOKEH="${P1}${P2}s_bokeh_feature.json"
    local CLEAN_EXPR="s/${LEGACY_AUTHOR}@${LEGACY_ROM}-V4\\.3/UN1CA9810@OneUI8-Exynos/g; s/${LEGACY_ROM}-V4\\.3/UN1CA9810-Rom/g; s/${LEGACY_AUTHOR}/UN1CA9810/g; s/${LEGACY_LIB}/libunica.so/g; s/${LEGACY_BOKEH}/unica8_bokeh_feature.json/g"

    find "$WORK_DIR/system" "$WORK_DIR/vendor" "$WORK_DIR/odm" -type f -name "*.so" -print0 2>/dev/null | xargs -0 -r perl -0pi -e "$CLEAN_EXPR"
    find "$WORK_DIR/configs" "$WORK_DIR/system" "$WORK_DIR/vendor" "$WORK_DIR/odm" -type f \( -name "*.prop" -o -name "*.rc" -o -name "*.xml" -o -name "*.json" -o -name "fs_config-*" -o -name "file_context-*" \) -print0 2>/dev/null | xargs -0 -r perl -0pi -e "$CLEAN_EXPR"

    local OLD NEW
    for OLD in \
        "$WORK_DIR/system/system/lib/$LEGACY_LIB" \
        "$WORK_DIR/system/system/lib64/$LEGACY_LIB" \
        "$WORK_DIR/vendor/lib/$LEGACY_LIB" \
        "$WORK_DIR/vendor/lib64/$LEGACY_LIB"
    do
        [ -f "$OLD" ] || continue
        NEW="${OLD%/*}/libunica.so"
        EVAL "mv \"$OLD\" \"$NEW\"" || return 1
    done

    OLD="$WORK_DIR/system/system/cameradata/portrait_data/$LEGACY_BOKEH"
    if [ -f "$OLD" ]; then
        NEW="${OLD%/*}/unica8_bokeh_feature.json"
        EVAL "mv \"$OLD\" \"$NEW\"" || return 1
    fi
}

_EXYNOS9810_WRITE_EXYNOS9810_FSTABS()
{
    LOG "- Writing physical Exynos9810 fstab files"
    mkdir -p "$WORK_DIR/vendor/etc"

    cat > "$WORK_DIR/vendor/etc/fstab.samsungexynos9810" <<'EOF'
# Android fstab file for Galaxy S9/S9+/Note9 physical partitions.
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

# VOLD - fstab.samsungexynos9810
/dev/block/platform/11120000.ufs/by-name/HIDDEN         /preload                ext4    noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic  voldmanaged=preload:auto,check
/devices/platform/11500000.dwmmc2/mmc_host*             auto                    vfat    defaults                                                                                 voldmanaged=sdcard:auto
/devices/platform/10c00000.usb/10c00000.dwc3*           auto                    auto    defaults                                                                                 voldmanaged=usb:auto

# Samsung RAM Plus
/dev/block/zram0                                        none                    swap    defaults                                                                                 zramsize=50%,max_comp_streams=8,auto_configure
EOF

    cat > "$WORK_DIR/vendor/etc/fstab.exynos9810" <<'EOF'
# Android fstab file for legacy Exynos9810 physical partitions.
# Kept in sync with fstab.samsungexynos9810 for services that request the SoC fstab name.

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

    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/fstab.samsungexynos9810" "/vendor/etc/fstab.samsungexynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/fstab.exynos9810" "/vendor/etc/fstab.exynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_PATCH_EXYNOS9810_INIT_FS()
{
    local INIT_RC="$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc"

    [ -f "$INIT_RC" ] || return 0

    LOG "- Patching Exynos9810 init fs flow"

    if ! grep -q "UN1CA Exynos9810 metadata bind" "$INIT_RC"; then
        sed -i '/mount_all \/vendor\/etc\/fstab\.${ro.hardware} --early/a\
\
    # UN1CA Exynos9810 metadata bind mount for devices without a metadata partition.\
    mkdir /cache/metadata 0771 root system\
    mount none /cache/metadata /metadata bind\
    restorecon_recursive /metadata' "$INIT_RC"
    fi

    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/init.samsungexynos9810.rc" \
        "/vendor/etc/init/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_WRITE_VENDOR_BOOT_TRACE()
{
    if [ "${EXYNOS9810_ENABLE_VENDOR_BOOT_TRACE:-false}" != "true" ]; then
        return 0
    fi

    LOG "- Adding Exynos9810 vendor init trace"

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
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/unica_exynos9810_trace.rc" \
        "/vendor/etc/init/unica_exynos9810_trace.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_COPY_VENDOR()
{
    _EXYNOS9810_COPY_TREE "$1" "$WORK_DIR/vendor" "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 2000
}

_EXYNOS9810_COPY_ODM()
{
    _EXYNOS9810_COPY_TREE "$1" "$WORK_DIR/odm" "odm" "odm" "/odm" "u:object_r:vendor_file:s0" 0
}

_EXYNOS9810_APPLY_FULL_VENDOR_STACK()
{
    if [ "${ENABLE_EXYNOS9810_VENDOR_STACK:-true}" != "true" ]; then
        LOGW "Skipping full legacy Exynos9810 donor vendor/odm stack. Set ENABLE_EXYNOS9810_VENDOR_STACK=true to force it."
        return 0
    fi

    local FW_BASE="$FW_DIR/$EXYNOS9810_VENDOR_FIRMWARE"
    if [ "$EXYNOS9810_USE_N770_HXA3_VENDOR" = "true" ] && \
            [ -d "$FW_BASE/vendor" ] && [ -d "$FW_BASE/odm" ]; then
        LOG "- Applying N770F HXA3 VNDK33 Exynos9810 vendor stack"
        _EXYNOS9810_REPLACE_EXTRACTED_PARTITION "$FW_BASE" "vendor" "$WORK_DIR/vendor" || return 1
        _EXYNOS9810_REPLACE_EXTRACTED_PARTITION "$FW_BASE" "odm" "$WORK_DIR/odm" || return 1
        EXYNOS9810_HXA3_VENDOR_BASE_APPLIED=true
    else
        LOG "- Applying full legacy Exynos9810 donor/N770F GVI2 VNDK31 Exynos9810 vendor stack"
        _EXYNOS9810_REPLACE_TREE "$EXYNOS9810_LEGACY_PORT_DIR/vendor" \
            "$WORK_DIR/vendor" \
            "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 2000

        _EXYNOS9810_REPLACE_TREE "$EXYNOS9810_LEGACY_PORT_DIR/odm_partition" \
            "$WORK_DIR/odm" \
            "odm" "odm" "/odm" "u:object_r:system_file:s0" 0
    fi

    _EXYNOS9810_REPLACE_TREE "$EXYNOS9810_LEGACY_PORT_DIR/odm" \
        "$WORK_DIR/system/odm" \
        "system" "odm" "/odm" "u:object_r:vendor_file:s0" 0

    _EXYNOS9810_REPLACE_TREE "$EXYNOS9810_LEGACY_PORT_DIR/prism" \
        "$WORK_DIR/system/prism" \
        "system" "prism" "/prism" "u:object_r:system_file:s0" 0

    _EXYNOS9810_REPLACE_TREE "$EXYNOS9810_LEGACY_PORT_DIR/optics" \
        "$WORK_DIR/system/optics" \
        "system" "optics" "/optics" "u:object_r:system_file:s0" 0
}

EXYNOS9810_DEVICE="$TARGET_CODENAME"
case "$EXYNOS9810_DEVICE" in
    starlte|star2lte|crownlte)
        ;;
    *)
        LOGW "No legacy Exynos9810 donor device overlay mapping for $TARGET_CODENAME"
        return 0
        ;;
esac

_EXYNOS9810_APPLY_ROOTFS
_EXYNOS9810_NORMALIZE_PRODUCT_LAYOUT
_EXYNOS9810_APPLY_FULL_VENDOR_STACK

_EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/system"
_EXYNOS9810_COPY_VENDOR "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/vendor"
_EXYNOS9810_COPY_ODM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/odm"
_EXYNOS9810_COPY_PRODUCT "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/product"

_EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/$EXYNOS9810_DEVICE/system"
_EXYNOS9810_COPY_VENDOR "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/$EXYNOS9810_DEVICE/vendor"
_EXYNOS9810_COPY_PRODUCT "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/$EXYNOS9810_DEVICE/product"
_EXYNOS9810_CLEAN_PRODUCT_LAYOUT

_EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/floating_feature.xml" \
    "$WORK_DIR/vendor/etc/floating_feature.xml" \
    "vendor" "vendor/etc/floating_feature.xml" "/vendor/etc/floating_feature.xml" "u:object_r:vendor_file:s0"
_EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/floating_feature.xml" \
    "$WORK_DIR/system/system/etc/floating_feature.xml" \
    "system" "system/etc/floating_feature.xml" "/system/etc/floating_feature.xml" "u:object_r:system_file:s0"
_EXYNOS9810_PATCH_DEBLOATED_FLOATING_FEATURES

_EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/psi/libpsi32.so" \
    "$WORK_DIR/system/system/lib/libpsi.so" \
    "system" "system/lib/libpsi.so" "/system/lib/libpsi.so" "u:object_r:system_lib_file:s0"
_EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/psi/libPSI_32.so" \
    "$WORK_DIR/system/system/lib/libPSI.so" \
    "system" "system/lib/libPSI.so" "/system/lib/libPSI.so" "u:object_r:system_lib_file:s0"
_EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/psi/libpsi64.so" \
    "$WORK_DIR/system/system/lib64/libpsi.so" \
    "system" "system/lib64/libpsi.so" "/system/lib64/libpsi.so" "u:object_r:system_lib_file:s0"
_EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/scripts/psi/libPSI_64.so" \
    "$WORK_DIR/system/system/lib64/libPSI.so" \
    "system" "system/lib64/libPSI.so" "/system/lib64/libPSI.so" "u:object_r:system_lib_file:s0"

if [ "${ENABLE_LEGACY9810_ONEUI7_COMPAT_OVERLAYS:-false}" = "true" ]; then
    _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/general_fixes/system"
    _EXYNOS9810_COPY_VENDOR "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/general_fixes/vendor"
    _EXYNOS9810_COPY_ODM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/general_fixes/odm"
    _EXYNOS9810_COPY_PRODUCT "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/general_fixes/product"
    _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/DeKnox"
    _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/surfaceflinger"
    _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/remotedisplay"
else
    LOGW "Skipping legacy Exynos9810 donor One UI 7 compatibility overlays. Set ENABLE_LEGACY9810_ONEUI7_COMPAT_OVERLAYS=true to force them."
fi

[ "${ENABLE_EXYNOS9810_APPLOCK:-false}" = "true" ] && _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/AppLock"
[ "${ENABLE_EXYNOS9810_SMARTMANAGER:-false}" = "true" ] && _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/SmartManager"
[ "${ENABLE_EXYNOS9810_SOUNDALIVE_R:-false}" = "true" ] && _EXYNOS9810_COPY_SYSTEM "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/SoundAlive/SoundAlive_R"
if [ "${ENABLE_EXYNOS9810_SOUNDALIVE_V:-false}" = "true" ]; then
    _EXYNOS9810_COPY_TREE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/SoundAlive/SoundAlive_V" \
        "$WORK_DIR/system/system/priv-app/SoundAlive_V" \
        "system" "system/priv-app/SoundAlive_V" "/system/priv-app/SoundAlive_V" "u:object_r:system_file:s0" 0
fi
if [ "${ENABLE_EXYNOS9810_SCREENSHOT_PATCH:-false}" = "true" ]; then
    _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/patches/Screenshot/services.jar" \
        "$WORK_DIR/system/system/framework/services.jar" \
        "system" "system/framework/services.jar" "/system/framework/services.jar" "u:object_r:system_file:s0"
fi

_EXYNOS9810_APPLY_BOOT_PROPS
_EXYNOS9810_RESTORE_HXA3_AI_MODELS
_EXYNOS9810_RESTORE_HXA3_VENDOR_CORE
_EXYNOS9810_APPLY_EXYNOS9810_CAMERA_BRIDGE
_EXYNOS9810_PATCH_BLUETOOTH_AGENT
_EXYNOS9810_PATCH_ONEUI8_CAMERA_APP
_EXYNOS9810_PATCH_SETTINGS_DEVICE_IMAGE
_EXYNOS9810_APPLY_KEYMASTER3
_EXYNOS9810_PATCH_RT_CGROUPS
_EXYNOS9810_APPLY_AUDIO6_BRIDGE
_EXYNOS9810_PATCH_AUDIO_INIT_SERVICES
_EXYNOS9810_APPLY_HEALTH21
_EXYNOS9810_TARGET_IDENTITY
_EXYNOS9810_APPLY_UN1GAGA_VENDOR_COMPAT
_EXYNOS9810_DISABLE_LEGACY_VAULTKEEPER
_EXYNOS9810_REMOVE_N770_INIT_COLLISIONS
_EXYNOS9810_DISABLE_SETUP_WIZARDS
_EXYNOS9810_PATCH_SETTINGS_PROVIDER_SETUP_SKIP
_EXYNOS9810_PATCH_SERVICES_SP_SOFTWARE_CRYPTO
_EXYNOS9810_PATCH_SEMWIFI_STDP_BOOTLOOP
_EXYNOS9810_PATCH_EXTENDED_ETHERNET_BOOTLOOP
_EXYNOS9810_PATCH_SYSTEMUI_LAUNCHER_PERMISSIONS
_EXYNOS9810_WRITE_SYSTEMUI_LAUNCHER_PERMISSIONS
_EXYNOS9810_PRELOAD_KERNELSU_NEXT
_EXYNOS9810_RESTORE_EXYNOS9810_RADIO_STACK
_EXYNOS9810_WRITE_RIL_CP_AUDIO_FALLBACKS
_EXYNOS9810_WRITE_TELEPHONY_FEATURES
_EXYNOS9810_PATCH_TELEPHONY_SLOT_TOPOLOGY
_EXYNOS9810_WRITE_WIFI_FEATURES
_EXYNOS9810_WRITE_EXYNOS9810_FSTABS
_EXYNOS9810_WRITE_EXYNOS9810_KEYLAYOUTS
_EXYNOS9810_PATCH_EXYNOS9810_INIT_FS
_EXYNOS9810_WRITE_VENDOR_BOOT_TRACE
_EXYNOS9810_WRITE_SYSTEM_BOOT_DEBUG
_EXYNOS9810_WRITE_VENDOR_INIT_DEBUG
_EXYNOS9810_PATCH_ENFORCING_COMPAT
_EXYNOS9810_SANITIZE_DONOR_BRANDING
_EXYNOS9810_FIX_BOOT_METADATA
