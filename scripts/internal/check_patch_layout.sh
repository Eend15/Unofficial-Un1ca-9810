#!/usr/bin/env bash
# Validate the static patch layout without changing the build output.

set -euo pipefail

SRC_DIR="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)}"
SEARCH_ROOTS=(
    "$SRC_DIR/unica/patches"
    "$SRC_DIR/unica/mods"
    "$SRC_DIR/platform"
    "$SRC_DIR/target"
)

failures=0
patch_count=0

fail() {
    printf 'ERROR: %s\n' "$1" >&2
    failures=$((failures + 1))
}

# Exynos9810 platform modules are intentionally kept in the single visible
# unica/patches tree, but must still run in the platform stage. This catches a
# partial move or a future rename before it becomes a build-time surprise.
for exynos_module in \
    "$SRC_DIR/unica/patches/exynos9810_device_stack"; do
    [ -d "$exynos_module" ] || fail "missing relocated Exynos9810 patch module: ${exynos_module#$SRC_DIR/}"
    [ -f "$exynos_module/module.prop" ] || fail "missing module.prop: ${exynos_module#$SRC_DIR/}"
    [ -f "$exynos_module/customize.sh" ] || fail "missing customize.sh: ${exynos_module#$SRC_DIR/}"
done

for obsolete_twrp_module in \
    "$SRC_DIR/unica/patches/twrp_zip_compat" \
    "$SRC_DIR/unica/mods/zz_exynos9810_twrp_lite"; do
    [ ! -e "$obsolete_twrp_module" ] || fail "obsolete TWRP-lite module still exists: ${obsolete_twrp_module#$SRC_DIR/}"
done

if [ -d "$SRC_DIR/platform/exynos9810/patches" ] && \
        find "$SRC_DIR/platform/exynos9810/patches" -mindepth 1 -print -quit | grep -q .; then
    fail 'platform/exynos9810/patches still contains files after the unica/patches migration'
fi

if ! grep -q 'unica/patches/exynos9810_device_stack' "$SRC_DIR/scripts/make_rom.sh" || \
        ! grep -q -- '--exclude exynos9810_device_stack' "$SRC_DIR/scripts/make_rom.sh"; then
    fail 'make_rom.sh does not preserve the relocated Exynos9810 platform stage'
fi

while IFS= read -r patch_file; do
    patch_count=$((patch_count + 1))
    patch_name="${patch_file##*/}"
    patch_parent="${patch_file%/*}"
    artifact="${patch_parent##*/}"

    case "$patch_name" in
        [0-9][0-9][0-9][0-9]-*.patch) ;;
        *) fail "patch filename is not numbered: ${patch_file#$SRC_DIR/}" ;;
    esac

    case "$artifact" in
        *.apk|*.jar) ;;
        *) fail "patch is not stored below an APK/JAR directory: ${patch_file#$SRC_DIR/}" ;;
    esac

    if ! grep -q '^--- ' "$patch_file" || ! grep -q '^+++ ' "$patch_file"; then
        fail "patch has no unified-diff headers: ${patch_file#$SRC_DIR/}"
    fi
done < <(find "${SEARCH_ROOTS[@]}" -type f -name '*.patch' -print | LC_ALL=C sort)

while IFS= read -r patch_dir; do
    case "$patch_dir" in
        */smali/*) ;;
        *) continue ;;
    esac

    expected=1
    while IFS= read -r patch_file; do
        patch_name="${patch_file##*/}"
        sequence="${patch_name%%-*}"
        case "$sequence" in
            [0-9][0-9][0-9][0-9]) ;;
            *) continue ;;
        esac

        sequence_value=$((10#$sequence))
        if [ "$sequence_value" -ne "$expected" ]; then
            fail "patch sequence is not contiguous in ${patch_dir#$SRC_DIR/}: expected $(printf '%04d' "$expected"), found $patch_name"
            break
        fi
        expected=$((expected + 1))
    done < <(find "$patch_dir" -maxdepth 1 -type f -name '*.patch' -print | LC_ALL=C sort -n)
done < <(find "${SEARCH_ROOTS[@]}" -type d -print | LC_ALL=C sort)

while IFS= read -r stale_file; do
    fail "use .patch for unified diffs instead of: ${stale_file#$SRC_DIR/}"
done < <(
    find "${SEARCH_ROOTS[@]}" -type f \( \
        -name '*.diff' -o \
        -name '*.patchset' -o \
        -name '*.rej' -o \
        -name '*.orig' \
    \) -print | LC_ALL=C sort
)

while IFS= read -r loose_patch; do
    fail "unified diff is outside a .patch file: ${loose_patch#$SRC_DIR/}"
done < <(
    grep -RIl --binary-files=without-match --exclude-dir=.git --exclude='*.patch' \
        '^diff --git ' "${SEARCH_ROOTS[@]}" 2>/dev/null || true
)

if grep -RIl --exclude-dir=.git --exclude='*.patch' --exclude='check_patch_layout.sh' 'bt-lib-patch' \
        "$SRC_DIR/unica" "$SRC_DIR/scripts" "$SRC_DIR/platform" "$SRC_DIR/target" \
        2>/dev/null; then
    fail 'stale bt-lib-patch path reference found; use unica/patches/bluetooth'
fi

if [ "$failures" -ne 0 ]; then
    printf 'Patch layout check failed with %d error(s).\n' "$failures" >&2
    exit 1
fi

printf 'Patch layout OK: %d unified patch file(s) checked.\n' "$patch_count"
