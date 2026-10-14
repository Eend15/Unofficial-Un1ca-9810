#!/usr/bin/env python3
"""Prepare the user's DS-ACK S9+ kernel/DTB from its bspatch installer ZIP.

The G965F entries are *binary deltas* against G960F, not bootable images.
This stage never modifies the phone or work_dir; it writes validated files in
the specified output directory for subsequent boot-image integration.
"""
from __future__ import annotations

import argparse
import hashlib
from pathlib import Path
import shutil
import subprocess
import sys
import zipfile


FILES = {
    "kernel-base": "floyd/G960F-kernel",
    "kernel-delta": "floyd/G965F-kernel",
    "dtb-base": "floyd/G960F-dtb",
    "dtb-delta": "floyd/G965F-dtb",
    "magiskboot": "floyd/tools/magiskboot",
}


def sha(path: Path) -> str:
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def prepare(kernel_zip: Path, dest: Path) -> None:
    if not kernel_zip.is_file():
        raise ValueError(f"requested DS-ACK kernel ZIP not found: {kernel_zip}")
    if shutil.which("bspatch") is None:
        raise ValueError("bspatch missing; cannot reconstruct G965F kernel/dtb")
    dest.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(kernel_zip) as archive:
        bad = archive.testzip()
        if bad:
            raise ValueError(f"corrupt DS-ACK archive member {bad}")
        for name, rel in FILES.items():
            info = archive.getinfo(rel)
            if info.file_size < 4000:
                raise ValueError(f"DS-ACK archive member too small: {rel}")
            with archive.open(info) as source, (dest / name).open("wb") as target:
                shutil.copyfileobj(source, target)

    for base, patch, result in (
        ("kernel-base", "kernel-delta", "kernel"),
        ("dtb-base", "dtb-delta", "extra"),
    ):
        proc = subprocess.run(["bspatch", str(dest / base), str(dest / result),
                               str(dest / patch)], capture_output=True, text=True,
                              timeout=60, check=False)
        if proc.returncode:
            raise ValueError(f"failed to reconstruct G965F {result}: {proc.stderr[-1000:]}")
    kernel, dtb = dest / "kernel", dest / "extra"
    if not 8_000_000 <= kernel.stat().st_size <= 55_000_000:
        raise ValueError("G965F kernel size implausible after bspatch")
    if not 10_000 <= dtb.stat().st_size <= 2_000_000:
        raise ValueError("G965F DTB size implausible after bspatch")
    (dest / "magiskboot").chmod(0o755)
    print(f"DS-ACK G965F kernel: {kernel.stat().st_size:,} bytes SHA256 {sha(kernel)}")
    print(f"DS-ACK G965F DTB: {dtb.stat().st_size:,} bytes SHA256 {sha(dtb)}")
    print(f"Source ZIP SHA256 {sha(kernel_zip)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--kernel-zip", required=True, type=Path)
    parser.add_argument("--output-dir", required=True, type=Path)
    args = parser.parse_args()
    try:
        prepare(args.kernel_zip, args.output_dir)
    except (ValueError, OSError, KeyError, zipfile.BadZipFile,
            subprocess.TimeoutExpired) as exc:
        print(f"DS-ACK kernel preparation failed: {exc}", file=sys.stderr)
        raise SystemExit(1) from exc
