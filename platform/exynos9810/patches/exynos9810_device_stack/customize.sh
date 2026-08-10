SKIPUNZIP=1

EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}"
EXYNOS9810_PATCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXYNOS9810_KEYMASTER4_DIR="$EXYNOS9810_PATCH_DIR/keymaster4/vendor"
EXYNOS9810_PANEL_WAKE_RC="$EXYNOS9810_PATCH_DIR/panel/vendor/etc/init/exynos9810-panel-wake.rc"
EXYNOS9810_USE_N770_HXA3_VENDOR="${EXYNOS9810_USE_N770_HXA3_VENDOR:-false}"
EXYNOS9810_VENDOR_FIRMWARE="${EXYNOS9810_VENDOR_FIRMWARE:-SM-N770F_PHN}"
EXYNOS9810_PRESERVE_N770_VENDOR_IDENTITY="${EXYNOS9810_PRESERVE_N770_VENDOR_IDENTITY:-false}"
EXYNOS9810_DISABLE_SETUP_WIZARDS="${EXYNOS9810_DISABLE_SETUP_WIZARDS:-false}"
# Exynos9810 requires the legacy Samsung RIL bridge for SIM/IMEI/LTE. Keep it
# enabled by default; callers can still explicitly set it to false for a
# diagnostic build.
EXYNOS9810_USE_LEGACY_RADIO_STACK="${EXYNOS9810_USE_LEGACY_RADIO_STACK:-true}"
EXYNOS9810_REMOVE_LEGACY_VAULTKEEPER="${EXYNOS9810_REMOVE_LEGACY_VAULTKEEPER:-true}"
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

_EXYNOS9810_PATCH_BIXBY_ACCOUNT_SOFTWARE_CRYPTO()
{
    local SMALI
    local BIXBY_KEY_BODY
    local ACCOUNT_KEY_BODY

    LOG "- Patching Bixby and Samsung Account AES for Exynos9810 keymaster"

    DECODE_APK "system" "system/priv-app/Bixby/Bixby.apk" || return 1
    SMALI="$(find "$APKTOOL_DIR/system/priv-app/Bixby/Bixby.apk" \
        -path "*/smali/a/a.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "Bixby software-key target smali not found"
        return 1
    fi

    BIXBY_KEY_BODY="$(cat <<'EOF'
    .locals 3

    const-string v0, "UN1CA:Exynos9810:Bixby:software-AES"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
EOF
)"
    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "j()Ljavax/crypto/SecretKey;" "$BIXBY_KEY_BODY" || return 1

    DECODE_APK "system" "system/priv-app/SamsungAccount/SamsungAccount.apk" || return 1
    SMALI="$(find "$APKTOOL_DIR/system/priv-app/SamsungAccount/SamsungAccount.apk" \
        -path "*/com/samsung/android/samsungaccount/authentication/data/AESCrypto.smali" | head -n 1)"
    if [ ! -f "$SMALI" ]; then
        LOGE "Samsung Account software-key target smali not found"
        return 1
    fi

    ACCOUNT_KEY_BODY="$(cat <<'EOF'
    .locals 3

    const-string v0, "UN1CA:Exynos9810:SamsungAccount:software-AES"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
EOF
)"
    _EXYNOS9810_REPLACE_SMALI_METHOD "$SMALI" \
        "getKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;" \
        "$ACCOUNT_KEY_BODY" || return 1
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

