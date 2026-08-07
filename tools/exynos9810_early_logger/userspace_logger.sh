#!/system/bin/sh

LOG=/cache/UN1CA-userspace-boot.log

mkdir -p /cache 2>/dev/null
exec >> "$LOG" 2>&1

echo "=== UN1CA userspace logger ==="
date
echo "phase=vendor-init"
echo "--- cmdline ---"
cat /proc/cmdline
echo "--- mounts ---"
cat /proc/mounts
echo "--- properties ---"
getprop
echo "--- dmesg ---"
dmesg

second=0
while [ "$second" -lt 180 ]; do
    echo "--- heartbeat=$second ---"
    date
    dmesg | tail -n 200
    getprop sys.boot_completed
    getprop init.svc.surfaceflinger
    getprop init.svc.zygote
    getprop init.svc.zygote64
    getprop init.svc.system_server
    getprop sys.boot.reason
    sleep 1
    second=$((second + 1))
done
