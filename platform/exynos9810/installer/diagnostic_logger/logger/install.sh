#!/sbin/sh

set -u

PAYLOAD=/tmp/exynos9810-safe-logger
BASE=/data/adb/unica-exynos9810-safe-logger
MODULE=/data/adb/modules/unica_exynos9810_safe_logger
FALLBACK=/data/adb/service.d/unica-exynos9810-safe-logger.sh
LOG=/cache/unica-safe-logger-install.log

mkdir -p /cache 2>/dev/null || true
{
    echo "UN1CA safe logger installer"
    date
    echo "model=$(getprop ro.boot.em.model 2>/dev/null)"
    echo "product=$(getprop ro.product.device 2>/dev/null)"
} > "$LOG" 2>&1 || LOG=/tmp/unica-safe-logger-install.log

fail()
{
    echo "ERROR: $*" >> "$LOG"
    exit 1
}

[ -d /data ] || fail "/data is not mounted in TWRP"
[ -f "$PAYLOAD/bootlog.sh" ] || fail "bootlog.sh is missing from the package"
[ -f "$PAYLOAD/module.prop" ] || fail "module.prop is missing from the package"

# Only the diagnostic module directory is replaced. BOOT, vendor and system
# are intentionally never opened, mounted, patched or written here.
rm -rf "$BASE" "$MODULE"
mkdir -p "$BASE" "$MODULE" /data/adb/service.d || fail "cannot create /data/adb logger directories"

cp -f "$PAYLOAD/bootlog.sh" "$BASE/bootlog.sh" || fail "cannot install bootlog.sh"
chmod 0755 "$BASE/bootlog.sh"

cp -f "$PAYLOAD/module.prop" "$MODULE/module.prop" || fail "cannot install module.prop"
cp -f "$PAYLOAD/post-fs-data.sh" "$MODULE/post-fs-data.sh" || fail "cannot install post-fs-data.sh"
cp -f "$PAYLOAD/service.sh" "$MODULE/service.sh" || fail "cannot install service.sh"
cp -f "$PAYLOAD/uninstall.sh" "$MODULE/uninstall.sh" || fail "cannot install uninstall.sh"
chmod 0755 "$MODULE/post-fs-data.sh" "$MODULE/service.sh" "$MODULE/uninstall.sh"
touch "$MODULE/skip_mount"

# The fallback is harmless when KernelSU runs the module too: bootlog.sh has
# an atomic PID lock and only one recorder can run.
cp -f "$PAYLOAD/fallback-service.sh" "$FALLBACK" || fail "cannot install service.d fallback"
chmod 0755 "$FALLBACK"

echo "installed safe logger module at $MODULE" >> "$LOG"
echo "shared recorder at $BASE/bootlog.sh" >> "$LOG"
echo "BOOT was not modified" >> "$LOG"
sync
exit 0
