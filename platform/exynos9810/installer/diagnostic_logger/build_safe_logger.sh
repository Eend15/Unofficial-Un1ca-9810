#!/usr/bin/env bash

set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../../.." && pwd)"
LOGGER_DIR="$SRC_DIR/platform/exynos9810/installer/diagnostic_logger"
OUT="${1:-$SRC_DIR/out/UN1CA-9810-safe-bootlogger-20260817.zip}"
OUT="$(realpath -m "$OUT")"
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

mkdir -p "$STAGE/META-INF/com/google/android" "$STAGE/logger"
cp -f "$SRC_DIR/target/star2lte/installer/update-binary" \
    "$STAGE/META-INF/com/google/android/update-binary"
cp -f "$LOGGER_DIR/META-INF/com/google/android/updater-script" \
    "$STAGE/META-INF/com/google/android/updater-script"
cp -af "$LOGGER_DIR/logger/." "$STAGE/logger/"
chmod 0755 "$STAGE/META-INF/com/google/android/update-binary" \
    "$STAGE/logger/"*.sh

mkdir -p "$(dirname "$OUT")"
rm -f "$OUT"
(cd "$STAGE" && zip -qr9 "$OUT" META-INF logger)
sha256sum "$OUT"
echo "$OUT"
