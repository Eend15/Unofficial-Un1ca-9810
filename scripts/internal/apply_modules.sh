#!/usr/bin/env bash
# Copyright (c) 2023 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

set -e

#[
source "$SRC_DIR/scripts/utils/module_utils.sh" || exit 1

APPLY_MODULE()
{
    local MODPATH="$1"
    local MODNAME
    local MODAUTH

    if [ ! -d "$MODPATH" ]; then
        LOGE "Folder not found: ${MODPATH//$SRC_DIR\//}"
        return 1
    fi

    if [ -d "$MODPATH/$TARGET_OS_SINGLE_SYSTEM_IMAGE" ]; then
        MODPATH="$MODPATH/$TARGET_OS_SINGLE_SYSTEM_IMAGE"
    fi

    if [ ! -f "$MODPATH/module.prop" ]; then
        LOGE "File not found: ${MODPATH//$SRC_DIR\//}/module.prop"
        return 1
    elif [ -f "$MODPATH/disable" ]; then
        return 0
    else
        MODNAME="$(grep "^name" "$MODPATH/module.prop" | sed "s/name=//")"
        MODAUTH="$(grep "^author" "$MODPATH/module.prop" | sed "s/author=//" | sed "s/, /, @/g")"
    fi

    LOG_STEP_IN "- Processing \"$MODNAME\" by @$MODAUTH"

    if ! grep -q "^SKIPUNZIP=1$" "$MODPATH/customize.sh" 2> /dev/null; then
        if [ -d "$MODPATH/odm" ]; then
            ADD_TO_WORK_DIR "$MODPATH" "odm" "." 0 0 755 "u:object_r:vendor_file:s0"
        fi
        if [ -d "$MODPATH/product" ]; then
            ADD_TO_WORK_DIR "$MODPATH" "product" "." 0 0 755 "u:object_r:system_file:s0"
        fi
        if [ -d "$MODPATH/system" ]; then
            ADD_TO_WORK_DIR "$MODPATH" "system" "." 0 0 755 "u:object_r:system_file:s0"
        fi
        if [ -d "$MODPATH/system_ext" ]; then
            ADD_TO_WORK_DIR "$MODPATH" "system_ext" "." 0 0 755 "u:object_r:system_file:s0"
        fi
        if [ -d "$MODPATH/vendor" ]; then
            ADD_TO_WORK_DIR "$MODPATH" "vendor" "." 0 2000 755 "u:object_r:vendor_file:s0"
        fi
    fi

    READ_AND_APPLY_PROPS "$MODPATH"

    if [ -f "$MODPATH/customize.sh" ]; then
        . "$MODPATH/customize.sh"
    fi

    if [ -d "$MODPATH/smali" ]; then
        while IFS= read -r f; do
            APPLY_SMALI_PATCHES "$MODPATH/smali" "$f"
        done < <(find "$MODPATH/smali" -type d \( -name "*.apk" -o -name "*.jar" \) | sed "s|$MODPATH/smali/||")
    fi

    LOG_STEP_OUT

    return 0
}

APPLY_SMALI_PATCHES()
{
    local PATCHES_PATH="$1"
    local TARGET="$2"

    local PARTITION
    PARTITION="$(cut -d "/" -f 1 -s <<< "$TARGET")"

    if ! IS_VALID_PARTITION_NAME "$PARTITION"; then
        LOGE "\"$PARTITION\" is not a valid partition name"
        return 1
    fi

    while IFS= read -r p; do
        local FILE="$TARGET"
        if [[ "$PARTITION" != "system" ]]; then
            FILE="$(cut -d "/" -f 2- -s <<< "$FILE")"
        fi

        APPLY_PATCH "$PARTITION" "$FILE" "$p"
    done < <(find "$PATCHES_PATH/$TARGET" -type f -name "*.patch" | sort -n)

    return 0
}

READ_AND_APPLY_PROPS()
{
    local MODPATH="$1"
    local PARTITION

    while IFS= read -r f; do
        PARTITION=$(basename "$f" | sed "s/.prop//")
        IS_VALID_PARTITION_NAME "$PARTITION" || continue

        while read -r l; do
            if [[ "$l" == "#"* ]] || [ ! "$l" ]; then
                continue
            fi

            if grep -q -F "=" <<< "$l"; then
                if [ ! "$(cut -d "=" -f 2- -s <<< "$l")" ]; then
                    SET_PROP "$PARTITION" "$(cut -d "=" -f 1 -s <<< "$l")" --delete
                else
                    SET_PROP "$PARTITION" "$(cut -d "=" -f 1 -s <<< "$l")" "$(cut -d "=" -f 2- -s <<< "$l")"
                fi
            else
                LOGE "Malformed string in $f: \"$l\""
                return 1
            fi
        done < "$f"
    done < <(find "$MODPATH" -maxdepth 1 -type f -name "*.prop")

    return 0
}
#]

IS_EXCLUDED_MODULE()
{
    local NAME="$1"
    local EXCLUDED

    for EXCLUDED in "${EXCLUDED_MODULES[@]}"; do
        [ "$NAME" = "$EXCLUDED" ] && return 0
    done

    return 1
}

if [ "$#" -lt "1" ]; then
    echo "Usage: apply_modules <folder|module> [--exclude <module> ...]" >&2
    exit 1
fi

MODULE_ROOT="$1"
shift
EXCLUDED_MODULES=()
INCLUDE_EXYNOS9810_FINAL_STAGES=false
while [ "$#" -gt "0" ]; do
    case "$1" in
        --include-exynos9810-final-stages)
            INCLUDE_EXYNOS9810_FINAL_STAGES=true
            shift
            ;;
        --exclude)
            [ "$#" -ge "2" ] || {
                echo "Missing module name after --exclude" >&2
                exit 1
            }
            EXCLUDED_MODULES+=("$2")
            shift 2
            ;;
        *)
            echo "Unknown argument: $1" >&2
            exit 1
            ;;
    esac
done

if [ ! -d "$MODULE_ROOT" ]; then
    LOGE "Folder not found: ${MODULE_ROOT//$SRC_DIR\//}"
    exit 1
elif [ -f "$MODULE_ROOT/module.prop" ]; then
    APPLY_MODULE "$MODULE_ROOT"
else
    while IFS= read -r f; do
        MODNAME="${f##*/}"
        IS_EXCLUDED_MODULE "$MODNAME" && continue
        APPLY_MODULE "$f"
    done < <(python3 - "$MODULE_ROOT" "$SRC_DIR" "$TARGET_PLATFORM" "$INCLUDE_EXYNOS9810_FINAL_STAGES" <<'PYORDER'
from pathlib import Path
import sys
root = Path(sys.argv[1])
def key(path):
    order = 0
    prop = path / "module.prop"
    if prop.is_file():
        for line in prop.read_text().splitlines():
            if line.startswith("build_order="):
                order = int(line.split("=", 1)[1])
    return order, path.name
modules = [p for p in root.iterdir() if p.is_dir()]
if sys.argv[3] == "exynos9810" and sys.argv[4] == "true":
    stack = Path(sys.argv[2]) / "unica/patches/exynos9810_device_stack"
    for name in ("exynos9810_boot_restore", "exynos9810_finalization"):
        path = stack / name
        if not (path / "module.prop").is_file() or not (path / "customize.sh").is_file():
            raise SystemExit(f"Missing Exynos9810 final stage: {path}")
        modules.append(path)
for path in sorted(modules, key=key):
    print(path)
PYORDER
)
fi

exit 0
