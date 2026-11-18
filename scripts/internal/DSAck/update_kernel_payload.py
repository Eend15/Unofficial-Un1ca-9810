#!/usr/bin/env python3
"""Replace a complete DS-ACK kernel delta family, preserving proven DTBs/tools."""
import argparse
import hashlib
from pathlib import Path
import zipfile

VARIANTS = ("G960F", "G965F", "N960F", "G960N", "G965N", "N960N")


def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def update(baseline, compiled, output, baseline_sha, compiled_sha):
    if output.exists():
        raise ValueError("Refusing to overwrite an existing archive")
    for path, expected in ((baseline, baseline_sha), (compiled, compiled_sha)):
        if digest(path) != expected:
            raise ValueError("Input SHA256 mismatch: " + str(path))
    kernels = {f"floyd/{variant}-kernel" for variant in VARIANTS}
    with zipfile.ZipFile(baseline) as old, zipfile.ZipFile(compiled) as new:
        for archive in (old, new):
            if archive.testzip() is not None:
                raise ValueError("Corrupt input archive")
            if len(archive.namelist()) != len(set(archive.namelist())):
                raise ValueError("Duplicate input archive members")
            if not kernels.issubset(archive.namelist()):
                raise ValueError("Incomplete kernel delta family")
        # Deltas must all come from the same build, including their G960F base.
        with zipfile.ZipFile(output, "x", compression=zipfile.ZIP_DEFLATED) as result:
            for entry in old.infolist():
                data = new.read(entry.filename) if entry.filename in kernels else old.read(entry)
                result.writestr(entry, data)
    with zipfile.ZipFile(output) as result, zipfile.ZipFile(baseline) as old, zipfile.ZipFile(compiled) as new:
        assert result.testzip() is None
        assert result.namelist() == old.namelist()
        for name in result.namelist():
            expected = new.read(name) if name in kernels else old.read(name)
            if result.read(name) != expected:
                raise ValueError("Unexpected output bytes: " + name)
    print(digest(output), output)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("baseline", "compiled", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--baseline-sha256", required=True)
    parser.add_argument("--compiled-sha256", required=True)
    args = parser.parse_args()
    update(args.baseline, args.compiled, args.output,
           args.baseline_sha256, args.compiled_sha256)
