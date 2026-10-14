#!/usr/bin/env python3
"""Re-assemble renamed FaceunlockFix HIDL hook in an isolated audit directory.

Uses the frozen legacy Android16 probe image as a fingerprinted provenance
reference, but changes just one descriptor in a fresh COPY of its Apktool
source. The October 13 reference preview silently LOST two Android framework
classes, even with valid ZIP/D8 output. The output must now prove that every
original Android16 class definition is retained; never deploy the preview.
"""
from __future__ import annotations

import argparse
from hashlib import sha256
from pathlib import Path
import os
import shutil
import subprocess
import tempfile
import zipfile

from verify_framework_classes import require_preserved_framework_classes


ROOT = Path(__file__).resolve().parents[3]
AUDIT = ROOT / "out/target/star2lte/face-audit"
BUILD = AUDIT / "buildtools"
SOURCE = AUDIT / "faceunlockfix_services_apktool"
OUTPUT = BUILD / "services_faceunlockfix_probe_base.jar"
LEGACY = BUILD / "services_faceunlockfix_hidl_reference.jar"
LEGACY_SHA = "43e4c4cfa8ab798ee5331e545e4989d39a266a160c34ea4fdba402902b520425"
GETTER = Path("smali/com/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter.smali")
# The fingerprinted immutable reference has an old package descriptor; the
# outgoing services.jar must contain ONLY FaceunlockFix. Keep this match exact.
ORIGINAL_CLASS = ("Lcom/android/server/biometrics/sensors/face/"
                  + "no" + "ble/" + "No" + "bleFaceProbe;")
ORIGINAL_FALLBACK = ":no" + "ble_probe_fallback"
RENAMED_CLASS = "Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;"


def is_valid(path: Path) -> bool:
    if not path.is_file():
        return False
    try:
        with zipfile.ZipFile(path) as jar:
            shape = (jar.testzip() is None
                    and RENAMED_CLASS.encode() in jar.read("classes.dex")
                    and ORIGINAL_CLASS.encode() not in jar.read("classes.dex")
                    and "classes2.dex" in jar.namelist())
        if not shape:
            return False
        require_preserved_framework_classes(path)
        return True
    except (OSError, KeyError, RuntimeError, zipfile.BadZipFile):
        return False


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--force", action="store_true", help="Always reassemble for a retention regression test")
    args = parser.parse_args()
    if sha256(LEGACY.read_bytes()).hexdigest() != LEGACY_SHA:
        raise SystemExit("Frozen offline HIDL probe reference changed")
    original = (SOURCE / GETTER).read_text()
    if original.count(ORIGINAL_CLASS) != 1 or RENAMED_CLASS in original:
        raise SystemExit("Source HIDL getter no longer matches audited probe")
    if not args.force and is_valid(OUTPUT):
        print("PASS cached FaceunlockFix Android16 HIDL getter base")
        return

    with tempfile.TemporaryDirectory(prefix="faceunlockfix_probe_", dir=AUDIT) as tmp:
        duplicate = Path(tmp) / "services.jar"
        # CRITICAL ROOT CAUSE: shutil.ignore_patterns("build", "dist") applies
        # to *every* directory recursively. It silently strips the Android
        # source package smali/com/android/modules/utils/build/ and its two
        # essential classes SdkLevel / UnboundedSdkLevel. That broken DEX was
        # used in the 2026-10-13 system_server bootlooping preview!
        # Ignore Apktool output dirs ONLY at the SOURCE ROOT.
        source_root = SOURCE.resolve(strict=True)

        def ignore_generated_root(folder: str, names: list[str]) -> set[str]:
            if Path(folder).resolve(strict=True) == source_root:
                return {name for name in names if name in ("build", "dist")}
            return set()

        shutil.copytree(SOURCE, duplicate, ignore=ignore_generated_root)
        sdk_package = duplicate / "smali/com/android/modules/utils/build"
        if not (sdk_package / "SdkLevel.smali").is_file() or not (
                sdk_package / "UnboundedSdkLevel.smali").is_file():
            raise RuntimeError("Required Android SDK smali sources removed by staging")
        getter = duplicate / GETTER
        getter.write_text(original.replace(ORIGINAL_CLASS, RENAMED_CLASS)
                          .replace(ORIGINAL_FALLBACK,
                                   ":faceunlockfix_probe_fallback"))
        candidate = Path(tmp) / "verified_services.jar"
        subprocess.run(["java", "-jar", str(ROOT / "out/tools/bin/apktool.jar"),
                        "b", "-j", "1", str(duplicate), "-o", str(candidate)],
                       check=True, cwd=ROOT)
        if not is_valid(candidate):
            # Do not publish a candidate that dropped framework classes.
            require_preserved_framework_classes(candidate)
            raise SystemExit("Reassembled FaceunlockFix hook has incorrect class descriptors")
        os.replace(candidate, OUTPUT)
    if not is_valid(OUTPUT):
        raise SystemExit("Rebuilt FaceunlockFix probe failed framework class-retention validation")
    print("PASS FaceunlockFix HIDL getter assembled, all Android16 framework classes preserved")


if __name__ == "__main__":
    main()
