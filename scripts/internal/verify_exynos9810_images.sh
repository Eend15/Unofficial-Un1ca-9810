#!/usr/bin/env bash
# Verify the real filesystem inside each generated sparse image before it is
# converted into a recovery block OTA.

set -euo pipefail

IMAGE_DIR="${1:?image directory is required}"
FS_TYPE="${2:?filesystem type is required}"

case "$FS_TYPE" in
    erofs|ext4) ;;
    *)
        echo "Exynos9810 image verification: unsupported filesystem $FS_TYPE" >&2
        exit 1
        ;;
esac

VERIFY_TMP="$(mktemp -d)"
trap 'rm -rf "$VERIFY_TMP"' EXIT INT TERM

hex_at() {
    od -An -tx1 -j "$2" -N "$3" "$1" | tr -d ' \n'
}

for PARTITION in system vendor odm; do
    IMAGE="$IMAGE_DIR/$PARTITION.img"
    [ -f "$IMAGE" ] || continue

    RAW_IMAGE="$IMAGE"
    if [ "$(hex_at "$IMAGE" 0 4)" = "3aff26ed" ]; then
        RAW_IMAGE="$VERIFY_TMP/$PARTITION.raw.img"
        simg2img "$IMAGE" "$RAW_IMAGE"
    fi

    case "$FS_TYPE" in
        erofs)
            [ "$(hex_at "$RAW_IMAGE" 1024 4)" = "e2e1f5e0" ] || {
                echo "Exynos9810 image verification: $PARTITION is not EROFS" >&2
                exit 1
            }
            # This decodes every compressed file without extracting it. It
            # catches malformed LZ4 clusters before they can reach a phone.
            fsck.erofs --extract "$RAW_IMAGE" >/dev/null
            ;;
        ext4)
            [ "$(hex_at "$RAW_IMAGE" 1080 2)" = "53ef" ] || {
                echo "Exynos9810 image verification: $PARTITION is not ext4" >&2
                exit 1
            }
            if command -v e2fsck >/dev/null 2>&1; then
                e2fsck -fn "$RAW_IMAGE" >/dev/null
            fi
            ;;
    esac

    rm -f "$VERIFY_TMP/$PARTITION.raw.img"
    echo "Verified Exynos9810 $PARTITION image: $FS_TYPE"
done
