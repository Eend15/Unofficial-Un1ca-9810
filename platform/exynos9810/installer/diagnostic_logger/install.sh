#!/sbin/sh

set -u
PAYLOAD=/tmp/exynos9810-safe-logger
LOG=/cache/unica-safe-logger-install.log

mkdir -p /cache 2>/dev/null || true
echo "UN1CA Exynos9810 safe logger package installer" > "$LOG" 2>&1 || LOG=/tmp/unica-safe-logger-install.log

[ -x /sbin/sh ] || exit 1
[ -f "$PAYLOAD/install.sh" ] || {
    echo "logger payload missing" >> "$LOG"
    exit 1
}

exec /sbin/sh "$PAYLOAD/install.sh"
