"""Mark AirCommand's Crown service filter as a Samsung passive filter.

The Note9 EJ-PN960 pen sends connectable ADV_IND reports and ignores SCAN_REQ.
Android 16's LeScanningReassembler holds a scannable report until its scan
response arrives, so an active scan never delivers the pen. Samsung's stack
already handles this: ScanFilter.Builder.semEnablePassiveScan() registers the
service UUID, and the native advertising handler then sets
ignore_scan_responses for legacy reports that carry that 128-bit UUID. This
lets discovery work for every Note9, including pens without a saved address.
Only the Crown service filter branch from patch_crown_scan.py is touched.
"""
from pathlib import Path
import sys

MARKER = "UN1CA_CROWN_PASSIVE_SCAN_V10"
ANCHOR = ("    invoke-virtual {p6, v0}, Landroid/bluetooth/le/ScanFilter$Builder;"
          "->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;\n")
INSERT = f"""
    # {MARKER}: Crown never answers SCAN_REQ; deliver its ADV_IND directly.
    invoke-virtual {{p6}}, Landroid/bluetooth/le/ScanFilter$Builder;->semEnablePassiveScan()Landroid/bluetooth/le/ScanFilter$Builder;
"""
SIGNATURE = ".method public final a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V"
SERVICE_FILTER = "UN1CA_CROWN_DISCOVERY_SERVICE_FILTER"


def patch(text: str) -> str:
    start = text.index(SIGNATURE)
    end = text.index(".end method", start)
    body = text[start:end]
    if MARKER in body:
        if body.count(MARKER) != 1 or body.count(ANCHOR + INSERT) != 1:
            raise ValueError("Crown passive scan marker exists but the call is incomplete")
        return text
    if SERVICE_FILTER not in body:
        raise ValueError("Crown service filter patch must be applied first")
    if body.count(ANCHOR) != 1:
        raise ValueError("Crown service filter call differs from audited donor")
    return text[:start] + body.replace(ANCHOR, ANCHOR + INSERT, 1) + text[end:]


if __name__ == "__main__":
    path = Path(sys.argv[1])
    path.write_text(patch(path.read_text()))
