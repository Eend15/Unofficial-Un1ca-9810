# Copyright (c) 2026 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# Galaxy Note9 target debloat.
# Keep camera, Quick Share, Samsung Core/MDX/SCS and photo editor components intact;
# remove only user-requested reinstallable bloat and crash-prone legacy add-ons.

PRODUCT_DEBLOAT+="
app/Gmail2
app/Maps
app/YouTube
priv-app/Messages
"

SYSTEM_DEBLOAT+="
system/preload/SBrowser
system/priv-app/GalaxyApps_OPEN
system/priv-app/SpriteWallpaper

product/app/Gmail2
product/app/Maps
product/app/YouTube
product/priv-app/Messages
system/product/app/Gmail2
system/product/app/Maps
system/product/app/YouTube
system/product/priv-app/Messages

system/app/GalaxyResourceUpdater
system/app/GearManagerStub
system/app/KidsHome_Installer
system/app/StickerCenter
system/app/UniversalMDMClient
system/etc/default-permissions/default-permissions-com.samsung.android.rubin.app.xml
system/etc/default-permissions/default-permissions-com.samsung.android.smartsuggestions.xml
system/etc/default-permissions/default-permissions-com.sec.enterprise.knox.cloudmdm.smdms.xml
system/etc/appmanager.conf
system/etc/permissions/com.samsung.feature.aremoji_v2.xml
system/etc/permissions/privapp-permissions-com.samsung.android.aremoji.xml
system/etc/permissions/privapp-permissions-com.samsung.android.rubin.app.xml
system/etc/permissions/privapp-permissions-com.samsung.android.scloud.xml
system/etc/permissions/privapp-permissions-com.samsung.android.smartsuggestions.xml
system/etc/permissions/privapp-permissions-com.samsung.knox.securefolder.xml
system/etc/permissions/privapp-permissions-com.microsoft.appmanager.xml
system/etc/permissions/signature-permissions-com.sec.enterprise.knox.cloudmdm.smdms.xml
system/etc/sysconfig/samsungsmartsuggestions.xml
system/priv-app/AREmoji
system/priv-app/BixbyVisionFramework3.5
system/priv-app/HealthService
system/priv-app/LinkToWindowsService
system/priv-app/MultiControl
system/priv-app/RubinVersion37
system/priv-app/SamsungCloudClient
system/priv-app/SamsungSmartSuggestions
system/priv-app/SecureFolder
system/priv-app/StickerFaceARAvatar
system/priv-app/YourPhone_Stub
product/overlay/NotesRoleEnabled
system/product/overlay/NotesRoleEnabled
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
SamsungSmartSuggestions
SamsungVoiceRecorder
SecureFolder
SmartThings
SmartThingsKit
SNoteProvider
SoundRecorder
VoiceRecorder
YourPhone_Stub
"

for APP in $_EXYNOS9810_TARGET_DEBLOAT_NAMES; do
    SYSTEM_DEBLOAT+="
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