_EXYNOS9810_PATCH_SEMWIFI_P2P_CALLBACK()
{
    local JAR="$WORK_DIR/system/system/framework/semwifi-service.jar"
    local PATCHER="$SRC_DIR/platform/exynos9810/tools/patch_semwifi_p2p_callback.py"

    LOG "- Preserving Android Wi-Fi Direct discovery for Smart View/Wireless DeX"
    [ -f "$JAR" ] || {
        LOGE "semwifi-service.jar not found for Wi-Fi Direct callback patch"
        return 1
    }
    [ -f "$PATCHER" ] || {
        LOGE "Samsung Wi-Fi Direct callback patcher is missing"
        return 1
    }

    python3 "$PATCHER" "$JAR" || return 1
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

    # Bixby button = scancode 703 on starlte, star2lte and crownlte. CAMERA is
    # only the framework keycode carrier; PhoneWindowManager intercepts the
    # physical scan code first and dispatches the selected Bixby/Gemini/Camera
    # action from persist.sys.unica.bixby_action.
    cat > "$KL_DIR/gpio_keys.kl" <<'EOF'
key 114   VOLUME_DOWN
key 115   VOLUME_UP
key 116   POWER             WAKE
key 703   CAMERA
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
            # The donor may provide legacy top-level entries such as bin as
            # absolute symlinks (for example /system/bin). Remove links and
            # regular files explicitly before recreating the system-as-root
            # directory; rm -rf is not reliable for these WSL symlinks.
            if [ -L "$WORK_DIR/system/$entry" ] || [ -f "$WORK_DIR/system/$entry" ]; then
                rm -f -- "$WORK_DIR/system/$entry"
            elif [ -d "$WORK_DIR/system/$entry" ]; then
                rm -rf -- "$WORK_DIR/system/$entry"
            fi
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

_EXYNOS9810_RESTORE_SOURCE_SYSTEM_SYMLINKS()
{
    local MANIFEST="$SRC_DIR/platform/exynos9810/metadata/source_system_symlinks"
    local REL
    local TARGET
    local DST
    local RESTORED=0

    [ -f "$MANIFEST" ] || {
        LOGE "Missing Exynos9810 source SYSTEM symlink manifest"
        return 1
    }

    # Firmware trees copied through Windows can retain fs_config entries while
    # silently losing Linux symlinks. Restore only absent paths so later device
    # overlays can still replace donor files or directories intentionally.
    while IFS=$'\t' read -r REL TARGET; do
        case "$REL" in
            ""|\#*) continue ;;
        esac

        DST="$WORK_DIR/system/$REL"
        if [ -L "$DST" ]; then
            if [ "$(readlink "$DST")" != "$TARGET" ]; then
                rm -f -- "$DST"
                ln -s "$TARGET" "$DST" || return 1
                RESTORED=$((RESTORED + 1))
            fi
        elif [ ! -e "$DST" ]; then
            mkdir -p "$(dirname "$DST")"
            ln -s "$TARGET" "$DST" || return 1
            RESTORED=$((RESTORED + 1))
        fi
    done < "$MANIFEST"

    LOG "- Restored $RESTORED missing source SYSTEM symlinks"

    while read -r REL TARGET; do
        DST="$WORK_DIR/system/$REL"
        if [ ! -L "$DST" ] || [ "$(readlink "$DST")" != "$TARGET" ]; then
            LOGE "Required SYSTEM symlink is missing: /$REL -> $TARGET"
            return 1
        fi
    done <<'EOF'
system/bin/app_process app_process64
system/bin/getprop toolbox
system/bin/ls toybox
system/bin/mount toybox
system/bin/ueventd init
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

_EXYNOS9810_DELETE_METADATA()
{
    local PARTITION="$1"
    local ENTRY="$2"
    local CONTEXT="$3"

    [ -f "$WORK_DIR/configs/fs_config-$PARTITION" ] && \
        sed -i "\\|^$ENTRY |d" "$WORK_DIR/configs/fs_config-$PARTITION"
    [ -f "$WORK_DIR/configs/file_context-$PARTITION" ] && \
        sed -i "\\|^$CONTEXT |d" "$WORK_DIR/configs/file_context-$PARTITION"
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

_EXYNOS9810_APPLY_NFC_STACK()
{
    local NFC_ROOT="$EXYNOS9810_PATCH_DIR/nfc"
    local COMMON_ROOT="$NFC_ROOT/common"
    local TARGET_ROOT="$NFC_ROOT/$TARGET_CODENAME"

    if [ ! -d "$COMMON_ROOT/vendor" ] ||
            [ ! -f "$COMMON_ROOT/system/lib64/libnfc_sec_jni.so" ] ||
            [ ! -d "$TARGET_ROOT/vendor" ]; then
        LOGE "Required Exynos9810 NFC payload is incomplete for $TARGET_CODENAME"
        return 1
    fi

    LOG "- Pairing the Android 16 NFC framework with Exynos9810 S3NRN82 NFC"

    rm -f \
        "$WORK_DIR/vendor/bin/hw/nxp.android.hardware.nfc@1.1-service" \
        "$WORK_DIR/vendor/etc/init/nxp.android.hardware.nfc@1.1-service.rc" \
        "$WORK_DIR/vendor/etc/libnfc-nxp.conf" \
        "$WORK_DIR/vendor/etc/nfc/libnfc-nxp_RF.conf" \
        "$WORK_DIR/vendor/lib64/nfc_nci_nxp.so" \
        "$WORK_DIR/vendor/lib64/vendor.nxp.nxpnfc@1.0.so" \
        "$WORK_DIR/vendor/lib64/vendor.nxp.nxpnfc@1.1.so"

    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/bin/hw/nxp.android.hardware.nfc@1.1-service" \
        "/vendor/bin/hw/nxp\\.android\\.hardware\\.nfc@1\\.1-service"
    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/etc/init/nxp.android.hardware.nfc@1.1-service.rc" \
        "/vendor/etc/init/nxp\\.android\\.hardware\\.nfc@1\\.1-service\\.rc"
    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/etc/libnfc-nxp.conf" \
        "/vendor/etc/libnfc-nxp\\.conf"
    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/etc/nfc/libnfc-nxp_RF.conf" \
        "/vendor/etc/nfc/libnfc-nxp_RF\\.conf"
    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/lib64/nfc_nci_nxp.so" \
        "/vendor/lib64/nfc_nci_nxp\\.so"
    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/lib64/vendor.nxp.nxpnfc@1.0.so" \
        "/vendor/lib64/vendor\\.nxp\\.nxpnfc@1\\.0\\.so"
    _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
        "vendor/lib64/vendor.nxp.nxpnfc@1.1.so" \
        "/vendor/lib64/vendor\\.nxp\\.nxpnfc@1\\.1\\.so"

    _EXYNOS9810_COPY_TREE "$COMMON_ROOT/vendor" \
        "$WORK_DIR/vendor" \
        "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 0
    _EXYNOS9810_COPY_TREE "$TARGET_ROOT/vendor" \
        "$WORK_DIR/vendor" \
        "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 0
    _EXYNOS9810_COPY_TREE "$COMMON_ROOT/system/lib64" \
        "$WORK_DIR/system/system/lib64" \
        "system" "system/lib64" "/system/lib64" \
        "u:object_r:system_lib_file:s0" 0

    # Keep the Android 16 NfcNci package and framework. The Android 15
    # Exynos9810 package lacks INfcAdapter methods added in Android 16 and
    # otherwise crash-loops with AbstractMethodError. Use the Android 16 SEC
    # JNI bridge from the r11s firmware for the legacy S3NRN82 HAL.
    rm -rf "$WORK_DIR/system/system/priv-app/NfcNci/oat"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" \
        "system/priv-app/NfcNci/oat" \
        "/system/priv-app/NfcNci/oat"

    [ -f "$WORK_DIR/system/system/priv-app/NfcNci/NfcNci.apk" ] || {
        LOGE "Android 16 NfcNci.apk is missing from the system image"
        return 1
    }

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/sec.android.hardware.nfc@1.2-service" \
        "/vendor/bin/hw/sec\\.android\\.hardware\\.nfc@1\\.2-service" \
        0 2000 755 "u:object_r:hal_nfc_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/init/sec.android.hardware.nfc@1.2-service.rc" \
        "/vendor/etc/init/sec\\.android\\.hardware\\.nfc@1\\.2-service\\.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/vintf/manifest/sec.android.hardware.nfc@1.2-service.xml" \
        "/vendor/etc/vintf/manifest/sec\\.android\\.hardware\\.nfc@1\\.2-service\\.xml" \
        0 0 644 "u:object_r:vendor_configs_file:s0"

    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
        "ro.vendor.nfc.feature.chipname" "SLSI"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
        "ro.vendor.nfc.info.antpos" "1"
    _EXYNOS9810_DELETE_PROP_VENDOR_SIDE \
        "persist.nfc_vendor_extn.lib_file_name"

    grep -q 'feature name="android.hardware.nfc"' \
        "$WORK_DIR/vendor/etc/permissions/android.hardware.nfc.xml" || {
        LOGE "Exynos9810 NFC feature declaration is missing"
        return 1
    }
    grep -q 'vendor.samsung.hardware.nfc' \
        "$WORK_DIR/vendor/etc/vintf/manifest/sec.android.hardware.nfc@1.2-service.xml" || {
        LOGE "Exynos9810 NFC HAL manifest is invalid"
        return 1
    }
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
    if needle in text:
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
    elif grep -q "</SecFloatingFeatureSet>" "$FILE"; then
        sed -i "/<\/SecFloatingFeatureSet>/i\\    <$CONFIG>$VALUE</$CONFIG>" "$FILE"
    else
        printf '    <%s>%s</%s>\n' "$CONFIG" "$VALUE" "$CONFIG" >> "$FILE"
        printf '</SecFloatingFeatureSet>\n' >> "$FILE"
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

    LOG "- Adjusting floating features for Exynos9810 hardware and debloat"

    for FILE in \
        "$WORK_DIR/system/system/etc/floating_feature.xml" \
        "$WORK_DIR/vendor/etc/floating_feature.xml"; do
        # Profile 3 is the native Exynos9810 brightness protocol. Profile 4
        # makes One UI send a mismatched temporary-brightness scale, leaving
        # the panel dim or stuck at one level after the first screen wake.
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" \
            "SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS" "3"
        # This is the same panel capability exposed by the working DuhanROM
        # Exynos9810 stack. Apply it after the legacy floating-feature restore
        # so later donor files cannot hide the One UI 8 Settings toggle.
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS" "TRUE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_AVATAR" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_DOWNLOAD_EFFECT" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_CAMERA_CONFIG_QRCODE_INTERVAL" "500"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_SMART_SUGGESTIONS_WIDGET" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBY_SUPPORT_CUSTOM_WAKEUP" "FALSE"
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBY_SUPPORT_USERKWD_WAKEUP" "FALSE"
        # Keep the Bixby voice agent available for the physical-key selector.
        # Vision/AR stays disabled separately below.
        _EXYNOS9810_SET_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY" "TRUE"
        _EXYNOS9810_DELETE_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBYVISION_CONFIG_FUNCTIONS"
        _EXYNOS9810_DELETE_FLOATING_FEATURE "$FILE" "SEC_FLOATING_FEATURE_BIXBYVISION_CONFIG_QUICKMEASURE"
    done
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

_EXYNOS9810_APPLY_PANEL_WAKE_FIX()
{
    [ -f "$EXYNOS9810_PANEL_WAKE_RC" ] || {
        LOGE "Missing Exynos9810 panel wake payload"
        return 1
    }

    LOG "- Resetting Exynos9810 panel low-power mode after screen wake"
    _EXYNOS9810_COPY_FILE "$EXYNOS9810_PANEL_WAKE_RC" \
        "$WORK_DIR/vendor/etc/init/exynos9810-panel-wake.rc" \
        "vendor" "vendor/etc/init/exynos9810-panel-wake.rc" \
        "/vendor/etc/init/exynos9810-panel-wake.rc" \
        "u:object_r:vendor_configs_file:s0" 0 0 644
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

_EXYNOS9810_APPLY_KEYMASTER4()
{
    local MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"
    local ENTRY

    if [ ! -x "$EXYNOS9810_KEYMASTER4_DIR/bin/hw/android.hardware.keymaster@4.0-service" ]; then
        LOGE "Missing Exynos9810 software Keymaster 4.0 payload: $EXYNOS9810_KEYMASTER4_DIR"
        return 1
    fi

    LOG "- Applying AOSP software Keymaster 4.0 compatibility stack"

    for ENTRY in \
        "lib64/libskeymaster4device.so" \
        "lib64/libkeymaster4_1support.so" \
        "lib64/android.hardware.keymaster@4.1.so"; do
        _EXYNOS9810_DELETE_VENDOR_ENTRY "$ENTRY"
    done

    _EXYNOS9810_COPY_TREE "$EXYNOS9810_KEYMASTER4_DIR" "$WORK_DIR/vendor" \
        "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 0

    if [ -f "$MANIFEST" ]; then
        sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
            s/<version>4\.0<\/version>/<version>3.0<\/version>/
            s/@4\.0::IKeymasterDevice/@3.0::IKeymasterDevice/
        }' "$MANIFEST"
        if ! sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$MANIFEST" | grep -q '<version>4.0</version>'; then
            sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
                /<version>3\.0<\/version>/a\        <version>4.0</version>
            }' "$MANIFEST"
        fi
        if ! sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$MANIFEST" | grep -q '@4.0::IKeymasterDevice/default'; then
            sed -i '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/ {
                /<fqname>@3\.0::IKeymasterDevice\/default<\/fqname>/a\        <fqname>@4.0::IKeymasterDevice/default</fqname>
            }' "$MANIFEST"
        fi
    fi

    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/bin/hw/android.hardware.keymaster@4.0-service" \
        "/vendor/bin/hw/android.hardware.keymaster@4.0-service" \
        0 2000 755 "u:object_r:hal_keymaster_default_exec:s0"
    _EXYNOS9810_SET_METADATA "vendor" \
        "vendor/etc/init/android.hardware.keymaster@4.0-service.rc" \
        "/vendor/etc/init/android.hardware.keymaster@4.0-service.rc" \
        0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_VERIFY_SECURITY_STACK()
{
    local REQUIRED

    LOG "- Verifying Exynos9810 software Keymaster 4.0 compatibility"

    for REQUIRED in \
        "bin/hw/android.hardware.keymaster@3.0-service" \
        "etc/init/android.hardware.keymaster@3.0-service.rc" \
        "lib/hw/android.hardware.keymaster@3.0-impl.so" \
        "lib64/hw/android.hardware.keymaster@3.0-impl.so" \
        "bin/hw/android.hardware.keymaster@4.0-service" \
        "etc/init/android.hardware.keymaster@4.0-service.rc" \
        "lib64/android.hardware.keymaster@4.0.so" \
        "lib64/libkeymaster4.so" \
        "lib64/libkeymaster4support.so" \
        "lib64/libkeymaster_messages.so" \
        "lib64/libkeymaster_portable.so" \
        "lib64/libpuresoftkeymasterdevice.so" \
        "lib64/libsoft_attestation_cert.so"; do
        [ -f "$WORK_DIR/vendor/$REQUIRED" ] || {
            LOGE "Required software Keymaster 4.0 component is missing: /vendor/$REQUIRED"
            return 1
        }
    done

    if ! cmp -s \
        "$EXYNOS9810_KEYMASTER4_DIR/bin/hw/android.hardware.keymaster@4.0-service" \
        "$WORK_DIR/vendor/bin/hw/android.hardware.keymaster@4.0-service"; then
        LOGE "Unexpected Keymaster 4.0 service replaced the software implementation"
        return 1
    fi

    if grep -a -q 'skeymaster4dev' \
        "$WORK_DIR/vendor/bin/hw/android.hardware.keymaster@4.0-service"; then
        LOGE "Trustonic Keymaster 4.0 service is not compatible with Exynos9810"
        return 1
    fi

    for REQUIRED in \
        "lib64/libskeymaster4device.so" \
        "bin/cass" \
        "bin/vaultkeeperd" \
        "bin/vendor.samsung.hardware.security.vaultkeeper@2.0-service" \
        "etc/init/cass.rc" \
        "etc/init/vaultkeeper_common.rc"; do
        if [ -e "$WORK_DIR/vendor/$REQUIRED" ]; then
            LOGE "Incompatible legacy security component remains: /vendor/$REQUIRED"
            return 1
        fi
    done

    for REQUIRED in \
        '<version>3.0</version>' \
        '<version>4.0</version>' \
        '@3.0::IKeymasterDevice/default' \
        '@4.0::IKeymasterDevice/default'; do
        if ! sed -n '/<name>android.hardware.keymaster<\/name>/,/<\/hal>/p' \
            "$WORK_DIR/vendor/etc/vintf/manifest.xml" | grep -qF "$REQUIRED"; then
            LOGE "Vendor manifest is missing dual Keymaster declaration: $REQUIRED"
            return 1
        fi
    done
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
            s/<version>7\.0<\/version>/<version>6.0<\/version>/
            s/<version>7\.1<\/version>/<version>6.0<\/version>/
            s/@5\.0::IDevicesFactory/@6.0::IDevicesFactory/
            s/@7\.0::IDevicesFactory/@6.0::IDevicesFactory/
            s/@7\.1::IDevicesFactory/@6.0::IDevicesFactory/
        }
        /<name>android.hardware.audio.effect<\/name>/,/<\/hal>/ {
            s/<version>5\.0<\/version>/<version>6.0<\/version>/
            s/<version>7\.0<\/version>/<version>6.0<\/version>/
            s/<version>7\.1<\/version>/<version>6.0<\/version>/
            s/@5\.0::IEffectsFactory/@6.0::IEffectsFactory/
            s/@7\.0::IEffectsFactory/@6.0::IEffectsFactory/
            s/@7\.1::IEffectsFactory/@6.0::IEffectsFactory/
        }' "$MANIFEST"
    fi

    # Some donor manifests omit the legacy HIDL entries entirely. Add a
    # fragment only in that case; avoid duplicate HAL declarations when the
    # main manifest already contains the 6.0 bridge.
    if [ -f "$MANIFEST" ] && \
            ! grep -q '@6.0::IDevicesFactory/default' "$MANIFEST"; then
        local FRAGMENT="$EXYNOS9810_PATCH_DIR/audio6/audio_exynos9810.xml"
        if [ -f "$FRAGMENT" ]; then
            mkdir -p "$WORK_DIR/vendor/etc/vintf/manifest"
            cp -af "$FRAGMENT" "$WORK_DIR/vendor/etc/vintf/manifest/audio_exynos9810.xml" || return 1
            _EXYNOS9810_SET_METADATA "vendor" \
                "vendor/etc/vintf/manifest/audio_exynos9810.xml" \
                "/vendor/etc/vintf/manifest/audio_exynos9810.xml" \
                0 0 644 "u:object_r:vendor_configs_file:s0"
        fi
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

_EXYNOS9810_APPLY_LEGACY_VENDOR_COMPAT()
{
    LOG "- Applying legacy vendor compatibility props"

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
    if [ "$EXYNOS9810_REMOVE_LEGACY_VAULTKEEPER" != "true" ]; then
        LOG "- Keeping legacy CASS/VaultKeeper vendor services for boot compatibility"
        return 0
    fi

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

_EXYNOS9810_PATCH_INITIAL_SETUP_BRIGHTNESS()
{
    local BOOLS
    local INTEGERS

    LOG "- Setting a readable first-setup brightness"
    DECODE_APK "system" "system/priv-app/SettingsProvider/SettingsProvider.apk" || return 1

    BOOLS="$APKTOOL_DIR/system/priv-app/SettingsProvider/SettingsProvider.apk/res/values/bools.xml"
    INTEGERS="$APKTOOL_DIR/system/priv-app/SettingsProvider/SettingsProvider.apk/res/values/integers.xml"
    if [ ! -f "$BOOLS" ] || [ ! -f "$INTEGERS" ]; then
        LOGE "SettingsProvider brightness resources are missing"
        return 1
    fi

    # These resources are consumed only when SettingsProvider creates a fresh
    # settings database. The legacy panel mapping renders the donor mid-range
    # values much darker than a modern S22 panel, so begin setup near 90%.
    sed -i \
        's|<bool name="def_screen_brightness_automatic_mode">[^<]*</bool>|<bool name="def_screen_brightness_automatic_mode">false</bool>|' \
        "$BOOLS" || return 1
    sed -i \
        's|<integer name="def_screen_brightness">[^<]*</integer>|<integer name="def_screen_brightness">230</integer>|' \
        "$INTEGERS" || return 1

    grep -q '<bool name="def_screen_brightness_automatic_mode">false</bool>' "$BOOLS" || {
        LOGE "Failed to disable adaptive brightness during first setup"
        return 1
    }
    grep -q '<integer name="def_screen_brightness">230</integer>' "$INTEGERS" || {
        LOGE "Failed to set the first-setup brightness"
        return 1
    }

    # SettingsProvider's resource default does not always notify the legacy
    # display stack during the first boot. Trigger one real settings update as
    # soon as system_server is available, but only while setup is incomplete.
    mkdir -p "$WORK_DIR/system/system/bin" "$WORK_DIR/system/system/etc/init"
    cat > "$WORK_DIR/system/system/bin/unica_exynos9810_setup_brightness.sh" <<'EOF'
#!/system/bin/sh

PATH=/system/bin:/system/xbin:/vendor/bin
STAMP=/data/vendor/unica/setup_brightness_v2

[ -f "$STAMP" ] && exit 0

COUNT=0
while [ "$COUNT" -lt 90 ]; do
    COMPLETE="$(settings get secure user_setup_complete 2>/dev/null)"
    PROVISIONED="$(settings get global device_provisioned 2>/dev/null)"

    if [ "$COMPLETE" = "0" ] || [ "$PROVISIONED" = "0" ]; then
        settings put system screen_brightness_mode 0 >/dev/null 2>&1 || {
            sleep 1
            COUNT=$((COUNT + 1))
            continue
        }
        settings put system screen_brightness 230 >/dev/null 2>&1 || {
            sleep 1
            COUNT=$((COUNT + 1))
            continue
        }

        mkdir -p "$(dirname "$STAMP")"
        touch "$STAMP"
        log -t UN1CA-Exynos9810-Display \
            "Applied readable first-setup brightness"
        exit 0
    fi

    # Existing installations must retain the user's brightness preference.
    if [ "$COMPLETE" = "1" ] && [ "$PROVISIONED" = "1" ]; then
        exit 0
    fi

    sleep 1
    COUNT=$((COUNT + 1))
done

exit 0
EOF

    cat > "$WORK_DIR/system/system/etc/init/unica_exynos9810_setup_brightness.rc" <<'EOF'
on property:init.svc.system_server=running
    start unica_exynos9810_setup_brightness

service unica_exynos9810_setup_brightness /system/bin/sh /system/bin/unica_exynos9810_setup_brightness.sh
    class late_start
    user root
    group root system shell
    disabled
    oneshot
    seclabel u:r:su:s0
EOF

    chmod 0755 "$WORK_DIR/system/system/bin/unica_exynos9810_setup_brightness.sh"
    chmod 0644 "$WORK_DIR/system/system/etc/init/unica_exynos9810_setup_brightness.rc"

    _EXYNOS9810_SET_METADATA "system" \
        "system/bin/unica_exynos9810_setup_brightness.sh" \
        "/system/bin/unica_exynos9810_setup_brightness\\.sh" \
        0 2000 755 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" \
        "system/etc/init/unica_exynos9810_setup_brightness.rc" \
        "/system/etc/init/unica_exynos9810_setup_brightness\\.rc" \
        0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_PRELOAD_KERNELSU_NEXT()
{
    # The legacy KernelSU Next scanner only accepts a manager installed as a
    # normal /data/app base.apk. The final Exynos9810 cleanup stage owns the
    # first-boot installer; never create a conflicting /system/app preload.
    LOG "- Deferring KernelSU Next manager to final first-boot installer"
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
        vendor/lib/libvndsecril-client.so \
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
        vendor/lib64/libvndsecril-client.so \
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


    # Keep the legacy radio-channel declarations. The Exynos9810 provider
    # uses the split radio/sehradio manifests and channel@2.0 for imsd/imsd2.
    # They are restored again by the final cleanup pass after donor cleanup.

}

_EXYNOS9810_FIX_NETWORK_TYPES()
{
    LOG "- Enabling LTE by default and migrating legacy Exynos9810 network masks"

    # NETWORK_MODE_LTE_GSM_WCDMA (9) is the stock-compatible default for both
    # international and Korean S9/S9+/Note9 variants. init.vendor.rilcommon.rc
    # copies the vendor property to ro.telephony.default_network, but publish
    # both values so property import order cannot leave Android 16 with an
    # empty or legacy 3G-only default.
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
        "ro.vendor.radio.default_network" "9,9"
    _EXYNOS9810_SET_PROP_SYSTEM "ro.telephony.default_network" "9,9"
    _EXYNOS9810_SET_PROP_SYSTEM "ro.ril.def_network_after_check_tdscdma" "9,9"

    mkdir -p "$WORK_DIR/system/system/bin" "$WORK_DIR/system/system/etc/init"
    rm -f \
        "$WORK_DIR/system/system/bin/unica_crownlte_lte_migrate.sh" \
        "$WORK_DIR/system/system/etc/init/unica_crownlte_lte_migrate.rc"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" \
        "system/bin/unica_crownlte_lte_migrate.sh" \
        "/system/bin/unica_crownlte_lte_migrate\\.sh"
    _EXYNOS9810_DELETE_METADATA_PREFIX "system" \
        "system/etc/init/unica_crownlte_lte_migrate.rc" \
        "/system/etc/init/unica_crownlte_lte_migrate\\.rc"

    cat > "$WORK_DIR/system/system/bin/unica_exynos9810_lte_migrate.sh" <<'EOF'
#!/system/bin/sh

PATH=/system/bin:/system/xbin:/vendor/bin
TAG=UN1CA-Exynos9810-RIL
STAMP=/data/vendor/unica/exynos9810_lte_mask_v1

[ -f "$STAMP" ] && exit 0

# Android 16 stores the user network mask per subscription. Some upgraded
# Exynos9810 installs inherit 50055 (GSM/WCDMA only), although the modem
# advertises LTE/LTE-CA. 316295 is that same legacy mask plus LTE and LTE-CA.
OLD_DECIMAL=50055
OLD_BINARY=00001100001110000111
LTE_BINARY=01001101001110000111
MIGRATED=0
FOUND_SUB=0

for SLOT in 0 1; do
    CURRENT="$(cmd phone get-allowed-network-types-for-users -s "$SLOT" 2>&1)"
    case "$CURRENT" in
        *"No valid subscription"*)
            continue
            ;;
        *)
            FOUND_SUB=1
            ;;
    esac

    case "$CURRENT" in
        *"$OLD_DECIMAL"*|*"$OLD_BINARY"*)
            if cmd phone set-allowed-network-types-for-users \
                    -s "$SLOT" "$LTE_BINARY" >/dev/null 2>&1; then
                log -t "$TAG" "Migrated slot $SLOT from 3G-only mask to LTE"
                MIGRATED=1
            else
                log -p e -t "$TAG" "Failed to migrate slot $SLOT"
                exit 1
            fi
            ;;
    esac
done

# Retry on the next boot when the SIM/subscription was not ready yet.
[ "$FOUND_SUB" = "1" ] || exit 1

mkdir -p "$(dirname "$STAMP")"
touch "$STAMP"
log -t "$TAG" "Network mask migration complete (changed=$MIGRATED)"
exit 0
EOF

    cat > "$WORK_DIR/system/system/etc/init/unica_exynos9810_lte_migrate.rc" <<'EOF'
on property:sys.boot_completed=1
    exec_background u:r:su:s0 root root system shell -- /system/bin/sh /system/bin/unica_exynos9810_setup_brightness.sh
    start unica_exynos9810_lte_migrate

service unica_exynos9810_lte_migrate /system/bin/sh /system/bin/unica_exynos9810_lte_migrate.sh
    class late_start
    user root
    group root system radio shell
    disabled
    oneshot
    seclabel u:r:su:s0
EOF

    chmod 0755 "$WORK_DIR/system/system/bin/unica_exynos9810_lte_migrate.sh"
    chmod 0644 "$WORK_DIR/system/system/etc/init/unica_exynos9810_lte_migrate.rc"

    _EXYNOS9810_SET_METADATA "system" \
        "system/bin/unica_exynos9810_lte_migrate.sh" \
        "/system/bin/unica_exynos9810_lte_migrate\\.sh" \
        0 2000 755 "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" \
        "system/etc/init/unica_exynos9810_lte_migrate.rc" \
        "/system/etc/init/unica_exynos9810_lte_migrate\\.rc" \
        0 0 644 "u:object_r:system_file:s0"
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

_EXYNOS9810_VERIFY_NETWORK_SETTINGS()
{
    local CONNECTIONS_XML="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk/res/xml/sec_connections_settings.xml"
    local TELEPHONY_APK="$WORK_DIR/system/system/priv-app/TelephonyUI/TelephonyUI.apk"
    local GSM_FEATURE="$WORK_DIR/system/system/etc/permissions/android.hardware.telephony.gsm.xml"
    local LEGACY_MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest.xml"
    local RADIO16_MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_31.xml"
    local SEHRADIO_MANIFEST="$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_31.xml"

    LOG "- Verifying SIM-conditional mobile network settings"

    # SecSettings already owns the correct policy: hide the preference without
    # a subscription and expose it once TelephonyUI reports a usable SIM. Keep
    # that controller intact instead of forcing the menu on without a modem.
    # SecSettings is decoded later by the shared settings module. At this
    # stage its decoded resources may not exist yet, so defer that validation
    # instead of failing a valid build because of hook ordering.
    if [ -f "$CONNECTIONS_XML" ]; then
        if ! grep -q 'key="mobile_network_settings"' "$CONNECTIONS_XML" || \
                ! grep -q 'SecMobileNetworkPreferenceController' "$CONNECTIONS_XML"; then
            LOGE "SecSettings mobile network preference/controller is missing"
            return 1
        fi
    else
        LOG "  SecSettings not decoded yet; deferring preference validation"
    fi

    if [ ! -f "$TELEPHONY_APK" ]; then
        LOGE "TelephonyUI.apk is missing; SIM network settings cannot open"
        return 1
    fi

    if [ ! -f "$GSM_FEATURE" ]; then
        LOGE "GSM telephony feature declaration is missing"
        return 1
    fi

    if [ ! -f "$LEGACY_MANIFEST" ] || \
            ! grep -q '<name>android.hardware.radio</name>' "$LEGACY_MANIFEST" || \
            ! grep -q '@1.4::IRadio/slot1' "$LEGACY_MANIFEST"; then
        LOGE "Legacy Exynos9810 radio manifest is missing"
        return 1
    fi

    # The combined 1.4 declaration remains as the legacy base. Final cleanup
    # overlays the complete N770F RIL family and these split 1.6/channel
    # contracts together; advertising 1.6 without matching rild/libs is fatal.
    if [ -f "$RADIO16_MANIFEST" ]; then
        grep -q '@1.6::IRadio/slot1' "$RADIO16_MANIFEST" && \
            grep -q '@1.6::IRadio/slot2' "$RADIO16_MANIFEST" || {
            LOGE "Split Exynos9810 IRadio 1.6 declarations are incomplete"
            return 1
        }
        [ -f "$SEHRADIO_MANIFEST" ] && \
            grep -q '<instance>imsd</instance>' "$SEHRADIO_MANIFEST" && \
            grep -q '<instance>imsd2</instance>' "$SEHRADIO_MANIFEST" || {
            LOGE "Split Exynos9810 IMS channel declarations are incomplete"
            return 1
        }
        LOG "  Coherent IRadio 1.6 and IMS channel declarations present"
    else
        LOG "  Split IRadio 1.6 stack will be restored by final cleanup"
    fi

    LOG "  SIM absent: Settings may hide Mobile networks; SIM present: controller exposes it"
}

_EXYNOS9810_PATCH_TELEPHONY_SLOT_TOPOLOGY()
{
    local SMALI

    LOG "- Aligning Android 16 telephony slot topology with Exynos9810 RIL"
    # Keep the complete ROM dual-slot so PhoneFactory and the N770F rild expose
    # the same services. Single-SIM devices operate with slot2 empty; changing
    # only vendor at install time leaves Android blocked on IRadio/slot2.
    _EXYNOS9810_SET_PROP_ALL "ro.telephony.sim_slots.count" "2"
    # Select Samsung 4G label when Telephony reports LTE; no modem or IMEI change.
    _EXYNOS9810_SET_PROP_ALL "ro.config.show4gforlte" "true"
    # Keep the legacy property names in sync with the build fallback.
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.multisim.simslotcount" "2"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "ro.vendor.multisim.simslotcount" "2"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" "persist.radio.multisim.config" "dsds"

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
        ro.crypto.type \
        persist.log.semlevel; do
        _EXYNOS9810_DELETE_PROP_VENDOR_SIDE "$PROP"
    done

    # Vendor init may only use exported vendor properties/triggers on
    # enforcing. Exynos9810's CP needs ds_detect before RIL can expose the
    # baseband, so use the exported vendor mirror of the slot-count property.
    for RC in \
        "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" \
        "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"; do
        if [ -f "$RC" ]; then
            sed -i \
                -e '/setprop ro\.crypto\.state /d' \
                -e '/setprop ro\.crypto\.type /d' \
                "$RC"
        fi
    done

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
    if [ -f "$RC" ] && [ "${EXYNOS9810_DISABLE_CRYPTO_FUSE_SDCARD:-false}" = "true" ]; then
        sed -i '/setprop ro\.crypto\.fuse_sdcard /d' "$RC"
    fi

    RC="$WORK_DIR/vendor/etc/init/init.baseband.rc"
    if [ -f "$RC" ]; then
        sed -i '/^# SS\/DS configuration/,$d' "$RC"
        cat >> "$RC" <<'EOF'

# SS/DS configuration
on property:ro.vendor.multisim.simslotcount=*
    write /sys/module/modem_ctrl_ss310ap/parameters/ds_detect ${ro.vendor.multisim.simslotcount}

on property:ro.vendor.multisim.simslotcount=1
    setprop persist.radio.multisim.config ss

on property:ro.vendor.multisim.simslotcount=2
    setprop persist.radio.multisim.config dsds
EOF
    fi

    # The proven Android 16 Exynos9810 stack exposes mapper 2.1 through the
    # 2.1-suffixed implementation. A mapper@2.0 alias makes hwloader select the
    # wrong ABI before the working bridge is considered, so remove stale
    # aliases left by incremental workdirs instead of recreating them.
    for ARCH_DIR in lib lib64; do
        rm -f "$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so"
        _EXYNOS9810_DELETE_METADATA "vendor" \
            "vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so" \
            "/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl.so"
        if [ -f "$WORK_DIR/vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" ]; then
            _EXYNOS9810_SET_METADATA "vendor" \
                "vendor/$ARCH_DIR/hw/android.hardware.graphics.mapper@2.0-impl-2.1.so" \
                "/vendor/$ARCH_DIR/hw/android\\.hardware\\.graphics\\.mapper@2\\.0-impl-2\\.1\\.so" \
                0 0 644 "u:object_r:same_process_hal_file:s0"
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

    # Keep this donor author string. Samsung init/property consumers on this
    # port have proven boot-sensitive to renaming it; use ro.unica9810.* for
    # public branding instead.
    _EXYNOS9810_SET_PROP_ALL "ro.product.author" "duhansysl"
    _EXYNOS9810_SET_PROP_ALL "ro.unica9810.name" "Unofficial UN1CA 9810"
    _EXYNOS9810_SET_PROP_ALL "ro.unica9810.edition" "unofficial"
    _EXYNOS9810_SET_PROP_ALL "ro.unica9810.branch" "Android-16"
    _EXYNOS9810_SET_PROP_ALL "persist.sys.disable_rescue" "true"
    _EXYNOS9810_SET_PROP_ALL "ro.control_privapp_permissions" "disable"
    _EXYNOS9810_SET_PROP_ALL "ro.frp.pst" ""
    _EXYNOS9810_SET_PROP_ALL "ro.security.cass.feature" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.security.vaultkeeper.feature" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.security.vaultkeeper.native" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.config.tima" "0"
    _EXYNOS9810_SET_PROP_ALL "ro.config.dmverity" "false"
    _EXYNOS9810_SET_PROP_ALL "ro.config.kap" "false"
    # Keep WFD/Smart View HDCP negotiation enabled. The Exynos9810 remotedisplay
    # stack provides its own legacy-compatible HDCP service; forcing this to
    # "disable" prevents Smart View and Wireless DeX from completing setup.
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
    _EXYNOS9810_DELETE_PROP_VENDOR_SIDE "ro.crypto.state"
    _EXYNOS9810_DELETE_PROP_VENDOR_SIDE "ro.crypto.type"
    _EXYNOS9810_SET_PROP_SYSTEM "ro.crypto.state" "encrypted"
    _EXYNOS9810_SET_PROP_ALL "ro.boot.flash.locked" "1"
    _EXYNOS9810_SET_PROP_ALL "ro.surface_flinger.protected_contents" "1"
    # Panel is 1440x2960 on all three, but the diagonal differs, so Samsung
    # ships the S9 at 360dp width and the larger S9+/Note9 at 411dp. Verified
    # against each device's stock build.prop:
    #   SM-G960F (starlte)  480 / 640
    #   SM-G965F (star2lte) 420 / 560
    #   SM-N960F (crownlte) 420 / 560
    # Hardcoding the S9+ value for everything renders the S9 UI ~14% too large.
    # BUT those stock lcd_density values are the densities Samsung pairs with
    # FHD+ (1080x2220), which is what these phones boot at from the factory.
    # ro.sf.init.lcd_density is the density for the *native* WQHD+ 1440x2960
    # panel, and this ROM drives the panel at native resolution, so applying an
    # FHD+ density to it makes the UI too wide in dp.
    #
    # The resolution switcher does NOT rescue a wrong base density. The
    # SecSettings patch (unica/patches/product_feature/resolution) computes,
    # with a hardcoded 360:
    #     scale         = (resolutionIndex + 2) / (nativeWidth / 360)
    #     forcedWidth   = nativeWidth   * scale
    #     forcedDensity = initialDensity * scale
    # Size and density scale *together*, so dp width is constant across
    # WQHD/FHD/HD and is fixed entirely by the initial density:
    #     dp = nativeWidth * 160 / ro.sf.lcd_density
    # A wrong base density is therefore wrong at every resolution, not just at
    # native. At native res the value BOTH props want is the init density:
    #   starlte   1440 / (480/160) = 480dp wrong,  (640/160) = 360dp correct
    #   star2lte  1440 / (420/160) = 549dp wrong,  (560/160) = 411dp correct
    #   crownlte  1440 / (420/160) = 549dp wrong,  (560/160) = 411dp correct
    # Each matches that model's stock FHD+ dp width (360dp / 411dp / 411dp).
    #
    # Confirmed against real dumpstates: crownlte reported "sw549dp w549dp
    # h1128dp" with no forced override, and starlte reported
    # "init=1440x2960 480dpi" with the user having manually forced 600dpi to
    # compensate. WindowManager prints "base=" only when an override differs
    # from "init=", which is how those two cases were told apart. star2lte was
    # fixed by the same arithmetic; it had the switcher enabled all along,
    # which is precisely why its 549dp was never attributed to density.
    case "$TARGET_CODENAME" in
        starlte)
            _EXYNOS9810_SET_PROP_ALL "ro.sf.lcd_density" "640"
            _EXYNOS9810_SET_PROP_ALL "ro.sf.init.lcd_density" "640"
            ;;
        star2lte | crownlte)
            _EXYNOS9810_SET_PROP_ALL "ro.sf.lcd_density" "560"
            _EXYNOS9810_SET_PROP_ALL "ro.sf.init.lcd_density" "560"
            ;;
        *)
            _EXYNOS9810_SET_PROP_ALL "ro.sf.lcd_density" "420"
            _EXYNOS9810_SET_PROP_ALL "ro.sf.init.lcd_density" "560"
            ;;
    esac
    _EXYNOS9810_SET_PROP_ALL "ro.gfx.driver.0" "com.samsung.gpudriver.S9MaliG72_90"

    _EXYNOS9810_SET_PROP_SYSTEM "persist.sys.usb.config" "mtp,adb"
    _EXYNOS9810_SET_PROP_SYSTEM "persist.service.adb.enable" "1"
    # Wireless debugging uses the TLS pairing daemon and mDNS discovery. Keep
    # both explicitly enabled because the legacy vendor build.prop carries
    # recovery-oriented ADB overrides which otherwise make the effective value
    # depend on property import order.
    _EXYNOS9810_SET_PROP_SYSTEM "persist.adb.tls_server.enable" "1"
    _EXYNOS9810_SET_PROP_SYSTEM "persist.sys.unica.nativeblur" "true"

    # Match the proven Exynos8895/9810 compositor baseline. Keeping only three
    # acquired buffers and allowing SurfaceFlinger backpressure avoids the
    # extra queue latency that makes the One UI 8 quick panel feel heavy.
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
        "ro.surface_flinger.max_frame_buffer_acquired_buffers" "3"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
        "debug.sf.disable_backpressure" "1"
    _EXYNOS9810_SET_PROP_FILE "$WORK_DIR/vendor/build.prop" \
        "debug.sf.latch_unsignaled" "0"

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
        rm -f \
            "$WORK_DIR/system/system/etc/init/unica_exynos9810_debug.rc" \
            "$WORK_DIR/system/system/bin/unica_exynos9810_bootlog.sh"
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
    seclabel u:r:init:s0
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
    if [ "${EXYNOS9810_ENABLE_INIT_DEBUG:-false}" != "true" ]; then
        rm -f \
            "$WORK_DIR/vendor/etc/init/init.debug.rc" \
            "$WORK_DIR/vendor/bin/init_debug_log.sh"
        for rc in \
            "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" \
            "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"; do
            [ -f "$rc" ] || continue
            sed -i \
                -e '/# UN1CA 9810 boot debug/d' \
                -e '\|import /vendor/etc/init/init.debug.rc|d' \
                "$rc"
        done
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
    seclabel u:r:init:s0
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
    find "$WORK_DIR/vendor/etc/init" -maxdepth 1 -type f -name '*.bak_*' -delete 2> /dev/null || true

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
        cp -pf "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc" \
            "$WORK_DIR/vendor/etc/init/hw/init.samsungexynos9810.rc"
        _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/hw" \
            "/vendor/etc/init/hw" 0 0 755 "u:object_r:vendor_configs_file:s0"
        _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/hw/init.samsungexynos9810.rc" \
            "/vendor/etc/init/hw/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
        rm -f "$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc"
        _EXYNOS9810_DELETE_METADATA_PREFIX "vendor" \
            "vendor/etc/init/init.samsungexynos9810.rc" \
            "/vendor/etc/init/init.samsungexynos9810.rc"
    fi

    find "$WORK_DIR/vendor/etc/init" -maxdepth 2 -type f \
        \( -name '*.enforcingbak' -o -name '*.bak' -o -name '*.bak.*' -o -name '*~' \) \
        -delete

    _EXYNOS9810_SET_METADATA "odm" "odm/etc/build.prop" "/odm/etc/build.prop" 0 0 644 "u:object_r:vendor_file:s0"

    _EXYNOS9810_DEDUP_METADATA "system"
    _EXYNOS9810_DEDUP_METADATA "vendor"
    _EXYNOS9810_DEDUP_METADATA "odm"
}



