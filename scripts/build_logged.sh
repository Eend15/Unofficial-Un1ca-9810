#!/usr/bin/env bash
# Run one target build with a durable log and an unambiguous exit-status file.
# buildenv.sh intentionally probes an unset SRC_DIR while locating the tree;
# nounset would abort before the normal source-root detection can run.
set -o pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
TARGET="${1:-}"
LOG_FILE="${2:-}"
STATUS_FILE="${3:-}"
shift 3 2>/dev/null || true

if [ -z "$TARGET" ] || [ -z "$LOG_FILE" ] || [ -z "$STATUS_FILE" ]; then
    printf 'usage: %s <target> <log-file> <status-file> [make_rom options...]\n' "$0" >&2
    exit 2
fi

mkdir -p "$(dirname "$LOG_FILE")" "$(dirname "$STATUS_FILE")"
printf 'running\n' > "$STATUS_FILE"
cd "$REPO_DIR" || {
    printf '90\n' > "$STATUS_FILE"
    exit 90
}

# Keep one durable log containing both the config phase and ROM phase. This is
# intentionally installed before sourcing buildenv.sh, whose output is useful
# when a host dependency or target configuration fails.
: > "$LOG_FILE"
exec > >(tee -a "$LOG_FILE") 2>&1

# Make ordinary exits and handled signals visible in the status file. A host
# or WSL hard reset cannot run this trap, but normal interruption is recorded.
trap '_build_rc=$?; printf "%s\\n" "$_build_rc" > "$STATUS_FILE"' EXIT
trap 'exit 143' TERM
trap 'exit 130' INT

export UN1CA_APKTOOL_JOBS="${UN1CA_APKTOOL_JOBS:-1}"
source buildenv.sh "$TARGET"
rc=$?
if [ "$rc" -eq 0 ]; then
    scripts/make_rom.sh "$@"
    rc=$?
fi

printf '%s\n' "$rc" > "$STATUS_FILE"
exit "$rc"
