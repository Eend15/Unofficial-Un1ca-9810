"""Load the source-bundled, source-hash-verified shared release bridge."""
from pathlib import Path
from hashlib import sha256
import json
from verify_framework_classes import ROOT, defined_classes
BASE = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix"
def load_release_bridge() -> bytes:
    prebuilt = BASE / "prebuilt"
    manifest = json.loads((prebuilt / "bridge_manifest.json").read_text())
    actual_sources = {p.relative_to(BASE).as_posix(): sha256(p.read_bytes()).hexdigest()
                      for p in [*sorted((BASE / "bridge").glob("*.java")),
                                *sorted((BASE / "aidl").rglob("*.aidl"))]}
    if manifest["schema"] != 1 or actual_sources != manifest["sources"]:
        raise RuntimeError("Face source changed without rebuilding/revalidating release bridge")
    dex = (prebuilt / "faceunlockfix_bridge.dex").read_bytes()
    if sha256(dex).hexdigest() != manifest["dex_sha256"]:
        raise RuntimeError("Source-bundled face bridge digest mismatch")
    defs = defined_classes(dex)
    for name in ["FaceunlockFixHidl", "FaceunlockFixNativeBackend", "FaceunlockFixRemovalCompletion"]:
        if "Lcom/android/server/biometrics/sensors/face/faceunlockfix/" + name + ";" not in defs:
            raise RuntimeError("Release face class absent: " + name)
    if b"native-remove-all-verified-20261014" not in dex:
        raise RuntimeError("Outdated face remove-all contract")
    return dex
