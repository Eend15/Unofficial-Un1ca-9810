#!/usr/bin/env python3
"""Offline, read-only comparison of a booted and bootlooping FaceunlockFix DEX.

Never deploys, touches mounted Android files, or guesses a crash reason from
partial class verification. Run with user-owned JAR paths; print only metadata.
"""
from __future__ import annotations

import argparse
import hashlib
import struct
import zipfile
from pathlib import Path


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def inspect(path: Path) -> dict[str, bytes]:
    with zipfile.ZipFile(path) as archive:
        if archive.testzip() is not None:
            raise RuntimeError(f"Corrupted JAR {path}")
        return {name: archive.read(name) for name in archive.namelist()
                if name.startswith("classes") and name.endswith(".dex")}


def dex_header(dex: bytes) -> str:
    if not dex.startswith(b"dex\n"):
        return "Not a dex"
    # DEX header layout: little-endian type/count/offset pairs.
    return (f"version={dex[4:7].decode(errors='replace')} "
            f"strings={struct.unpack_from('<I', dex, 56)[0]} "
            f"types={struct.unpack_from('<I', dex, 64)[0]} "
            f"class_defs={struct.unpack_from('<I', dex, 96)[0]}")


def class_descriptors(dex: bytes) -> set[str]:
    if not dex.startswith(b"dex\n"):
        raise RuntimeError("Invalid DEX")
    strings, str_off = struct.unpack_from("<II", dex, 56)
    types, type_off = struct.unpack_from("<II", dex, 64)
    classes, class_off = struct.unpack_from("<II", dex, 96)
    if (str_off + strings * 4 > len(dex) or type_off + types * 4 > len(dex)
            or class_off + classes * 32 > len(dex)):
        raise RuntimeError("Bad DEX table offsets")
    result: set[str] = set()
    for n in range(classes):
        type_id = struct.unpack_from("<I", dex, class_off + n * 32)[0]
        if type_id >= types:
            raise RuntimeError("Bad class type ID")
        string_id = struct.unpack_from("<I", dex, type_off + type_id * 4)[0]
        if string_id >= strings:
            raise RuntimeError("Bad type descriptor string ID")
        pos = struct.unpack_from("<I", dex, str_off + string_id * 4)[0]
        while True:  # Skip uleb128 string length.
            if pos >= len(dex):
                raise RuntimeError("Bad string length")
            length_byte = dex[pos]
            pos += 1
            if not length_byte & 0x80:
                break
        end = dex.find(b"\x00", pos)
        if end < 0:
            raise RuntimeError("Unterminated descriptor")
        result.add(dex[pos:end].decode("ascii", errors="replace"))
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("booted", type=Path)
    parser.add_argument("bootloop", type=Path)
    args = parser.parse_args()
    booted = inspect(args.booted)
    failing = inspect(args.bootloop)
    print(f"BOOTED  {args.booted} sha256={digest(args.booted.read_bytes())}")
    print(f"FAILED  {args.bootloop} sha256={digest(args.bootloop.read_bytes())}")
    for dex_name in sorted(booted.keys() | failing.keys()):
        left = booted.get(dex_name)
        right = failing.get(dex_name)
        print(f"{dex_name}: "
              f"booted={digest(left) if left else 'missing'} "
              f"failing={digest(right) if right else 'missing'} "
              f"{'same' if left == right else 'DIFFERENT'}")
        if left is not None:
            print("  booted: " + dex_header(left))
        if right is not None:
            print("  failed: " + dex_header(right))
        if left is not None and right is not None:
            removed = sorted(class_descriptors(left) - class_descriptors(right))
            added = sorted(class_descriptors(right) - class_descriptors(left))
            if removed:
                print("  LOST classes from booted framework:")
                for descriptor in removed:
                    print("    - " + descriptor)
            if added:
                print("  NEW classes in failed framework:")
                for descriptor in added:
                    print("    + " + descriptor)


if __name__ == "__main__":
    main()