_EXYNOS9810_SANITIZE_DONOR_BRANDING()
{
    LOG "- Keeping Exynos9810 donor boot strings intact"

    # Do not bulk-rewrite restored .prop/.rc/.xml/context files or donor library
    # names. The known-booting baseline depends on several of those strings and
    # paths staying byte-for-byte compatible with the legacy Exynos9810 stack.
    # Public ROM branding is provided through UN1CA props, installer text, and
    # non-boot assets instead.
    return 0
}

_EXYNOS9810_RESTORE_BOOT_VENDOR_SHIMS()
{
    LOG "- Restoring boot-critical Exynos9810 vendor shims"

    local REL
    for REL in \
        "bin/cass" \
        "bin/vaultkeeperd" \
        "bin/vendor.samsung.hardware.security.vaultkeeper@2.0-service"; do
        _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/vendor/$REL" \
            "$WORK_DIR/vendor/$REL" \
            "vendor" "vendor/$REL" "/vendor/$REL" "u:object_r:vendor_file:s0"
        [ -f "$WORK_DIR/vendor/$REL" ] && \
            _EXYNOS9810_SET_METADATA "vendor" "vendor/$REL" "/vendor/$REL" \
                0 2000 755 "u:object_r:vendor_file:s0"
    done

    for REL in \
        "etc/init/cass.rc" \
        "etc/init/vaultkeeper_common.rc" \
        "etc/vintf/manifest/vaultkeeper_manifest.xml"; do
        _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/vendor/$REL" \
            "$WORK_DIR/vendor/$REL" \
            "vendor" "vendor/$REL" "/vendor/$REL" "u:object_r:vendor_configs_file:s0"
        [ -f "$WORK_DIR/vendor/$REL" ] && \
            _EXYNOS9810_SET_METADATA "vendor" "vendor/$REL" "/vendor/$REL" \
                0 0 644 "u:object_r:vendor_configs_file:s0"
    done

    for REL in \
        "lib/libduhan.so" \
        "lib64/libduhan.so" \
        "lib64/vendor.samsung.hardware.security.vaultkeeper@2.0.so"; do
        _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/vendor/$REL" \
            "$WORK_DIR/vendor/$REL" \
            "vendor" "vendor/$REL" "/vendor/$REL" "u:object_r:vendor_file:s0"
        [ -f "$WORK_DIR/vendor/$REL" ] && \
            _EXYNOS9810_SET_METADATA "vendor" "vendor/$REL" "/vendor/$REL" \
                0 0 644 "u:object_r:vendor_file:s0"
    done
}

