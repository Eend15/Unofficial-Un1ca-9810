#!/usr/bin/env python3
"""Render the opt-in FaceunlockFix probe smali patch into face-audit ONLY.

The original Android 16 HidlToAidlSensorAdapter.smali is never edited.
This is a source review artifact, not an install or ROM-build step.
The branch preserves TestHal, cached mDaemon, vendor getService fallback, and
existing HIDL death recipient and cleanup setup. Probe returns null by default.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[3]
SOURCE = (ROOT / "out/target/star2lte/apktool/system/framework/services.jar"
          "/smali/com/android/server/biometrics/sensors/face/hidl"
          "/HidlToAidlSensorAdapter.smali")
DESTINATION = (ROOT / "out/target/star2lte/face-audit/faceunlockfix_adapter_probe_preview"
               "/HidlToAidlSensorAdapter.smali")
METHOD_SIGNATURE = (".method public final getIBiometricsFace()"
                    "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;")
TEST_BRANCH = "iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z"
CACHED_BRANCH = "iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;"
VENDOR_DISCOVERY = ("invoke-static {}, Lvendor/samsung/hardware/biometrics/face/"
                    "V2_0/ISehBiometricsFace;->getService()"
                    "Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;")
HOOK = (
    "    # Source-only FaceunlockFix probe: requires explicit native opt-in,\n"
    "    # real matching IFaceDaemon, and a registered verified HAL factory.\n"
    "    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;\n\n"
    "    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;->tryAcquire(Landroid/content/Context;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;\n\n"
    "    move-result-object v0\n\n"
    "    if-eqz v0, :faceunlockfix_probe_fallback\n\n"
    "    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;\n\n"
    # Both :goto_2 predecessors must carry a String logging tag in v1.
    # Without this instruction ART's verifier merges a missing/uninitialized
    # v1 with the vendor discovery String, rejects the entire system_server
    # method, and can bootloop EVEN with the debug property turned OFF.
    "    const-string v1, \"HidlToAidlSensorAdapter\"\n\n"
    "    goto :goto_2\n\n"
    "    :faceunlockfix_probe_fallback\n\n"
)
ANCHOR = ("    :cond_1\n"
          "    new-instance v0, Ljava/lang/StringBuilder;")
PATCHED_ANCHOR = ("    :cond_1\n" + HOOK
                  + "    new-instance v0, Ljava/lang/StringBuilder;")


def restore_pristine(patched: str) -> str:
    """Remove precisely OUR recorded probe to revalidate a patched source.

    A loose marker/label check would allow altered register control flow in
    system_server's biometric HAL acquisition. Always require a byte-exact
    opt-in insertion before treating existing smali as trustworthy.
    """
    if (patched.count(PATCHED_ANCHOR) != 1
            or patched.count("FaceunlockFixProbe;->tryAcquire") != 1):
        raise ValueError("Unexpected FaceunlockFix hook shape or duplicate call")
    return patched.replace(PATCHED_ANCHOR, ANCHOR, 1)


def render(original: str) -> str:
    if original.count(METHOD_SIGNATURE) != 1:
        raise ValueError("Expected exactly one Android16 Face HAL getter")
    start = original.index(METHOD_SIGNATURE)
    end = original.index(".end method", start) + len(".end method")
    before, method, after = original[:start], original[start:end], original[end:]

    if not re.search(r"^\s*\.locals 3\s*$", method, re.M):
        raise ValueError("Android16 Face getter register allocation changed")
    if method.count(VENDOR_DISCOVERY) != 1:
        raise ValueError("Android16 vendor HAL discovery changed")
    if TEST_BRANCH not in method or method.count(CACHED_BRANCH) < 2:
        raise ValueError("Original TestHal and cached-daemon branches missing")
    if ("->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z"
            not in method or ":goto_2" not in method):
        raise ValueError("Missing original HIDL death/cleanup path")
    if "FaceunlockFixProbe;->tryAcquire" in method:
        raise ValueError("Input already patched (must use pristine source)")

    # Keep all original labels and control flow unchanged; place one guarded
    # fallthrough before StringBuilder allocation and vendor discovery.
    if method.count(ANCHOR) != 1:
        raise ValueError("Unique insertion boundary :cond_1 not found")
    method = method.replace(
        ANCHOR, PATCHED_ANCHOR,
        1,
    )
    if method.count("FaceunlockFixProbe;->tryAcquire") != 1:
        raise AssertionError("Probe call not inserted exactly once")
    return before + method + after


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, default=SOURCE)
    parser.add_argument("--output", type=Path, default=DESTINATION)
    args = parser.parse_args()
    source = args.source.resolve(strict=True)
    output = args.output.resolve(strict=False)
    audit = (ROOT / "out/target/star2lte/face-audit").resolve(strict=True)
    if source == output:
        raise SystemExit("Refusing to overwrite source smali")
    if not output.is_relative_to(audit):
        raise SystemExit("Output MUST remain in offline face-audit directory")
    output.parent.mkdir(parents=True, exist_ok=True)
    original = source.read_text(encoding="utf-8")
    # Resume checks against an already staged tree without changing that tree.
    # Only the byte-exact verified insertion may be removed in memory.
    if "FaceunlockFixProbe;->tryAcquire" in original:
        original = restore_pristine(original)
    patched = render(original)
    output.write_text(patched, encoding="utf-8")
    print("PASS preview staged:", output.relative_to(ROOT))
    print("PASS original source unmodified; no APK/Dex output generated")
    print("DISABLED by default: requires debug build, explicit property, and genuine original face daemon")


if __name__ == "__main__":
    main()
