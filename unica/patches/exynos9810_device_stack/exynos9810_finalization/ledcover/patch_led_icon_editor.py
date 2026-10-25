#!/usr/bin/env python3
"""Port the stock S9 LED Icon Editor off removed NfcAdapter.sem* methods.

The One UI 8 samsungnfc Binder service still supports the legacy LED protocol.
Our bundled Samsung LedCoverService already uses its ISamsungNfcAdapter ABI.
Patch the editor's three legacy NFC calls to the same ABI; do not change NFC
framework jars, cover data, or the app's other behavior.
"""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path


METHODS = {
    "semStartLedCoverMode()[B": ("start", "(Landroid/nfc/NfcAdapter;)[B", 3),
    "semStopLedCoverMode()Z": ("stop", "(Landroid/nfc/NfcAdapter;)Z", 4),
    "semTransceiveDataWithLedCover([B)[B": (
        "transceive",
        "(Landroid/nfc/NfcAdapter;[B)[B",
        7,
    ),
}
BRIDGE_CLASS = "Lcom/samsung/android/app/ledcover/common/NfcLegacyBridge;"
SERVICE_CLASSES = ("a.smali", "a$a.smali", "a$a$a.smali")


def patch(apk_dir: Path, asset_dir: Path) -> None:
    if not (apk_dir / "apktool.yml").is_file():
        raise RuntimeError(f"Expected a decoded APK directory: {apk_dir}")

    smali_roots = sorted(d for d in apk_dir.iterdir() if d.is_dir() and d.name.startswith("smali"))
    if not smali_roots:
        raise RuntimeError("Decoded LED Icon Editor has no smali classes")

    old_totals = {method: 0 for method in METHODS}
    new_totals = {method: 0 for method in METHODS}
    changed = {}
    for root in smali_roots:
        for path in root.rglob("*.smali"):
            source = path.read_text(encoding="utf-8")
            updated = source
            for old, (new, desc, _) in METHODS.items():
                invocation = re.compile(
                    r"invoke-virtual\s+\{([^{}]*)\},\s+"
                    + re.escape("Landroid/nfc/NfcAdapter;->" + old)
                )

                def replace(match: re.Match[str]) -> str:
                    return f"invoke-static {{{match.group(1)}}}, {BRIDGE_CLASS}->{new}{desc}"

                updated, count = invocation.subn(replace, updated)
                old_totals[old] += count
                new_totals[old] += updated.count(f"{BRIDGE_CLASS}->{new}{desc}")
            if updated != source:
                changed[path] = updated

    expected = {method: spec[2] for method, spec in METHODS.items()}
    if old_totals == expected and new_totals == expected:
        pass  # known stock Samsung S9 LED Icon Editor (2.2.42)
    elif all(count == 0 for count in old_totals.values()) and new_totals == expected:
        pass  # already patched; safe on resumed builds
    else:
        raise RuntimeError(
            f"LED Icon Editor NFC callsites changed: original={old_totals}, "
            f"patched={new_totals}, expected={expected}"
        )

    bridge_src = asset_dir / "NfcLegacyBridge.smali"
    if not bridge_src.is_file() or BRIDGE_CLASS not in bridge_src.read_text(encoding="utf-8"):
        raise RuntimeError("Missing or mismatched NFC bridge smali")
    for cls in SERVICE_CLASSES:
        src = asset_dir / "a" / "a" / "a" / "a" / "a" / cls
        if not src.is_file():
            raise RuntimeError(f"Missing tested samsungnfc AIDL proxy: {src}")

    # Make the change only after all expected callsites and assets are validated.
    for path, contents in changed.items():
        path.write_text(contents, encoding="utf-8")

    dest = smali_roots[0] / "com/samsung/android/app/ledcover/common/NfcLegacyBridge.smali"
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(bridge_src, dest)
    for cls in SERVICE_CLASSES:
        dest = smali_roots[0] / "a/a/a/a/a" / cls
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(asset_dir / "a/a/a/a/a" / cls, dest)

    print(f"LED Icon Editor: bridged {sum(expected.values())} Samsung NFC callsites")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit("Usage: patch_led_icon_editor.py <decoded-apk-dir> <bridge-assets-dir>")
    try:
        patch(Path(sys.argv[1]), Path(sys.argv[2]))
    except (OSError, RuntimeError) as exc:
        sys.exit(f"LED Icon Editor NFC bridge failed: {exc}")
