"""Exercise *real* Note9 AirCommand smali patches in an audit-only APK decode.

Usage: python3 -B test_aircommand_integration.py --apktool-tree OUT/target/crownlte/.../AirCommand.apk
No ROM work_dir, device, or original APK is modified. Run again to verify
idempotence, and assemble the patched apktool tree separately with apktool.
"""
from __future__ import annotations

import argparse
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[5]
FINALIZATION = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization"
SOURCE = FINALIZATION / "customize.sh"
FUNCTIONS = (
    "_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK",
    "_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL",
    "_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_BLE_PROTOCOL",
    "_EXYNOS9810_FINAL_FIX_NOTE9_CHARGE_SETTLE",
)


def function_source(contents: str, name: str) -> str:
    prefix = name + "()\n{\n"
    if contents.count(prefix) != 1:
        raise RuntimeError(f"Missing or repeated Note9 patch function: {name}")
    start = contents.index(prefix)
    end = contents.find("\n}\n", start + len(prefix))
    if end == -1:
        raise RuntimeError(f"Unterminated Note9 patch function: {name}")
    return contents[start:end + 3]


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apktool-tree", required=True, type=Path)
    args = parser.parse_args()
    decoded = args.apktool_tree.resolve(strict=True)
    audit = (ROOT / "out/target/crownlte/spen_airactions_audit").resolve()
    if not decoded.is_relative_to(audit):
        raise SystemExit("Refusing to patch anything outside crownlte S Pen audit")
    apktool_root = decoded.parents[3]
    if decoded.relative_to(apktool_root) != Path(
            "system/priv-app/AirCommand/AirCommand.apk"):
        raise SystemExit("Expected an isolated ROM-format AirCommand apktool tree")
    if not (decoded / "smali/G2/j.smali").is_file():
        raise SystemExit("Not a decoded One UI 8 AirCommand APK")

    contents = SOURCE.read_text(encoding="utf-8")
    selected = "\n".join(function_source(contents, f) for f in FUNCTIONS)
    # Use the actual shell functions and embedded Python source, not a test
    # reimplementation. DECODE_APK refuses to fill missing files from ROM.
    command = selected + '''
LOG() { :; }
LOGE() { printf 'ERROR: %s\\n' "$*" >&2; }
DECODE_APK() { printf 'Refusing to touch ROM APK decode: %s\\n' "$*" >&2; return 1; }
set -e
_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK
_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL
_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_BLE_PROTOCOL
_EXYNOS9810_FINAL_FIX_NOTE9_CHARGE_SETTLE
'''
    env = os.environ.copy()
    env.update({"TARGET_CODENAME": "crownlte",
                "APKTOOL_DIR": str(apktool_root), "MODPATH": str(FINALIZATION)})
    for iteration in (1, 2):
        run = subprocess.run(["bash", "-c", command], cwd=ROOT, env=env,
                             text=True, capture_output=True, check=False)
        if run.returncode:
            raise RuntimeError(f"Real Note9 patches failed on run {iteration}:\n{run.stdout}\n{run.stderr}")

    expected = {
        "smali/w1/e.smali": ("if-eqz v1, :cond_a",),
        "smali/G2/j.smali": (":unica_skip_ble_spen_controller_init",),
        "smali/j3/b.smali": (":unica_crown_start",),
        "smali/U2/k.smali": (":unica_crown_check_legacy_button",),
        "smali/j3/a.smali": ("UN1CA_CROWN_STOCK_WACOM_TIMING", "UN1CA_CROWN_MODULE_SETTLE"),
        "smali/androidx/activity/d.smali": (":unica_crown_continuous_charge", "UN1CA_CROWN_BUILTIN_CHARGE"),
        "smali/b3/b.smali": ("EDFEC62E-9910-0BAC-5241-D8BDA6932A2F",
                               "UN1CA_CROWN_ONEUI8_PROFILE"),
        "smali/b3/a.smali": ("UN1CA_CROWN_STOCK_CHARGE_DURATION",),
        "smali/a3/a.smali": ("UN1CA_CROWN_APPLICATION_FEATURES",),
        "smali/U2/c.smali": ("UN1CA_CROWN_OPERATION_MODE",),
        "smali/A/j.smali": ("prepareTicToc : crown advertisement off",),
        "smali/R2/b.smali": ("UN1CA_CROWN_DISCOVERY_SERVICE_FILTER",
                              "->setServiceUuid(Landroid/os/ParcelUuid;)",),
    }
    for relative, required in expected.items():
        file = decoded / relative
        source = file.read_text(encoding="utf-8")
        if any(needle not in source for needle in required):
            raise RuntimeError(f"Incomplete Note9 smali patch: {relative}")

    print("PASS genuine b0qxxx AirCommand source patched for Note9 Crown BLE")
    print("PASS reapplying all BLE/garage/controller/charging patches is idempotent")
    print("PASS legacy UUID, Wacom commands, direct button path, TicToc, 200ms settle")
    print("OFFLINE ONLY: no Note9 pairing/remote action has been physically demonstrated")


if __name__ == "__main__":
    main()
