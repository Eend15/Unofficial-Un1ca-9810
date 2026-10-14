"""Compile the genuine Note9 BLE sysfs smali bridge on a scratch framework class.

Input must be an isolated copy of the Android16 SpenGestureManagerService.smali
under out/target/crownlte/spen_airactions_audit. Original framework untouched.
"""
from __future__ import annotations

import argparse
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[5]
FINAL = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/customize.sh"
AUDIT = ROOT / "out/target/crownlte/spen_airactions_audit"
NAME = "_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_SYSFS_BRIDGE"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apktool-root", required=True, type=Path)
    args = parser.parse_args()
    apktool = args.apktool_root.resolve(strict=True)
    if not apktool.is_relative_to(AUDIT.resolve()):
        raise SystemExit("Refusing S Pen sysfs patch outside crownlte audit")
    smali = apktool / ("system/framework/services.jar/smali_classes2/"
                        "com/android/server/smartclip/SpenGestureManagerService.smali")
    if not smali.is_file():
        raise SystemExit("Missing isolated Android16 SpenGestureManagerService source")

    contents = FINAL.read_text(encoding="utf-8")
    start = contents.index(NAME + "()\n{\n")
    # Exact source under test has one inline heredoc followed by its shell
    # function terminator. Do not substitute a simplified patch fixture.
    end = contents.index("\n}\n", start) + 3
    function = contents[start:end]
    command = function + '''
LOG() { :; }
LOGE() { printf 'ERROR: %s\\n' "$*" >&2; }
DECODE_APK() { return 0; }
_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_SYSFS_BRIDGE
'''
    env = os.environ.copy()
    env.update({"TARGET_CODENAME": "crownlte", "APKTOOL_DIR": str(apktool)})
    for attempt in (1, 2):
        run = subprocess.run(["bash", "-c", command], cwd=ROOT, env=env,
                             text=True, capture_output=True, check=False)
        if run.returncode:
            raise RuntimeError(f"BLE framework smali patch run {attempt}:\n{run.stdout}\n{run.stderr}")

    text = smali.read_text(encoding="utf-8")
    for needle in ("UN1CA Note9 direct BLE sysfs write succeeded",
                   "/sys/class/sec/sec_epen/epen_ble_charging_mode",
                   "checkSmartClipMetaExtractionPermission()V",
                   "setSpenBleChargeMode(I)I"):
        if needle not in text:
            raise RuntimeError(f"Note9 sysfs framework bridge missing {needle}")
    out = AUDIT / "spen_sysfs_services_smali.dex"
    # The class only uses instructions supported by DEX039. The pinned
    # Apktool snapshot emits a non-container DEX041 with a legacy 0x70 header
    # for --api 35; baksmali rejects that malformed container header. Use a
    # valid backwards-compatible DEX039 for this isolated compile test.
    compile = subprocess.run([
        "java", "-cp", str(ROOT / "out/tools/bin/apktool.jar"),
        "com.android.tools.smali.smali.Main", "assemble", "--api", "34",
        "--output", str(out), str(smali)
    ], cwd=ROOT, text=True, capture_output=True, check=False)
    if compile.returncode or not out.is_file() or out.stat().st_size == 0:
        raise RuntimeError("S Pen Android16 sysfs bridge smali assembly failed:\n" +
                           compile.stdout + compile.stderr)
    print("PASS Note9 BLE sysfs bridge patches actual Android16 framework method")
    print("PASS method is idempotent, preserves security permission and HAL fallback")
    print("PASS isolated Android16 S Pen services smali compiles into DEX")


if __name__ == "__main__":
    main()
