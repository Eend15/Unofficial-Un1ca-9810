# Exynos9810 Smart View and Wireless DeX patch

This directory contains the framework, service, codec, HDCP and permission
assets used by Smart View/Wireless DeX on Exynos9810. The screen-sharing
helpers, audio-mirroring service, ARM64 native executables and Samsung
AllShare components are kept together here because the device stack references
their exact paths. The newly ported APKs do not carry precompiled oat/vdex
files from the older ART release; Android 16 generates fresh artifacts during
dexopt.
