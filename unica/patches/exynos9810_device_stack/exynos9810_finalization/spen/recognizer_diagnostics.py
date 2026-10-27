"""Pinned Notes recognizer: bypass two crashing result-print routines only.

Disassembly shows result formatting/reporter calls and temporary string cleanup;
recognition and result getters are unchanged. Physical acceptance is pending.
"""
import hashlib
ORIGINAL = '7dd25522867bb182893d29e3101becf2df75787b3046de137c94c463c7abb363'
ENTRIES = ((0x7aba8, bytes.fromhex('ff8302d1')), (0x74a24, bytes.fromhex('ffc307d1')))
RET = bytes.fromhex('c0035fd6')
def patch(data):
    if hashlib.sha256(data).hexdigest() != ORIGINAL:
        raise ValueError('Unsupported recognizer; refusing offset patch')
    result = bytearray(data)
    for offset, expected in ENTRIES:
        if data[offset:offset+4] != expected:
            raise ValueError('Recognizer entry instruction mismatch')
        result[offset:offset+4] = RET
    return bytes(result)
