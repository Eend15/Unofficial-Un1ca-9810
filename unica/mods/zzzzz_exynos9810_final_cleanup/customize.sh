SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_KERNELSU_NEXT_APK="${EXYNOS9810_KERNELSU_NEXT_APK:-/mnt/c/Users/Admin/Downloads/KernelSU_Next_v3.1.0_33024-release.apk}"

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
    # NOTE: this runs after zzzz_exynos9810_boot_restore has placed the final
    # /system/prism tree, so nothing overwrites these files afterwards. On a
    # dirty flash the launcher keeps its existing OneUI.db and won't re-read
    # these; a clean "set up as new device" (or clearing launcher data) applies
    # the layout.
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
        <appwidget screen="0" packageName="com.sec.android.daemonapp" className="com.sec.android.daemonapp.appwidget.WeatherAppWidget2x1" x="1" y="1" spanX="2" spanY="2" />
        <favorite screen="0" packageName="com.sec.android.gallery3d" className="com.samsung.android.gallery.app.activity.GalleryActivity" x="0" y="5" />
        <favorite screen="0" packageName="com.android.vending" className="com.android.vending.AssetBrowserActivity" x="1" y="5" />
        <favorite screen="0" packageName="com.sec.android.app.myfiles" className="com.sec.android.app.myfiles.ui.MainActivity" x="2" y="5" />
    </home>
    <hotseat>
        <favorite screen="0" packageName="com.samsung.android.dialer" className="com.samsung.android.dialer.DialtactsActivity" />
        <favorite screen="1" packageName="com.samsung.android.app.contacts" className="com.samsung.android.contacts.contactslist.PeopleActivity" />
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

    # The manager loads native code (libkernelsu.so, libksud.so, ...) at
    # startup. A system app installed by simply copying the APK never has its
    # JNI libs extracted, so MainActivity.onCreate crashes immediately with
    # UnsatisfiedLinkError ("libkernelsu.so not found") -- this is exactly the
    # "KernelSU apk crashes on a fresh ROM install" report. Stage the arm64-v8a
    # libs next to the APK the same way AOSP preloads apps with native code
    # (see /system/app/PrintSpooler/lib/arm64). The device is 64-bit primary
    # and this APK ships only arm64-v8a/x86_64, so only arm64 is needed.
    local LIB_DIR="$DST_DIR/lib/arm64"
    local SO
    LOG "- Extracting KernelSU Next native libraries for preload"
    rm -rf "$DST_DIR/lib"
    mkdir -p "$LIB_DIR"
    if ! unzip -o -j -q "$EXYNOS9810_KERNELSU_NEXT_APK" "lib/arm64-v8a/*.so" -d "$LIB_DIR"; then
        LOGW "Failed to extract KernelSU Next native libs; manager may crash on launch"
        return 0
    fi
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/KernelSUNext/lib" 0 0 755 "u:object_r:system_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/KernelSUNext/lib/arm64" 0 0 755 "u:object_r:system_file:s0"
    for SO in "$LIB_DIR"/*.so; do
        [ -f "$SO" ] || continue
        _EXYNOS9810_FINAL_SET_METADATA "system" "system/app/KernelSUNext/lib/arm64/$(basename "$SO")" 0 0 644 "u:object_r:system_file:s0"
    done
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

_EXYNOS9810_FINAL_PATCH_CAMERA_FRONT_DYNAMIC_FOV()
{
    # OneUI8 SamsungCamera crashes the instant you switch to the front camera:
    # ZoomController.getFrontCropAngleZoomValue() throws InvalidOperationException
    # ("current camera is not supporting dynamic fov") because the app assumes the
    # S22-style front selfie-zoom (dynamic FOV) that the legacy exynos9810 front
    # camera hardware/HAL does not have. That kills the whole camera app (unusable
    # until force-stop). Return the app's own no-crop / native-FOV default
    # (0x3e8 == 1000 == 1.0x) instead of throwing, so the front camera opens and
    # the app survives the switch.
    #
    # NOTE: this only stops the dynamic-FOV crash on switch. The second front-camera
    # failure -- the engine shutting down on the missing preview-callback ImageReader
    # -- is fixed separately by _EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_GUARD.
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local ZOOM="$APK_DIR/smali_classes3/com/sec/android/app/camera/engine/ZoomController.smali"

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/SamsungCamera/SamsungCamera.apk" || return 1

    LOG "- Fixing Exynos9810 front camera crash (unsupported dynamic FOV)"

    if [ ! -f "$ZOOM" ]; then
        LOGW "ZoomController.smali not found; skipping front camera crash fix"
        return 0
    fi

    python3 - "$ZOOM" <<'PY' || return 1
import sys
p = sys.argv[1]
s = open(p).read()
old = (
    '    :cond_1\n'
    '    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;\n'
    '\n'
    '    const-string v0, "The current camera is not supporting dynamic fov."\n'
    '\n'
    '    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V\n'
    '\n'
    '    throw p0\n'
    '.end method'
)
new = (
    '    :cond_1\n'
    '    const/16 v0, 0x3e8\n'
    '\n'
    '    return v0\n'
    '.end method'
)
if old not in s:
    if 'getFrontCropAngleZoomValue' in s and 'const/16 v0, 0x3e8' in s:
        print("already patched")
        sys.exit(0)
    print("PATTERN_NOT_FOUND")
    sys.exit(1)
open(p, "w").write(s.replace(old, new, 1))
print("ok")
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

_EXYNOS9810_FINAL_REPATCH_APPS()
{
    LOG "- Re-applying Exynos9810 Camera/Bluetooth/Settings patches after final restore"

    _EXYNOS9810_FINAL_IMPORT_FUNCTIONS || return 1

    rm -rf "$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    _EXYNOS9810_PATCH_ONEUI8_CAMERA_APP || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_NETWORK_ERRORS || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_FRONT_DYNAMIC_FOV || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_REPEATING_PREVIEW_SURFACE || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_STREAM || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_PREVIEW_CALLBACK_GUARD || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_CAPTURE_SESSION_STREAMS || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_PROVIDEO_ICON_CRASH || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_SCENE_DETECTION_NODE || return 1
    _EXYNOS9810_FINAL_PATCH_CAMERA_SCENE_DETECTION_STREAM || return 1

    _EXYNOS9810_FINAL_RESTORE_BLUETOOTH_LIB || return 1
    rm -rf "$APKTOOL_DIR/system/app/BluetoothAgent/BluetoothAgent.apk"
    _EXYNOS9810_PATCH_BLUETOOTH_AGENT || return 1

    _EXYNOS9810_PATCH_SETTINGS_DEVICE_IMAGE || return 1
    _EXYNOS9810_FINAL_SETTINGS_DEVICE_IMAGE || return 1
}

_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_TIMEOUT()
{
    # zzzz_exynos9810_boot_restore fully wipes and rebuilds $WORK_DIR/vendor
    # from the pristine legacy-port source (rm -rf + cp -a), which runs
    # *after* platform/exynos9810/patches, undoing any earlier in-place
    # patch to a vendor file. This module runs later still, so it's the
    # place that actually survives into the final build.
    #
    # The Exynos9810 ExynosCamera HAL aborts the whole camera provider
    # daemon whenever ExynosCamera::flush() has to wait for the pipeline
    # to leave its RUN state: it polls every 100ms for only ~31 iterations
    # (~3.1s) before hard-asserting via __android_log_assert(), which
    # calls abort() and kills
    # vendor.samsung.hardware.camera.provider@4.0-service outright. This
    # extends the loop's iteration count from 0x1e (30) to 0xfa (250),
    # i.e. ~3.1s to ~25.1s, giving the pipeline enough time to settle
    # instead of aborting. Corresponds to
    # android::ExynosCamera::m_transitState(), the `case 3`
    # (EXYNOS_CAMERA_STATE_RUN) branch waiting to reach state 5.
    local LIB="$WORK_DIR/vendor/lib/libexynoscamera3.so"

    if [ -f "$LIB" ] && \
            xxd -p -c 0 "$LIB" | grep -qi "3a4d06f5296b6ff01e0478447f447d44"; then
        LOG "- Extending Exynos9810 camera flush() timeout"
        HEX_PATCH "$LIB" \
            "3a4d06f5296b6ff01e0478447f447d44" "3a4d06f5296b6ff0fa0478447f447d44" || return 1
    else
        LOGW "Exynos9810 camera flush() timeout byte pattern not found for $TARGET_CODENAME, skipping"
    fi
}

_EXYNOS9810_FINAL_REPATCH_APPS
_EXYNOS9810_FINAL_DEBLOAT
_EXYNOS9810_FINAL_SET_HOME_LAYOUT
_EXYNOS9810_FINAL_RAM_TWEAKS
_EXYNOS9810_FINAL_PRELOAD_KERNELSU_NEXT
_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_TIMEOUT
