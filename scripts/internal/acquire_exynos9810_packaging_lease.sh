#!/usr/bin/env bash
# Shared source/patch stages run in parallel; serialize image/OTA peak storage.
[ "$TARGET_PLATFORM" = exynos9810 ] || return 0
lease="$OUT_DIR/.exynos9810_packaging_lease"
owner="$PPID"
while [ "$owner" -gt 1 ]; do
    cmd=$(tr '\0' ' ' < "/proc/$owner/cmdline" 2>/dev/null)
    case "$cmd" in *scripts/make_rom.sh*) break ;; esac
    owner=$(awk '/^PPid:/ {print $2}' "/proc/$owner/status")
done
[ "$owner" -gt 1 ] || { LOGE "Cannot identify packaging build owner"; exit 1; }
announced=false
exec 9>"$OUT_DIR/.exynos9810_packaging_lease.guard"
while true; do
    flock 9 || exit 1
    if mkdir "$lease" 2>/dev/null; then
        printf '%s\n' "$owner" > "$lease/owner"
        printf '%s\n' "$TARGET_CODENAME" > "$lease/target"
        flock -u 9
        break
    fi
    previous=$(cat "$lease/owner" 2>/dev/null)
    if [ -n "$previous" ]; then
        case "$previous" in *[!0-9]*) LOGE "Invalid packaging lease owner"; exit 1 ;; esac
        cmd=$(tr '\0' ' ' < "/proc/$previous/cmdline" 2>/dev/null)
        if ! kill -0 "$previous" 2>/dev/null || [[ "$cmd" != *scripts/make_rom.sh* ]]; then
            rm -f "$lease/owner" "$lease/target"
            rmdir "$lease" 2>/dev/null || true
            flock -u 9
            continue
        fi
    fi
    if ! $announced; then LOG "- Waiting for the other Exynos9810 build to finish image/ZIP packaging"; announced=true; fi
    flock -u 9
    sleep 5
done
exec 9>&-
LOG "- Acquired exclusive image/ZIP packaging storage slot for $TARGET_CODENAME"
unset lease owner previous cmd announced
