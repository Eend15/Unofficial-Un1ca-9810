#!/usr/bin/env bash
# FaceunlockFix offline source/build safety suite. No ADB, ROM flash, reboot,
# PIN, template operations, live services.jar changes or device properties.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
cd "$ROOT"

HERE="scripts/internal/FaceunlockFix"
# Syntax checking cannot touch the phone or source files, and covers every
# currently renamed Python script (including historical offline test tools).
python3 - "$HERE" <<'PY'
import ast
from pathlib import Path
import sys

paths = sorted(Path(sys.argv[1]).rglob("*.py"))
for path in paths:
    ast.parse(path.read_text(encoding="utf-8"), filename=str(path))
print(f"PASS FaceunlockFix Python source syntax: {len(paths)} files")
PY
bash "$HERE/build_services_trial.sh"
# A compiled native-start cancellation gate is not verified by source-grepping.
# Prove the exact cancel-before-dispatch, in-flight RPC and callback races with
# deterministic JDK latches, without touching Camera2, the phone or native faced.
GATE_TEST_CLASSES="$(mktemp -d -t faceunlockfix_gate_test.XXXXXXXX)"
trap 'rm -rf -- "$GATE_TEST_CLASSES"' EXIT
GATE_SRC="unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge"
javac -source 8 -target 8 -Xlint:-options -d "$GATE_TEST_CLASSES" \
    "$GATE_SRC/FaceunlockFixAuthStartGate.java" \
    "$GATE_SRC/tests/FaceunlockFixAuthStartGateTest.java"
java -cp "$GATE_TEST_CLASSES" \
    com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixAuthStartGateTest
bash "$HERE/run_source_checks.sh"
python3 "$HERE/integration_ci.py" --mode release
python3 "$HERE/test_make_rom_cache.py"
python3 "$HERE/test_assert_rom_inclusion.py"
python3 "$HERE/test_verify_framework_classes.py"
python3 "$HERE/test_measure_latency.py"
python3 "$HERE/test_assess_full_rom_isolation.py"
python3 "$HERE/test_direct_preview_disabled.py"
python3 "$HERE/stage_verified_rom.py"
python3 "$HERE/test_stage_verified_rom.py"

bash -n scripts/make_rom.sh
bash -n unica/patches/exynos9810_device_stack/exynos9810_finalization/customize.sh
bash -n "$HERE/build_services_trial.sh"
bash -n "$HERE/run_source_checks.sh"
bash -n "$HERE/check_all.sh"
while IFS= read -r file; do
    bash -n "$file"
done < <(find "$HERE" -type f -name '*.sh')
git diff --check
echo "PASS FaceunlockFix complete OFFLINE suite; actual device/release ZIP unchanged"
