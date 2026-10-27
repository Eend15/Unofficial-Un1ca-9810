"""Note9-only scan compatibility candidate; physical connection unverified.

The returned HCI capture contains connectable Crown advertisements while the
vendor mode100/setUuid scanner reports zero results. For Crown only, use the
public low-latency scan settings. Preserve UUID/address filters and all GATT,
charge timing, timeout and callback code. Other pen UUIDs use the donor path.
"""
from pathlib import Path
import sys
MARKER='UN1CA_CROWN_STANDARD_SCAN_V6'
ANCHOR="""    const/16 p4, 0x64

    invoke-virtual {p1, p4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;"""
INSERT="""    # UN1CA_CROWN_STANDARD_SCAN_V6: public scan path for the Crown service only.
    if-eqz p3, :unica_vendor_scan
    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;
    move-result-object p4
    const-string p5, "edfec62e-9910-0bac-5241-d8bda6932a2f"
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p4
    if-eqz p4, :unica_vendor_scan
    const/4 p4, 0x2
    invoke-virtual {p1, p4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    goto :cond_b
    :unica_vendor_scan
"""
def patch(text):
    if MARKER in text:
        if INSERT+ANCHOR not in text:raise ValueError('Incomplete Crown scanner patch')
        return text
    if text.count(ANCHOR)!=1 or text.count(':cond_b\n')<1:
        raise ValueError('Unsupported scan method')
    # The goto must land right after the vendor scan block; apktool label
    # numbering differs between decodes, so refuse anything else.
    tail=text[text.index(ANCHOR)+len(ANCHOR):]
    vendor=tail.find('semSetCustomScanParams');target=tail.find('\n    :cond_b\n')
    if vendor<0 or target<vendor or tail.find('\n    :cond_',0,vendor)>=0 or tail.find('\n    :cond_',vendor)!=target:
        raise ValueError('Crown scan goto target is not after the vendor scan block')
    return text.replace(ANCHOR,INSERT+ANCHOR,1)
if __name__=='__main__':
    p=Path(sys.argv[1]);p.write_text(patch(p.read_text()))
