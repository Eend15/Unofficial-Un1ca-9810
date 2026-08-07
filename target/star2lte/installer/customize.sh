. "$SRC_DIR/platform/exynos9810/installer/customize.sh"

# Battery optimization
LOG "- Adding battery optimizations"
mkdir -p "$TMP_DIR/addon.d"
cat >> "$TMP_DIR/addon.d/battery_tweaks.sh" << "BATT"
#!/system/bin/sh
# Battery tweaks - applied on boot
# GPU governor - simple_ondemand for better idle efficiency
if [ -f /sys/class/kgsl/kgsl-3d0/devfreq/governor ]; then
    echo "simple_ondemand" > /sys/class/kgsl/kgsl-3d0/devfreq/governor 2>/dev/null
fi
# I/O scheduler - bfq for flash storage
if [ -f /sys/block/sda/queue/scheduler ]; then
    echo "bfq" > /sys/block/sda/queue/scheduler 2>/dev/null
fi
for disk in /sys/block/sd* /sys/block/mmc*; do
    [ -f "$disk/queue/scheduler" ] && echo "bfq" > "$disk/queue/scheduler" 2>/dev/null
done
# Reduce swappiness
echo 60 > /proc/sys/vm/swappiness 2>/dev/null
# Dirty page tuning
echo 20 > /proc/sys/vm/dirty_ratio 2>/dev/null
echo 5 > /proc/sys/vm/dirty_background_ratio 2>/dev/null
# VFS cache pressure
echo 50 > /proc/sys/vm/vfs_cache_pressure 2>/dev/null
# Silence kernel log spam
echo 0 > /proc/sys/kernel/printk 2>/dev/null
BATT
chmod 755 "$TMP_DIR/addon.d/battery_tweaks.sh"
LOG "- Battery tweaks applied"
