"""Give the Android 10 irisd room for Android 16's larger android::Parcel.

irisd was built when sizeof(Parcel) was 0x68. Its binder proxies keep `reply` at
sp+0x08 and `data` at sp+0x70, so One UI 8's 0x70-byte Parcel constructor writes
8 bytes past each object and smashes the stack canary. For every such function
this grows the frame by 0x80 and moves `data` into the new space at the top of
the frame; the 8 bytes `reply` now overflows into are unused.
"""
import re
import struct
import subprocess
import sys
from pathlib import Path

GROW = 0x80
DATA_OLD = 0x70
OLD_PARCEL = 0x68
# llvm-objdump prints AArch64 instructions as one 32-bit word: "a084: a90e5ffc  stp ..."
INS = re.compile(r"^\s*([0-9a-f]+):\s+([0-9a-f]{8})\s+(.*)$")


def disasm(path):
    out = subprocess.run(["llvm-objdump", "-d", path], capture_output=True, text=True, check=True).stdout
    res = []
    for line in out.splitlines():
        m = INS.match(line)
        if m:
            res.append((int(m.group(1), 16), int(m.group(2), 16), " ".join(m.group(3).split())))
    return res


def text_offset(path):
    """File offset of a vaddr in the executable segment (irisd maps .text 1:1 at offset 0)."""
    out = subprocess.run(["readelf", "-lW", path], capture_output=True, text=True, check=True).stdout
    for line in out.splitlines():
        f = line.split()
        if f and f[0] == "LOAD" and "E" in f[6:8]:
            return int(f[2], 16) - int(f[1], 16)  # vaddr - offset
    raise ValueError("no executable LOAD segment")


def add_imm(rd, rn, imm):
    return 0x91000000 | (imm << 10) | (rn << 5) | rd


def sub_imm(rd, rn, imm):
    return 0xD1000000 | (imm << 10) | (rn << 5) | rd


def find_sites(ins):
    """Functions that construct a Parcel at sp+0x70 and sp+0x08."""
    def boundary(text):
        return text == "ret" or text.startswith("udf") or text.startswith("b ") and "@plt" in text

    sites = []
    for i, (addr, _, text) in enumerate(ins):
        if "ParcelC1Ev@plt" not in text:
            continue
        # The function starts right after the previous function's ret/udf.
        j = i
        while j > 0 and not boundary(ins[j - 1][2]):
            j -= 1
        if not re.match(r"sub sp, sp, #0x[0-9a-f]+$", ins[j][2]):
            raise ValueError(f"{addr:#x}: Parcel in a function without a plain sub-sp prologue ({ins[j][2]})")
        start = j
        if sites and sites[-1][0] == start:
            continue
        k = i
        while k < len(ins) and ins[k][2] != "ret":
            k += 1
        # include the stack-check tail (bl __stack_chk_fail; udf) after the last ret
        while k + 1 < len(ins) and not re.match(r"sub sp, sp|stp x29, x30, \[sp, #-", ins[k + 1][2]) \
                and not ins[k][2].startswith("udf"):
            k += 1
        sites.append((start, k + 1))  # [start, end)
    return sites


def plan(ins, start, end):
    frame = int(re.match(r"sub sp, sp, #(0x[0-9a-f]+)", ins[start][2]).group(1), 16)
    edits = {ins[start][0]: sub_imm(31, 31, frame + GROW)}
    data_refs = 0
    for addr, word, text in ins[start + 1:end]:
        m = re.match(r"add sp, sp, #(0x[0-9a-f]+)$", text)
        if m:
            if int(m.group(1), 16) != frame:
                raise ValueError(f"{addr:#x}: epilogue does not match frame {frame:#x}")
            edits[addr] = add_imm(31, 31, frame + GROW)
            continue
        m = re.match(r"add x(\d+), sp, #(0x[0-9a-f]+)$", text)
        if m and int(m.group(2), 16) == DATA_OLD:
            edits[addr] = add_imm(int(m.group(1)), 31, frame)
            data_refs += 1
            continue
        # nothing else may touch the old data slot
        for off in re.findall(r"\[sp, #(0x[0-9a-f]+)\]", text) + re.findall(r"add x\d+, sp, #(0x[0-9a-f]+)$", text):
            o = int(off, 16)
            if DATA_OLD <= o < DATA_OLD + OLD_PARCEL:
                raise ValueError(f"{addr:#x}: unexpected access to the data Parcel slot: {text}")
        if re.search(r"\bsp\b", text) and ("sub sp" in text or "mov sp" in text):
            raise ValueError(f"{addr:#x}: unexpected stack adjustment: {text}")
    if data_refs < 3 or frame + GROW > 0xfff:
        raise ValueError(f"{ins[start][0]:#x}: unexpected layout (refs={data_refs}, frame={frame:#x})")
    return edits


def main(path, out):
    data = bytearray(Path(path).read_bytes())
    ins = disasm(path)
    delta = text_offset(path)
    sites = find_sites(ins)
    total = {}
    for start, end in sites:
        total.update(plan(ins, start, end))
    for addr, word in total.items():
        off = addr - delta
        struct.pack_into("<I", data, off, word)
    Path(out).write_bytes(data)
    print(f"irisd: widened {len(sites)} binder proxy frames ({len(total)} instructions)")
    return len(sites)


if __name__ == "__main__":
    n = main(sys.argv[1], sys.argv[2])
    if len(sys.argv) > 3 and n != int(sys.argv[3]):
        sys.exit(f"expected {sys.argv[3]} functions, patched {n}")
