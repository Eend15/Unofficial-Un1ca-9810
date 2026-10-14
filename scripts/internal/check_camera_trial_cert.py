#!/usr/bin/env python3
"""Compare the signing certificate embedded in two APK Signature Blocks.

Read-only. This is NOT a full APK signature verifier; it catches mismatched
certificates before a temporary live bind-mount test.
"""
from hashlib import sha256
from pathlib import Path
import struct
import sys

MAGIC = b"APK Sig Block 42"
IDS = {0x7109871a: "v2", 0xf05368c0: "v3", 0x1b93ad61: "v3.1"}


def take(data, pos):
    if pos + 4 > len(data):
        raise ValueError("Length field outside signing block")
    n = struct.unpack_from("<I", data, pos)[0]
    pos += 4
    if pos + n > len(data):
        raise ValueError("Invalid length-prefixed APK signer data")
    return data[pos:pos + n], pos + n


def certificates(path):
    data = Path(path).read_bytes()
    eocd = data.rfind(b"PK\x05\x06")
    if eocd < 0 or eocd + 22 > len(data):
        raise ValueError("ZIP end-of-central-directory missing")
    cd = struct.unpack_from("<I", data, eocd + 16)[0]
    if data[cd - 16:cd] != MAGIC:
        raise ValueError("APK Signing Block missing")
    size = struct.unpack_from("<Q", data, cd - 24)[0]
    start = cd - size - 8
    if start < 0 or struct.unpack_from("<Q", data, start)[0] != size:
        raise ValueError("APK signing block size mismatch")
    found = {}
    p = start + 8
    while p < cd - 24:
        entry_size = struct.unpack_from("<Q", data, p)[0]
        if entry_size < 4 or p + 8 + entry_size > cd - 24:
            raise ValueError("Invalid APK signing-block pair")
        entry_id = struct.unpack_from("<I", data, p + 8)[0]
        if entry_id in IDS:
            block = data[p + 12:p + 8 + entry_size]
            signers, _ = take(block, 0)
            signer, _ = take(signers, 0)
            signed, _ = take(signer, 0)
            _, offset = take(signed, 0)  # digests
            cert_block, _ = take(signed, offset)
            cert, _ = take(cert_block, 0)
            found[IDS[entry_id]] = sha256(cert).hexdigest()
        p += 8 + entry_size
    if not found:
        raise ValueError("No recognized APK v2/v3 signing certificate")
    return found


if __name__ == "__main__":
    if len(sys.argv) != 3:
        raise SystemExit("Usage: check_camera_trial_cert.py ORIGINAL.apk NEW.apk")
    old, new = (certificates(path) for path in sys.argv[1:])
    print(f"Original cert SHA256: {old}")
    print(f"Candidate cert SHA256: {new}")
    if set(old.values()) != set(new.values()):
        raise SystemExit("BLOCK: APK signing certificate differs")
    print("PASS: original and candidate have matching signing certificates")
