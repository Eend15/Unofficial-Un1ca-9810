#!/usr/bin/env bash
# Copyright (c) 2025 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# [
python3 "$SRC_DIR/scripts/internal/verify_source_checkout.py" || exit 1
source "$SRC_DIR/scripts/utils/build_utils.sh" || exit 1

# Built-in Exynos9810 face support explicitly requested for all three targets.
if [ "$TARGET_PLATFORM" = "exynos9810" ]; then
    case "$TARGET_CODENAME" in
        starlte|star2lte|crownlte)
            export EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=true
            export EXYNOS9810_FACEUNLOCKFIX_BUILTIN=true
            ;;
    esac
fi

FORCE=false
EXPLICIT_CLEAN_WORK_DIR=false
RESUME_AFTER_MODS=false
PACKAGE_STAGED=false
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
    local FACEUNLOCKFIX_HASH

    SOURCE_HASH="$(find "$SRC_DIR/platform/$TARGET_PLATFORM" "$SRC_DIR/unica" "$SRC_DIR/target/$TARGET_CODENAME" -type f -print0 | \
        sort -z | xargs -0 sha1sum | sha1sum | cut -d " " -f 1)"
    # Experimental integration lives under scripts/, outside the normal source
    # hash. Rebuild when a bridge/staging source changes; ignore generated pyc.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
            [ "${EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD:-false}" = "true" ]; then
        FACEUNLOCKFIX_HASH="$(find "$SRC_DIR/scripts/internal/FaceunlockFix" \
            "$SRC_DIR/scripts/internal/FaceunlockFix_bridge" -type f \
            \( -name '*.py' -o -name '*.sh' -o -name '*.json' -o -name '*.rc' \
               -o -name '*.java' -o -name '*.reference' -o -name '*.xml' \
               -o -name '*.c' -o -name '*.h' -o -name '*.example' \) -print0 | \
            sort -z | xargs -0 sha1sum | sha1sum | cut -d " " -f 1)"
        printf '%s\n%s\n%s\n%s\n' "$SOURCE_HASH" "${TARGET_OS_FILE_SYSTEM_TYPE:-}" \
            "$FACEUNLOCKFIX_HASH" "$(sha1sum "$SRC_DIR/scripts/make_rom.sh" | cut -d ' ' -f 1)" | \
            sha1sum | cut -d " " -f 1
        return
    fi
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
        elif [[ "$1" == "--package-staged" ]]; then
            FORCE=true
            RESUME_AFTER_MODS=true
            PACKAGE_STAGED=true
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
    echo " --package-staged : Validate and package already-compiled work_dir without rebuilding APK/JAR files" >&2
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

# The optional FaceunlockFix JAR must never leak into an ordinary cached ROM,
# nor may an opted-in build reuse a previously completed regular work_dir.
# The build-content hash does not encode external environment variables.
FACEUNLOCKFIX_BUILD_VARIANT=standard
if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
        [ "${EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD:-false}" = "true" ]; then
    case "$TARGET_CODENAME" in
        starlte|star2lte|crownlte) ;;
        *) LOGE "FaceunlockFix requires an Exynos9810 S9, S9+ or Note9 target"; exit 1 ;;
    esac
    FACEUNLOCKFIX_BUILD_VARIANT=experimental
fi
PREVIOUS_FACEUNLOCKFIX_VARIANT=standard
[ ! -f "$WORK_DIR/.faceunlockfix_build_variant" ] || \
    PREVIOUS_FACEUNLOCKFIX_VARIANT="$(cat "$WORK_DIR/.faceunlockfix_build_variant")"
