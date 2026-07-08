SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_KERNELSU_NEXT_APK="${EXYNOS9810_KERNELSU_NEXT_APK:-/mnt/c/Users/Admin/Downloads/KernelSU_Next_v3.0.0_32857-release.apk}"

_EXYNOS9810_FINAL_IMPORT_FUNCTIONS()
{
    local SRC="$SRC_DIR/platform/exynos9810/patches/exynos9810_device_stack/customize.sh"
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
    "_EXYNOS9810_PATCH_SETTINGS_DEVICE_IMAGE",
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
    awk -v raw="$RAW_CONTEXT" -v escaped="$ESCAPED_CONTEXT" \
        '$1 != raw && index($1, raw "/") != 1 && $1 != escaped && index($1, escaped "/") != 1 { print }' \
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

_EXYNOS9810_FINAL_DEBLOAT()
{
    local APP DIR REL

    LOG "- Applying final Exynos9810 debloat after boot baseline restore"

    for APP in \
        AndroidAutoStub \
        AREmoji \
        AREmojiEditor \
        AvatarEmojiSticker \
        Bixby \
        BixbyInterpreter \
        BixbyVisionFramework3.5 \
        BixbyWakeup \
        BardShell \
        Calculator \
        Chrome \
        DAAgent \
        DuoStub \
        FamilyLinkParentalControls \
        GalaxyResourceUpdater \
        GalaxyApps_OPEN \
        GalaxyWearable \
        GearManager \
        GearManagerStub \
        GlobalGoals \
        Gmail2 \
        HealthService \
        KidsHome_Installer \
        LinkToWindowsService \
        Maps \
        Members \
        MultiControl \
        MyDevice \
        RubinVersion37 \
        SamsungCloudClient \
        SamsungCalculator \
        SamsungGlobalGoals \
        SamsungHealth \
        SamsungIntelliVoiceServices \
        SamsungMembers \
        SamsungMembers_Removable \
        SamsungNotes \
        SamsungNotes_Removable \
        SamsungSmartSuggestions \
        SamsungVoiceRecorder \
        SecureFolder \
        SmartSwitchAgent \
        SmartSwitchAssistant \
        SmartSwitchStub \
        SmartThings \
        SmartThingsKit \
        SNoteProvider \
        SoundRecorder \
        SecCalculator \
        SecCalculator2 \
        Velvet \
        VoiceRecorder \
        YouTube \
        YourPhone_P1_5 \
        YourPhone_Stub; do
        while IFS= read -r -d '' DIR; do
            _EXYNOS9810_FINAL_DELETE_FOUND_DIR "$DIR"
        done < <(find "$WORK_DIR/system" "$WORK_DIR/product" -type d \
            \( -path "*/app/$APP" -o -path "*/priv-app/$APP" -o -path "*/preload/$APP" -o -path "*/product/app/$APP" -o -path "*/product/priv-app/$APP" \) \
            -print0 2>/dev/null)
    done

    for REL in \
        product/app/Chrome \
        product/app/BardShell \
        product/app/DuoStub \
        product/app/FamilyLinkParentalControls \
        product/app/Gmail2 \
        product/app/Maps \
        product/app/YouTube \
        system/app/Calculator \
        product/priv-app/Messages \
        product/priv-app/Velvet \
        product/overlay/GoogleHealthFitnessFrameworkOverlay.apk \
        product/overlay/NotesRoleEnabled \
        system/preload/SBrowser \
        system/app/DAAgent \
        system/app/KidsHome_Installer \
        system/priv-app/GalaxyApps_OPEN \
        system/priv-app/SecCalculator \
        system/priv-app/SecCalculator2 \
        system/app/SmartSwitchAgent \
        system/app/SmartSwitchStub \
        system/priv-app/HealthService \
        system/priv-app/LinkToWindowsService \
        system/priv-app/MultiControl \
        system/priv-app/SamsungIntelliVoiceServices \
        system/priv-app/SamsungSmartSuggestions \
        system/priv-app/SecureFolder \
        system/priv-app/YourPhone_Stub \
        system/etc/default-permissions/default-permission-com.samsung.android.app.smartmirroring.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.rubin.app.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.smartsuggestions.xml \
        system/etc/permissions/privapp-permissions-com.microsoft.appmanager.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.intellivoiceservice.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.rubin.app.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.scloud.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.smartsuggestions.xml \
        system/etc/permissions/privapp-permissions-com.samsung.knox.securefolder.xml \
        system/etc/permissions/privapp-permissions-com.sec.android.app.shealth.xml \
        system/etc/permissions/privapp-permissions-com.sec.android.service.health.xml \
        system/etc/permissions/signature-permissions-com.samsung.android.app.notes.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.kidshome.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.voicenote.xml \
        system/etc/sysconfig/samsungintellivoiceservice.xml \
        system/etc/sysconfig/samsungsmartsuggestions.xml \
        system/etc/sysconfig/smartswitch.xml; do
        _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "$REL"
    done
}

_EXYNOS9810_FINAL_RESTORE_BLUETOOTH_LIB()
{
    local PATCH="$SRC_DIR/unica/patches/bt-lib-patch/customize.sh"

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

_EXYNOS9810_FINAL_RAM_TWEAKS()
{
    local FILE

    LOG "- Applying low-risk Exynos9810 RAM trim props"

    for FILE in \
        "$WORK_DIR/system/system/build.prop" \
        "$WORK_DIR/system/product/etc/build.prop" \
        "$WORK_DIR/system/system/product/etc/build.prop"; do
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "persist.sys.fw.trim_enable_memory" "true"
        _EXYNOS9810_FINAL_SET_PROP "$FILE" "ro.sys.fw.use_trim_settings" "true"
    done
}

_EXYNOS9810_FINAL_PRELOAD_KERNELSU_NEXT()
{
    local DST_DIR="$WORK_DIR/system/system/app/KernelSUNext"
    local DST="$DST_DIR/KernelSUNext.apk"

    if [ ! -f "$EXYNOS9810_KERNELSU_NEXT_APK" ]; then
        LOGW "KernelSU Next APK not found: $EXYNOS9810_KERNELSU_NEXT_APK"
        return 0
    fi

    LOG "- Preloading KernelSU Next manager after final boot restore"
    mkdir -p "$DST_DIR"
    cp -a "$EXYNOS9810_KERNELSU_NEXT_APK" "$DST" || return 1
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/KernelSUNext" 0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/KernelSUNext/KernelSUNext.apk" 0 0 644 "u:object_r:system_file:s0"
}

_EXYNOS9810_FINAL_SETTINGS_DEVICE_IMAGE()
{
    local APK="system/priv-app/SecSettings/SecSettings.apk"
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk"
    local LAYOUT="$APK_DIR/res/layout/sec_device_info_settings_header.xml"
    local ASSET="$MODPATH/assets/star2lte_device_image.png"
    local OUT="$APK_DIR/res/drawable-nodpi/unica_exynos9810_device_image.png"

    case "$TARGET_CODENAME" in
        starlte) ASSET="$MODPATH/assets/starlte_device_image.png" ;;
        crownlte) ASSET="$MODPATH/assets/crownlte_device_image.png" ;;
        *) ASSET="$MODPATH/assets/star2lte_device_image.png" ;;
    esac

    [ -d "$APK_DIR" ] || DECODE_APK "system" "$APK" || return 1
    [ -f "$LAYOUT" ] || return 0
    [ -f "$ASSET" ] || {
        LOGW "Exynos9810 Settings device image asset not found: $ASSET"
        return 0
    }

    LOG "- Forcing local Exynos9810 Settings device image for $TARGET_CODENAME"
    mkdir -p "$APK_DIR/res/drawable-nodpi"
    rm -f "$APK_DIR/res/drawable/unica_exynos9810_device_image.xml"
    cp -a "$ASSET" "$OUT" || return 1

    python3 - "$LAYOUT" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
