#!/usr/bin/env python3
"""Serialize KernelSU late-start triggers once per boot, retaining both boot paths."""
from pathlib import Path
import sys
OLD='\t"    exec u:r:" KERNEL_SU_DOMAIN ":s0 root -- " KSUD_PATH " services\\n"'
NEW='\t"    exec u:r:" KERNEL_SU_DOMAIN ":s0 root -- /system/bin/sh -c \\"if mkdir /dev/.ksu_services_once 2>/dev/null; then " KSUD_PATH " services || { rmdir /dev/.ksu_services_once; exit 1; }; fi\\"\\n"'
def transform(text):
    if text.count(NEW)==2 and OLD not in text:return text
    if text.count(OLD)!=2:raise ValueError('Unknown KernelSU service trigger layout')
    return text.replace(OLD,NEW)
if __name__=='__main__':
    p=Path(sys.argv[1])/'KernelSU-Next/kernel/runtime/ksud_integration.c'
    p.write_text(transform(p.read_text()));print('PASS atomic per-boot late-start guard')
