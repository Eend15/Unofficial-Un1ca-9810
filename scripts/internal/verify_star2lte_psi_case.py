#!/usr/bin/env python3
"""Fail closed on libPSI.so/libpsi.so case collision in star2lte filesystem staging.

Windows NTFS/DrvFS staging can silently alias the distinct Samsung libPSI.so
and Android libpsi.so into a single inode while build_fs_image still succeeds.
"""

import hashlib
import sys
from pathlib import Path


def verify(work_dir: Path) -> None:
    libdir = work_dir / "system" / "system" / "lib64"
    if not libdir.is_dir():
        raise ValueError(f"No system lib64 directory: {libdir}")
    entries = {p.name: p for p in libdir.iterdir() if p.is_file()}
    required = ("libPSI.so", "libpsi.so")
    missing = [name for name in required if name not in entries]
    if missing:
        raise ValueError(
            f"CASE-COLLISION: {missing} missing as exact-cased directory "
            f"entries in {libdir}. Build from a case-sensitive Linux "
            "staging filesystem; -f and Path.exists() are insufficient on NTFS."
        )
    fingerprints = {}
    for name in required:
        library = entries[name]
        with library.open("rb") as file:
            if file.read(4) != b"\x7fELF":
                raise ValueError(f"Invalid ELF library {library}")
            digest = hashlib.sha256()
            file.seek(0)
            for chunk in iter(lambda: file.read(1024 * 1024), b""):
                digest.update(chunk)
            fingerprints[name] = digest.hexdigest()
    if fingerprints[required[0]] == fingerprints[required[1]]:
        raise ValueError("libPSI.so and libpsi.so have identical contents; "
                         "Samsung/Android native payloads were overwritten")
    print("PASS: distinct exact-cased libPSI.so and libpsi.so in system/lib64")
    for name in required:
        print(f"  {name} {fingerprints[name]}")


if __name__ == "__main__":
    try:
        if len(sys.argv) != 2:
            raise ValueError("Usage: verify_star2lte_psi_case.py <work_dir>")
        verify(Path(sys.argv[1]))
    except (OSError, ValueError) as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        sys.exit(1)
