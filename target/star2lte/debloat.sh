# remove only user-requested reinstallable bloat and crash-prone legacy add-ons.

PRODUCT_DEBLOAT+="
app/Gmail2
app/Maps
app/YouTube
"

SYSTEM_DEBLOAT+="
system/preload/SBrowser

product/app/Gmail2
product/app/Maps
product/app/YouTube
system/product/app/Gmail2
system/product/app/Maps
system/product/app/YouTube

system/app/GalaxyResourceUpdater
system/app/GearManagerStub
system/app/KidsHome_Installer
system/app/MdecService
system/app/ParentalCare
system/app/StickerCenter
system/app/UniversalMDMClient
system/etc/default-permissions/default-permissions-com.sec.enterprise.knox.cloudmdm.smdms.xml
system/etc/appmanager.conf
system/etc/permissions/com.samsung.feature.aremoji_v2.xml
system/etc/permissions/privapp-permissions-com.samsung.android.aremoji.xml
system/etc/permissions/privapp-permissions-com.samsung.android.scloud.xml
system/etc/permissions/privapp-permissions-com.microsoft.appmanager.xml
system/etc/permissions/signature-permissions-com.sec.enterprise.knox.cloudmdm.smdms.xml
system/priv-app/AREmoji
system/priv-app/BixbyVisionFramework3.5
system/priv-app/HealthService
system/priv-app/LinkToWindowsService
system/priv-app/MultiControl
system/priv-app/SamsungCloudClient
system/priv-app/StickerFaceARAvatar
system/priv-app/YourPhone_Stub
product/overlay/NotesRoleEnabled
system/product/overlay/NotesRoleEnabled

system/etc/default-permissions/default-permissions-com.samsung.android.themestore.xml
system/etc/permissions/privapp-permissions-com.samsung.android.themecenter.xml
system/etc/permissions/privapp-permissions-com.samsung.android.themestore.xml
system/etc/permissions/signature-permissions-com.samsung.android.themestore.xml
system/priv-app/ThemeCenter
system/priv-app/ThemeStore
"

_EXYNOS9810_TARGET_DEBLOAT_NAMES="
AndroidAutoStub
AREmoji
BixbyVisionFramework3.5
DuoStub
GalaxyResourceUpdater
GalaxyWearable
GearManager
GearManagerStub
GlobalGoals
HealthService
KidsHome_Installer
LinkToWindowsService
Members
MultiControl
SamsungGlobalGoals
SamsungHealth
SamsungMembers
SamsungMembers_Removable
SamsungNotes
SamsungNotes_Removable
SamsungVoiceRecorder
SmartThings
SmartThingsKit
SNoteProvider
SoundRecorder
VoiceRecorder
YourPhone_Stub



"

for APP in $_EXYNOS9810_TARGET_DEBLOAT_NAMES; do
    SYSTEM_DEBLOAT+="
system/priv-app/SEAD
$(find "$WORK_DIR/system" -type d \
    \( -path "*/app/$APP" -o -path "*/priv-app/$APP" -o -path "*/preload/$APP" -o -path "*/product/app/$APP" -o -path "*/product/priv-app/$APP" \) \
    2>/dev/null | sed "s|$WORK_DIR/system/||g")
"
    PRODUCT_DEBLOAT+="
$(find "$WORK_DIR/product" -type d \
    \( -path "*/app/$APP" -o -path "*/priv-app/$APP" \) \
    2>/dev/null | sed "s|$WORK_DIR/product/||g")
"
done

unset APP _EXYNOS9810_TARGET_DEBLOAT_NAMES


# RAM & smoothness tuning - persists in future builds
SYSTEM_TWEAK_PROP='
ro.sys.fw.bg_apps_limit=24
ro.sys.fw.bg_cached_ratio=0.55
ro.config.dha_cached_max=28
ro.config.dha_cached_min=8
ro.config.dha_empty_max=40
ro.config.dha_empty_min=8
ro.config.dha_lmk_scale=0.545
ro.config.dha_pwhitelist_enable=1
debug.sf.latch_unsignaled=1
'
if [ -f "$WORK_DIR/system/system/build.prop" ]; then
    printf "\n# RAM & smoothness tuning\n%s" "$SYSTEM_TWEAK_PROP" >> "$WORK_DIR/system/system/build.prop"
fi
if [ -f "$WORK_DIR/vendor/build.prop" ]; then
    sed -i 's/debug.sf.latch_unsignaled=0/debug.sf.latch_unsignaled=1/' "$WORK_DIR/vendor/build.prop"
fi
mkdir -p "$WORK_DIR/system/system/etc/init"
cat > "$WORK_DIR/system/system/etc/init/ram_tweaks.rc" << 'RCTWEAK'
on property:sys.boot_completed=1
    write /proc/sys/vm/swappiness 60
    write /proc/sys/vm/vfs_cache_pressure 50
    write /proc/sys/vm/dirty_ratio 20
    write /proc/sys/vm/dirty_background_ratio 5
    write /proc/sys/vm/min_free_kbytes 32768
    start ram_tweaks

service ram_tweaks /system/bin/ram_tweaks.sh
    class late_start
    user root
    group root
    seclabel u:r:init:s0
    oneshot
    disabled
RCTWEAK
cat > "$WORK_DIR/system/system/bin/ram_tweaks.sh" << 'RCSHEOF'
#!/system/bin/sh
# RAM & smoothness tweaks - applied once per boot
if [ -f /sys/class/kgsl/kgsl-3d0/devfreq/governor ]; then
    echo "simple_ondemand" > /sys/class/kgsl/kgsl-3d0/devfreq/governor 2>/dev/null
fi
for disk in /sys/block/sd* /sys/block/mmc*; do
    [ -f "$disk/queue/scheduler" ] && echo "bfq" > "$disk/queue/scheduler" 2>/dev/null
done
echo 60 > /proc/sys/vm/swappiness 2>/dev/null
echo 50 > /proc/sys/vm/vfs_cache_pressure 2>/dev/null
echo 20 > /proc/sys/vm/dirty_ratio 2>/dev/null
echo 5 > /proc/sys/vm/dirty_background_ratio 2>/dev/null
echo 32768 > /proc/sys/vm/min_free_kbytes 2>/dev/null
echo 0 > /proc/sys/kernel/printk 2>/dev/null
RCSHEOF
chmod 755 "$WORK_DIR/system/system/bin/ram_tweaks.sh"
unset SYSTEM_TWEAK_PROP
