#!/system/bin/sh
# Shared Exynos9810 runtime tuning, installed through addon.d for every target.
# Every write is best-effort because kernel nodes differ between releases.

# UFS 2.1 flash storage tuning (internal disk sda)
if [ -f /sys/block/sda/queue/scheduler ]; then
    if grep -q 'noop' /sys/block/sda/queue/scheduler 2>/dev/null; then
        echo "noop" > /sys/block/sda/queue/scheduler 2>/dev/null
    elif grep -q 'none' /sys/block/sda/queue/scheduler 2>/dev/null; then
        echo "none" > /sys/block/sda/queue/scheduler 2>/dev/null
    fi
fi

for disk in /sys/block/sd* /sys/block/mmc*; do
    [ -d "$disk/queue" ] || continue
    if [ -f "$disk/queue/scheduler" ]; then
        if grep -q 'noop' "$disk/queue/scheduler" 2>/dev/null; then
            echo "noop" > "$disk/queue/scheduler" 2>/dev/null
        elif grep -q 'none' "$disk/queue/scheduler" 2>/dev/null; then
            echo "none" > "$disk/queue/scheduler" 2>/dev/null
        fi
    fi
    echo 256 > "$disk/queue/read_ahead_kb" 2>/dev/null
    echo 0 > "$disk/queue/iostats" 2>/dev/null
    echo 0 > "$disk/queue/add_random" 2>/dev/null
done

# CPU priority & cgroup shares for UI smoothness
if [ -f /dev/cpuctl/top-app/cpu.shares ]; then
    echo 10240 > /dev/cpuctl/top-app/cpu.shares 2>/dev/null
    echo 1024 > /dev/cpuctl/foreground/cpu.shares 2>/dev/null
    echo 256 > /dev/cpuctl/background/cpu.shares 2>/dev/null
fi

# CPU frequency rate limits: quick ramp-up (1ms), smooth ramp-down (20ms)
for policy in /sys/devices/system/cpu/cpufreq/policy*; do
    [ -d "$policy/schedutil" ] || continue
    echo 1000 > "$policy/schedutil/freqvar_up_rate_limit" 2>/dev/null
    echo 20000 > "$policy/schedutil/freqvar_down_rate_limit" 2>/dev/null
    echo 1000 > "$policy/schedutil/up_rate_limit_us" 2>/dev/null
    echo 20000 > "$policy/schedutil/down_rate_limit_us" 2>/dev/null
done

# Virtual memory optimization with ZRAM
echo 100 > /proc/sys/vm/swappiness 2>/dev/null
echo 15 > /proc/sys/vm/dirty_ratio 2>/dev/null
echo 5 > /proc/sys/vm/dirty_background_ratio 2>/dev/null
echo 80 > /proc/sys/vm/vfs_cache_pressure 2>/dev/null
echo 10 > /proc/sys/vm/stat_interval 2>/dev/null
echo 0 > /proc/sys/vm/page-cluster 2>/dev/null
echo 0 > /proc/sys/kernel/printk 2>/dev/null

# Runtime UI responsiveness and Dalvik GC tuning (safe userspace props)
setprop dalvik.vm.heaptargetutilization 0.5 2>/dev/null
settings put secure long_press_timeout 300 2>/dev/null
