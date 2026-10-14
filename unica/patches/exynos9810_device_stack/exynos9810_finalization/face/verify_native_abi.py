#!/usr/bin/env python3
"""Reject an AIDL IFaceService engine paired with Samsung's HIDL 2.0 daemon."""
import re
import shutil
import subprocess
import sys
from pathlib import Path

def verify(path):
    tool = shutil.which('llvm-readelf')
    if not tool:
        raise SystemExit('llvm-readelf is required to inspect Android packed ELF relocations')
    symbols = subprocess.check_output([tool, '--dyn-syms', '--wide', str(path)], text=True)
    vtable = re.search(r'\s([0-9a-f]+)\s+\d+\s+OBJECT\s+GLOBAL\s+DEFAULT\s+\d+\s+_ZTVN7android11FaceServiceE\b', symbols)
    if not vtable:
        raise SystemExit(f'{path}: missing exported FaceService vtable')
    start = int(vtable.group(1), 16) + 16
    relocs = subprocess.check_output([tool, '--relocations', '--wide', str(path)], text=True)
    slots = {}
    for line in relocs.splitlines():
        fields = line.split()
        if len(fields) >= 5 and fields[2] == 'R_AARCH64_ABS64':
            slots[int(fields[0], 16) - start] = fields[4]
    # Offsets are independently verified against the HIDL daemon's AArch64
    # virtual call sites. Check signatures as well as ordering.
    expected = {
        16: '_ZN7android11FaceService13setActiveUserEjPKc',
        24: '_ZN7android11FaceService17generateChallengeEjRm',
        32: '_ZN7android11FaceService6enrollEPK15hw_auth_token_tj',
        40: '_ZN7android11FaceService15revokeChallengeEv',
        64: '_ZN7android11FaceService18getAuthenticatorIdERm',
        72: '_ZN7android11FaceService6cancelEv',
        80: '_ZN7android11FaceService9enumerateEv',
        88: '_ZN7android11FaceService6removeEj',
        96: '_ZN7android11FaceService12authenticateEmj',
        120: '_ZN7android11FaceService17setNotifyCallbackERKNS_2spINS_8hardware10biometrics4face4V1_029IBiometricsFaceClientCallbackEEERm',
        128: '_ZN7android11FaceService17setNotifyCallbackERKNS_2spIN6vendor7samsung8hardware10biometrics4face4V2_032ISehBiometricsFaceClientCallbackEEERm',
        136: '_ZN7android11FaceService19clearNotifyCallbackEv',
    }
    for offset, signature in expected.items():
        actual = slots.get(offset, '<missing>')
        if not actual.startswith(signature):
            raise SystemExit(f'{path}: incompatible IFaceService slot +{offset}: {actual}; expected {signature}')
    if '_ZN7android11FaceService10getPointerEPPNS_12IFaceServiceE' not in symbols:
        raise SystemExit(f'{path}: missing HIDL factory')
    print(f'Face native ABI verified: {path}')

if __name__ == '__main__':
    if len(sys.argv) != 2:
        raise SystemExit('usage: verify_native_abi.py <libFaceService.so>')
    verify(Path(sys.argv[1]))
