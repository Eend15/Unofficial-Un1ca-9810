#!/usr/bin/env python3
"""Patch an FDT property without passing the tree through dtc.

The Samsung exynos9810 idle-ip property contains NUL-separated strings.
Recompiling it with dtc changes those bytes and can make the kernel reset
before init. This tool edits the property payload in the binary FDT and
keeps the surrounding DTBH container byte-for-byte unchanged where possible.
"""

import argparse
import struct
import sys


FDT_MAGIC = 0xD00DFEED
DTBH_MAGIC = b"DTBH"
ANDROID_MAGIC = b"ANDROID!"
FDT_BEGIN_NODE = 1
FDT_END_NODE = 2
FDT_PROP = 3
FDT_NOP = 4
FDT_END = 9


def align4(value):
    return (value + 3) & ~3


def u32be(data, offset):
    return struct.unpack_from(">I", data, offset)[0]


def u32le(data, offset):
    return struct.unpack_from("<I", data, offset)[0]


def cstring(data, start, limit):
    end = data.find(b"\0", start, limit)
    if end < 0:
        raise ValueError("unterminated FDT string")
    return data[start:end].decode("ascii", "replace"), end + 1


class FdtView:
    def __init__(self, data, offset):
        if offset < 0 or offset + 40 > len(data):
            raise ValueError("FDT header is outside the input")
        if u32be(data, offset) != FDT_MAGIC:
            raise ValueError("invalid FDT magic at 0x%x" % offset)
        self.data = data
        self.offset = offset
        self.total = u32be(data, offset + 4)
        self.struct_offset = u32be(data, offset + 8)
        self.strings_offset = u32be(data, offset + 12)
        self.strings_size = u32be(data, offset + 32)
        self.struct_size = u32be(data, offset + 36)
        if self.total < 40 or offset + self.total > len(data):
            raise ValueError("FDT totalsize is outside the input")
        if self.struct_offset + self.struct_size > self.total:
            raise ValueError("FDT structure block is outside the tree")
        if self.strings_offset + self.strings_size > self.total:
            raise ValueError("FDT strings block is outside the tree")

    def property(self, node_name, property_name):
        base = self.offset
        pos = base + self.struct_offset
        end = pos + self.struct_size
        depth = 0
        nodes = []
        found = None

        while pos + 4 <= end:
            token = u32be(self.data, pos)
            pos += 4
            if token == FDT_BEGIN_NODE:
                name, name_end = cstring(self.data, pos, end)
                pos = base + align4(name_end - base)
                nodes.append(name)
                depth += 1
            elif token == FDT_END_NODE:
                if depth <= 0 or not nodes:
                    raise ValueError("malformed FDT node stack")
                nodes.pop()
                depth -= 1
            elif token == FDT_PROP:
                if pos + 8 > end:
                    raise ValueError("truncated FDT property header")
                length = u32be(self.data, pos)
                name_offset = u32be(self.data, pos + 4)
                payload_start = pos + 8
                payload_end = payload_start + length
                if payload_end > end:
                    raise ValueError("truncated FDT property payload")
                string_start = base + self.strings_offset + name_offset
                string_limit = base + self.strings_offset + self.strings_size
                prop, _ = cstring(self.data, string_start, string_limit)
                if nodes and nodes[-1] == node_name and prop == property_name:
                    found = (payload_start, length, align4(payload_end))
                pos = base + align4(payload_end - base)
            elif token == FDT_NOP:
                continue
            elif token == FDT_END:
                break
            else:
                raise ValueError("unknown FDT token 0x%x at 0x%x" %
                                 (token, pos - 4))

        if found is None:
            raise ValueError("FDT property %s/%s was not found" %
                             (node_name, property_name))
        return found


def find_fdt(data, explicit_offset=None):
    if explicit_offset is not None:
        return FdtView(data, explicit_offset), explicit_offset, None, None

    candidates = []
    if data.startswith(b"\xd0\x0d\xfe\xed"):
        candidates.append(0)
    if data.startswith(DTBH_MAGIC):
        candidates.append(0x800)
    if data.startswith(ANDROID_MAGIC):
        container = data.find(DTBH_MAGIC)
        if container >= 0:
            candidates.append(container + 0x800)
    search = 0
    while True:
        found = data.find(b"\xd0\x0d\xfe\xed", search)
        if found < 0:
            break
        candidates.append(found)
        search = found + 1

    checked = set()
    for offset in candidates:
        if offset in checked:
            continue
        checked.add(offset)
        try:
            view = FdtView(data, offset)
        except ValueError:
            continue
        container = None
        container_end = None
        if offset >= 0x800 and data[offset - 0x800:offset - 0x800 + 4] == DTBH_MAGIC:
            container = offset - 0x800
            marker = data.find(b"SEANDROIDENFORCE", offset + view.total)
            container_end = marker if marker >= 0 else len(data)
        return view, offset, container, container_end
    raise ValueError("no valid FDT found")


