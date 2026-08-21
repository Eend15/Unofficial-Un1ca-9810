#!/system/bin/sh
# Shared Exynos9810 runtime tuning, installed through addon.d for every target.
# Every write is best-effort because kernel nodes differ between releases.

if [ -f /sys/class/kgsl/kgsl-3d0/devfreq/governor ]; then
    echo "simple_ondemand" > /sys/class/kgsl/kgsl-3d0/devfreq/governor 2>/dev/null
fi

if [ -f /sys/block/sda/queue/scheduler ]; then
    echo "bfq" > /sys/block/sda/queue/scheduler 2>/dev/null
fi
for disk in /sys/block/sd* /sys/block/mmc*; do
    [ -f "$disk/queue/scheduler" ] && echo "bfq" > "$disk/queue/scheduler" 2>/dev/null
done

echo 60 > /proc/sys/vm/swappiness 2>/dev/null
echo 20 > /proc/sys/vm/dirty_ratio 2>/dev/null
echo 5 > /proc/sys/vm/dirty_background_ratio 2>/dev/null
echo 50 > /proc/sys/vm/vfs_cache_pressure 2>/dev/null
echo 0 > /proc/sys/kernel/printk 2>/dev/null
