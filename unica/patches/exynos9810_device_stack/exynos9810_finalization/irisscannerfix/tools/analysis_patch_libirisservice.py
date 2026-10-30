"""Adapt the Android 8-era libIrisService.so to One UI 8's libgui ABI.

libIrisService feeds IR frames through a BufferQueue and was compiled against old
libgui headers. One UI 8 changed three things it hardcodes:
  * IGraphicBufferConsumer gained virtual methods, so every vtable slot moved;
  * BufferItem grew (0xd8 -> 0x128) and mFrameNumber/mSlot moved by +0x10;
  * ConsumerListener gained callbacks (handled at runtime by libiris_a10_shim,
    reached by renaming the ProxyConsumerListener constructor import).
Every rewritten instruction is checked against the exact old instruction first.
"""
import re
import struct
import subprocess
import sys
from pathlib import Path

# IGraphicBufferConsumer slot: old -> One UI 8 (from both libgui builds' own call sites)
CONSUMER_SLOTS = {0x20: 0x30, 0x38: 0x48, 0x40: 0x50, 0x48: 0x58, 0x58: 0x70,
                  0x68: 0x88, 0x70: 0x98, 0x78: 0xa0, 0x88: 0xb0}
# indirect consumer calls (address of the blr) and the slot they use today
CONSUMER_CALLS = {
    # IrisDisplayManager
    0x194bc: 0x70, 0x19514: 0x58, 0x19528: 0x88, 0x1953c: 0x78, 0x19550: 0x68, 0x1961c: 0x40,
    0x1af38: 0x38, 0x1b014: 0x38, 0x1b1f8: 0x20, 0x1b49c: 0x38, 0x1b820: 0x48,
    # IrisWorkerManager
    0x1de1c: 0x70, 0x1de34: 0x58, 0x1de4c: 0x78, 0x1de60: 0x88, 0x1de74: 0x68, 0x1df40: 0x40,
    0x1fb88: 0x38, 0x1fc60: 0x38, 0x1fe40: 0x20, 0x200cc: 0x38, 0x20498: 0x48,
}
# BufferItem* field accesses: mFrameNumber 0x98 -> 0xa8, mSlot 0xa0 -> 0xb0
ITEM_FIELDS = {0x98: 0xa8, 0xa0: 0xb0}
ITEM_FIELD_SITES = [
    0x1b260, 0x1b27c, 0x1b304, 0x1b34c, 0x1b444, 0x1b474,   # IrisDisplayManager getBufferItem/getBuffer/releaseBuffer
    0x1fea8, 0x1fec4, 0x1ff40, 0x1ff8c, 0x2007c, 0x200b0,   # IrisWorkerManager
]
# One UI 8's IGraphicBufferConsumer is a plain RefBase (no longer a binder
# IInterface with a virtual RefBase base), so its vtable has no virtual-base
# offset at vptr-0x18. Where the managers drop their sp<IGraphicBufferConsumer>
# the RefBase adjustment must be 0 instead of that (garbage) slot.
CONSUMER_REFBASE_SITES = [0x190a8, 0x1db50]   # ~IrisDisplayManager, ~IrisWorkerManager
# stack BufferItem in renderThread: [0x58, 0x130) moves to the grown frame
RENDER_THREADS = ["_ZN7android18IrisDisplayManager12renderThreadEiiPNS_4TaskE",
                  "_ZN7android17IrisWorkerManager12renderThreadEiiPNS_4TaskE"]
ITEM_OLD, ITEM_OLD_SIZE, ITEM_GROW = 0x58, 0xd8, 0x140
PROXY_OLD = b"_ZN7android11BufferQueue21ProxyConsumerListenerC1ERKNS_2wpINS_16ConsumerListenerEEE\0"
PROXY_NEW = b"_ZU7android11BufferQueue21ProxyConsumerListenerC1ERKNS_2wpINS_16ConsumerListenerEEE\0"

INS = re.compile(r"^\s*([0-9a-f]+):\s+([0-9a-f]{8})\s+(.*)$")


def disasm(path, start=None, stop=None):
    args = ["llvm-objdump", "-d", path]
    if start is not None:
        args += [f"--start-address={start:#x}", f"--stop-address={stop:#x}"]
    out = subprocess.run(args, capture_output=True, text=True, check=True).stdout
    return [(int(m.group(1), 16), int(m.group(2), 16), " ".join(m.group(3).split()))
            for m in map(INS.match, out.splitlines()) if m]


def symbol(path, name):
    out = subprocess.run(["nm", "-D", "-S", "--defined-only", path], capture_output=True, text=True, check=True).stdout
    for l in out.splitlines():
        p = l.split()
        if len(p) == 4 and p[3] == name:
            return int(p[0], 16), int(p[1], 16)
    raise ValueError(f"missing symbol {name}")


def file_offset(path):
    out = subprocess.run(["readelf", "-lW", path], capture_output=True, text=True, check=True).stdout
    segs = []
    for line in out.splitlines():
        f = line.split()
        if f and f[0] == "LOAD":
            segs.append((int(f[2], 16), int(f[1], 16), int(f[4], 16)))
    def conv(va):
        for v, o, s in segs:
            if v <= va < v + s:
                return o + va - v
        raise ValueError(f"{va:#x} not in a LOAD segment")
    return conv


# ---- AArch64 immediate re-encoding (only the forms the audit found) ----

def set_uimm(word, off):
    """LDR/STR/LDRSW (unsigned immediate)."""
    if (word & 0x3B000000) != 0x39000000:
        raise ValueError(f"not a ldr/str uimm: {word:#010x}")
    size, opc = word >> 30, (word >> 22) & 3
    scale = 2 if (size == 2 and opc == 2) else size
    if off % (1 << scale) or (off >> scale) > 0xfff:
        raise ValueError(f"offset {off:#x} not encodable (scale {scale})")
    return (word & ~(0xfff << 10)) | ((off >> scale) << 10)


