#!/usr/bin/env bash
# Apply a maintained dependency patch without discarding local submodule changes.
set -euo pipefail
tree="$1"
patch="$2"
if git -C "$tree" apply --check "$patch" 2>/dev/null; then
    git -C "$tree" apply "$patch"
elif git -C "$tree" apply --reverse --check "$patch" 2>/dev/null; then
    printf 'Dependency patch already applied: %s\n' "${patch##*/}"
else
    printf 'Dependency patch does not match %s; local changes retained.\n' "$tree" >&2
    exit 1
fi
