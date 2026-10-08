#!/system/bin/sh
# Repair legacy thumbnail directories without changing wallpaper selections.
# Directories need search permission; mode 0600 makes WMS thumbnail writes fail.
for thumbnail_dir in /data/system/users/*/wallpaper_thumbs; do
    [ -d "$thumbnail_dir" ] || continue
    chown system:system "$thumbnail_dir"
    chmod 0700 "$thumbnail_dir"
done
# Do not override a user who has disabled home-screen motion.
if [ "$(settings get system infinity_motion_effect)" = null ]; then
    settings put system infinity_motion_effect 1
fi
settings put system support_aod_infinity 1
export CLASSPATH=/system/framework/S9AodWallpaperPolicy.dex
exec app_process /system/bin --nice-name=s9-aod-policy AodWallpaperPolicy