match = re.search(r"<ImageView\b[^>]*android:id=\"@id/device_image\"[^>]*>", text, flags=re.S)
if not match:
    raise SystemExit(0)

tag = match.group(0)
if "android:src=" in tag:
    tag = re.sub(r'android:src="[^"]*"', 'android:src="@drawable/unica_exynos9810_device_image"', tag)
else:
    tag = tag.replace(">", ' android:src="@drawable/unica_exynos9810_device_image">', 1)

if "android:visibility=" in tag:
    tag = re.sub(r'android:visibility="[^"]*"', 'android:visibility="visible"', tag)
else:
    tag = tag.replace(">", ' android:visibility="visible">', 1)

text = text[:match.start()] + tag + text[match.end():]
path.write_text(text)
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

_EXYNOS9810_FINAL_REPATCH_APPS()
{
    LOG "- Re-applying Exynos9810 Camera/Bluetooth/Settings patches after final restore"

    _EXYNOS9810_FINAL_IMPORT_FUNCTIONS || return 1

    rm -rf "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    _EXYNOS9810_PATCH_ONEUI8_CAMERA_APP || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_NETWORK_ERRORS || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_REPEATING_PREVIEW_SURFACE || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_STREAM || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_CAPTURE_SESSION_STREAMS || return 1

    _EXYNOS9810_FINAL_RESTORE_BLUETOOTH_LIB || return 1
    rm -rf "$APKTOOL_DIR/system/app/BluetoothAgent/BluetoothAgent.apk"
    _EXYNOS9810_PATCH_BLUETOOTH_AGENT || return 1

    _EXYNOS9810_PATCH_SETTINGS_DEVICE_IMAGE || return 1
    _EXYNOS9810_FINAL_SETTINGS_DEVICE_IMAGE || return 1
}

_EXYNOS9810_FINAL_REPATCH_APPS
_EXYNOS9810_FINAL_DEBLOAT
_EXYNOS9810_FINAL_RAM_TWEAKS
_EXYNOS9810_FINAL_PRELOAD_KERNELSU_NEXT
