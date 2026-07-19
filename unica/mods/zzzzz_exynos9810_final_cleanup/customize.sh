SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_KERNELSU_NEXT_APK="${EXYNOS9810_KERNELSU_NEXT_APK:-$MODPATH/kernelsu/KernelSUNext.apk}"

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
        DAAgent \
        DuoStub \
        FamilyLinkParentalControls \
        GalaxyResourceUpdater \
        GalaxyWearable \
        GearManager \
        GearManagerStub \
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
        RubinVersion37 \
        SamsungCloudClient \
        SamsungCalculator \
        SamsungGlobalGoals \
        SamsungHealth \
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
        product/priv-app/Messages \
        product/overlay/GoogleHealthFitnessFrameworkOverlay.apk \
        product/overlay/NotesRoleEnabled \
        system/preload/SBrowser \
        system/app/DAAgent \
        system/app/KidsHome_Installer \
        system/app/ParentalCare \
        system/priv-app/SecCalculator \
        system/priv-app/SecCalculator2 \
        system/app/SmartSwitchAgent \
        system/app/SmartSwitchStub \
        system/priv-app/HealthService \
        system/priv-app/LinkToWindowsService \
        system/priv-app/MultiControl \
        system/priv-app/SamsungSmartSuggestions \
        system/priv-app/SecureFolder \
        system/priv-app/YourPhone_Stub \
        system/etc/default-permissions/default-permission-com.samsung.android.app.smartmirroring.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.rubin.app.xml \
        system/etc/default-permissions/default-permissions-com.samsung.android.smartsuggestions.xml \
        system/etc/permissions/privapp-permissions-com.microsoft.appmanager.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.rubin.app.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.scloud.xml \
        system/etc/permissions/privapp-permissions-com.samsung.android.smartsuggestions.xml \
        system/etc/permissions/privapp-permissions-com.samsung.knox.securefolder.xml \
        system/etc/permissions/privapp-permissions-com.sec.android.app.shealth.xml \
        system/etc/permissions/privapp-permissions-com.sec.android.service.health.xml \
        system/etc/permissions/signature-permissions-com.samsung.android.app.notes.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.kidshome.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.voicenote.xml \
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
    # hashes of the exact v26/APK, cold-session-safe 32-bit UniHAL and
    # cameraserver combination.
    [ "$(sha256sum "$APK_SRC" | cut -d ' ' -f 1)" = \
        "e334d42396f4bb0855d1092c89b82be46a1f70f684b3759c98800ffb039e518b" ] || {
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

    # The old patch stack disabled Samsung's capture streams and routed the
    # shutter through a separate Camera2 bridge. Install the exact stock-camera
    # pair with the cold-session UniHAL self-heal instead.
    _EXYNOS9810_FINAL_INSTALL_NATIVE_CAMERA || return 1

    _EXYNOS9810_FINAL_RESTORE_BLUETOOTH_LIB || return 1
    rm -rf "$APKTOOL_DIR/system/app/BluetoothAgent/BluetoothAgent.apk"
    _EXYNOS9810_PATCH_BLUETOOTH_AGENT || return 1

    _EXYNOS9810_PATCH_SETTINGS_DEVICE_IMAGE || return 1
    _EXYNOS9810_FINAL_SETTINGS_DEVICE_IMAGE || return 1
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
            # CAMERA is the proven Exynos9810 input mapping. SystemServer uses
            # scan code 703 to distinguish this button from a real camera key
            # and dispatch the action selected in UN1CA Settings.
            sed -i -E "s/^(key[[:space:]]+703[[:space:]]+)[^[:space:]]+(.*)$/\1CAMERA\2/" "$FILE"
            COUNT=$((COUNT + 1))
        fi
    done < <(find "$KEYLAYOUT_DIR" -maxdepth 1 -type f -name "*.kl" -print0)

    LOG "  - Remapped key 703 in $COUNT keylayout file(s) to CAMERA"
}

