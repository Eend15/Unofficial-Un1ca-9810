#!/usr/bin/env python3
"""Integrate prepared DS-ACK G965F kernel+DTB into Samsung's original boot.img.

Uses native x86_64 MagiskBoot, not the ARM-only installer binary. Unpacks into
an isolated directory, replaces only `kernel` and `extra`, adjusts the
boot-header cmdline to SELinux enforcing, repacks, then unpacks the result to
verify all three modifications. Never flashes a device.
"""
from __future__ import annotations

import argparse
import hashlib
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


BOOT_PARTITION_LIMIT = 57_671_680


def digest(path: Path) -> str:
    with path.open("rb") as f:
        return hashlib.file_digest(f, "sha256").hexdigest()


def exec_magisk(utility: Path, arguments: list[str], cwd: Path) -> None:
    result = subprocess.run([str(utility.resolve()), *arguments], cwd=cwd,
                            capture_output=True, text=True, timeout=120,
                            check=False)
    if result.returncode:
        raise ValueError("magiskboot failed: " + result.stdout[-1200:] +
                         result.stderr[-1200:])
    print(result.stdout[-1100:])


def integrate(input_boot: Path, output_boot: Path, prepared: Path) -> None:
    magiskboot = prepared / "libmagiskboot.so"
    kernel, dtb = prepared / "kernel", prepared / "extra"
    for file in (magiskboot, kernel, dtb, input_boot):
        if not file.is_file() or not file.stat().st_size:
            raise ValueError(f"missing required DS-ACK input: {file}")
    if not 8_000_000 <= kernel.stat().st_size <= 55_000_000:
        raise ValueError("DS-ACK G965F kernel is an unexpected size")
    if not 10_000 <= dtb.stat().st_size <= 2_000_000:
        raise ValueError("DS-ACK G965F DTB is an unexpected size")

    output_boot.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="dsack-g965f-repack-", dir=prepared) as d:
        root = Path(d)
        build = root / "build"
        check = root / "check"
        build.mkdir()
        check.mkdir()
        original = build / "original-boot.img"
        shutil.copyfile(input_boot, original)
        exec_magisk(magiskboot, ["unpack", "-h", str(original)], build)
        header = build / "header"
        if not header.is_file():
            raise ValueError("Samsung boot header was not decoded")
        fields = header.read_text(encoding="utf-8")
        source_cmdline = "cmdline=androidboot.selinux=permissive"
        target_cmdline = "cmdline=androidboot.selinux=enforcing"
        if source_cmdline in fields:
            fields = fields.replace(source_cmdline, target_cmdline)
        elif target_cmdline not in fields:
            raise ValueError("unexpected Samsung boot cmdline; refuse unsafe SELinux patch")
        header.write_text(fields, encoding="utf-8")
        source_ramdisk_hash = digest(build / "ramdisk.cpio")
        shutil.copyfile(kernel, build / "kernel")
        shutil.copyfile(dtb, build / "extra")
        rebuilt = build / "repacked-boot.img"
        exec_magisk(magiskboot, ["repack", str(original), str(rebuilt)], build)
        if not rebuilt.is_file() or rebuilt.stat().st_size > BOOT_PARTITION_LIMIT:
            raise ValueError("repacked boot image exceeds S9+ boot partition")
        # The second decode verifies the actual resulting output, not the
        # staging files; particularly important when Samsung images have extra.
        exec_magisk(magiskboot, ["unpack", "-h", str(rebuilt)], check)
        if digest(check / "kernel") != digest(kernel):
            raise ValueError("repacked S9+ kernel does not match DS-ACK G965F")
        if digest(check / "extra") != digest(dtb):
            raise ValueError("repacked S9+ DTB does not match DS-ACK G965F")
        if digest(check / "ramdisk.cpio") != source_ramdisk_hash:
            raise ValueError("repack unintentionally changed original boot ramdisk")
        verified_header = (check / "header").read_text(encoding="utf-8")
        if target_cmdline not in verified_header or source_cmdline in verified_header:
            raise ValueError("repacked boot image did not enable SELinux enforcing")
        temporary_output = output_boot.with_name(output_boot.name + ".dsack-verified")
        shutil.copyfile(rebuilt, temporary_output)
        os.replace(temporary_output, output_boot)
        print(f"PASS verified G965F DS-ACK boot.img {output_boot.stat().st_size:,} bytes")
        print(f"PASS SELinux enforcing cmdline + original ramdisk + G965F DTB")
        print(f"BOOT SHA256 {digest(output_boot)}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--base-boot", required=True, type=Path)
    parser.add_argument("--output-boot", required=True, type=Path)
    parser.add_argument("--prepared-dir", required=True, type=Path)
    args = parser.parse_args()
    try:
        integrate(args.base_boot, args.output_boot, args.prepared_dir)
    except (ValueError, OSError, subprocess.TimeoutExpired) as exc:
        print(f"DS-ACK boot integration failed: {exc}", file=sys.stderr)
        raise SystemExit(1) from exc


if __name__ == "__main__":
    main()
