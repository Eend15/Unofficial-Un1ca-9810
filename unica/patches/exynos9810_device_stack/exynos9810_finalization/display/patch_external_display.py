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
PATCHED_SHA256 = "6cf08ecacba71d6c14562a0c669f51478ebff1dc605d8e2f88b6f6ffabe25a08"
LEGACY_PATCHED_SHA256 = "2f2b358c7c84bae33b7042397c4d6d1b770e8e0015079ec28eca7404ab2cd630"

# 1. Branch hook inside HWComposer multi-display setup
OFFSET_HOOK = 0x44D9D0
BEFORE_HOOK = bytes.fromhex("f7feff97")  # bl 0x44d5ac
AFTER_HOOK = bytes.fromhex("59290e94")   # bl 0x7d7f34

# 2. Trampoline code cave at 0x7d7f34 (extracts external display port ID from w20 >> 8)
OFFSET_TRAMPOLINE = 0x7D7F34
BEFORE_TRAMPOLINE = bytes.fromhex("000000000000000000000000")
AFTER_TRAMPOLINE = bytes.fromhex("887e0853e87300399cd5f117")  # lsr w8, w20, #8; strb w8, [sp, #0x1c]; b 0x44d5ac

# Legacy offset for compatibility
OFFSET = OFFSET_HOOK


def patch(data: bytes, verify_only: bool = False) -> bytes:
    digest = hashlib.sha256(data).hexdigest()
    if digest == PATCHED_SHA256:
        return data
    if verify_only:
        raise ValueError(f"Unsupported/unpatched SurfaceFlinger: {digest}")
    
    buf = bytearray(data)
    # If binary has the legacy patch, revert it back to clean stock first
    if digest == LEGACY_PATCHED_SHA256:
        buf[0x45264c:0x45264c + 4] = bytes.fromhex("80020036")
        digest = hashlib.sha256(buf).hexdigest()

    if digest != STOCK_SHA256:
        raise ValueError(f"Unsupported/unpatched SurfaceFlinger: {digest}")
    if buf[OFFSET_HOOK:OFFSET_HOOK + 4] != BEFORE_HOOK:
        raise ValueError("SurfaceFlinger hook instruction mismatch")
    if buf[OFFSET_TRAMPOLINE:OFFSET_TRAMPOLINE + 12] != BEFORE_TRAMPOLINE:
        raise ValueError("SurfaceFlinger trampoline code cave mismatch")
    
    buf[OFFSET_HOOK:OFFSET_HOOK + 4] = AFTER_HOOK
    buf[OFFSET_TRAMPOLINE:OFFSET_TRAMPOLINE + 12] = AFTER_TRAMPOLINE
    result = bytes(buf)

    if hashlib.sha256(result).hexdigest() != PATCHED_SHA256:
        raise ValueError("SurfaceFlinger result does not match verified payload")
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
