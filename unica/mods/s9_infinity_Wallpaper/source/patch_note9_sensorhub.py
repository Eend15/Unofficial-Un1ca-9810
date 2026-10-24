"""Retain the Note9 sensor board while restoring legacy HIDL transport linkage.

The working S9+ Infinity sensorhub is its stock blob with DT_NEEDED for
libhidltransport.so restored. Apply that same dependency repair to the actual
Note9 blob, not the S9 AK09916C build. No sensor executable code is changed.
"""
from pathlib import Path
import argparse
import hashlib
import struct

STOCK_SHA256 = 'ea4f97bfac15116dfcf3eebc4a66daeb662a2eec3626015c8b3931a69c273eec'
PATCHED_SHA256 = '94706994011a413566071053efeae92dba2c29eaca3056e1f9f1291381f1dcea'


def restore_transport_dependency(data: bytes) -> bytes:
    if data[:6] != b'\x7fELF\x02\x01' or struct.unpack_from('<H', data, 18)[0] != 183:
        raise ValueError('Expected little-endian AArch64 ELF64 sensorhub')
    result = bytearray(data)
    phoff = struct.unpack_from('<Q', data, 32)[0]
    entry_size, count = struct.unpack_from('<HH', data, 54)
    headers = [struct.unpack_from('<IIQQQQQQ', data, phoff + i * entry_size)
               for i in range(count)]
    dynamic = next(h for h in headers if h[0] == 2)
    offset, size = dynamic[2], dynamic[5]
    entries = [(*struct.unpack_from('<QQ', data, o), o)
               for o in range(offset, offset + size, 16)]
    address = next(value for tag, value, _ in entries if tag == 5)
    segment = next(h for h in headers if h[0] == 1 and h[3] <= address < h[3] + h[5])
    string_offset = segment[2] + address - segment[3]
    string_size = next(value for tag, value, _ in entries if tag == 10)
    strings = data[string_offset:string_offset + string_size]
    needed = strings.index(b'libhidltransport.so\0')
    libraries = [(value, strings[value:].split(b'\0')[0], o)
                 for tag, value, o in entries if tag == 1]
    if any(value == needed for value, _, _ in libraries):
        return data
    insert = next(o + 16 for _, name, o in libraries if name == b'libhidlbase.so')
    terminator = next(o for tag, _, o in entries if tag == 0)
    if terminator + 32 > offset + size or data[terminator:terminator + 32] != bytes(32):
        raise ValueError('No spare DT_NULL entry for HIDL transport dependency')
    result[insert + 16:terminator + 16] = result[insert:terminator]
    struct.pack_into('<QQ', result, insert, 1, needed)
    return bytes(result)


def patch(data: bytes, verify_only: bool = False) -> bytes:
    digest = hashlib.sha256(data).hexdigest()
    if digest == PATCHED_SHA256:
        return data
    if verify_only or digest != STOCK_SHA256:
        raise ValueError(f'Wrong Note9 sensorhub payload: {digest}')
    result = restore_transport_dependency(data)
    if hashlib.sha256(result).hexdigest() != PATCHED_SHA256:
        raise ValueError('Note9 HIDL dependency repair output mismatch')
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('binary', type=Path)
    parser.add_argument('--verify', action='store_true')
    args = parser.parse_args()
    data = args.binary.read_bytes()
    result = patch(data, args.verify)
    if result != data:
        args.binary.write_bytes(result)
    print('Verified Note9 AK09918C sensorhub with restored HIDL transport dependency')
