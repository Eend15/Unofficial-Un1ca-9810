#!/usr/bin/env bash
set -euo pipefail

repo="$(cd "$(dirname "$0")/.." && pwd)"
zip="/mnt/c/Users/Admin/Downloads/DuhanROM-V4.3_Exynos9810.zip"
base="$repo/platform/exynos9810/patches/exynos9810_device_stack/remotedisplay"

rm -rf "$base"
mkdir -p "$base/system/app/SmartMirroring/oat/arm64" "$base/system/app/P2pAwareOverlay" \
    "$base/system/etc/default-permissions" \
    "$base/system/framework" "$base/system/lib64" \
    "$base/system/lib" "$base/vendor/lib" "$base/vendor/lib64" \
    "$base/vendor/bin" "$base/vendor/etc/init" "$base/vendor/etc/permissions" "$base/vendor/etc/wifi" \
    "$base/vendor/etc/vintf/manifest" "$base/vendor/lib64/omx"

copy_entry() {
    local path="$1"
    unzip -p "$zip" "$path" > "$base/$path"
    test -s "$base/$path"
}

copy_to() {
    local source="$1"
    local destination="$2"
    mkdir -p "$(dirname "$base/$destination")"
    unzip -p "$zip" "$source" > "$base/$destination"
    test -s "$base/$destination"
}

copy_to duhan/patches/remotedisplay/bin/remotedisplay system/bin/remotedisplay
copy_to duhan/patches/remotedisplay/etc/init/remotedisplay.rc system/etc/init/remotedisplay.rc
copy_to duhan/patches/remotedisplay/etc/permissions/com.android.media.remotedisplay.xml system/etc/permissions/com.android.media.remotedisplay.xml
copy_entry system/app/P2pAwareOverlay/P2pAwareOverlay.apk
copy_entry vendor/etc/permissions/android.hardware.wifi.direct.xml
copy_entry vendor/etc/wifi/p2p_supplicant_overlay.conf

# Required Android 16 common NDK/Platform bridge libraries for the Duhan HDCP WFD service.
copy_to duhan/patches/general_fixes/system/lib/android.hardware.common-V2-ndk.so system/lib/android.hardware.common-V2-ndk.so
copy_to duhan/patches/general_fixes/system/lib/android.hardware.common.fmq-V1-ndk.so system/lib/android.hardware.common.fmq-V1-ndk.so
copy_entry system/lib64/android.hardware.common-V2-ndk.so
copy_entry system/lib64/android.hardware.common.fmq-V1-ndk.so
copy_entry vendor/lib/android.hardware.common-V2-ndk.so
copy_entry vendor/lib/android.hardware.common.fmq-V1-ndk.so
copy_entry vendor/lib64/android.hardware.common-V2-ndk.so
copy_entry vendor/lib64/android.hardware.common.fmq-V1-ndk.so
copy_to vendor/lib64/android.hardware.common-V2-ndk.so vendor/lib64/android.hardware.common-V2-ndk_platform.so

for name in \
    android.hardware.graphics.common-V4-ndk.so \
    android.hardware.graphics.common-V5-ndk.so \
    android.hardware.graphics.composer3-V1-ndk.so \
    android.hardware.graphics.extension.composer3-V1-ndk.so \
    libhdcp2.so libhdcp_client_aidl.so libremotedisplay.so \
    libremotedisplay_wfd.so libremotedisplayservice.so librepeater.so \
    libsecuibc.so libstagefright_hdcp.so libtsmux.so \
    vendor.samsung.hardware.security.hdcp.wifidisplay-V2-ndk.so \
    vendor.samsung_slsi.hardware.ExynosHWCServiceTW@1.0.so wfd_log.so; do
    copy_to "duhan/patches/remotedisplay/lib/$name" "system/lib/$name"
done

copy_entry system/app/SmartMirroring/SmartMirroring.apk
copy_entry system/app/SmartMirroring/oat/arm64/SmartMirroring.odex
copy_entry system/app/SmartMirroring/oat/arm64/SmartMirroring.vdex
copy_entry system/etc/default-permissions/default-permission-com.samsung.android.app.smartmirroring.xml
copy_entry system/framework/com.android.media.remotedisplay.jar

for name in \
    libhdcp2.so libhdcp_client_aidl.so libremotedisplay.so \
    libremotedisplay_wfd.so libremotedisplayservice.so libstagefright_hdcp.so \
    libwfds.so librepeater.so libsecuibc.so libtsmux.so \
    vendor.samsung.hardware.security.hdcp.wifidisplay-V2-ndk.so \
    vendor.samsung_slsi.hardware.ExynosHWCServiceTW@1.0.so wfd_log.so; do
    copy_entry "system/lib64/$name"
done

copy_entry vendor/bin/vendor.samsung.hardware.security.hdcp.wifidisplay-service
copy_entry vendor/etc/init/vendor.samsung.hardware.security.hdcp.wifidisplay-default.rc
copy_entry vendor/etc/vintf/manifest/vendor.samsung.hardware.security.hdcp.wifidisplay-default.xml
copy_entry vendor/lib64/omx/libOMX.Exynos.AVC.WFD.Encoder.so
copy_entry vendor/lib64/omx/libOMX.Exynos.HEVC.WFD.Encoder.so
copy_entry vendor/lib64/vendor.samsung.hardware.security.hdcp.wifidisplay-V2-ndk_platform.so

chmod 0644 "$base"/system/app/SmartMirroring/SmartMirroring.apk \
    "$base"/system/app/SmartMirroring/oat/arm64/* "$base"/system/app/P2pAwareOverlay/* \
    "$base"/system/etc/default-permissions/* \
    "$base"/system/framework/* "$base"/system/lib/* "$base"/system/lib64/*
chmod 0755 "$base"/system/bin/remotedisplay
chmod 0644 "$base"/system/etc/init/* "$base"/system/etc/permissions/*
chmod 0755 "$base"/vendor/bin/*
chmod 0644 "$base"/vendor/etc/init/* "$base"/vendor/etc/vintf/manifest/* \
    "$base"/vendor/lib64/omx/*
find "$base/vendor/lib64" -maxdepth 1 -type f -exec chmod 0644 {} +
find "$base/vendor/lib" -maxdepth 1 -type f -exec chmod 0644 {} +

echo "Imported $(find "$base" -type f | wc -l) remotedisplay files"
