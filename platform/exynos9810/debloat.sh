# Copyright (c) 2026 UN1CA
# SPDX-License-Identifier: GPL-3.0-or-later

# Exynos9810 (Galaxy S9/S9+/Note9) conservative background cleanup.
#
# Keep services that participate in Wi-Fi diagnostics, Bluetooth/wearable
# discovery, Knox/Secure Folder, setup and Samsung account/cloud contracts.
# Only telemetry-only components and optional user apps belong here. All paths
# use the double-"system/" work-dir layout ($WORK_DIR/system/system/...),
# matching the existing entries in unica/debloat.sh.

# --- AR stickers / Sticker Center (user opted to remove) ---
# com.samsung.android.stickercenter -- Sticker Center (~150MB RSS when active)
# com.samsung.android.app.camera.sticker.facearavatar.preload -- AR avatar stickers
SYSTEM_DEBLOAT+="
system/app/StickerCenter
system/priv-app/StickerFaceARAvatar
"

# --- Pure telemetry / analytics (no user-facing feature) ---
# Keep Knox, Wi-Fi and BLE services: Secure Folder, Wi-Fi stability and
# Galaxy Watch/accessory discovery depend on parts of those stacks.
SYSTEM_DEBLOAT+="
system/system_ext/priv-app/GoogleFeedback
"

# --- Additional telemetry / diagnostics agents and idle apps (user-selected) ---
# (DAAgent kept: it is the Dual Messenger service, restored deliberately)
# com.samsung.oda.service                 -- Samsung diagnostics agent
# com.samsung.android.scpm                -- Samsung Cloud shared-UID anchor (keep)
# com.samsung.gpuwatchapp                 -- GPU usage telemetry
# com.samsung.android.app.sketchbook      -- Samsung SketchBook drawing app
SYSTEM_DEBLOAT+="
system/priv-app/OdaService
system/priv-app/GpuWatchApp
system/app/SketchBook
"

# --- Components for hardware the Exynos 9810 does not have ---
# com.samsung.sec.android.teegris.tui_service -- Trusted UI for Samsung's TEEgris TEE.
#     The 9810 runs Trustonic (/dev/mobicore, /dev/t-base-tui); with no TEEgris
#     socket the always-running service retried its connection every second.
# com.samsung.pregpudriver.ex2200, com.samsung.gamedriver.ex2200 -- updatable GPU
#     drivers for the Exynos 2200 (Xclipse); ro.gfx.driver.0 names the Mali G72 one.
SYSTEM_DEBLOAT+="
system/app/TEEgrisTuiService
system/etc/sysconfig/preinstalled-packages-com.samsung.sec.android.teegris.tui_service.xml
system/priv-app/DevGPUDriver-EX2200
system/priv-app/GameDriver-EX2200
"
