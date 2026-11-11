#!/sbin/sh

# Sourced by the Exynos9810 installer scripts. ui_print writes to the recovery
# log (stdout) and, when the script was started by the updater, also to the
# TWRP screen through the updater's command pipe.
#
# run_program() forks the updater, whose arguments are: binary, api, fd, zip.
# Child scripts inherit the exported values from the script the updater ran.

if [ -z "${E9810_OUTFD:-}" ] && [ -r "/proc/$PPID/cmdline" ]; then
    _e9810_fd="$(tr '\0' '\n' < "/proc/$PPID/cmdline" 2>/dev/null | sed -n 3p)"
    case "$_e9810_fd" in
        ''|*[!0-9]*) ;;
        *)
            E9810_OUTFD="$_e9810_fd"
            E9810_UPDATER_PID="$PPID"
            export E9810_OUTFD E9810_UPDATER_PID
            ;;
    esac
    unset _e9810_fd
fi

ui_print()
{
    echo "$1"
    [ -n "${E9810_OUTFD:-}" ] || return 0
    for _e9810_out in "/proc/self/fd/$E9810_OUTFD" "/proc/${E9810_UPDATER_PID:-$PPID}/fd/$E9810_OUTFD"; do
        if [ -w "$_e9810_out" ]; then
            printf 'ui_print %s\nui_print\n' "$1" >> "$_e9810_out" 2>/dev/null && return 0
        fi
    done
    return 0
}
