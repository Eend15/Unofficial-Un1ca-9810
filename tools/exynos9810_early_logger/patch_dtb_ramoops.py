#!/usr/bin/env python3
"""Inject a ramoops node + bootargs into an FDT and splice it back into a
boot/recovery image, keeping the DTB size byte-identical (zero-padded) so the
boot image layout is unchanged.

Usage:
  patch_dtb_ramoops.py image.img fdt_offset fdt_size out.img [--header-cmdline "text"]
"""
import struct
import subprocess
import sys
import tempfile
import os

DTC = "dtc"

RAMOOPS_ADDR = 0xFED10000
RAMOOPS_SIZE = 0x8000
RECORD_SIZE = 0x2000
CONSOLE_SIZE = 0x4000

RAMOOPS_PARAMS = (
    " loglevel=7"
    " androidboot.debug_ramdisk=1"
    " ramoops.mem_address=0x%x"
    " ramoops.mem_size=0x%x"
    " ramoops.record_size=0x%x"
    " ramoops.console_size=0x%x"
) % (RAMOOPS_ADDR, RAMOOPS_SIZE, RECORD_SIZE, CONSOLE_SIZE)

RAMOOPS_NODE = """
		ramoops@%x {
			compatible = "ramoops";
			reg = <0x00 0x%x 0x%x>;
			record-size = <0x%x>;
			console-size = <0x%x>;
			pmsg-size = <0x0000>;
			ftrace-size = <0x0000>;
			ecc-size = <0x0000>;
		};
""" % (RAMOOPS_ADDR, RAMOOPS_ADDR, RAMOOPS_SIZE, RECORD_SIZE, CONSOLE_SIZE)


def run(cmd, **kw):
    p = subprocess.run(cmd, capture_output=True, text=True, **kw)
    if p.returncode != 0:
        raise RuntimeError("cmd failed: %s\n%s" % (" ".join(cmd), p.stderr))
    return p.stdout


def decompile(dtb_path):
    return run([DTC, "-I", "dtb", "-O", "dts", dtb_path])


def compile_dts(dts_text):
    fd, tmp = tempfile.mkstemp(suffix=".dts")
    os.write(fd, dts_text.encode())
    os.close(fd)
    out = tempfile.mktemp(suffix=".dtb")
    try:
        p = subprocess.run([DTC, "-I", "dts", "-O", "dtb", tmp, "-o", out],
                           capture_output=True, text=True)
        if p.returncode != 0:
            raise RuntimeError("dtc failed:\n%s" % p.stderr)
        return open(out, "rb").read()
    finally:
        os.unlink(tmp)
        if os.path.exists(out):
            os.unlink(out)


def patch_fdt(dtb_data):
    fd, tmp = tempfile.mkstemp(suffix=".dtb")
    os.write(fd, dtb_data)
    os.close(fd)
    try:
        dts = decompile(tmp)
    finally:
        os.unlink(tmp)

    orig_total = struct.unpack_from(">I", dtb_data, 4)[0]

    if "ramoops@%x" % RAMOOPS_ADDR not in dts:
        marker = (
            "\t\t\t\treg = <0x00 0xfed18000 0x800000>;\n"
            "\t\t\t};\n"
            "\t\t};\n"
        )
        assert marker in dts, "exynos_ss log_kevents block not found"
        dts = dts.replace(marker, marker.rstrip("\n") + RAMOOPS_NODE, 1)

    bootargs_line = [l for l in dts.splitlines() if "bootargs" in l]
    assert bootargs_line, "no bootargs line"
    line = bootargs_line[0]
    if "ramoops.mem_address" not in line:
        assert line.rstrip().endswith('";'), "unexpected bootargs line: %r" % line
        new_line = line.rstrip()[:-2] + RAMOOPS_PARAMS + '";'
        dts = dts.replace(line, new_line, 1)

    new_dtb = compile_dts(dts)
    return new_dtb


def splice(image, fdt_offset, fdt_size, out, header_cmdline=None, grow_to=None):
    data = bytearray(open(image, "rb").read())
    assert data[:8] == b"ANDROID!", "not an Android boot image"
    old_fdt = bytes(data[fdt_offset:fdt_offset + fdt_size])
    new_fdt = patch_fdt(old_fdt)
    if len(new_fdt) < fdt_size:
        new_fdt = new_fdt + b"\x00" * (fdt_size - len(new_fdt))
    if len(new_fdt) > fdt_size:
        if grow_to is None:
            raise RuntimeError("patched FDT grew beyond original: %d > %d"
                               % (len(new_fdt), fdt_size))
        if len(new_fdt) > grow_to:
            raise RuntimeError("patched FDT grew beyond %d (got %d)"
                               % (grow_to, len(new_fdt)))
        end_old = fdt_offset + fdt_size
        gap_keep = (fdt_offset + grow_to) - end_old
        data = data[:fdt_offset] + new_fdt + data[end_old + (len(new_fdt) - fdt_size):]
    else:
        data[fdt_offset:fdt_offset + fdt_size] = new_fdt
    if header_cmdline is not None:
        data[0x40:0x40 + 512] = header_cmdline.encode().ljust(512, b"\x00")
    open(out, "wb").write(data)
    print("patched %s -> %s (FDT@%d, %d bytes; ramoops@0x%x 0x%x)"
          % (image, out, fdt_offset, fdt_size, RAMOOPS_ADDR, RAMOOPS_SIZE))


def main():
    if len(sys.argv) < 5:
        print(__doc__)
        sys.exit(1)
    image, fdt_offset, fdt_size, out = sys.argv[1:5]
    hc = None
    grow_to = None
    if "--header-cmdline" in sys.argv:
        hc = sys.argv[sys.argv.index("--header-cmdline") + 1]
    if "--grow-to" in sys.argv:
        grow_to = int(sys.argv[sys.argv.index("--grow-to") + 1])
    splice(image, int(fdt_offset), int(fdt_size), out, hc, grow_to)


if __name__ == "__main__":
    main()
