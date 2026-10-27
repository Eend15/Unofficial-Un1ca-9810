"""Accept the Note9 EJ-PN960 built-in pen firmware in AirCommand's setup sequence.

v8 logs: GATT connects, encrypts, discovers services, reads battery and enables
button notifications, then BuiltInSpenDriver.readFirmwareVersion reports
"STICKY S-Pen detected. fwVer=23" and returns NOT_SUPPORTED for fw <= 0x30.
That threshold targets later built-in pens; the Note9 pen ships fw 23. On
N960F/N960N only, skip that rejection and continue the original success path.
No result code, address, bond or GATT behaviour is fabricated.
"""
from pathlib import Path
import re,sys
MARK='UN1CA_CROWN_LEGACY_FW_V9'
# 0x9 is what the earlier unscoped customize.sh sed left in a cached decode.
ANCHOR=re.compile(r'(\n[ \t]*const/16 v3, 0x(?:30|9)\n(?:[ \t]*\n)*[ \t]*if-gt v0, v3, :cond_10\n)')
GUARD='''
    # UN1CA_CROWN_LEGACY_FW_V9: Note9 EJ-PN960 firmware is <= 0x30 by design.
    const-string v3, "ro.bootloader"
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, "N960F"
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :unica_legacy_fw_ok
    const-string v4, "N960N"
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :unica_legacy_fw_check
    :unica_legacy_fw_ok
    const-string v3, "UN1CA-SPen"
    const-string v4, "v9 Note9 built-in pen legacy firmware accepted"
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    goto :cond_10
    :unica_legacy_fw_check'''
def patch(src):
 if MARK in src:
  if src.count(MARK)!=1 or ':unica_legacy_fw_check' not in src:raise ValueError('Partial legacy firmware patch')
  return src
 if 'readFirmwareVersion : STICKY S-Pen detected. fwVer=' not in src:raise ValueError('Unsupported driver source')
 m=list(ANCHOR.finditer(src))
 if len(m)!=1:raise ValueError('Firmware threshold anchor not unique')
 i=m[0].start(1)
 return src[:i]+GUARD+src[i:]
if __name__=='__main__':
 p=Path(sys.argv[1]);p.write_text(patch(p.read_text()))
