#!/sbin/sh

# Refuse to start a 5-10 minute install on an almost empty battery. A phone
# that dies during block_image_update is left without a bootable system.
# Exit 1 only when the level is known to be too low and the phone is not
# charging; an unreadable battery never blocks the install.

SELF_DIR="$(dirname "$0")"
if [ -f "$SELF_DIR/installer_ui.sh" ]; then
    # shellcheck source=/dev/null
    . "$SELF_DIR/installer_ui.sh"
else
    ui_print() { echo "$1"; }
fi

MIN_LEVEL="${E9810_MIN_BATTERY:-15}"
SUPPLY="${E9810_POWER_SUPPLY:-/sys/class/power_supply/battery}"

level="$(cat "$SUPPLY/capacity" 2>/dev/null)"
status="$(cat "$SUPPLY/status" 2>/dev/null)"

case "$level" in
    ''|*[!0-9]*)
        echo "E9810: battery level unknown; continuing"
        exit 0
        ;;
esac

if [ "$level" -lt "$MIN_LEVEL" ]; then
    case "$status" in
        Charging|Full)
            ui_print "E9810: battery ${level}% (charging); continuing"
            exit 0
            ;;
    esac
    ui_print "E9810: battery is ${level}% and not charging."
    ui_print "E9810: charge to at least ${MIN_LEVEL}% or connect a charger, then flash again."
    exit 1
fi

echo "E9810: battery ${level}% ($status)"
exit 0
