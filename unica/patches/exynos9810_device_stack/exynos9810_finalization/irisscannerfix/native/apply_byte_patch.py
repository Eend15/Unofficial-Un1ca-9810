#!/usr/bin/env python3
"""Apply a verified byte patch to a stock Galaxy S9/S9+/Note9 iris binary.

The Android 10 iris binaries are byte-identical on all three Exynos 9810 targets,
so each patch is pinned to the stock input and the expected output by SHA-256 and
every changed range is checked against its original bytes before writing.
Usage: apply_byte_patch.py <patch.json> <stock input> <output>
"""
import hashlib
import json
import sys
from pathlib import Path


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def apply(spec: dict, data: bytes) -> bytes:
    if sha256(data) != spec["input_sha256"]:
        raise ValueError(f"{spec['name']}: input is not the expected stock file")
    out = bytearray(data)
    for offset, old, new in spec["ranges"]:
        old_b, new_b = bytes.fromhex(old), bytes.fromhex(new)
        if len(old_b) != len(new_b) or out[offset:offset + len(old_b)] != old_b:
            raise ValueError(f"{spec['name']}: unexpected bytes at {offset:#x}")
        out[offset:offset + len(new_b)] = new_b
    if sha256(bytes(out)) != spec["output_sha256"]:
        raise ValueError(f"{spec['name']}: patched file does not match the verified result")
    return bytes(out)


def main(patch: Path, src: Path, dst: Path):
    spec = json.loads(patch.read_text())
    data = src.read_bytes()
    if sha256(data) == spec["output_sha256"]:
        out = data  # already patched
    else:
        out = apply(spec, data)
    dst.write_bytes(out)
    print(f"{spec['name']}: {len(spec['ranges'])} verified ranges applied")


if __name__ == "__main__":
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    main(Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3]))
