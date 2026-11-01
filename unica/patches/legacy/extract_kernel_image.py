#!/usr/bin/env python3
"""Extract only the kernel, including pre-versioned Samsung DTBH boot headers.

The Samsung header's word at offset 40 is a DTB size, not an Android header
version. Validate the complete legacy layout rather than decoding it as v3.
No boot image or ramdisk is modified.
"""
import argparse
import os
from pathlib import Path
import struct
import tempfile


def read_kernel(image):
    data = Path(image).read_bytes()
    if len(data) < 48 or data[:8] != b"ANDROID!":
        raise ValueError("missing or truncated Android boot header")
    words = struct.unpack_from("<10I", data, 8)
    kernel_size, ramdisk_size, second_size = words[0], words[2], words[4]
    header = words[8]
    if header in (3, 4):
        page = 4096
        header_size = words[3]
        if not 44 <= header_size <= page:
            raise ValueError("invalid v3/v4 header size")
        kind = f"Android v{header}"
    else:
        page = words[7]
        if page < 2048 or page > 65536 or page & (page - 1):
            raise ValueError("invalid legacy boot page size")
        if len(data) < page or page < 1632:
            raise ValueError("truncated legacy header page")
        if header > 4:
            align = lambda size: (size + page - 1) // page * page
            dtb_start = page + align(kernel_size) + align(ramdisk_size) + align(second_size)
            if header < 16 or dtb_start + header > len(data):
                raise ValueError("invalid Samsung DTB extent")
            if data[dtb_start:dtb_start + 4] not in (b"DTBH", b"\xd0\x0d\xfe\xed"):
                raise ValueError("unknown header version without a valid Samsung DTB")
            kind = "Samsung legacy DTB"
        else:
            kind = f"Android v{header}"
    if not kernel_size or page + kernel_size > len(data):
        raise ValueError("missing or truncated kernel payload")
    return data[page:page + kernel_size], kind


def extract(image, output):
    kernel, kind = read_kernel(image)
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = None
    try:
        with tempfile.NamedTemporaryFile(dir=output.parent, delete=False) as stream:
            temporary = stream.name
            stream.write(kernel)
        os.replace(temporary, output)
    finally:
        if temporary and os.path.exists(temporary):
            os.unlink(temporary)
    return len(kernel), kind


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--boot-image", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    try:
        size, kind = extract(args.boot_image, args.output)
    except (OSError, ValueError) as exc:
        parser.exit(1, f"Kernel extraction failed for {args.boot_image}: {exc}\n")
    print(f"Extracted {size} kernel bytes ({kind})")