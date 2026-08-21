#!/usr/bin/env bash
# Copyright (c) 2025 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# [
source "$SRC_DIR/scripts/utils/build_utils.sh" || exit 1

FORCE=false
EXPLICIT_CLEAN_WORK_DIR=false
RESUME_AFTER_MODS=false
BUILD_ROM=false
BUILD_TARGET_FILES=true
BUILD_FLASHABLE_ZIP=false
FS_TYPE_OVERRIDE=""

START_TIME="$(date +%s)"

SOURCE_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$SOURCE_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$SOURCE_FIRMWARE")"
TARGET_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$TARGET_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$TARGET_FIRMWARE")"

GET_WORK_DIR_HASH()
{
    local SOURCE_HASH

    SOURCE_HASH="$(find "$SRC_DIR/platform/$TARGET_PLATFORM" "$SRC_DIR/unica" "$SRC_DIR/target/$TARGET_CODENAME" -type f -print0 | \
        sort -z | xargs -0 sha1sum | sha1sum | cut -d " " -f 1)"
    printf '%s\n%s\n' "$SOURCE_HASH" "${TARGET_OS_FILE_SYSTEM_TYPE:-}" | sha1sum | cut -d " " -f 1
}

PREPARE_SCRIPT()
{
    while [ "$#" != 0 ]; do
        if [[ "$1" == "--force" ]] || [[ "$1" == "-f" ]]; then
            FORCE=true
        elif [[ "$1" == "--clean-work-dir" ]]; then
            FORCE=true
            EXPLICIT_CLEAN_WORK_DIR=true
        elif [[ "$1" == "--resume-after-mods" ]]; then
            FORCE=true
            RESUME_AFTER_MODS=true
        elif [[ "$1" == "--no-target-files" ]] || [[ "$1" == "-x" ]]; then
            BUILD_TARGET_FILES=false
            BUILD_FLASHABLE_ZIP=false
        elif [[ "$1" == "--build-rom-zip" ]] || [[ "$1" == "-z" ]]; then
            BUILD_TARGET_FILES=true
            BUILD_FLASHABLE_ZIP=true
        elif [[ "$1" == "--fs-type" ]] || [[ "$1" == "--filesystem" ]] || [[ "$1" == "-F" ]]; then
            if [ "$#" -lt 2 ]; then
                LOGE "Missing file system type after $1 (expected ext4 or erofs)"
                PRINT_USAGE
                exit 1
            fi
            FS_TYPE_OVERRIDE="$2"
            shift
        elif [[ "$1" == "--fs-type="* ]] || [[ "$1" == "--filesystem="* ]]; then
            FS_TYPE_OVERRIDE="${1#*=}"
        else
            if [[ "$1" == "-"* ]]; then
                LOGE "Unknown option: $1"
            fi
            PRINT_USAGE
            exit 1
        fi

        shift
    done
}

PRINT_BUILD_OUTCOME()
{
    local EXIT_CODE="$?"
    local END_TIME
    local ESTIMATED

    END_TIME="$(date +%s)"
    ESTIMATED="$((END_TIME - START_TIME))"

    if [ "$EXIT_CODE" != "0" ]; then
        echo -n -e '\n\033[1;31m'"Build failed "
    else
        echo -n -e '\n\033[1;32m'"Build completed "
    fi
    echo -e "in $((ESTIMATED / 3600))hrs $(((ESTIMATED / 60) % 60))min $((ESTIMATED % 60))sec."'\033[0m\n'
}

PRINT_USAGE()
{
    echo "Usage: make_rom [options]" >&2
    echo " -f, --force : Force ROM build" >&2
    echo " --clean-work-dir : Delete and recreate work_dir before building" >&2
    echo " --resume-after-mods : Preserve current work_dir/apktool state and resume at APK/JAR rebuild" >&2
    echo " -x, --no-target-files : Do not build target-files zip" >&2
    echo " -z, --build-rom-zip : Build flashable zip" >&2
    echo " -F, --fs-type <ext4|erofs> : Select the output file system for this build" >&2
}
# ]

PREPARE_SCRIPT "$@"

if [ "$FS_TYPE_OVERRIDE" ]; then
    case "$FS_TYPE_OVERRIDE" in
        ext4|erofs)
            TARGET_OS_FILE_SYSTEM_TYPE="$FS_TYPE_OVERRIDE"
            export TARGET_OS_FILE_SYSTEM_TYPE
            LOG "Using $TARGET_OS_FILE_SYSTEM_TYPE output file system for this build"
            ;;
        *)
            LOGE "Unsupported file system type: $FS_TYPE_OVERRIDE (use ext4 or erofs)"
            PRINT_USAGE
            exit 1
            ;;
    esac
