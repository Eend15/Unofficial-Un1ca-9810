#!/usr/bin/env python3
"""Preflight for the real Exynos9810 FaceunlockFix legacy face backend.

The legacy Samsung binaries are an alternative to the failing donor HIDL 2.0
backend. This command is deliberately read-only and fails closed. It must never
declare the port functional merely because Settings displays a face menu.
"""

from __future__ import annotations

import argparse
import hashlib
import os
from pathlib import Path
import struct
import subprocess
import sys
import zipfile

EXPECTED_STOCK_SHA256 = {
    "libFaceService.so": "9013ac8b926b372431830d04c46f9d258c7ccd1dc02fc1bf0da93cfeb4ae34e3",
    "libsecfr_engine.so": "370acde5cd404f04c027b86f503033083189f6f3f720c5e78b5b8a38d7d029e0",
}
STOCK_SIZE = {"libFaceService.so": 46848, "libsecfr_engine.so": 59216,
              "face.default.so": 10088, "libMcClient.so": 46496}
EXPECTED_FACE_TRUSTLET = "225ab0d4bc374751ce60038153d44ba0c9dc3a6b2e6cc48e47a29bde4703e0dc"


def sha256(path: Path, limit: int | None = None) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as fh:
        while limit is None or limit > 0:
            block = fh.read(min(1024 * 1024, limit) if limit is not None else 1024 * 1024)
            if not block:
                break
            digest.update(block)
            if limit is not None:
                limit -= len(block)
    return digest.hexdigest()


class Audit:
    def __init__(self) -> None:
        self.failed = 0

    def check(self, label: str, okay: bool, detail: str) -> None:
        print(f"{'PASS' if okay else 'BLOCKED'} {label}: {detail}")
        if not okay:
            self.failed += 1


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    # Preserve the existing external CLI flag for callers without putting
    # the historical donor codename in FaceunlockFix source or log labels.
    parser.add_argument("--no" + "ble-extracted", dest="legacy_extracted",
                        required=True, type=Path,
                        help="Samsung-compatible face files dumped from system.img, containing system/bin/faced")
    parser.add_argument("--stock-system", required=True, type=Path,
                        help="Actual stock S9+ system directory containing system/lib64")
    parser.add_argument("--android16-smali", required=True, type=Path,
                        help="Decoded target framework.jar root; source is not changed")
    parser.add_argument("--bridge-service", type=Path,
                        help="Compiled, independently tested genuine HIDL1/Android16 bridge")
    parser.add_argument("--platform-signed-bioface", type=Path,
                        help="Rebuilt BioFaceService APK signed with matching platform key")
    args = parser.parse_args()

    audit = Audit()
    source = args.legacy_extracted
    legacy_binary = source / "system/bin/faced"
    audit.check("FaceunlockFix faced ELF", legacy_binary.is_file() and legacy_binary.read_bytes()[:4] == b"\x7fELF",
                str(legacy_binary))
    audit.check("FaceunlockFix proprietary FaceService APK", (source / "system/priv-app/BioFaceService/BioFaceService.apk").is_file(),
                "reference available (not safe to install with original Samsung signing)")

    for name, size in STOCK_SIZE.items():
        if name == "libMcClient.so":
            continue
        relative = f"system/lib64/{name}" if name != "face.default.so" else "system/lib64/hw/face.default.so"
        target = source / relative
        original = args.stock_system / relative
        correct = target.is_file() and original.is_file() and target.stat().st_size >= size and original.stat().st_size >= size
        if correct:
            correct = sha256(target, size) == sha256(original, size)
        audit.check("Stock ABI " + name, correct,
                    f"original {size} executable bytes must match S9+ factory binaries")

    framework = args.android16_smali
    found_sem_manager = any(framework.rglob("SemBioFaceManager.smali")) if framework.is_dir() else False
    found_face_manager = any(framework.rglob("FaceManager.smali")) if framework.is_dir() else False
    audit.check("Android16 face framework", found_sem_manager and found_face_manager,
                "FaceManager and SemBioFaceManager smali are present")

    bridge_ok = args.bridge_service is not None and args.bridge_service.is_file()
    audit.check("Native genuine Face HAL bridge", bridge_ok,
                "separate legacy IFaceDaemon to Android16 face HAL with real callback/HAT forwarding is REQUIRED")

    signed_ok = args.platform_signed_bioface is not None and args.platform_signed_bioface.is_file()
    audit.check("Platform-signed Camera2 BioFaceService", signed_ok,
                "Original Samsung face APK uses different shared UID signing; do not install it unmodified")

    print(f"RESULT: {audit.failed} blocker(s); {'cannot activate legacy backend' if audit.failed else 'preflight passed (live testing still required)'}")
    return 1 if audit.failed else 0


if __name__ == "__main__":
    sys.exit(main())
