SKIPUNZIP=1

[ "$TARGET_PLATFORM" = "exynos9810" ] || return 0

EXYNOS9810_KERNELSU_NEXT_APK="${EXYNOS9810_KERNELSU_NEXT_APK:-$MODPATH/kernelsu/KernelSUNext.apk}"
EXYNOS9810_LEGACY_PORT_DIR="${EXYNOS9810_LEGACY_PORT_DIR:-/mnt/c/Users/Admin/Downloads/Exynos9810_LegacyPort}"

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

_EXYNOS9810_FINAL_RESTORE_RADIO_VINTF()
{
    # The platform radio stage copies these S22 manifests before the final
    # Exynos9810 vendor restore. That restore can replace vendor/etc/vintf,
    # leaving the IMS radio-channel services invisible to servicemanager.
    # Copy them again at the last stage so IMS/VoLTE and the signal/data state
    # are backed by the same radio stack that rild loads.
    [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] || return 0

    local SRC_DIR="$FW_DIR/SM-S901B_EUX/vendor/etc/vintf/manifest"
    local DST_DIR="$WORK_DIR/vendor/etc/vintf/manifest"
    local XML

    [ -d "$SRC_DIR" ] || {
        LOGW "S22 radio VINTF source directory is missing"
        return 0
    }

    LOG "- Restoring final radio/IMS VINTF manifests"
    mkdir -p "$DST_DIR" || return 1

    for XML in \
        vendor.samsung.hardware.radio_manifest_2_31.xml \
        vendor.samsung.hardware.sehradio_manifest_2_31.xml \
        vendor.samsung.hardware.radio.exclude.slsi.xml; do
        if [ -f "$SRC_DIR/$XML" ]; then
            cp -f "$SRC_DIR/$XML" "$DST_DIR/$XML" || return 1
            _EXYNOS9810_FINAL_SET_METADATA "vendor" \
                "etc/vintf/manifest/$XML" 0 0 644 \
                "u:object_r:vendor_configs_file:s0"
        else
            LOGW "Missing S22 radio VINTF fragment: $XML"
        fi
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
        SamsungCloudClient \
        SamsungCalculator \
        SamsungGlobalGoals \
        SamsungHealth \
        SamsungMembers \
        SamsungMembers_Removable \
        SamsungNotes \
        SamsungNotes_Removable \
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
        system/app/ClockPackage \
        product/overlay/GoogleHealthFitnessFrameworkOverlay.apk \
        product/overlay/NotesRoleEnabled \
        system/preload/SBrowser \
        system/app/KidsHome_Installer \
        system/app/ParentalCare \
        system/priv-app/SecCalculator \
        system/priv-app/SecCalculator2 \
        system/app/SmartSwitchAgent \
        system/app/SmartSwitchStub \
        system/priv-app/HealthService \
        system/priv-app/LinkToWindowsService \
        system/priv-app/MultiControl \
        system/priv-app/YourPhone_Stub \
        system/etc/default-permissions/default-permission-com.samsung.android.app.smartmirroring.xml \
        system/etc/permissions/privapp-permissions-com.microsoft.appmanager.xml \
        system/etc/permissions/signature-permissions-com.sec.android.app.clockpackage.xml \
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
    # SetupWizard/Galaxy Store download Smart Switch as soon as networking is
    # available even after every Smart Switch stub has been removed. Delete
    # both triggers late, after all donor overlays have been restored.
    local PRELOAD_LIST="$WORK_DIR/system/system/etc/removable_preload.txt"
    local USERDATA_LIST="$WORK_DIR/system/system/etc/userdata_apks_count_list.txt"

    if [ -f "$PRELOAD_LIST" ]; then
        LOG "- Removing Smart Switch from Samsung removable-preload catalogue"
        python3 - "$PRELOAD_LIST" <<'PY' || return 1
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()
text, count = re.subn(
    r"(?ms)^\[SmartSwitch\]\n.*?(?=^\[|\Z)",
    "",
    text,
)
if count > 1:
    raise SystemExit(f"unexpected SmartSwitch preload block count: {count}")
path.write_text(text)
PY
    fi

    if [ -f "$USERDATA_LIST" ]; then
        LOG "- Removing Smart Switch userdata preload trigger"
        sed -i '\|/data/app/SmartSwitch/SmartSwitch.apk|d' "$USERDATA_LIST" || return 1
    fi
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

_EXYNOS9810_FINAL_TUNE_AUDIO_VOLUME_CURVES()
{
    local TABLE="$WORK_DIR/vendor/etc/default_volume_tables.xml"
    local POLICY="$WORK_DIR/vendor/etc/audio_policy_volumes.xml"

    if [ ! -f "$TABLE" ] || [ ! -f "$POLICY" ]; then
        LOGW "Audio volume tables are missing; skipping Exynos9810 attenuation"
        return 0
    fi

    LOG "- Reducing low and medium Exynos9810 speaker volume without lowering maximum"

    python3 - "$TABLE" "$POLICY" <<'PY' || return 1
import sys
import xml.etree.ElementTree as ET

table_path, policy_path = sys.argv[1:]

# The legacy WM1814/WM5110 mixer is already the proven Duhan device mixer. The
# One UI 8 framework, however, maps its short volume-index range onto these
# generic curves too aggressively. Increase attenuation only below 100%; keep
# the final point at 0 mB so maximum media/call volume is unchanged.
table_updates = {
    "DEFAULT_SYSTEM_VOLUME_CURVE": [(1, -4200), (33, -3000), (66, -1800), (100, -600)],
    "DEFAULT_MEDIA_VOLUME_CURVE": [(1, -6800), (20, -5000), (60, -2300), (100, 0)],
    "DEFAULT_DEVICE_CATEGORY_SPEAKER_VOLUME_CURVE": [(1, -6800), (20, -5000), (60, -2300), (100, 0)],
    "DEFAULT_NON_MUTABLE_SPEAKER_VOLUME_CURVE": [(0, -6800), (20, -5000), (60, -2300), (100, 0)],
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
    "AUDIO_STREAM_RING": [(1, -4200), (33, -2800), (66, -1400), (100, 0)],
    "AUDIO_STREAM_ALARM": [(0, -4200), (33, -2800), (66, -1400), (100, 0)],
    "AUDIO_STREAM_NOTIFICATION": [(1, -4200), (33, -2800), (66, -1400), (100, 0)],
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
    # Match the working One UI 8 Note8 UN1CA port: expose the silo S Pen stack,
    # but do not force Samsung's newer BLE remote path. The Note9 test logs show
    # AirCommand dying when the BLE controller factory returns null, while basic
    # AirCommand/eject handling only needs the garage feature below.
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN" --delete
    SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC" --delete
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

    [ -d "$APK_DIR" ] || DECODE_APK "system" "system/priv-app/AirCommand/AirCommand.apk" || return 0

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
        LOGW "AirCommand BLE controller smali not found; skipping null guard"
        return 0
    fi

    python3 - "$CONTROLLER" <<'PY' || return 0
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

    return 0
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

    return 0
}

_EXYNOS9810_FINAL_PATCH_CAMERA_QR_POPUP_CRASH()
{
    # Two related QR-code fixes in SamsungCamera.apk:
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
    local APK_DIR="$APKTOOL_DIR/system/priv-app/SamsungCamera/SamsungCamera.apk"
    local PP_SMALI
    local FEAT_SMALI

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
    if ':qr_guard_0' in text:
        raise SystemExit(0)  # already patched
    raise SystemExit("restoreQrPopup crash site not found")
if cnt != 2:
    raise SystemExit(f"expected 2 restoreQrPopup guard sites, patched {cnt}")
open(path, "w").write(new)
PY

    # Force full (non-lite) QR detection so QrCodeDetectionManager is built.
    FEAT_SMALI="$(grep -rlE 'Lx1/e;->s0\(\)Z' "$APK_DIR" 2>/dev/null \
        | xargs -r grep -lE 'SUPPORT_QR_CODE_DETECTION_LITE:Lx1/c;' 2>/dev/null | head -n 1)"
    if [ -z "$FEAT_SMALI" ] || [ ! -f "$FEAT_SMALI" ]; then
        LOGE "Camera feature table (x1/e) with QR lite gate not found"
        return 1
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
    raise SystemExit("QR lite gate pattern not found in x1/e")
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
        LOGE "SNAP ImageTagger model is missing: $MODEL"
        return 1
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
    SMART_SMALI="$(find "$SMART_DIR" -type f -path '*/C5/b.smali' -print -quit)"
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
    local SRC="$EXYNOS9810_LEGACY_PORT_DIR/system"
    local APK_DIR="$APKTOOL_DIR/system/app/MotionPhoto/MotionPhoto.apk"
    local MESSAGE_SMALI
    local REL

    LOG "- Porting the N770F Motion Photo service for the Exynos9810 camera stack"

    for REL in \
        "app/MotionPhoto/MotionPhoto.apk" \
        "lib64/libapex_motionphoto_utils_jni.media.samsung.so" \
        "lib64/libmotionphoto_jni.media.samsung.so"; do
        if [ ! -f "$SRC/$REL" ]; then
            LOGE "Required N770F Motion Photo component is missing: $SRC/$REL"
            return 1
        fi
    done

    _EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY "system/app/MotionPhoto"
    mkdir -p "$WORK_DIR/system/system/app/MotionPhoto"
    cp -f "$SRC/app/MotionPhoto/MotionPhoto.apk" \
        "$WORK_DIR/system/system/app/MotionPhoto/MotionPhoto.apk" || return 1
    cp -f "$SRC/lib64/libapex_motionphoto_utils_jni.media.samsung.so" \
        "$WORK_DIR/system/system/lib64/libapex_motionphoto_utils_jni.media.samsung.so" || return 1
    cp -f "$SRC/lib64/libmotionphoto_jni.media.samsung.so" \
        "$WORK_DIR/system/system/lib64/libmotionphoto_jni.media.samsung.so" || return 1

    # The Android 16 camera client includes optional Parcelable keys with null
    # values in its SUME IPC bundle. N770F's older MotionPhoto service feeds
    # those values directly into ConcurrentHashMap, which rejects null and
    # crashes MPRemoteService before recording starts.
    DECODE_APK "system" "system/app/MotionPhoto/MotionPhoto.apk" || return 1
    MESSAGE_SMALI="$APK_DIR/smali/com/samsung/android/sum/core/message/Message.smali"
    if [ ! -f "$MESSAGE_SMALI" ]; then
        LOGE "N770F Motion Photo SUME Message.smali was not found"
        return 1
    fi

    LOG "- Making the N770F Motion Photo IPC compatible with Android 16"
    python3 - "$MESSAGE_SMALI" <<'PY' || return 1
import sys

path = sys.argv[1]
text = open(path, encoding="utf-8").read()
marker = (
    "    check-cast p1, Landroid/os/Parcelable;\n"
    "\n"
    "    if-eqz p1, :cond_4\n"
)
if marker not in text:
    old = (
        "    check-cast p1, Landroid/os/Parcelable;\n"
        "\n"
        "    invoke-interface {p0, p2, p1}, "
        "Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n"
    )
    new = (
        "    check-cast p1, Landroid/os/Parcelable;\n"
        "\n"
        "    # Android 16 may send optional null Parcelable values.\n"
        "    if-eqz p1, :cond_4\n"
        "\n"
        "    invoke-interface {p0, p2, p1}, "
        "Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n"
    )
    if old not in text:
        raise SystemExit("Motion Photo SUME null-Parcelable insertion point not found")
    text = text.replace(old, new, 1)

bad_parcel_marker = (
    "    :try_start_ex9810_mp\n"
    "    const-class v0, Landroid/os/Parcelable;\n"
)
if bad_parcel_marker not in text:
    old = (
        "    const-class v0, Landroid/os/Parcelable;\n"
        "\n"
        "    invoke-virtual {p1, p2, v0}, "
        "Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;\n"
        "\n"
        "    move-result-object p1\n"
    )
    new = (
        "    :try_start_ex9810_mp\n"
        "    const-class v0, Landroid/os/Parcelable;\n"
        "\n"
        "    invoke-virtual {p1, p2, v0}, "
        "Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;\n"
        "\n"
        "    move-result-object p1\n"
        "    :try_end_ex9810_mp\n"
        "    .catch Ljava/lang/RuntimeException; {:try_start_ex9810_mp .. :try_end_ex9810_mp} :catch_ex9810_mp\n"
        "\n"
    )
    if old not in text:
        raise SystemExit("Motion Photo SUME Parcelable read insertion point not found")
    text = text.replace(old, new, 1)

    end_old = (
        "    invoke-interface {p0, p2, p1}, "
        "Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n"
        "\n"
        "    :cond_4\n"
    )
    end_new = (
        "    invoke-interface {p0, p2, p1}, "
        "Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n"
        "\n"
        "    goto :cond_4\n"
        "\n"
        "    :catch_ex9810_mp\n"
        "    move-exception p1\n"
        "\n"
        "    :cond_4\n"
    )
    if end_old not in text:
        raise SystemExit("Motion Photo SUME Parcelable catch target not found")
    text = text.replace(end_old, end_new, 1)

put_marker = (
    ".method private synthetic lambda$put$6(Ljava/lang/String;Ljava/lang/Object;)V\n"
    "    .locals 1\n"
    "\n"
    "    if-eqz p1, :goto_0\n"
)
if put_marker not in text:
    put_old = (
        ".method private synthetic lambda$put$6(Ljava/lang/String;Ljava/lang/Object;)V\n"
        "    .locals 1\n"
        "\n"
        "    instance-of v0, p2, Landroid/os/Parcelable;\n"
    )
    put_new = (
        ".method private synthetic lambda$put$6(Ljava/lang/String;Ljava/lang/Object;)V\n"
        "    .locals 1\n"
        "\n"
        "    if-eqz p1, :goto_0\n"
        "\n"
        "    if-eqz p2, :goto_0\n"
        "\n"
        "    instance-of v0, p2, Landroid/os/Parcelable;\n"
    )
    if put_old in text:
        text = text.replace(put_old, put_new, 1)

open(path, "w", encoding="utf-8").write(text)
PY

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
    local NFC_ROOT="$SRC_DIR/platform/exynos9810/patches/exynos9810_device_stack/nfc"
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

_EXYNOS9810_FINAL_ENABLE_EXTRA_BRIGHTNESS()
{
    # The N770F vendor floating_feature already advertises Extra brightness, but
    # the framework (Settings/SystemUI) reads the system floating_feature, where
    # the S22 base has no such key. Mirror it there so the toggle actually shows
    # up under Display -- and so VERIFY_REPORTED_BUG_FIXES (which checks both
    # files) passes.
    SET_FLOATING_FEATURE_CONFIG \
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

_EXYNOS9810_FINAL_VERIFY_REPORTED_BUG_FIXES()
{
    local FEATURE_SYSTEM="$WORK_DIR/system/system/etc/floating_feature.xml"
    local FEATURE_VENDOR="$WORK_DIR/vendor/etc/floating_feature.xml"
    local REL

    LOG "- Verifying Exynos9810 user-reported bug fixes"

    for REL in \
        system/app/ClockPackage \
        system/priv-app/ClockPackage \
        system/etc/permissions/signature-permissions-com.sec.android.app.clockpackage.xml; do
        if [ -e "$WORK_DIR/system/$REL" ]; then
            LOGE "Samsung Clock debloat regression: /$REL remains"
            return 1
        fi
    done

    for REL in \
        vendor/bin/hw/android.hardware.sensors@1.0-service \
        vendor/etc/vintf/manifest/android.hardware.sensors@1.0.xml \
        vendor/bin/hw/vendor.samsung.hardware.vibrator-service \
        vendor/etc/vintf/manifest/vendor.samsung.hardware.vibrator-default.xml; do
        [ -f "$WORK_DIR/$REL" ] || {
            LOGE "Required Exynos9810 sensor/haptic component is missing: /$REL"
            return 1
        }
    done

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

_EXYNOS9810_FINAL_REPATCH_APPS
_EXYNOS9810_FINAL_RESTORE_RADIO_VINTF
_EXYNOS9810_FINAL_KEEP_STORE_UPDATABLE_APPS_SIGNED
_EXYNOS9810_FINAL_DEBLOAT
_EXYNOS9810_FINAL_RESTORE_DAAGENT
_EXYNOS9810_FINAL_RESTORE_FEATURE_APPS
_EXYNOS9810_FINAL_SET_HOME_LAYOUT
_EXYNOS9810_FINAL_PRUNE_LAUNCHER_DEBLOATED_FAVORITES
_EXYNOS9810_FINAL_RAM_TWEAKS
_EXYNOS9810_FINAL_TUNE_AUDIO_VOLUME_CURVES
_EXYNOS9810_FINAL_STAGE_KERNELSU_NEXT
_EXYNOS9810_FINAL_ADD_VISUAL_CLOUD_CORE
_EXYNOS9810_FINAL_VERIFY_PHOTO_EDITOR_STACK
_EXYNOS9810_FINAL_ADD_VIBRATOR_AIDL_HAL
_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN
_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL
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
_EXYNOS9810_FINAL_ENABLE_EXTRA_BRIGHTNESS
_EXYNOS9810_FINAL_SET_BRIGHTNESS_PROFILE
_EXYNOS9810_FINAL_VERIFY_REPORTED_BUG_FIXES