fi

# Flashable builds now preserve work_dir by default. The hash check below still
# rebuilds when source/config inputs changed; use --clean-work-dir only when a
# deliberately clean baseline is needed.

if $FORCE; then
    BUILD_ROM=true
else
    if [ -f "$WORK_DIR/.completed" ]; then
        if [[ "$(cat "$WORK_DIR/.completed")" == "$(GET_WORK_DIR_HASH)" ]]; then
            LOGW "No changes have been detected in the build environment"
            BUILD_ROM=false
        else
            LOGW "Changes detected in the build environment"
            BUILD_ROM=true
        fi
    else
        BUILD_ROM=true
    fi
fi

trap 'PRINT_BUILD_OUTCOME' EXIT
trap 'echo' INT

if $BUILD_ROM; then
    if $RESUME_AFTER_MODS; then
        [ -d "$WORK_DIR" ] || {
            LOGE "Cannot resume after mods: missing work_dir"
            exit 1
        }
        [ -d "$APKTOOL_DIR" ] || {
            LOGE "Cannot resume after mods: missing apktool dir"
            exit 1
        }

        LOGW "Resuming from existing work_dir after ROM patches/mods"
        rm -f "$WORK_DIR/.completed"
        echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.build_in_progress"
        echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.modules_applied"
    else
    if $EXPLICIT_CLEAN_WORK_DIR; then
        LOGW "Deleting work_dir because --clean-work-dir was requested"
        [ -d "$WORK_DIR" ] && rm -rf "$WORK_DIR"
    fi

    [ -d "$APKTOOL_DIR" ] && rm -rf "$APKTOOL_DIR"
    rm -f "$WORK_DIR/.completed" "$WORK_DIR/.modules_applied"
    mkdir -p "$WORK_DIR"
    echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.build_in_progress"

    if [ ! -f "$FW_DIR/$SOURCE_FIRMWARE_PATH/.extracted" ] || [ ! -f "$FW_DIR/$TARGET_FIRMWARE_PATH/.extracted" ]; then
        if [ ! -f "$ODIN_DIR/$SOURCE_FIRMWARE_PATH/.downloaded" ] || [ ! -f "$ODIN_DIR/$TARGET_FIRMWARE_PATH/.downloaded" ]; then
            LOG_STEP_IN true "Downloading required firmwares"
            "$SRC_DIR/scripts/download_fw.sh" || exit 1
            LOG_STEP_OUT
        fi
        LOG_STEP_IN true "Extracting required firmwares"
        "$SRC_DIR/scripts/extract_fw.sh" || exit 1
        LOG_STEP_OUT
    fi

    LOG_STEP_IN true "Creating work dir"
    "$SRC_DIR/scripts/internal/create_work_dir.sh" || exit 1
    LOG_STEP_OUT

    PLATFORM_PATCH_DIR="$SRC_DIR/platform/$TARGET_PLATFORM/patches"
    if [ "$TARGET_PLATFORM" = "exynos9810" ]; then
        LOG_STEP_IN true "Applying platform patches"
        EXYNOS9810_MODULE="$SRC_DIR/unica/patches/exynos9810_device_stack"
        [ -d "$EXYNOS9810_MODULE" ] || {
            LOGE "Missing relocated Exynos9810 patch module: ${EXYNOS9810_MODULE//$SRC_DIR\//}"
            exit 1
        }
        "$SRC_DIR/scripts/internal/apply_modules.sh" "$EXYNOS9810_MODULE" || exit 1
        LOG_STEP_OUT
    elif [ -d "$PLATFORM_PATCH_DIR" ]; then
        LOG_STEP_IN true "Applying platform patches"
        "$SRC_DIR/scripts/internal/apply_modules.sh" "$PLATFORM_PATCH_DIR" || exit 1
        LOG_STEP_OUT
    fi
    if [ -d "$SRC_DIR/target/$TARGET_CODENAME/patches" ]; then
        LOG_STEP_IN true "Applying device patches"
        "$SRC_DIR/scripts/internal/apply_modules.sh" "$SRC_DIR/target/$TARGET_CODENAME/patches" || exit 1
        LOG_STEP_OUT
    fi
    if [ -d "$SRC_DIR/unica/patches" ]; then
        LOG_STEP_IN true "Applying ROM patches"
        "$SRC_DIR/scripts/internal/apply_modules.sh" "$SRC_DIR/unica/patches" \
            --exclude exynos9810_device_stack || exit 1
        LOG_STEP_OUT
    fi

    if [ -d "$SRC_DIR/unica/mods" ]; then
        LOG_STEP_IN true "Applying ROM mods"
        "$SRC_DIR/scripts/internal/apply_modules.sh" "$SRC_DIR/unica/mods" || exit 1
        LOG_STEP_OUT
    fi

    echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.modules_applied"
    fi

    if [ -d "$APKTOOL_DIR" ]; then
        LOG_STEP_IN true "Building APKs/JARs"

        APKTOOL_JOBS="${UN1CA_APKTOOL_JOBS:-1}"
        if ! [[ "$APKTOOL_JOBS" =~ ^[0-9]+$ ]]; then
            APKTOOL_JOBS=0
        fi

        while IFS= read -r f; do
            if [ "$APKTOOL_JOBS" -gt 0 ]; then
                while [ "$(jobs -rp | wc -l)" -ge "$APKTOOL_JOBS" ]; do
                    wait -n || exit 1
                done
            fi

            f="${f/$APKTOOL_DIR\//}"
            PARTITION="$(cut -d "/" -f 1 -s <<< "$f")"
            if [[ "$PARTITION" == "system" ]]; then
                "$SRC_DIR/scripts/apktool.sh" b "system" "$f" &
            else
                "$SRC_DIR/scripts/apktool.sh" b "$PARTITION" "$(cut -d "/" -f 2- -s <<< "$f")" &
            fi
        done < <(find "$APKTOOL_DIR" -type d \( -name "*.apk" -o -name "*.jar" \))

        # shellcheck disable=SC2046
        wait $(jobs -p) || exit 1

        LOG_STEP_OUT
    fi

    if [ "$TARGET_PLATFORM" = "exynos9810" ]; then
        LOG_STEP_IN true "Verifying Exynos9810 boot contract"
        bash "$SRC_DIR/scripts/internal/verify_exynos9810_boot_contract.sh" || exit 1
        LOG_STEP_OUT
    fi

    rm -f "$WORK_DIR/.build_in_progress"
    echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.completed"
