#!/usr/bin/env python3
"""Developer tool: record a stock -> patched binary pair as an apply_byte_patch.py spec.

Usage: make_byte_patch.py <name> <stock> <patched> <out.json> [description]
The patched file comes from the analysis patchers kept in tools/ (see README).
"""
import hashlib
import json
import sys
from pathlib import Path


def ranges(a: bytes, b: bytes):
    if len(a) != len(b):
        raise SystemExit("files differ in size; only in-place patches are supported")
    out, i = [], 0
    while i < len(a):
        if a[i] == b[i]:
            i += 1
            continue
        j = i
        while j < len(a) and a[j] != b[j]:
            j += 1
        out.append([i, a[i:j].hex(), b[i:j].hex()])
        i = j
    return out


def main(name, stock, patched, out, description=""):
    a, b = Path(stock).read_bytes(), Path(patched).read_bytes()
    spec = {
        "name": name,
        "description": description,
        "input_sha256": hashlib.sha256(a).hexdigest(),
        "output_sha256": hashlib.sha256(b).hexdigest(),
        "ranges": ranges(a, b),
    }
    Path(out).write_text(json.dumps(spec, indent=1) + "\n")
    print(f"{name}: {len(spec['ranges'])} ranges")


if __name__ == "__main__":
    main(*sys.argv[1:])
