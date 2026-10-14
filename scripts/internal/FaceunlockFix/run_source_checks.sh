#!/usr/bin/env bash
# Reproducible OFFLINE-only static checks. Never builds or installs system ROM.
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
cd "$root"

base="scripts/internal/FaceunlockFix"
audit="out/target/star2lte/face-audit"
bridge="unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge"
mkdir -p "$audit/faceunlockfix_adapter_probe_preview/jdk" "$audit/camera-jdk-test"

python3 -B "$base/stage_adapter_probe.py"
python3 -B "$base/integration_ci.py" --mode source
python3 -B "unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/verify_aidl_contract.py" "$audit"
python3 -B "scripts/internal/FaceunlockFix_bridge/contract_audit.py"

javac -d "$audit/faceunlockfix_adapter_probe_preview/jdk" "$base/JavacSyntaxCheck.java"
java -cp "$audit/faceunlockfix_adapter_probe_preview/jdk" JavacSyntaxCheck "$bridge"/*.java

# Compile ONLY the isolated preview smali method, not active services.jar.
java -cp out/tools/bin/apktool.jar com.android.tools.smali.smali.Main assemble \
    --api 35 --output "$audit/faceunlockfix_adapter_probe_preview/probe-adapter.dex" \
    "$audit/faceunlockfix_adapter_probe_preview/HidlToAidlSensorAdapter.smali"

javac -d "$audit/camera-jdk-test" "$bridge/Nv21Packer.java" \
    "$bridge/FaceunlockFixPlanePayload.java" \
    "$bridge/tests/Nv21PackerTest.java" \
    "$bridge/tests/FaceunlockFixPlanePayloadTest.java"
java -cp "$audit/camera-jdk-test" \
    com.android.server.biometrics.sensors.face.faceunlockfix.Nv21PackerTest
java -cp "$audit/camera-jdk-test" \
    com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixPlanePayloadTest

# The original Samsung face request(11) returns ASCII native template IDs. Exercise the
# pure parser, including zero/duplicate/malformed fail-closed responses.
javac -d "$audit/camera-jdk-test" "$bridge/FaceunlockFixNativeEnumeration.java" \
    "$bridge/tests/FaceunlockFixNativeEnumerationTest.java"
java -cp "$audit/camera-jdk-test" \
    com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixNativeEnumerationTest

echo "PASS source-only FaceunlockFix checks. Runtime, Android16 typecheck and release preflight remain separate."
