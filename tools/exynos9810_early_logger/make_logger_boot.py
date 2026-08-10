#!/usr/bin/env python3

import argparse
import gzip
import os
import struct


PAGE_DEFAULT = 2048
CPIO_MAGIC = b"070701"


def align(value, amount):
    return (value + amount - 1) // amount * amount


def parse_cpio(data):
    entries = []
    offset = 0
    while True:
        if data[offset:offset + 6] != CPIO_MAGIC:
            raise ValueError(f"invalid cpio header at {offset}")
        fields = [int(data[offset + start:offset + start + 8], 16)
                  for start in range(6, 110, 8)]
        (ino, mode, uid, gid, nlink, mtime, size, devmajor, devminor,
         rdevmajor, rdevminor, namesize, check) = fields
        name_start = offset + 110
        name_end = name_start + namesize
        name = data[name_start:name_end - 1].decode("utf-8")
        data_start = align(name_end, 4)
        data_end = data_start + size
        if name == "TRAILER!!!":
            break
        entries.append({
            "ino": ino,
            "mode": mode,
            "uid": uid,
            "gid": gid,
            "nlink": nlink,
            "mtime": mtime,
            "devmajor": devmajor,
            "devminor": devminor,
            "rdevmajor": rdevmajor,
            "rdevminor": rdevminor,
            "name": name,
            "data": data[data_start:data_end],
        })
        offset = align(data_end, 4)
    return entries


def cpio_header(entry, name, size):
    values = [
        entry["ino"], entry["mode"], entry["uid"], entry["gid"],
        entry["nlink"], entry["mtime"], size, entry["devmajor"],
        entry["devminor"], entry["rdevmajor"], entry["rdevminor"],
        len(name.encode()) + 1, 0,
    ]
    return CPIO_MAGIC + b"".join(f"{value:08x}".encode() for value in values)


def write_cpio(entries):
    output = bytearray()
    for entry in entries:
        name = entry["name"].encode() + b"\0"
        payload = entry["data"]
        output += cpio_header(entry, entry["name"], len(payload))
        output += name
        output += b"\0" * ((-len(output)) % 4)
        output += payload
        output += b"\0" * ((-len(output)) % 4)

    trailer = {
        "ino": 0,
        "mode": 0,
        "uid": 0,
        "gid": 0,
        "nlink": 1,
        "mtime": 0,
        "devmajor": 0,
        "devminor": 0,
        "rdevmajor": 0,
        "rdevminor": 0,
    }
    output += cpio_header(trailer, "TRAILER!!!", 0)
    output += b"TRAILER!!!\0"
    output += b"\0" * ((-len(output)) % 4)
    return bytes(output)


def replace_init(ramdisk, logger, drop_names=()):
    entries = parse_cpio(ramdisk)
    entries = [entry for entry in entries if entry["name"] not in drop_names]
    original = next((entry for entry in entries if entry["name"] == "init"), None)
    if original is None:
        raise ValueError("ramdisk does not contain /init")
    if any(entry["name"] == "init.real" for entry in entries):
        raise ValueError("ramdisk is already instrumented")

    original = dict(original)
    original["name"] = "init.real"
    wrapper = {
        "ino": original["ino"] + 1,
        "mode": 0o100750,
        "uid": original["uid"],
        "gid": original["gid"],
        "nlink": 1,
        "mtime": original["mtime"],
        "devmajor": original["devmajor"],
        "devminor": original["devminor"],
        "rdevmajor": original["rdevmajor"],
        "rdevminor": original["rdevminor"],
        "name": "init",
        "data": logger,
    }
    replaced = []
    for entry in entries:
        if entry["name"] == "init":
            replaced.append(wrapper)
            replaced.append(original)
        else:
            replaced.append(entry)
    return write_cpio(replaced)


