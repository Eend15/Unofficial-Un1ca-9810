#!/system/bin/sh
# Do not override a user who has disabled home-screen motion.
if [ "$(settings get system infinity_motion_effect)" = null ]; then
    settings put system infinity_motion_effect 1
fi
settings put system support_aod_infinity 1
export CLASSPATH=/system/framework/S9AodWallpaperPolicy.dex
exec app_process /system/bin --nice-name=s9-aod-policy AodWallpaperPolicy