fi

if $BUILD_TARGET_FILES || $BUILD_FLASHABLE_ZIP; then
    CURRENT_WORK_HASH="$(GET_WORK_DIR_HASH)"
    if [ -f "$WORK_DIR/.build_in_progress" ]; then
        LOGE "Refusing to package incomplete work_dir: previous build was interrupted before verification finished"
        exit 1
    fi
    if [ ! -f "$WORK_DIR/.modules_applied" ] || [ "$(cat "$WORK_DIR/.modules_applied" 2> /dev/null)" != "$CURRENT_WORK_HASH" ]; then
        LOGE "Refusing to package work_dir: ROM patches/mods were not applied for the current source state"
        exit 1
    fi
    if [ ! -f "$WORK_DIR/.completed" ] || [ "$(cat "$WORK_DIR/.completed" 2> /dev/null)" != "$CURRENT_WORK_HASH" ]; then
        LOGE "Refusing to package work_dir: APK/JAR rebuild and boot-contract verification did not complete"
        exit 1
    fi

    ZIP_FILE_NAME="${TARGET_CODENAME}_"
    if [ "$(GET_PROP "system" "ro.unica.version")" ]; then
        ZIP_FILE_NAME+="$(GET_PROP "system" "ro.unica.version")"
    else
        ZIP_FILE_NAME+="$ROM_VERSION"
    fi
    ZIP_FILE_NAME+="-target_files.zip"

    if [ -f "$OUT_DIR/$ZIP_FILE_NAME" ]; then
        LOGW "Removing stale target-files zip after ROM rebuild: ${OUT_DIR//$SRC_DIR\//}/$ZIP_FILE_NAME"
        rm -f "$OUT_DIR/$ZIP_FILE_NAME"
    fi

    if $BUILD_FLASHABLE_ZIP; then
        # Remove old flashable outputs before generating a new image set.
        find "$OUT_DIR" -maxdepth 1 -type f -name "UN1CA_*_$TARGET_CODENAME*.zip" -delete
    fi

    if [ ! -f "$OUT_DIR/$ZIP_FILE_NAME" ]; then
        LOG_STEP_IN true "Creating target-files zip"
        "$SRC_DIR/scripts/internal/create_target_files_zip.sh" "$OUT_DIR/$ZIP_FILE_NAME" || exit 1
        LOG_STEP_OUT
    else
        LOGW "File already exists: ${OUT_DIR//$SRC_DIR\//}/$ZIP_FILE_NAME"
    fi

    if $BUILD_FLASHABLE_ZIP; then
        LOG_STEP_IN true "Creating flashable zip"
        "$SRC_DIR/scripts/build_flashable_zip.sh" "$OUT_DIR/$ZIP_FILE_NAME" || exit 1
        LOG_STEP_OUT
    fi
fi

exit 0