if [ "$PREVIOUS_FACEUNLOCKFIX_VARIANT" != "$FACEUNLOCKFIX_BUILD_VARIANT" ]; then
    $RESUME_AFTER_MODS && {
        LOGE "Cannot resume FaceunlockFix after a different build variant"
        exit 1
    }
    # A source rebuild only deletes apktool/; it cannot reliably remove old
    # staged native binaries, patched vendor init or classes3.dex from work_dir.
    # Require the operator's explicitly requested clean rebuild on a switch.
    if ! $EXPLICIT_CLEAN_WORK_DIR && [ -d "$WORK_DIR" ] && \
            [ -n "$(find "$WORK_DIR" -mindepth 1 -maxdepth 1 -print -quit)" ]; then
        LOGE "FaceunlockFix build variant changed; use --clean-work-dir to avoid mixing ROM variants"
        exit 1
    fi
    LOGW "FaceunlockFix build variant changed; preparing isolated ROM work_dir"
    BUILD_ROM=true
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
        "$SRC_DIR/scripts/internal/apply_modules.sh" "$SRC_DIR/unica/mods" \
            --include-exynos9810-final-stages || exit 1
        LOG_STEP_OUT
    fi

    echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.modules_applied"
    fi

    # The opt-in FaceProvider hook must be inserted into decoded services.jar
    # BEFORE the normal module-compatible Apktool rebuild. Only one method is
    # changed; other custom framework patches are preserved.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
            [ "${EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD:-false}" = "true" ] && ! $PACKAGE_STAGED; then
        python3 "$SRC_DIR/scripts/internal/FaceunlockFix/stage_verified_rom.py" \
            --prepare --target "$TARGET_CODENAME" || exit 1
    fi

    if [ -d "$APKTOOL_DIR" ] && ! $PACKAGE_STAGED; then
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

    # The stock S9 Infinity and UN1CA live wallpapers share one tested
    # 10-video wallpaper-res catalog. Earlier generic modules decode the
    # donor wallpaper-res, while the last Exynos9810 module installs the
    # paired, signed replacement. Verify the actual post-Apktool payload so
    # a stale build cache/resumed image cannot silently lose either series.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
            [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]]; then
        LOG_STEP_IN true "Verifying final Galaxy S9 Infinity and UN1CA wallpapers"
        python3 "$SRC_DIR/unica/mods/s9_infinity_Wallpaper/source/verify_built_wallpapers.py" \
            --work-dir "$WORK_DIR" --target "$TARGET_CODENAME" || exit 1
        LOG_STEP_OUT
    fi

    # A decoded SystemUI source patch is not enough: resume builds can retain
    # stale APKs and fail to show Brief pop-ups with no build-time error.
    # Check the *compiled*, signed output, never install a diagnostic APK.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
            [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]]; then
        LOG_STEP_IN true "Verifying rebuilt Brief notifications and Edge Lighting"
        python3 "$SRC_DIR/unica/patches/exynos9810_device_stack/exynos9810_finalization/notifications/verify_brief_rebuilt_artifacts.py" \
            --work-dir "$WORK_DIR" || exit 1
        LOG_STEP_OUT
    fi

    # The module preflight checks staged Note9 files, but AirCommand and
    # services.jar are rebuilt *after* that check. Reject missing signatures or
    # lost Crown BLE/sysfs bytecode in the actual output before making images.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && [ "$TARGET_CODENAME" = "crownlte" ]; then
        LOG_STEP_IN true "Verifying rebuilt Note9 S Pen components"
        NOTE9_PLATFORM_CERT_PREFIX="aosp"
        [ "${ROM_IS_OFFICIAL:-false}" = "true" ] && NOTE9_PLATFORM_CERT_PREFIX="unica"
        python3 "$SRC_DIR/unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/verify_note9_rebuilt_artifacts.py" \
            --work-dir "$WORK_DIR" \
            --platform-cert "$SRC_DIR/security/${NOTE9_PLATFORM_CERT_PREFIX}_platform.x509.pem" || exit 1
        LOG_STEP_OUT
    fi

    # Built-in FaceunlockFix is selected for all three supported Exynos9810
    # release targets above. Compile the current shared source on a fresh build;
    # the assembler appends the FaceunlockFix-only extra dex WITHOUT
    # replacing the previously rebuilt Android16 framework dex entries.
    # This runs AFTER APK/JAR rebuilds so subsequent packaging cannot replace
    # the native-backed callback bridge.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
            [ "${EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD:-false}" = "true" ] && ! $PACKAGE_STAGED; then
        LOG_STEP_IN true "Assembling opt-in FaceunlockFix source"
        python3 "$SRC_DIR/scripts/internal/FaceunlockFix/stage_verified_rom.py" \
            --apply --target "$TARGET_CODENAME" || exit 1
        LOG_STEP_OUT
    fi

    if [ "$TARGET_PLATFORM" = "exynos9810" ]; then
        LOG_STEP_IN true "Verifying Exynos9810 boot contract"
        bash "$SRC_DIR/scripts/internal/verify_exynos9810_boot_contract.sh" || exit 1
        LOG_STEP_OUT
    fi

    rm -f "$WORK_DIR/.build_in_progress"
