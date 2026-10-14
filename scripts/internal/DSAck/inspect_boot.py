#!/usr/bin/env python3
"""Read Samsung boot header through native MagiskBoot without changing it."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("--base-boot", required=True, type=Path)
parser.add_argument("--magiskboot", required=True, type=Path)
parser.add_argument("--stage", required=True, type=Path)
args = parser.parse_args()
stage = args.stage
stage.mkdir(parents=True, exist_ok=True)
base = stage / "base-boot.img"
shutil.copyfile(args.base_boot, base)
cmd = [str(args.magiskboot.resolve()), "unpack", "-h", str(base)]
result = subprocess.run(cmd, cwd=stage, capture_output=True, text=True, check=False, timeout=60)
print("magiskboot unpack exit:", result.returncode)
print(result.stdout[-9000:])
print(result.stderr[-3000:])
for path in sorted(stage.iterdir()):
    print(path.name, path.stat().st_size)
header = stage / "header"
if header.is_file():
    print("\nBOOT HEADER:\n" + header.read_text(errors="replace")[:10000])
if result.returncode:
    raise SystemExit(result.returncode)
