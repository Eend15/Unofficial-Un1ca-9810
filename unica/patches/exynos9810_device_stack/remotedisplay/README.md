# Exynos9810 Smart View and Wireless DeX patch

This directory contains the framework, service, codec, HDCP and permission
assets used by Smart View/Wireless DeX on Exynos9810. The screen-sharing
helpers, audio-mirroring service, native executables and Samsung
AllShare components are kept together here because the device stack references
their exact paths. The newly ported APKs do not carry precompiled oat/vdex
files from the older ART release; Android 16 generates fresh artifacts during
dexopt.

The ARM32 `remotedisplay` service uses the legacy passthrough graphics mapper.
HIDL must enumerate `/vendor/lib/hw` before loading its implementation. The
shared boot-restore policy grants `remotedisplay` only the missing `open` and
`read` permissions on `vendor_file` directories; existing search and shared-HAL
library permissions remain in force. Without this rule, discovery returns no
mapper and the first BufferQueue allocation aborts with `gralloc-mapper is missing`,
even after successful Wi-Fi Direct and RTSP negotiation.

The final cleanup also imports this rule into platform CIL for all three
Exynos9810 targets. A live enforcing-policy test on Galaxy S9+ with LG Oled
reached `onDisplayConnected` at 1920x1080 and started both video and audio
tracks, without the previous mapper abort. Physical playback on the other two
targets still requires device testing. KernelSU is only used to apply the rule
to the already installed test device; ROM builds include it in their policy.

One UI 8 DeX uses `SEC_FLOATING_FEATURE_COMMON_SUPPORT_DESKTOP_WINDOWING`
and One UI Home's `com.honeyspace.dexservice.SecondaryLauncher`, rather than
the legacy `desktopmode` binder service. The shared final cleanup restores
this donor feature in both floating-feature files after the upstream blacklist
and verifies it before shipping. Legacy DeX feature flags alone are insufficient.
On S9+ the restored feature enables the Settings entry and connects to LG Oled
as a separate 1920x1080 display with `FLAG_EXTERNAL_DEX_HOSTING`,
`FLAG_WIRELESS_DEX_DISPLAY` and `canHostTasks=true`; SecondaryLauncher starts
on that display. The HDMI AUX_DIGITAL policy and playback link are retained,
but wired display/audio still need a physical HDMI-adapter test.
