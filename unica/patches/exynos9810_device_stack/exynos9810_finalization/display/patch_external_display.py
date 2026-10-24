"""Adapt the pinned One UI 8 compositor to legacy 9810 HWC port IDs.

HWC reports physical display 256 with the same decoded port as display 0.
The newer compositor rejects the external display before configuring it.
Reproduce the independently tested v1.3 module's single instruction change
inside the system image, retaining surfaceflinger_exec and normal init startup.
"""
from pathlib import Path
import argparse
import hashlib

STOCK_SHA256 = "7dcb45d97b55230a5905dc39e7697f61f41080bc6a53f1a8db4bed8dd242f8b6"
PATCHED_SHA256 = "2f2b358c7c84bae33b7042397c4d6d1b770e8e0015079ec28eca7404ab2cd630"
OFFSET = 0x45264C
BEFORE = bytes.fromhex("80020036")  # tbz w0, #0, 0x45269c
AFTER = bytes.fromhex("14000014")   # b 0x45269c


def patch(data: bytes, verify_only: bool = False) -> bytes:
    digest = hashlib.sha256(data).hexdigest()
    if digest == PATCHED_SHA256:
        return data
    if verify_only or digest != STOCK_SHA256:
        raise ValueError(f"Unsupported/unpatched SurfaceFlinger: {digest}")
    if data[OFFSET:OFFSET + 4] != BEFORE:
        raise ValueError("SurfaceFlinger port collision instruction mismatch")
    result = data[:OFFSET] + AFTER + data[OFFSET + 4:]
    if hashlib.sha256(result).hexdigest() != PATCHED_SHA256:
        raise ValueError("SurfaceFlinger result does not match verified v1.3 payload")
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("binary", type=Path)
    parser.add_argument("--verify", action="store_true")
    args = parser.parse_args()
    data = args.binary.read_bytes()
    result = patch(data, args.verify)
    if data != result:
        args.binary.write_bytes(result)
    print("Verified Exynos9810 external-display SurfaceFlinger compatibility")


if __name__ == "__main__":
    main()
