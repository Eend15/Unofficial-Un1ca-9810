#!/sbin/sh

# Test the CRCs of the ROM payload before anything on the phone is changed.
# A damaged download otherwise only shows up as "missing N bytes of new data"
# halfway through block_image_update, after repartitioning and the system
# write have already happened.
#
# Exit 1 only when unzip reports damaged data. If the check itself cannot run
# (no unzip, unknown zip path, archive not readable by unzip) it warns and
# exits 0, so it never blocks an install that would otherwise work.

SELF_DIR="$(dirname "$0")"
if [ -f "$SELF_DIR/installer_ui.sh" ]; then
    # shellcheck source=/dev/null
    . "$SELF_DIR/installer_ui.sh"
else
    ui_print() { echo "$1"; }
fi
LOG="$SELF_DIR/verify_package.log"
UNZIP="${UNZIP:-/system/bin/unzip}"
ENTRIES="system.new.dat.br vendor.new.dat.br odm.new.dat.br boot.img"

# run_program() forks the updater, whose arguments are: binary, api, fd, zip.
ZIP="$1"
if [ -z "$ZIP" ] && [ -r "/proc/$PPID/cmdline" ]; then
    ZIP="$(tr '\0' '\n' < "/proc/$PPID/cmdline" | sed -n 4p)"
fi
[ -n "$ZIP" ] && [ -f "$ZIP" ] || ZIP="$UPDATE_PACKAGE"

if [ -z "$ZIP" ] || [ ! -f "$ZIP" ]; then
    echo "E9810: ROM zip path unknown; skipping integrity check"
    exit 0
fi
if [ ! -x "$UNZIP" ]; then
    echo "E9810: $UNZIP not available; skipping integrity check"
    exit 0
fi

echo "E9810: testing $ZIP"
# shellcheck disable=SC2086
"$UNZIP" -t "$ZIP" $ENTRIES > "$LOG" 2>&1
RC=$?

if grep -q -e "bad CRC" -e "At least one error was detected" "$LOG"; then
    grep -v -e "OK$" -e "^Archive:" "$LOG" | while IFS= read -r line; do
        ui_print "$line"
    done
    ui_print "E9810: ROM zip is damaged"
    exit 1
fi
if grep -q "No errors detected" "$LOG"; then
    echo "E9810: ROM zip integrity ok"
    exit 0
fi

tail -n 3 "$LOG"
echo "E9810: integrity check could not run (unzip exit $RC); continuing"
exit 0