def add_service(ramdisk, logger, service_rc, service_name="bootlogger"):
    """Add a logger service while leaving the donor /init untouched."""
    entries = parse_cpio(ramdisk)
    template = next((entry for entry in entries if entry["name"] == "init"), None)
    if template is None:
        raise ValueError("ramdisk does not contain /init")
    names = {"/" + service_name, service_name, "bootlogger.rc"}
    entries = [entry for entry in entries if entry["name"] not in names]
    ino = max((entry["ino"] for entry in entries), default=0) + 1

    init_rc = next((entry for entry in entries if entry["name"] == "init.rc"), None)
    if init_rc is None:
        raise ValueError("ramdisk does not contain /init.rc")
    import_line = b"import /bootlogger.rc"
    if import_line not in init_rc["data"]:
        init_rc["data"] = init_rc["data"].rstrip(b"\0\n") + b"\n" + import_line + b"\n"

    entries.append({
        "ino": ino,
        "mode": 0o100755,
        "uid": template["uid"],
        "gid": template["gid"],
        "nlink": 1,
        "mtime": template["mtime"],
        "devmajor": template["devmajor"],
        "devminor": template["devminor"],
        "rdevmajor": 0,
        "rdevminor": 0,
        "name": service_name,
        "data": logger,
    })
    entries.append({
        "ino": ino + 1,
        "mode": 0o100644,
        "uid": template["uid"],
        "gid": template["gid"],
        "nlink": 1,
        "mtime": template["mtime"],
        "devmajor": template["devmajor"],
        "devminor": template["devminor"],
        "rdevmajor": 0,
        "rdevminor": 0,
        "name": "bootlogger.rc",
        "data": service_rc,
    })
    return write_cpio(entries)


def split_boot(image, keep_extra_tail=False):
    if image[:8] != b"ANDROID!":
        raise ValueError("not an Android boot image")
    page = struct.unpack_from("<I", image, 36)[0] or PAGE_DEFAULT
    kernel_size = struct.unpack_from("<I", image, 8)[0]
    ramdisk_size = struct.unpack_from("<I", image, 16)[0]
    kernel_start = page
    ramdisk_start = kernel_start + align(kernel_size, page)
    extra_start = ramdisk_start + align(ramdisk_size, page)
    extra_size = struct.unpack_from("<I", image, 40)[0]
    marker = image.find(b"SEANDROIDENFORCE")
    if marker > extra_start and keep_extra_tail:
        # Preserve the whole DTB region (DTBH header + FDT) up to the
        # SEANDROIDENFORCE marker. The header's extra_size field can be
        # stale/smaller than the actual patched FDT, truncating it.
        extra = image[extra_start:marker]
    elif keep_extra_tail:
        extra = image[extra_start:]
    elif extra_size:
        extra = image[extra_start:extra_start + extra_size]
    else:
        extra = image[extra_start:].rstrip(b"\0")
    return page, kernel_size, ramdisk_size, image[kernel_start:kernel_start + kernel_size], image[ramdisk_start:ramdisk_start + ramdisk_size], extra


def build_boot(image, ramdisk, compress=True, keep_extra_tail=False,
               max_size=None):
    page, kernel_size, old_ramdisk_size, kernel, old_ramdisk, extra = split_boot(image, keep_extra_tail)
    payload = gzip.compress(ramdisk, compresslevel=9, mtime=0) if compress else ramdisk
    header = bytearray(image[:page])
    struct.pack_into("<I", header, 16, len(payload))
    result = bytearray(header)
    result += kernel
    result += b"\0" * ((-len(result)) % page)
    result += payload
    result += b"\0" * ((-len(result)) % page)
    result += extra
    result += b"\0" * ((-len(result)) % page)
    if b"SEANDROIDENFORCE" in image:
        result += b"SEANDROIDENFORCE"
        result += b"\0" * ((-len(result)) % page)
    size_limit = len(image) if max_size is None else max_size
    if len(result) > size_limit:
        raise ValueError("logger BOOT exceeds the allowed BOOT image size")
    return bytes(result)


def is_gzip(data):
    return data[:2] == b"\x1f\x8b"


def is_cpio(data):
    return data[:6] == b"070701" or data[:6] == b"070702"