_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_RECOVERY()
{
    # zzzz_exynos9810_boot_restore fully wipes and rebuilds $WORK_DIR/vendor
    # from the pristine legacy-port source (rm -rf + cp -a), which runs
    # *after* platform/exynos9810/patches, undoing any earlier in-place
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
    local ORIGINAL_STAR2="43f6aa10cde9000600200349044a044b79447a447b4427f0f0ec"
    local ORIGINAL_CROWN="43f6aa10cde9000600200349044a044b79447a447b4429f028ea"
    local PATCHED="43f6aa10cde9000600200349044a044b79447a447b44fef71dbe"

    if [ ! -f "$LIB" ]; then
        LOGW "Exynos9810 camera HAL missing for $TARGET_CODENAME, skipping reprocessing recovery"
        return 0
    fi

    local RESULT
    RESULT="$(python3 - "$LIB" "$PATCHED" "$ORIGINAL_STAR2" "$ORIGINAL_CROWN" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
new = bytes.fromhex(sys.argv[2])
originals = [bytes.fromhex(value) for value in sys.argv[3:]]
data = path.read_bytes()

new_count = data.count(new)
old_counts = [(old, data.count(old)) for old in originals]
matches = [old for old, count in old_counts if count == 1]
multi_matches = [count for _, count in old_counts if count > 1]

if len(matches) == 1 and not multi_matches and new_count == 0:
    path.write_bytes(data.replace(matches[0], new, 1))
    print("patched")
elif not matches and not multi_matches and new_count == 1:
    print("present")
else:
    print(f"unknown:{','.join(str(count) for _, count in old_counts)}:{new_count}")
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
            LOGW "Exynos9810 reprocessing recovery byte pattern not found for $TARGET_CODENAME ($RESULT), skipping"
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

_EXYNOS9810_FINAL_ADD_VIBRATOR_AIDL_HAL()
{
    # The 9810 vendor only ships a HIDL vibrator HAL, but the One UI 8 framework
    # binds android.hardware.vibrator over AIDL exclusively, so no vibrator ever
    # registers: hasVibrator() is false, there is no Vibrate mode in Sound
    # settings and nothing on the device buzzes. A donor AIDL HAL cannot be
    # reused -- this SoC is ARMv8.0 and modern Samsung vendor binaries use
    # ARMv8.2+ opcodes, so they SIGILL instantly. This is a small AIDL service
    # built for armv8-a that drives the kernel's sec_vibrator timed_output nodes
    # directly; its source sits next to the binary.
    #
    # It MUST carry a vendor.samsung.hardware.vibrator.ISehVibrator binder
    # extension: AidlHalWrapper::supportsHapticEngine() fetches that extension
    # and loads its vtable without a null check, so publishing a plain AOSP
    # IVibrator boot-loops system_server during VibratorManagerService.<init>.
    # The service attaches a stub extension carrying only the right descriptor.
    #
    # Lives here rather than in the platform patches because
    # zzzz_exynos9810_boot_restore rebuilds $WORK_DIR/vendor from the pristine
    # legacy-port source afterwards, which would discard it.
    local EXPECTED_SHA256="d7a31ae596f56999c527b53543b1a3d81b668bd9ec14ed339eaf99ddf2e7d4cb"
    local SRC="$MODPATH/vibrator"
    local BIN_DST="$WORK_DIR/vendor/bin/hw/unica.vibrator-service"
    local RC_DST="$WORK_DIR/vendor/etc/init/unica.vibrator.rc"
    local XML_DST="$WORK_DIR/vendor/etc/vintf/manifest/unica.vibrator.xml"

    if [ ! -f "$SRC/unica.vibrator-service" ] || [ ! -f "$SRC/unica.vibrator.rc" ] || \
            [ ! -f "$SRC/unica.vibrator.xml" ]; then
        LOGE "Vibrator AIDL HAL payload is missing"
        return 1
    fi
    if [ "$(sha256sum "$SRC/unica.vibrator-service" | cut -d ' ' -f 1)" != "$EXPECTED_SHA256" ]; then
        LOGE "Unexpected vibrator AIDL HAL payload hash"
        return 1
    fi
    if [ ! -d "$WORK_DIR/vendor" ]; then
        LOGW "No vendor partition in work dir, skipping vibrator AIDL HAL"
        return 0
    fi

    LOG "- Adding AIDL vibrator HAL (HIDL-only vendor cannot drive One UI 8)"

    mkdir -p "$(dirname "$BIN_DST")" "$(dirname "$RC_DST")" "$(dirname "$XML_DST")"
    cp -f "$SRC/unica.vibrator-service" "$BIN_DST" || return 1
    cp -f "$SRC/unica.vibrator.rc" "$RC_DST" || return 1
    cp -f "$SRC/unica.vibrator.xml" "$XML_DST" || return 1
    chmod 0755 "$BIN_DST"
    chmod 0644 "$RC_DST" "$XML_DST"

    # Reuse the stock vibrator HAL's exec label so init runs this in the domain
    # that already has vibrator sysfs and binder access.
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "bin/hw/unica.vibrator-service" 0 0 755 \
        "u:object_r:hal_vibrator_default_exec:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "etc/init/unica.vibrator.rc" 0 0 644 \
        "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "etc/vintf/manifest" 0 0 755 \
        "u:object_r:vendor_configs_file:s0"
    _EXYNOS9810_FINAL_SET_METADATA "vendor" "etc/vintf/manifest/unica.vibrator.xml" 0 0 644 \
        "u:object_r:vendor_configs_file:s0"

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

    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION" "40"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN" "TRUE"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC" "crown,button"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SPEN_ALERT" "TRUE"
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID" "A3LEJPN960"

    # Never let a helper's exit status become this function's -- a non-zero
    # return here fails the whole module and aborts the entire build.
    return 0
}

_EXYNOS9810_FINAL_REPATCH_APPS
_EXYNOS9810_FINAL_DEBLOAT
_EXYNOS9810_FINAL_SET_HOME_LAYOUT
_EXYNOS9810_FINAL_PRUNE_LAUNCHER_DEBLOATED_FAVORITES
_EXYNOS9810_FINAL_RAM_TWEAKS
_EXYNOS9810_FINAL_STAGE_KERNELSU_NEXT
_EXYNOS9810_FINAL_ADD_VISUAL_CLOUD_CORE
_EXYNOS9810_FINAL_ADD_VIBRATOR_AIDL_HAL
_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN
_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_RECOVERY
_EXYNOS9810_FINAL_PATCH_CAMERA_LLS_SINGLE_FRAME
_EXYNOS9810_FINAL_PATCH_CAMERA_PORTRAIT_RESUME
_EXYNOS9810_FINAL_PATCH_CAMERA_REPROCESSING_RECOVERY
_EXYNOS9810_FINAL_FIX_BIXBY_KEYLAYOUT
