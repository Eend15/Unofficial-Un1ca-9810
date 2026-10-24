"""Reproduce hdmi_audio_fix_9810_v2's one-byte change on the pinned HAL.

Thumb LSLS #14 becomes LSLS #6 before the existing BMI route branch: test
output flag bit 25 (Samsung MULTI_CH, 0x02000000), instead of bit 17.
No ELF dependencies, mixer/calibration data or service lifecycle are changed.
"""
import argparse
import hashlib
from pathlib import Path

STOCK_SHA256 = 'e437fac3624ea03e9ab02c42fb5a8ca854f5221b81db4122b16bbd5c434f9048'
PATCHED_SHA256 = '0d21b60ac684b315c49ac1ce7bcfb03d939222155a471a8308225fa81c368bd0'
MODULE_SHA256 = '2ac22a873a08f0658bc633033e195887413492028cd3afffb780bc343a7b8af7'
OFFSET = 0xE86E
BEFORE = bytes.fromhex('5fea8a30')
AFTER = bytes.fromhex('5fea8a10')


def patch(data: bytes, verify_only=False) -> bytes:
    digest = hashlib.sha256(data).hexdigest()
    if digest == PATCHED_SHA256:
        return data
    if verify_only or digest != STOCK_SHA256:
        raise ValueError(f'Unsupported/unpatched Exynos9810 audio HAL: {digest}')
    if data[OFFSET:OFFSET + 4] != BEFORE:
        raise ValueError('HDMI output flag instruction mismatch')
    result = data[:OFFSET] + AFTER + data[OFFSET + 4:]
    if hashlib.sha256(result).hexdigest() != PATCHED_SHA256:
        raise ValueError('HDMI audio result differs from supplied v2 HAL')
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('binary', type=Path)
    parser.add_argument('--verify', action='store_true')
    args = parser.parse_args()
    original = args.binary.read_bytes()
    result = patch(original, args.verify)
    if original != result:
        args.binary.write_bytes(result)
    print('Verified Exynos9810 HDMI MULTI_CH audio HAL')