def add_debug_ramdisk(ramdisk, logger):
    """Insert the logger into /debug_ramdisk so first-stage init (Samsung /
    AOSP) copies it over / when androidboot.debug_ramdisk=1: the second-stage
    init then runs our logger too (as /init and /init.debug).
    """
    entries = parse_cpio(ramdisk)
    template = next(entry for entry in entries if entry["name"] == "init")
    debug_dir = next((e for e in entries if e["name"] == "debug_ramdisk"), None)
    if debug_dir is None:
        entries.append({
            "ino": 1234, "mode": 0o040755, "uid": 0, "gid": 0, "nlink": 2,
            "mtime": 0, "devmajor": 0, "devminor": 0, "rdevmajor": 0,
            "rdevminor": 0, "name": "debug_ramdisk", "data": b"",
        })
    logger_entry = {
        "ino": 2345, "mode": 0o100755, "uid": 0, "gid": 0, "nlink": 1,
        "mtime": 0, "devmajor": 0, "devminor": 0, "rdevmajor": 0,
        "rdevminor": 0, "name": "debug_ramdisk/init", "data": logger,
    }
    debug_entry = {
        "ino": 2346, "mode": 0o100755, "uid": 0, "gid": 0, "nlink": 1,
        "mtime": 0, "devmajor": 0, "devminor": 0, "rdevmajor": 0,
        "rdevminor": 0, "name": "debug_ramdisk/init.debug", "data": logger,
    }
    entries = [e for e in entries
               if e["name"] not in ("debug_ramdisk/init", "debug_ramdisk/init.debug")]
    entries.append(logger_entry)
    entries.append(debug_entry)
    return write_cpio(entries)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("base_boot")
    parser.add_argument("logger")
    parser.add_argument("output")
    parser.add_argument("--raw", action="store_true",
                        help="keep the ramdisk uncompressed (usually too large for this BOOT partition)")
    parser.add_argument("--format", choices=["auto", "gzip", "raw"], default="auto",
                        help="ramdisk compression: auto = match the original ramdisk")
    parser.add_argument("--drop-entry", action="append", default=[],
                        help="omit a ramdisk entry for a diagnostic image")
    parser.add_argument("--keep-extra-tail", action="store_true",
                        help="preserve Samsung boot padding after the DTB")
    parser.add_argument("--no-debug-ramdisk", action="store_true",
                        help="skip injecting the logger into /debug_ramdisk")
    parser.add_argument("--preserve-init", action="store_true",
                        help="leave /init untouched and add the logger as an init service")
    parser.add_argument("--service-rc",
                        help="ramdisk rc file for --preserve-init")
    parser.add_argument("--max-size", type=lambda value: int(value, 0),
                        help="maximum output size, normally the BOOT partition size")
    args = parser.parse_args()

    with open(args.base_boot, "rb") as stream:
        image = stream.read()
    with open(args.logger, "rb") as stream:
        logger = stream.read()
    _, _, _, _, ramdisk, _ = split_boot(image)
    ramdisk_is_gzip = is_gzip(ramdisk)
    ramdisk_cpio = gzip.decompress(ramdisk) if ramdisk_is_gzip else ramdisk
    if not is_cpio(ramdisk_cpio):
        raise ValueError("boot ramdisk is neither gzip-compressed nor raw newc cpio")

    if args.format == "auto":
        compress = ramdisk_is_gzip
    elif args.format == "gzip":
        compress = True
    else:
        compress = False
    if args.raw:
        compress = False

    if args.preserve_init:
        if not args.service_rc:
            parser.error("--preserve-init requires --service-rc")
        with open(args.service_rc, "rb") as stream:
            service_rc = stream.read()
        patched_ramdisk = add_service(ramdisk_cpio, logger, service_rc)
    else:
        patched_ramdisk = replace_init(ramdisk_cpio, logger, args.drop_entry)
    if not args.no_debug_ramdisk and not args.preserve_init:
        patched_ramdisk = add_debug_ramdisk(patched_ramdisk, logger)
    patched_boot = build_boot(image, patched_ramdisk, compress=compress,
                              keep_extra_tail=args.keep_extra_tail,
                              max_size=args.max_size)
    with open(args.output, "wb") as stream:
        stream.write(patched_boot)
    print(f"original ramdisk: {len(ramdisk)} bytes ({'gzip' if is_gzip(ramdisk) else 'raw cpio'})")
    print(f"logger ramdisk:   {len(patched_ramdisk)} bytes")
    print(f"ramdisk format:   {'gzip' if compress else 'raw'}")
    print(f"original boot:    {len(image)} bytes")
    print(f"logger boot:      {len(patched_boot)} bytes")
    print(f"debug_ramdisk:    {'yes' if not args.no_debug_ramdisk else 'no'}")


if __name__ == "__main__":
    main()
