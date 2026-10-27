#!/usr/bin/env python3
"""Validate the packaged companion independently of out/, backups or SDKs."""
import hashlib
import re
import zipfile
from pathlib import Path

source = Path(__file__).resolve().parent
module = source.parent
apk = module / 'payload/UnicaDynamicIsland.apk'
manifest = module / 'SHA256SUMS'
row = manifest.read_text().strip()
assert re.fullmatch(r'[0-9a-f]{64}  payload/UnicaDynamicIsland\.apk', row), row
assert hashlib.sha256(apk.read_bytes()).hexdigest() == row.split()[0]
with zipfile.ZipFile(apk) as z:
    assert z.testzip() is None
    dex = b''.join(z.read(name) for name in z.namelist()
                   if re.fullmatch(r'classes\d*\.dex', name))
    assert dex.startswith(b'dex\n')
    for token in (
        b'Ldev/android/dynamicisland/island/DeadlineGate;',
        b'scheduleEarliest',
        b'scheduleLatest',
        b'cancelPending',
        b'NativeRuntime',
        b'HideDuplicated',
        b'MediaSource',
    ):
        assert token in dex, f'Compiled runtime symbol missing: {token!r}'
print('PASS Dynamic Island packaged APK hash, DEX symbols and native runtime callbacks')
