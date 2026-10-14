#!/usr/bin/env bash
# Build a dedicated, flashable S9+ ext4 test ROM from the CURRENT staged ROM.
# Does not run make_rom.sh, decode/recompile APKs, clean work_dir, or touch ADB.
set -Eeo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
cd "$ROOT"
export SRC_DIR="$ROOT"
DEST="/mnt/c/Users/Admin/Documents/Codex/2026-10-03/po/star2lte-ext4-workdir-build"
LOG="$DEST/build.log"
STATUS="$DEST/build.status"
ORIGINAL_BOOT="$DEST/original-erofs-boot.img"
BACKUP_CONFIGS="$DEST/original-workdir-configs"
TARGET_FILES="$DEST/star2lte-current-workdir-ext4-target_files.zip"
FLASHABLE="$DEST/UN1CA_star2lte_DS-ACK-V1.12-ext4-CAMERA-IDENTITY-TEST.zip"

mkdir -p "$DEST"
if [ -e "$STATUS" ] || [ -e "$TARGET_FILES" ] || [ -e "$FLASHABLE" ]; then
    echo "Existing ext4 build artifacts/status found. Inspect before starting a second build: $DEST" >&2
    exit 1
fi
printf 'running\n' > "$STATUS"
exec > >(tee -a "$LOG") 2>&1
STAGED_BOOT=false
CONFIGS_BACKED_UP=false
cleanup() {
    result=$?
    trap - EXIT
    set +e
    if $STAGED_BOOT; then
        cp -a "$ORIGINAL_BOOT" "$WORK_DIR/kernel/boot.img" || result=1
        echo 'Restored original EROFS boot.img in the existing work_dir'
    fi
    if $CONFIGS_BACKED_UP; then
        cp -a "$BACKUP_CONFIGS/." "$WORK_DIR/configs/" || result=1
        echo 'Restored original work_dir filesystem metadata'
    fi
    printf '%s\n' "$result" > "$STATUS"
    echo "Ext4 ROM build exit status: $result"
    exit "$result"
}
trap cleanup EXIT

echo 'Starting star2lte ext4 ROM packaging from EXISTING work_dir; no clean or full APK build.'
source "$ROOT/buildenv.sh" --fs-type ext4 star2lte
[[ "${TARGET_CODENAME:-}" == 'star2lte' && "${TARGET_PLATFORM:-}" == 'exynos9810' && \
   "${TARGET_OS_FILE_SYSTEM_TYPE:-}" == 'ext4' ]] || { echo 'Target mismatch' >&2; exit 1; }
[[ -f "$WORK_DIR/.completed" && -f "$WORK_DIR/.modules_applied" && ! -e "$WORK_DIR/.build_in_progress" ]] || {
    echo 'Existing work_dir is incomplete; refusing to package' >&2; exit 1;
}

expect_hash() {
    local expected="$1" file="$2" actual
    actual="$(sha256sum "$file" | cut -d ' ' -f 1)"
    [[ "$actual" == "$expected" ]] || { echo "Wrong SHA256: $file ($actual)" >&2; exit 1; }
    echo "Verified $(basename "$file") sha256 $actual"
}

expect_hash db5fcc3135d879baa4415b3df5c73ea2bf3ce7b53efcf2e657f9f34c6cf878f9 \
    "$WORK_DIR/system/system/priv-app/SamsungCamera/SamsungCamera.apk"
expect_hash 49b47f2c0bc45f135cbedcc5a0f4fecb62be47b414e0ca355965c7465f41c408 \
    "$WORK_DIR/system/system/framework/services.jar"
expect_hash 82978b09e838c8df365b17836ee3c77f75b4a86f1a747aa2c3f8ee57f762cd89 \
    "$WORK_DIR/kernel/boot.img"
expect_hash b9a020882b695bc762cd3f1b63534626f8bf32432d45be5450b8ff939456e67e \
    "$ROOT/platform/exynos9810/prebuilt/DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-ext4-dtb.zip"

# A successful standard ROM is not an experimental FaceunlockFix. Never claim
# Face Unlock as fixed just because its source is present in the repository.
[[ "$(cat "$WORK_DIR/.faceunlockfix_build_variant")" == 'standard' ]] || {
    echo 'Unexpected FaceunlockFix staged variant; manual inspection required' >&2; exit 1;
}
python3 -B "$ROOT/scripts/internal/FaceunlockFix/assert_rom_inclusion.py" \
    --work-dir "$WORK_DIR" --variant standard
python3 -B "$ROOT/scripts/internal/verify_exynos9810_selinux.py" "$WORK_DIR"
bash "$ROOT/scripts/internal/verify_exynos9810_boot_contract.sh"

# Redirect LARGE images and OTA intermediate files to C: (more than 190 GiB
# free). Keep FW_DIR and WORK_DIR pointing into the user's EXISTING WSL tree.
export OUT_DIR="$DEST"
export TMP_DIR="$DEST/target_files_tmp"

cp -a "$WORK_DIR/kernel/boot.img" "$ORIGINAL_BOOT"
cp -a "$WORK_DIR/configs" "$BACKUP_CONFIGS"
CONFIGS_BACKED_UP=true

# Stage only the verified filesystem-matched kernel into the existing tree.
# This is restored on exit, success or failure; OTA captures ext4 payload.
STAGED_BOOT=true
install -m 0644 "$ROOT/unica/mods/dsack_star2lte_kernel/payload/boot-ext4.img" \
    "$WORK_DIR/kernel/boot.img"
expect_hash a7989f68e03ac12aa0514c6ae5c925c2682fbf7f1581993842c3894684699030 \
    "$WORK_DIR/kernel/boot.img"

echo 'Building ext4 target-files ZIP directly from existing work_dir...'
bash "$ROOT/scripts/internal/create_target_files_zip.sh" "$TARGET_FILES"
echo 'Building and signing flashable ext4 ZIP...'
bash "$ROOT/scripts/build_flashable_zip.sh" --output "$FLASHABLE" "$TARGET_FILES"

unzip -tq "$FLASHABLE"
unzip -p "$TARGET_FILES" boot.img | sha256sum | \
    grep -Fq 'a7989f68e03ac12aa0514c6ae5c925c2682fbf7f1581993842c3894684699030'
sha256sum "$TARGET_FILES" "$FLASHABLE" | tee "$DEST/SHA256SUMS"
echo 'SUCCESS: flashable ext4 test ROM created; no device was flashed.'
