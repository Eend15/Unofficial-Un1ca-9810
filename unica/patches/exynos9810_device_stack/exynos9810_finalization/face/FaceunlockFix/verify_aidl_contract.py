#!/usr/bin/env python3
"""Check reconstructed Samsung Binder code ordering against extracted JADX classes.

This only verifies transaction names/numbers. It does not compile the AIDL,
validate Parcel byte layouts, or exercise the legacy face engine.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re

INTERFACES = (
    "IFaceDaemon", "IFaceDaemonCallback", "IFaceService", "IFaceServiceReceiver"
)


def parse_aidl(path: Path) -> dict[str, int]:
    source = path.read_text(encoding="utf-8")
    source = source.split("interface ", 1)[1]
    # AIDL declarations may wrap across several lines.
    methods = re.findall(r"\b([A-Za-z_]\w*)\s*\([^;]*?\)\s*;\s*//\s*(\d+)",
                         source, re.S)
    return {name: int(tx) for name, tx in methods}


def parse_jadx(path: Path) -> dict[str, int]:
    source = path.read_text(encoding="utf-8")
    methods = re.findall(r"\bTRANSACTION_(\w+)\s*=\s*(\d+)\s*;", source)
    return {name: int(tx) for name, tx in methods}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("jadx_dir", type=Path, help="Face-audit directory with IFace*.java")
    args = parser.parse_args()
    aidl_dir = Path(__file__).resolve().parent / "aidl/com/samsung/android/bio/face"
    failed = 0
    for interface in INTERFACES:
        aidl = parse_aidl(aidl_dir / f"{interface}.aidl")
        java = parse_jadx(args.jadx_dir / f"{interface}.java")
        if aidl == java and len(aidl) == max(java.values()):
            print(f"PASS {interface}: {len(aidl)} matching contiguous transactions")
        else:
            failed += 1
            print(f"FAIL {interface}: AIDL={aidl}, donor={java}")
    return int(bool(failed))


if __name__ == "__main__":
    raise SystemExit(main())