def get_uimm(word):
    size, opc = word >> 30, (word >> 22) & 3
    scale = 2 if (size == 2 and opc == 2) else size
    return ((word >> 10) & 0xfff) << scale


def set_pair(word, off):
    """LDP/STP (signed offset), GPR."""
    if (word & 0x3BC00000) not in (0x29000000, 0x29400000):
        raise ValueError(f"not a ldp/stp offset form: {word:#010x}")
    scale = 8 if word >> 31 else 4
    if off % scale or not (-64 <= off // scale <= 63):
        raise ValueError(f"pair offset {off:#x} not encodable")
    return (word & ~(0x7f << 15)) | (((off // scale) & 0x7f) << 15)


def set_add(word, imm):
    if (word & 0xFF800000) not in (0x91000000, 0xD1000000):
        raise ValueError(f"not add/sub imm: {word:#010x}")
    if imm > 0xfff:
        raise ValueError("add imm too large")
    return (word & ~(0xfff << 10)) | (imm << 10)


def remap_item(rel):
    if rel < 0x98:
        return rel
    if rel < ITEM_OLD_SIZE:
        return rel + 0x10
    raise ValueError(f"access past the old BufferItem: +{rel:#x}")


def plan(path):
    edits = {}
    # 1. consumer vtable slots
    for blr, old in CONSUMER_CALLS.items():
        ins = disasm(path, blr - 16, blr + 4)
        if not ins or ins[-1][2] != "blr x8":
            raise ValueError(f"{blr:#x}: not the expected blr x8")
        cand = [(a, w, t) for a, w, t in ins[:-1] if re.fullmatch(r"ldr x8, \[x8, #0x[0-9a-f]+\]", t)]
        if len(cand) != 1 or get_uimm(cand[0][1]) != old:
            raise ValueError(f"{blr:#x}: expected ldr x8, [x8, #{old:#x}], found {cand}")
        edits[cand[0][0]] = set_uimm(cand[0][1], CONSUMER_SLOTS[old])
    # 2. BufferItem* fields
    for site in ITEM_FIELD_SITES:
        (a, w, t), = disasm(path, site, site + 4)
        off = get_uimm(w)
        if off not in ITEM_FIELDS or "sp" in t:
            raise ValueError(f"{site:#x}: unexpected field access {t}")
        edits[a] = set_uimm(w, ITEM_FIELDS[off])
    # 2b. RefBase adjustment of the consumer when it is released
    for site in CONSUMER_REFBASE_SITES:
        (a, w, t), = disasm(path, site, site + 4)
        m = re.fullmatch(r"ldur x(\d+), \[x(\d+), #-0x18\]", t)
        if not m or m.group(1) != m.group(2):
            raise ValueError(f"{site:#x}: expected ldur xN, [xN, #-0x18], found {t}")
        edits[a] = 0xAA1F03E0 | int(m.group(1))   # mov xN, xzr
    # 3. stack BufferItem in renderThread
    for name in RENDER_THREADS:
        start, size = symbol(path, name)
        ins = disasm(path, start, start + size)
        m = re.fullmatch(r"sub sp, sp, #(0x[0-9a-f]+)", ins[0][2])
        if not m:
            raise ValueError(f"{name}: unexpected prologue {ins[0][2]}")
        frame = int(m.group(1), 16)
        base = frame  # the new BufferItem home, above the saved registers
        edits[ins[0][0]] = set_add(ins[0][1], frame + ITEM_GROW)
        moved = 0
        for a, w, t in ins[1:]:
            if re.fullmatch(rf"add sp, sp, #{frame:#x}", t):
                edits[a] = set_add(w, frame + ITEM_GROW)
                continue
            if re.search(r"\b(ldur|stur)\b.*\[sp", t):
                raise ValueError(f"{a:#x}: unscaled sp access {t}")
            m = re.fullmatch(r"add x\d+, sp, #(0x[0-9a-f]+)", t)
            if m and ITEM_OLD <= int(m.group(1), 16) < ITEM_OLD + ITEM_OLD_SIZE:
                rel = int(m.group(1), 16) - ITEM_OLD
                if rel:
                    raise ValueError(f"{a:#x}: pointer into the middle of the BufferItem: {t}")
                edits[a] = set_add(w, base)
                moved += 1
                continue
            m = re.search(r"\[sp, #(0x[0-9a-f]+)\]$", t)
            if m and ITEM_OLD <= int(m.group(1), 16) < ITEM_OLD + ITEM_OLD_SIZE:
                new = base + remap_item(int(m.group(1), 16) - ITEM_OLD)
                edits[a] = set_pair(w, new) if re.match(r"(ldp|stp) ", t) else set_uimm(w, new)
                moved += 1
        if moved < 20:
            raise ValueError(f"{name}: only {moved} BufferItem accesses found")
    return edits


def main(src, dst):
    data = bytearray(Path(src).read_bytes())
    conv = file_offset(src)
    edits = plan(src)
    for va, word in edits.items():
        struct.pack_into("<I", data, conv(va), word)
    if data.count(PROXY_OLD) != 1:
        raise ValueError("ProxyConsumerListener import name not found exactly once")
    i = data.index(PROXY_OLD)
    data[i:i + len(PROXY_NEW)] = PROXY_NEW
    Path(dst).write_bytes(data)
    print(f"libIrisService: {len(edits)} instructions re-targeted, ProxyConsumerListener routed through the shim")


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])