_EXYNOS9810_RESTORE_BOOT_SYSTEM_SHIMS()
{
    LOG "- Restoring boot-critical Exynos9810 system shims"

    _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/system/lib/libduhan.so" \
        "$WORK_DIR/system/system/lib/libduhan.so" \
        "system" "system/lib/libduhan.so" "/system/lib/libduhan.so" "u:object_r:system_lib_file:s0"
    [ -f "$WORK_DIR/system/system/lib/libduhan.so" ] && \
        _EXYNOS9810_SET_METADATA "system" "system/lib/libduhan.so" "/system/lib/libduhan.so" \
            0 0 644 "u:object_r:system_lib_file:s0"

    _EXYNOS9810_COPY_FILE "$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/system/lib64/libduhan.so" \
        "$WORK_DIR/system/system/lib64/libduhan.so" \
        "system" "system/lib64/libduhan.so" "/system/lib64/libduhan.so" "u:object_r:system_lib_file:s0"
    [ -f "$WORK_DIR/system/system/lib64/libduhan.so" ] && \
        _EXYNOS9810_SET_METADATA "system" "system/lib64/libduhan.so" "/system/lib64/libduhan.so" \
            0 0 644 "u:object_r:system_lib_file:s0"
}

_EXYNOS9810_RESTORE_BOOTING_VNDK_APEX()
{
    local VNDK33="$EXYNOS9810_LEGACY_PORT_DIR/device_port/device/common/system/system_ext/apex/com.android.vndk.v33.apex"

    [ -f "$VNDK33" ] || return 0

    LOG "- Restoring booting VNDK33 APEX"

    rm -f "$WORK_DIR/system/system/system_ext/apex/com.android.vndk.v31.apex"
    sed -i '\|^system/system_ext/apex/com.android.vndk.v31.apex |d' "$WORK_DIR/configs/fs_config-system"
    sed -i '\|^/system/system_ext/apex/com.android.vndk.v31.apex |d' "$WORK_DIR/configs/file_context-system"

    _EXYNOS9810_COPY_FILE "$VNDK33" \
        "$WORK_DIR/system/system/system_ext/apex/com.android.vndk.v33.apex" \
        "system" "system/system_ext/apex/com.android.vndk.v33.apex" \
        "/system/system_ext/apex/com.android.vndk.v33.apex" "u:object_r:system_file:s0"
    _EXYNOS9810_SET_METADATA "system" "system/system_ext/apex/com.android.vndk.v33.apex" \
        "/system/system_ext/apex/com.android.vndk.v33.apex" 0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_RESTORE_BOOTING_SYSTEM_CORE()
{
    local BASE="$EXYNOS9810_LEGACY_PORT_DIR/system_booting_baseline"

    if [ "${EXYNOS9810_RESTORE_BOOTING_SYSTEM_CORE:-true}" != "true" ] || [ ! -d "$BASE/system" ]; then
        return 0
    fi

    LOG "- Restoring known-booting Exynos9810 system core"

    _EXYNOS9810_REPLACE_TREE "$BASE/system/framework" \
        "$WORK_DIR/system/system/framework" \
        "system" "system/framework" "/system/framework" "u:object_r:system_file:s0" 0
    _EXYNOS9810_REPLACE_TREE "$BASE/system/lib" \
        "$WORK_DIR/system/system/lib" \
        "system" "system/lib" "/system/lib" "u:object_r:system_lib_file:s0" 0
    _EXYNOS9810_REPLACE_TREE "$BASE/system/lib64" \
        "$WORK_DIR/system/system/lib64" \
        "system" "system/lib64" "/system/lib64" "u:object_r:system_lib_file:s0" 0
    _EXYNOS9810_REPLACE_TREE "$BASE/system/app/BluetoothAgent" \
        "$WORK_DIR/system/system/app/BluetoothAgent" \
        "system" "system/app/BluetoothAgent" "/system/app/BluetoothAgent" "u:object_r:system_file:s0" 0
    _EXYNOS9810_REPLACE_TREE "$BASE/system/priv-app/SamsungCamera" \
        "$WORK_DIR/system/system/priv-app/SamsungCamera" \
        "system" "system/priv-app/SamsungCamera" "/system/priv-app/SamsungCamera" "u:object_r:system_file:s0" 0
    _EXYNOS9810_REPLACE_TREE "$BASE/system/priv-app/SecSettings" \
        "$WORK_DIR/system/system/priv-app/SecSettings" \
        "system" "system/priv-app/SecSettings" "/system/priv-app/SecSettings" "u:object_r:system_file:s0" 0
    _EXYNOS9810_REPLACE_TREE "$BASE/system/system_ext/etc" \
        "$WORK_DIR/system/system/system_ext/etc" \
        "system" "system/system_ext/etc" "/system/system_ext/etc" "u:object_r:system_file:s0" 0
    _EXYNOS9810_COPY_FILE "$BASE/system/etc/init/audioserver.rc" \
        "$WORK_DIR/system/system/etc/init/audioserver.rc" \
        "system" "system/etc/init/audioserver.rc" "/system/etc/init/audioserver.rc" "u:object_r:system_file:s0"
}

_EXYNOS9810_REMOVE_RENAMED_BOOT_SHIMS()
{
    LOG "- Removing renamed Exynos9810 boot shim leftovers"

    rm -f \
        "$WORK_DIR/system/system/lib/libunica.so" \
        "$WORK_DIR/system/system/lib64/libunica.so" \
        "$WORK_DIR/vendor/lib/libunica.so" \
        "$WORK_DIR/vendor/lib64/libunica.so"

    sed -i \
        -e '\|^system/lib/libunica.so |d' \
        -e '\|^system/lib64/libunica.so |d' \
        "$WORK_DIR/configs/fs_config-system"
    sed -i \
        -e '\|^/system/lib/libunica.so |d' \
        -e '\|^/system/lib64/libunica.so |d' \
        "$WORK_DIR/configs/file_context-system"
    sed -i \
        -e '\|^vendor/lib/libunica.so |d' \
        -e '\|^vendor/lib64/libunica.so |d' \
        "$WORK_DIR/configs/fs_config-vendor"
    sed -i \
        -e '\|^/vendor/lib/libunica.so |d' \
        -e '\|^/vendor/lib64/libunica.so |d' \
        "$WORK_DIR/configs/file_context-vendor"
}

_EXYNOS9810_RESTORE_BOOTING_VENDOR_BASELINE()
{
    if [ "${EXYNOS9810_RESTORE_BOOTING_VENDOR_BASELINE:-true}" != "true" ]; then
        return 0
    fi

    LOG "- Restoring known-booting Exynos9810 vendor baseline"

    _EXYNOS9810_REPLACE_TREE "$EXYNOS9810_LEGACY_PORT_DIR/vendor" \
        "$WORK_DIR/vendor" \
        "vendor" "vendor" "/vendor" "u:object_r:vendor_file:s0" 2000

    _EXYNOS9810_SET_METADATA "vendor" "vendor/build.prop" "/vendor/build.prop" \
        0 0 644 "u:object_r:vendor_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/fstab.samsungexynos9810" \
        "/vendor/etc/fstab.samsungexynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/init.samsungexynos9810.rc" \
        "/vendor/etc/init/init.samsungexynos9810.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
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

    # One UI's RAM Plus controller looks for this separate fstab and init
    # trigger. Keep the physical-device fstabs above for early boot, then expose
    # the same zram backend through the Samsung RAM Plus path at boot complete.
    cat > "$WORK_DIR/vendor/etc/fstab.ramplus" <<'EOF'
# Android fstab file for Samsung RAM Plus on Exynos9810.
# The zram device is provided by the Exynos9810 kernel.
/dev/block/zram0                                        none                    swap    defaults                                                                                 zramsize=2147483648,auto_configure
EOF

    cat > "$WORK_DIR/vendor/etc/init/init.ramplus.rc" <<'EOF'
# Samsung RAM Plus late-boot activation.
on property:sys.boot_completed=1
    swapon_all /vendor/etc/fstab.ramplus
EOF

    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/fstab.samsungexynos9810" "/vendor/etc/fstab.samsungexynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/fstab.exynos9810" "/vendor/etc/fstab.exynos9810" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/fstab.ramplus" "/vendor/etc/fstab.ramplus" 0 0 644 "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_SET_METADATA "vendor" "vendor/etc/init/init.ramplus.rc" "/vendor/etc/init/init.ramplus.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
}

_EXYNOS9810_PATCH_EXYNOS9810_INIT_FS()
{
    local INIT_RC="$WORK_DIR/vendor/etc/init/init.samsungexynos9810.rc"

    [ -f "$INIT_RC" ] || return 0

    LOG "- Patching Exynos9810 init fs flow"

    if [ "${EXYNOS9810_ENABLE_METADATA_BIND:-false}" = "true" ] && ! grep -q "UN1CA Exynos9810 metadata bind" "$INIT_RC"; then
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
        rm -f "$WORK_DIR/vendor/etc/init/unica_exynos9810_trace.rc"
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
        "/vendor/etc/init/unica_exynos9810_trace.rc" 0 0 644 "u:object_r:vendor_file:s0"
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
        # VNDK33, not 31: _EXYNOS9810_RESTORE_BOOTING_VNDK_APEX swaps the v31
        # APEX out for v33, and zzzz_exynos9810_boot_restore pins
        # ro.vndk.version/ro.board.api_level to 33. Verified on a live star2lte:
        # ro.vndk.version=33, ro.board.api_level=33.
        LOG "- Applying full legacy Exynos9810 donor/N770F GVI2 VNDK33 Exynos9810 vendor stack"
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
_EXYNOS9810_RESTORE_SOURCE_SYSTEM_SYMLINKS
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

# Smart View/Wireless DeX needs the 64-bit Android 16 remotedisplay bridge in
# addition to the older 32-bit compatibility files above. Keep this separate
# from the optional legacy overlay switch so display casting is always present
# on every Exynos9810 target while unrelated legacy overlays remain optional.
_EXYNOS9810_COPY_SYSTEM "$SRC_DIR/platform/exynos9810/patches/exynos9810_device_stack/remotedisplay/system"
_EXYNOS9810_COPY_VENDOR "$SRC_DIR/platform/exynos9810/patches/exynos9810_device_stack/remotedisplay/vendor"

for REL in \
    system/system/app/SmartMirroring/SmartMirroring.apk \
    system/system/etc/default-permissions/default-permission-com.samsung.android.app.smartmirroring.xml \
    system/system/framework/com.android.media.remotedisplay.jar \
    system/system/lib64/libremotedisplay_wfd.so \
    system/system/lib64/libwfds.so \
    vendor/bin/vendor.samsung.hardware.security.hdcp.wifidisplay-service \
    vendor/etc/init/vendor.samsung.hardware.security.hdcp.wifidisplay-default.rc \
    vendor/lib64/omx/libOMX.Exynos.AVC.WFD.Encoder.so; do
    [ -f "$WORK_DIR/$REL" ] || {
        LOGE "Smart View/Wireless DeX component missing after restore: $REL"
        return 1
    }
done

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
_EXYNOS9810_APPLY_NFC_STACK
_EXYNOS9810_PATCH_ONEUI8_CAMERA_APP
_EXYNOS9810_APPLY_KEYMASTER3
_EXYNOS9810_APPLY_KEYMASTER4
_EXYNOS9810_APPLY_PANEL_WAKE_FIX
_EXYNOS9810_PATCH_RT_CGROUPS
_EXYNOS9810_APPLY_AUDIO6_BRIDGE
_EXYNOS9810_PATCH_AUDIO_INIT_SERVICES
_EXYNOS9810_APPLY_HEALTH21
_EXYNOS9810_TARGET_IDENTITY
_EXYNOS9810_APPLY_LEGACY_VENDOR_COMPAT
_EXYNOS9810_DISABLE_LEGACY_VAULTKEEPER
_EXYNOS9810_REMOVE_N770_INIT_COLLISIONS
_EXYNOS9810_DISABLE_SETUP_WIZARDS
_EXYNOS9810_PATCH_SETTINGS_PROVIDER_SETUP_SKIP
_EXYNOS9810_PATCH_INITIAL_SETUP_BRIGHTNESS
_EXYNOS9810_PATCH_SERVICES_SP_SOFTWARE_CRYPTO
# Keep Samsung Account and Bixby donor-signed. Rebuilding these APKs fixes one
# legacy keymaster path, but it also makes them platform-signed, which blocks
# Galaxy Store from updating the Samsung-signed packages. Keymaster compatibility
# must be handled below app-signature level on Exynos9810.
# _EXYNOS9810_PATCH_BIXBY_ACCOUNT_SOFTWARE_CRYPTO
_EXYNOS9810_VERIFY_SECURITY_STACK
_EXYNOS9810_PATCH_SEMWIFI_STDP_BOOTLOOP
_EXYNOS9810_PATCH_SEMWIFI_P2P_CALLBACK
_EXYNOS9810_PATCH_EXTENDED_ETHERNET_BOOTLOOP
_EXYNOS9810_PATCH_SYSTEMUI_LAUNCHER_PERMISSIONS
_EXYNOS9810_WRITE_SYSTEMUI_LAUNCHER_PERMISSIONS
_EXYNOS9810_PRELOAD_KERNELSU_NEXT
_EXYNOS9810_RESTORE_EXYNOS9810_RADIO_STACK
_EXYNOS9810_FIX_NETWORK_TYPES
_EXYNOS9810_WRITE_RIL_CP_AUDIO_FALLBACKS
_EXYNOS9810_WRITE_TELEPHONY_FEATURES
_EXYNOS9810_VERIFY_NETWORK_SETTINGS
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
