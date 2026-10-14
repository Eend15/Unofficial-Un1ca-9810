#!/usr/bin/env python3
"""Fail-closed ROM packaging audit: FaceunlockFix is built-in, never a probe APK.

Runs on the *staged filesystem*, not the connected phone. It makes no writes.
Even an APK renamed to base.apk is rejected when its Android manifest carries
the known retired standalone camera-probe application ID.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re
import zipfile

from verify_framework_classes import (
    defined_classes,
    jar_classes,
    require_preserved_framework_classes,
)

PARTITIONS = ("system", "system_ext", "product", "vendor", "odm")
PROBE_PACKAGE = bytes.fromhex(
    "636f6d2e756e3163612e6e6f626c652e63616d657261736d6f6b65").decode("ascii")
PROBE_MARKERS = (
    "face camera probe", "face_camera_probe", "facecameraprobe",
    "camera_probe.apk", "cameraprobe.apk", "camerasmoke",
)
BRIDGE_CLASSES = frozenset((
    "Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixHidl;",
    "Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixNativeBackend;",
    "Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixCamera2FrameSource;",
    "Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;",
    "Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixRemovalCompletion;",
    "Lcom/samsung/android/bio/face/IFaceDaemon;",
    "Lcom/samsung/android/bio/face/IFaceDaemonCallback;",
))
PROBE_CLASS = b"FaceunlockFixProbe"


def probe_apks(root: Path) -> list[Path]:
    """Enumerate staged probe APKs, including renamed files by package ID."""
    rejected: list[Path] = []
    if not root.is_dir():
        return rejected
    for partition in PARTITIONS:
        candidate = root / partition
        if not candidate.is_dir():
            continue
        for path in candidate.rglob("*"):
            if not path.is_file() or path.suffix.lower() != ".apk":
                continue
            if any(marker in str(path.relative_to(candidate)).lower()
                   for marker in PROBE_MARKERS):
                rejected.append(path)
                continue
            try:
                with zipfile.ZipFile(path) as package:
                    if "AndroidManifest.xml" not in package.namelist():
                        continue
                    manifest = package.read("AndroidManifest.xml")
                    if (PROBE_PACKAGE.encode("utf-8") in manifest
                            or PROBE_PACKAGE.encode("utf-16le") in manifest):
                        rejected.append(path)
            except (OSError, ValueError, zipfile.BadZipFile):
                # This check does not pretend to be a generic APK validator.
                # Existing ROM build tools validate unrelated APK structure.
                continue
    return rejected


def assert_no_probe_apk(root: Path) -> None:
    present = probe_apks(root)
    if present:
        paths = ", ".join(str(p.relative_to(root)) for p in present[:8])
        raise RuntimeError(
            "Standalone face camera probe APK forbidden in every ROM variant: "
            + paths
        )


def _dex_entries(jar: Path) -> dict[str, bytes]:
    try:
        with zipfile.ZipFile(jar) as archive:
            if archive.testzip() is not None:
                raise RuntimeError("services.jar failed ZIP CRC")
            dexes = {name: archive.read(name) for name in archive.namelist()
                     if re.fullmatch(r"classes\d*\.dex", name)}
            if not dexes:
                raise RuntimeError("services.jar does not contain Android DEX")
            return dexes
    except (OSError, zipfile.BadZipFile, KeyError) as error:
        raise RuntimeError(f"Cannot validate services.jar: {error}") from error


def assert_rom_inclusion(root: Path, variant: str) -> None:
    """Assert only explicit Exynos9810 opt-in images carry built-in integration."""
    if variant not in ("standard", "experimental"):
        raise ValueError(f"Unsupported FaceunlockFix build variant: {variant}")
    assert_no_probe_apk(root)
    jar = root / "system/system/framework/services.jar"
    dexes = _dex_entries(jar)
    payload = b"".join(dexes.values())
    rc = root / "system/system/etc/init/faceunlockfixd.rc"

    if variant == "standard":
        if rc.is_file() or PROBE_CLASS in payload or b"FaceunlockFixHidl" in payload:
            raise RuntimeError("Standard ROM contains FaceunlockFix; clean variant required")
        return

    # The Oct13 bootloop candidate lost SdkLevel and UnboundedSdkLevel from
    # the *defined* framework classes even though its ZIP / DEX string pool
    # looked plausible. Enforce full Android16 class retention at packaging
    # time, INCLUDING cached builds that bypass stage_verified_rom --apply.
    # jar_classes has a small LRU cache for static backups. In this process
    # the experimental jar may have just been modified in place by staging;
    # force a fresh DEX inspection instead of trusting a cache entry by path.
    jar_classes.cache_clear()
    require_preserved_framework_classes(jar)

    if not rc.is_file():
        raise RuntimeError("Experimental ROM lacks built-in native FaceunlockFix init")
    init = rc.read_text(encoding="utf-8")
    if not re.search(r"(?m)^\s*disabled\s*$", init) or not re.search(
            r"(?m)^\s*oneshot\s*$", init):
        raise RuntimeError("FaceunlockFix native service may auto-start")
    if set(dexes) != {"classes.dex", "classes2.dex", "classes3.dex"}:
        raise RuntimeError("Unexpected experimental services.jar DEX layout")
    if PROBE_CLASS not in dexes.get("classes.dex", b"") + dexes.get("classes2.dex", b""):
        raise RuntimeError("Android16 services.jar lacks opted-in FaceunlockFix hook")

    # A descriptor in the string pool (or an appended byte string) does not
    # imply the class is defined. Validate the actual DEX class_def table,
    # and reject classes3 which redefines any stock Android16 framework class.
    bridge_defs = defined_classes(dexes["classes3.dex"])
    if b"native-remove-all-verified-20261014" not in dexes["classes3.dex"]:
        raise RuntimeError("Cached face bridge lacks verified remove-all/credential-queue repair")
    if not 6 <= len(bridge_defs) <= 512:
        raise RuntimeError("Suspicious FaceunlockFix classes3.dex class count")
    missing = sorted(BRIDGE_CLASSES - bridge_defs)
    if missing:
        raise RuntimeError("Missing built-in FaceunlockFix bridge classes: "
                           + ", ".join(missing))
    jar_classes.cache_clear()
    overlapping = sorted(bridge_defs & jar_classes(jar))
    if overlapping:
        raise RuntimeError("FaceunlockFix classes3.dex redefines framework classes: "
                           + ", ".join(overlapping[:10]))
    for relative in (
            "system/system/bin/faced",
            "system/system/lib64/faceunlockfix/face.faceunlockfix.so",
            "system/system/lib64/faceunlockfix/libFaceService.so",
            "system/system/lib64/faceunlockfix/libsecfr_engine.so",
            "system/system/lib64/faceunlockfix/libfaceunlockfix_hwredirect.so"):
        if not (root / relative).is_file():
            raise RuntimeError("Experimental native runtime missing: " + relative)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--work-dir", type=Path, required=True)
    parser.add_argument("--variant", choices=("standard", "experimental"), required=True)
    parser.add_argument("--probe-only", action="store_true",
                        help="Only forbid standalone probe APKs in this tree")
    args = parser.parse_args()
    root = args.work_dir.resolve(strict=True)
    if args.probe_only:
        assert_no_probe_apk(root)
    else:
        assert_rom_inclusion(root, args.variant)
    print(f"PASS {args.variant}: no standalone face camera probe APK"
          + (" (probe-only)" if args.probe_only
             else "; verified ROM face runtime variant"))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
