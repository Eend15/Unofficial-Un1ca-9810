# Copyright (c) 2026 UN1CA
# SPDX-License-Identifier: GPL-3.0-or-later

# Exynos9810 (Galaxy S9/S9+/Note9) RAM-optimization debloat list.
#
# These are removed to lower idle RAM on the 4GB Galaxy S9 (starlte) in
# particular. Only pure telemetry/analytics/dead background services and the
# AR-sticker packages are removed here -- nothing user-facing (weather widget,
# camera, dialer, Bixby, AOD, Device Care, etc. are all kept). All paths use the
# double-"system/" work-dir layout ($WORK_DIR/system/system/...), matching the
# existing entries in unica/debloat.sh.

# --- AR stickers / Sticker Center (user opted to remove) ---
# com.samsung.android.stickercenter -- Sticker Center (~150MB RSS when active)
# com.samsung.android.app.camera.sticker.facearavatar.preload -- AR avatar stickers
SYSTEM_DEBLOAT+="
system/app/StickerCenter
system/priv-app/StickerFaceARAvatar
"

# --- Pure telemetry / analytics / dead background services (no user-facing feature) ---
# com.samsung.android.knox.analytics.uploader -- Knox analytics uploader
# com.samsung.klmsagent               -- Knox License Management (useless once Knox is tripped)
# com.samsung.android.server.wifi.mobilewips -- Wi-Fi intrusion-detection telemetry (resident)
# com.samsung.android.beaconmanager   -- BLE beacon scanning service (resident)
# com.google.android.feedback         -- Google error/feedback reporter (system_ext, merged into system)
SYSTEM_DEBLOAT+="
system/priv-app/knoxanalyticsagent
system/priv-app/KLMSAgent
system/priv-app/MobileWips
system/priv-app/BeaconManager
system/system_ext/priv-app/GoogleFeedback
"

# --- Additional telemetry / diagnostics agents and idle apps (user-selected) ---
# (DAAgent kept: it is the Dual Messenger service, restored deliberately)
# com.samsung.oda.service                 -- Samsung diagnostics agent
# com.samsung.android.scpm                -- Samsung config/telemetry agent
# com.samsung.android.easysetup           -- one-time device setup wizard agent
# com.samsung.gpuwatchapp                 -- GPU usage telemetry
# com.samsung.android.networkdiagnostic   -- Wi-Fi diagnostics
# com.samsung.android.wifi.ai             -- Wi-Fi AI analysis service
# com.samsung.android.mocca               -- mobile cloud client (Samsung Cloud already removed)
# com.samsung.android.app.sketchbook      -- Samsung SketchBook drawing app
SYSTEM_DEBLOAT+="
system/priv-app/OdaService
system/priv-app/SCPMAgent
system/priv-app/EasySetup
system/priv-app/GpuWatchApp
system/priv-app/NetworkDiagnostic
system/app/WifiAiService
system/app/MoccaMobile
system/app/SketchBook
"
