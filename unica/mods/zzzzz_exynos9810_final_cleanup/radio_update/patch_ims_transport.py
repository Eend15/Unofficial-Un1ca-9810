#!/usr/bin/env python3
"""Select Samsung's existing HIDL IMS dispatcher for the bundled 9810 RIL."""
from pathlib import Path
import re
import sys

def patch(path: Path) -> None:
    text = path.read_text()
    pattern = r"\.method public static getIpcDispatcher\(I\)Lcom/sec/internal/ims/core/iil/IpcDispatcher;\n.*?\n\.end method"
    replacement = """.method public static getIpcDispatcher(I)Lcom/sec/internal/ims/core/iil/IpcDispatcher;
    .locals 1

    # The bundled N770F/9810 modem exposes ISehChannel 2.0, regardless of
    # ro.vendor.api_level (33 is required by other Android 16 compatibility).
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;-><init>(I)V
    return-object v0
.end method"""
    result, count = re.subn(pattern, lambda _: replacement, text, flags=re.S)
    if count != 1:
        raise ValueError(f"Expected one IMS dispatcher factory, found {count}: {path}")
    path.write_text(result)

if __name__ == "__main__":
    patch(Path(sys.argv[1]))
