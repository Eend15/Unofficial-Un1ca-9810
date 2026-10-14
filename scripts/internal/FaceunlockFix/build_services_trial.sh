#!/usr/bin/env bash
# Rebuild the isolated FaceunlockFix Android16 Java/HIDL/IPC preview, OFFLINE.
# Never modifies the active services.jar, ROM work_dir or an attached device.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
cd "$ROOT"
BUILD="out/target/star2lte/face-audit/buildtools"
BRIDGE="unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge"
CLASSES="$BUILD/faceunlockfix-classes-current"
CLASSES_JAR="$BUILD/faceunlockfix_bridge_current_classes.jar"
DEXZIP="$BUILD/faceunlockfix_bridge_current_dex.zip"
OUTPUT="$BUILD/services_faceunlockfix_preview.jar"
BASE="$BUILD/services_faceunlockfix_probe_base.jar"
IPC="$BUILD/faceunlockfix_ipc_smoke.dex"
R8="$BUILD/r8-9.5.23.jar"

python3 scripts/internal/FaceunlockFix/build_probe_base.py

for input in "$BASE" "$IPC" "$R8" "$BUILD/services_classes_j8.jar" \
    "$BUILD/framework_classes_j8.jar" \
    "$BUILD/faceunlockfix_original_framework_classes_j8.jar" "$BUILD/android36/android.jar"; do
    test -f "$input" || { echo "Missing offline prerequisite: $input" >&2; exit 1; }
done

mkdir -p "$CLASSES"
javac -source 8 -target 8 -Xlint:-options \
    -cp "$BUILD/services_classes_j8.jar:$BUILD/framework_classes_j8.jar:$BUILD/faceunlockfix_original_framework_classes_j8.jar:$BUILD/android36/android.jar" \
    -d "$CLASSES" "$BRIDGE"/*.java
jar cf "$CLASSES_JAR" -C "$CLASSES" .

# D8 can combine the original Samsung IFaceDaemon dex with the compiled bridge
# classes. Keeping Binder classes in the same classes3.dex prevents the
# standalone runtime class-loader failure seen with a separate classes4.dex.
java -cp "$R8" com.android.tools.r8.D8 --min-api 33 --release \
    --output "$DEXZIP" "$CLASSES_JAR" "$IPC"

python3 scripts/internal/FaceunlockFix/package_services_preview.py \
    --services "$BASE" \
    --bridge-dex-zip "$DEXZIP" \
    --output "$OUTPUT"
unzip -t "$OUTPUT" | tail -1
sha256sum "$OUTPUT"
echo "OFFLINE ONLY: Never flash without verified rollback and Android ART testing."