def patch_fdt(data, current_view, current_prop, reference_payload):
    base = current_view.offset
    payload_start, old_length, payload_end = current_prop
    new_payload = bytes(reference_payload)
    new_end = payload_start + len(new_payload)
    new_padded_end = base + align4(new_end - base)
    old_padded_length = payload_end - payload_start
    replacement = new_payload + b"\0" * (new_padded_end - new_end)
    fdt = bytearray(data[base:payload_start] + replacement +
                    data[payload_end:base + current_view.total])
    delta = len(replacement) - old_padded_length

    struct.pack_into(">I", fdt, 4, current_view.total + delta)
    struct.pack_into(">I", fdt, 12, current_view.strings_offset + delta)
    struct.pack_into(">I", fdt, 36, current_view.struct_size + delta)
    struct.pack_into(">I", fdt, payload_start - base - 8, len(new_payload))
    return fdt, delta, old_length, len(new_payload)


def patch_file(input_path, reference_path, output_path, fdt_offset=None,
               region_size=None, node_name="exynos-powermode",
               property_name="idle-ip"):
    source = open(input_path, "rb").read()
    reference = open(reference_path, "rb").read()
    current, current_offset, container, container_end = find_fdt(source, fdt_offset)
    reference_view, _, _, _ = find_fdt(reference)
    current_prop = current.property(node_name, property_name)
    reference_prop = reference_view.property(node_name, property_name)
    reference_payload = reference[reference_prop[0]:reference_prop[0] + reference_prop[1]]

    patched_fdt, delta, old_len, new_len = patch_fdt(
        source, current, current_prop, reference_payload)
    old_fdt = source[current_offset:current_offset + current.total]

    if container is None:
        result = source[:current_offset] + patched_fdt + source[current_offset + current.total:]
    else:
        if region_size is not None:
            requested_end = container + 0x800 + region_size
            if container_end is None or requested_end > container_end:
                container_end = requested_end
            if container_end > len(source):
                source += b"\0" * (container_end - len(source))
        capacity_end = container_end if container_end is not None else len(source)
        capacity = capacity_end - current_offset
        if len(patched_fdt) > capacity:
            raise ValueError("patched FDT exceeds DTB region: 0x%x > 0x%x" %
                             (len(patched_fdt), capacity))
        discarded = source[current_offset + current.total:capacity_end]
        needed_tail = capacity - len(patched_fdt)
        if len(discarded) > needed_tail and any(discarded[needed_tail:]):
            raise ValueError("DTB region contains non-zero bytes after FDT; refusing to truncate")
        region = patched_fdt + discarded
        region = region[:capacity].ljust(capacity, b"\0")
        result = bytearray(source[:current_offset] + region + source[capacity_end:])

        if region_size is not None:
            struct.pack_into("<I", result, container + 0x24, region_size)

    open(output_path, "wb").write(result)
    patched, _, _, _ = find_fdt(result, current_offset)
    patched_prop = patched.property(node_name, property_name)
    payload = result[patched_prop[0]:patched_prop[0] + patched_prop[1]]
    if not payload.startswith(b"10510000.pwm\0"):
        raise ValueError("patched idle-ip does not start with the expected NUL-separated entry")
    if b"14230000.adc\0" not in payload or b"\x0c230000.adc" in payload:
        raise ValueError("patched idle-ip still has the malformed ADC entry")
    if b"erofs" not in result.lower():
        raise ValueError("EROFS marker disappeared from the patched image")
    print("patched %s -> %s" % (input_path, output_path))
    print("FDT offset=0x%x old_total=0x%x new_total=0x%x delta=%d" %
          (current_offset, current.total, patched.total, delta))
    print("idle-ip length=%d -> %d; DTBH=%s; region=%s" %
          (old_len, new_len, "yes" if container is not None else "no",
           hex(region_size) if region_size is not None else "unchanged"))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("input")
    parser.add_argument("reference")
    parser.add_argument("output")
    parser.add_argument("--fdt-offset", type=lambda value: int(value, 0))
    parser.add_argument("--region-size", type=lambda value: int(value, 0),
                        help="set DTBH entry size (for example 0x4b000)")
    parser.add_argument("--node", default="exynos-powermode")
    parser.add_argument("--property", dest="property_name", default="idle-ip")
    args = parser.parse_args()
    try:
        patch_file(args.input, args.reference, args.output,
                   args.fdt_offset, args.region_size, args.node,
                   args.property_name)
    except (OSError, ValueError, struct.error) as exc:
        print("fdt_edit.py: %s" % exc, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
