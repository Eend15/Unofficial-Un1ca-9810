#!/usr/bin/env python3
"""Fail-closed Android16 services.jar DEX class-preservation audit.

Compare *defined classes* in rebuilt classes.dex/classes2.dex to the original
Android16 framework, NOT mere descriptor strings in the DEX string pool.
This catches the Oct13 bootloop regression where rebuilt services.jar lost
essential framework classes despite passing CRC/limited smali checks.

Pure offline inspection; no ADB, source writes, ART execution or deployment.
"""
from __future__ import annotations

import argparse
import json
from functools import lru_cache
from hashlib import sha256
from pathlib import Path
import re
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[3]
BACKUPS = ROOT / "out/target/star2lte/face-audit/faceunlockfix_framework_live_backup"
ORIGINAL = BACKUPS / "services.original.jar"
WORKING = BACKUPS / "services.faceunlockfix-last-known-good.jar"
ORIGINAL_SHA = "790b977cee857e028e4dd0a43844c5d0d54701d9581ec7afd39712e70c088ad6"
WORKING_SHA = "5ae5fc418a54745ff0029af1dc8bf0a9b0fc0c268a6076f7fe41d8e62b8c7da9"
QUARANTINED_SHA = "8f9549e3a4d965d906c86fef706e8463fb7ca651fee194366a9417a2b8d15233"
CRITICAL = frozenset((
    "Lcom/android/modules/utils/build/SdkLevel;",
    "Lcom/android/modules/utils/build/UnboundedSdkLevel;",
))


def _u32(data: bytes, offset: int) -> int:
    if offset < 0 or offset + 4 > len(data):
        raise RuntimeError("Truncated DEX table")
    return struct.unpack_from("<I", data, offset)[0]


def _skip_uleb128(data: bytes, offset: int) -> int:
    for _ in range(5):
        if offset >= len(data):
            raise RuntimeError("Truncated DEX string length")
        value = data[offset]
        offset += 1
        if not value & 0x80:
            return offset
    raise RuntimeError("Invalid DEX string length")


def defined_classes(dex: bytes) -> set[str]:
    if len(dex) < 0x70 or not dex.startswith(b"dex\n"):
        raise RuntimeError("Invalid DEX header")
    strings_size, strings_off = _u32(dex, 0x38), _u32(dex, 0x3C)
    types_size, types_off = _u32(dex, 0x40), _u32(dex, 0x44)
    classes_size, classes_off = _u32(dex, 0x60), _u32(dex, 0x64)
    if (strings_off + strings_size * 4 > len(dex)
            or types_off + types_size * 4 > len(dex)
            or classes_off + classes_size * 32 > len(dex)):
        raise RuntimeError("DEX header declares out-of-bounds tables")
    descriptors = set()
    for index in range(classes_size):
        type_index = _u32(dex, classes_off + index * 32)
        if type_index >= types_size:
            raise RuntimeError("DEX class type index out of bounds")
        string_index = _u32(dex, types_off + 4 * type_index)
        if string_index >= strings_size:
            raise RuntimeError("DEX class string index out of bounds")
        string_offset = _u32(dex, strings_off + string_index * 4)
        start = _skip_uleb128(dex, string_offset)
        end = dex.find(b"\0", start, min(start + 1024, len(dex)))
        if end == -1:
            raise RuntimeError("Invalid DEX class descriptor")
        descriptor = dex[start:end].decode("ascii", errors="strict")
        if not descriptor.startswith("L") or not descriptor.endswith(";"):
            raise RuntimeError("Malformed defined-class descriptor: " + descriptor)
        if descriptor in descriptors:
            raise RuntimeError("Duplicate defined class in DEX: " + descriptor)
        descriptors.add(descriptor)
    return descriptors


@lru_cache(maxsize=8)
def jar_classes(path: Path, only_core: bool = True) -> frozenset[str]:
    entries: set[str] = set()
    with zipfile.ZipFile(path) as archive:
        names = archive.namelist()
        if len(names) != len(set(names)) or archive.testzip() is not None:
            raise RuntimeError("Duplicate/broken services.jar ZIP member")
        for name in names:
            if not re.fullmatch(r"classes\d*\.dex", name):
                continue
            if only_core and name not in ("classes.dex", "classes2.dex"):
                continue
            for descriptor in defined_classes(archive.read(name)):
                if descriptor in entries:
                    raise RuntimeError("Duplicate defined-class across dex files: "
                                       + descriptor)
                entries.add(descriptor)
    if not entries:
        raise RuntimeError("No DEX class definitions in " + str(path))
    return frozenset(entries)


def _verified_backup(path: Path, expected: str) -> frozenset[str]:
    if not path.is_file() or sha256(path.read_bytes()).hexdigest() != expected:
        raise RuntimeError("Original trusted offline framework backup unavailable: "
                           + str(path))
    return jar_classes(path)


def require_preserved_framework_classes(candidate: Path) -> None:
    if not candidate.is_file():
        raise RuntimeError("services.jar missing: " + str(candidate))
    if sha256(candidate.read_bytes()).hexdigest() == QUARANTINED_SHA:
        raise RuntimeError("Quarantined Oct13 bootloop services.jar is forbidden")

    # Release builds use a fingerprinted class-definition reference stored in
    # source, not a private out/face-audit backup that disappears on clean builds.
    reference = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/prebuilt/android16_required_classes.json"
    raw = reference.read_bytes()
    if sha256(raw).hexdigest() != "92efb41699f1a10ce4a7a75d046b1eae341218c57ec524a8a0cbb6207bcc1412":
        raise RuntimeError("Trusted Android16 class-definition reference changed")
    record = json.loads(raw)
    if record["origin_sha256"] != ORIGINAL_SHA or record["working_sha256"] != WORKING_SHA:
        raise RuntimeError("Unexpected Android16 reference provenance")
    required = frozenset(record["required_classes"])
    if not CRITICAL.issubset(required):
        raise RuntimeError("Trusted reference lacks essential SDK classes")
    actual = jar_classes(candidate)
    missing = sorted(required - actual)
    if missing:
        critical = sorted(CRITICAL - actual)
        raise RuntimeError(
            f"services.jar lost {len(missing)} Android16 defined classes; "
            f"missing critical={critical}; first={missing[:10]}. "
            "Fail closed before any experimental ROM packaging."
        )
    print(f"PASS Android16 class-preservation: {len(required)} required defined classes"
          " retained in services.jar core DEX")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("candidate", type=Path)
    args = parser.parse_args()
    require_preserved_framework_classes(args.candidate.resolve(strict=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