fi

# Cached ROMs must also pass the variant check, even when no source rebuild is
# scheduled. A standard ROM may never carry the experimental native init file.
if [ "$FACEUNLOCKFIX_BUILD_VARIANT" = "standard" ] && \
        [ -e "$WORK_DIR/system/system/etc/init/faceunlockfixd.rc" ]; then
    LOGE "Standard ROM work_dir contains FaceunlockFix runtime; rebuild with --clean-work-dir"
    exit 1
fi
if [ "$FACEUNLOCKFIX_BUILD_VARIANT" = "experimental" ] && \
        [ ! -f "$WORK_DIR/system/system/etc/init/faceunlockfixd.rc" ]; then
    LOGE "Experimental FaceunlockFix work_dir is missing its verified native runtime"
    exit 1
fi
# Keep the retired standalone Face Camera Probe APK out of every ROM variant.
# The opt-in Exynos9810 build instead embeds FaceunlockFix directly into
# services.jar with the native runtime; the standard ROM must contain neither.
# Refuse before writing .completed, including on cached work_dirs.
if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
        [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]]; then
    python3 "$SRC_DIR/scripts/internal/FaceunlockFix/assert_rom_inclusion.py" \
        --work-dir "$WORK_DIR" --variant "$FACEUNLOCKFIX_BUILD_VARIANT" || exit 1
    python3 "$SRC_DIR/scripts/internal/verify_exynos9810_release_defaults.py" \
        --work-dir "$WORK_DIR" --target "$TARGET_CODENAME" || exit 1
fi
if $BUILD_ROM; then
    echo -n "$FACEUNLOCKFIX_BUILD_VARIANT" > "$WORK_DIR/.faceunlockfix_build_variant"
    echo -n "$(GET_WORK_DIR_HASH)" > "$WORK_DIR/.completed"
fi

if [ "$TARGET_PLATFORM" = "exynos9810" ]; then
    python3 -B "$SRC_DIR/scripts/internal/verify_exynos9810_selinux.py" "$WORK_DIR" || exit 1
fi

# Source integration alone cannot prove the rebuilt APKs retain the native hooks.
if [ "$TARGET_PLATFORM" = exynos9810 ] && \
        [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] && \
        [ ! -f "$SRC_DIR/unica/mods/Dynamic Island/disable" ]; then
    DI_CERT_PREFIX=aosp
    [ "${ROM_IS_OFFICIAL:-false}" != true ] || DI_CERT_PREFIX=unica
    python3 "$SRC_DIR/unica/mods/Dynamic Island/source/verify_built.py" \
        --work-dir "$WORK_DIR" \
        --platform-cert "$SRC_DIR/security/${DI_CERT_PREFIX}_platform.x509.pem" || exit 1
    unset DI_CERT_PREFIX
fi

if [ "$TARGET_PLATFORM" = exynos9810 ] && \
        [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]] && \
        [ ! -f "$SRC_DIR/unica/mods/privacy_indicator_fix/disable" ]; then
    python3 "$SRC_DIR/unica/mods/privacy_indicator_fix/source/verify_built.py" \
        "$WORK_DIR/system/system/system_ext/priv-app/SystemUI/SystemUI.apk" || exit 1
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
    # Final pre-ZIP audit also rejects renamed probe APKs in cached images.
    if [ "$TARGET_PLATFORM" = "exynos9810" ] && \
            [[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]]; then
        python3 "$SRC_DIR/scripts/internal/FaceunlockFix/assert_rom_inclusion.py" \
            --work-dir "$WORK_DIR" --variant "$FACEUNLOCKFIX_BUILD_VARIANT" || exit 1
        python3 "$SRC_DIR/scripts/internal/verify_exynos9810_release_defaults.py" \
            --work-dir "$WORK_DIR" --target "$TARGET_CODENAME" || exit 1
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
