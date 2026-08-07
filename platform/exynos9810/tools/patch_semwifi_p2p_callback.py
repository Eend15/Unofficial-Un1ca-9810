#!/usr/bin/env python3
"""Keep Android's Wi-Fi Direct callback registered on legacy Samsung HIDL."""

from __future__ import annotations

import hashlib
import io
import struct
import sys
import tempfile
import zipfile
import zlib
from pathlib import Path


# SemSupplicantP2pIfaceHalHidlImpl.setupIface():
#   invoke-virtual registerCallback(...)
#   move-result v0
#
# The legacy supplicant only retains the last standard callback. Samsung's
# registration replaces WifiP2pService's callback, while Samsung's own
# onDeviceFound() is empty. Return success without replacing the AOSP callback;
# the separate Seh callback is still registered immediately afterwards.
ORIGINAL = bytes.fromhex("6e200b4707000a00")
PATCHED = bytes.fromhex("1210000000000000")  # const/4 v0, 1; nop; nop; nop


def patch_dex(data: bytes) -> bytes:
    count = data.count(ORIGINAL)
    if count == 0 and data.count(PATCHED) == 1:
        return data
    if count != 1:
        raise RuntimeError(
            f"expected one Samsung P2P callback registration, found {count}"
        )

    patched = bytearray(data)
    offset = patched.index(ORIGINAL)
    patched[offset : offset + len(ORIGINAL)] = PATCHED

    # DEX signature and checksum cover the modified instruction stream.
    patched[12:32] = hashlib.sha1(patched[32:]).digest()
    patched[8:12] = struct.pack(
        "<I", zlib.adler32(patched[12:]) & 0xFFFFFFFF
    )
    return bytes(patched)


def patch_jar(path: Path) -> None:
    with zipfile.ZipFile(path, "r") as source:
        entries = source.infolist()
        payloads = {entry.filename: source.read(entry.filename) for entry in entries}

    if "classes.dex" not in payloads:
        raise RuntimeError(f"{path} has no classes.dex")
    payloads["classes.dex"] = patch_dex(payloads["classes.dex"])

    with tempfile.NamedTemporaryFile(
        dir=path.parent, prefix=f".{path.name}.", suffix=".tmp", delete=False
    ) as temporary:
        temporary_path = Path(temporary.name)

    try:
        with zipfile.ZipFile(temporary_path, "w", allowZip64=True) as output:
            for entry in entries:
                output.writestr(entry, payloads[entry.filename])
        temporary_path.replace(path)
    finally:
        temporary_path.unlink(missing_ok=True)


def main() -> int:
    if len(sys.argv) != 2:
        print(f"usage: {Path(sys.argv[0]).name} <semwifi-service.jar>", file=sys.stderr)
        return 2

    path = Path(sys.argv[1])
    patch_jar(path)
    print(f"Patched Samsung Wi-Fi Direct callback registration in {path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
