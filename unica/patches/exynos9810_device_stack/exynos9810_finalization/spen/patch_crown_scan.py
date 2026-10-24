"""Restore stock N960F service filtering for unknown-pen discovery.

The modern manufacturer filter cannot match Crown, but replacing it with null
also removes stock's service filter. Keep explicit filters/address reconnects.
Only the crownlte finalizer invokes this transformation.
"""
from pathlib import Path
import sys

UUID = "EDFEC62E-9910-0BAC-5241-D8BDA6932A2F"
MARKER = "UN1CA_CROWN_DISCOVERY_SERVICE_FILTER"
OLD = """    :cond_8
    const/4 p4, 0x0

    :goto_0"""
NEW = f"""    :cond_8
    # {MARKER}: stock Crown UUID, never the modern SPEN02 filter.
    invoke-static {{p5}}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :unica_crown_address_only

    const-string v0, "{UUID}"

    invoke-static {{v0}}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {{p6, v0}}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    const/4 p4, 0x1

    goto :goto_0

    :unica_crown_address_only
    const/4 p4, 0x0

    :goto_0"""


def patch(text: str) -> str:
    signature = ".method public final a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V"
    start = text.index(signature)
    end = text.index(".end method", start)
    body = text[start:end]
    if MARKER in body:
        if body.count(NEW) != 1:
            raise ValueError("Crown discovery marker exists but filter is incomplete")
        return text
    if body.count(OLD) != 1:
        raise ValueError("Crown null-filter branch differs from audited donor")
    return text[:start] + body.replace(OLD, NEW, 1) + text[end:]


if __name__ == "__main__":
    path = Path(sys.argv[1])
    path.write_text(patch(path.read_text()))
