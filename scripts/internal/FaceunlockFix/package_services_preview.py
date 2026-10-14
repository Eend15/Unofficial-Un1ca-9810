#!/usr/bin/env python3
"""Build an OFFLINE-ONLY services.jar with a genuine FaceunlockFix probe.

Never writes to active ROM sources, system partitions or ADB. The input must
be a separately reassembled Android16 services.jar preview containing the
source-staged, debug-property-gated HidlToAidlSensorAdapter patch. Prefer one
extra dex containing both the Java adapter and original Samsung Binder
interfaces assembled from their original smali. A separate Binder dex remains
supported for independent protocol auditing.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re
import zipfile

ROOT = Path(__file__).resolve().parents[3]
AUDIT = ROOT / "out/target/star2lte/face-audit"
DEX = re.compile(r"classes(\d*)\.dex")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--services", type=Path, required=True)
    parser.add_argument("--bridge-dex-zip", type=Path, required=True)
    parser.add_argument("--native-binder-dex", type=Path,
                        help="Optional separate original Binder dex; omit when merged in bridge dex")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    root = AUDIT.resolve(strict=True)
    dest = args.output.resolve(strict=False)
    if not dest.is_relative_to(root):
        raise SystemExit("Output must remain in offline face-audit")
    inputs = {args.services.resolve(), args.bridge_dex_zip.resolve()}
    if args.native_binder_dex is not None:
        inputs.add(args.native_binder_dex.resolve())
    if dest in inputs:
        raise SystemExit("Refusing to overwrite input")

    with zipfile.ZipFile(args.services) as services, \
         zipfile.ZipFile(args.bridge_dex_zip) as java_bridge:
        original_entry_count = len(services.namelist())
        main_dexes = [name for name in services.namelist() if DEX.fullmatch(name)]
        if not main_dexes or len(main_dexes) != len(set(main_dexes)):
            raise SystemExit("Invalid original services dex split")
        assert len(main_dexes) >= 2, "Expected Android16 multidex services.jar"
        original = b"".join(services.read(name) for name in main_dexes)
        if b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;" not in original:
            raise SystemExit("services.jar lacks the opt-in FaceunlockFixProbe method hook")

        bridge = java_bridge.read("classes.dex")
        binder = (args.native_binder_dex.read_bytes()
                  if args.native_binder_dex is not None else bridge)
        for class_name in (b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixHidl;",
                           b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixNativeBackend;",
                           b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;"):
            if class_name not in bridge:
                raise SystemExit(f"Missing adapter class: {class_name!r}")
        for class_name in (b"Lcom/samsung/android/bio/face/IFaceDaemon;",
                           b"Lcom/samsung/android/bio/face/IFaceDaemonCallback;"):
            if class_name not in binder:
                raise SystemExit(f"Missing original Samsung Binder interface {class_name!r}")

        highest = max(int(match.group(1) or 1) for name in main_dexes
                      if (match := DEX.fullmatch(name)))
        out_bridge = f"classes{highest + 1}.dex"
        out_binder = (f"classes{highest + 2}.dex"
                      if args.native_binder_dex is not None else None)
        with zipfile.ZipFile(dest, "w") as output:
            for name in services.namelist():
                output.writestr(services.getinfo(name), services.read(name))
            output.writestr(out_bridge, bridge, compress_type=zipfile.ZIP_STORED)
            if out_binder is not None:
                output.writestr(out_binder, binder, compress_type=zipfile.ZIP_STORED)

    with zipfile.ZipFile(dest) as final:
        if final.testzip() is not None:
            raise SystemExit("CRC check failed on offline services preview")
        assert len(final.namelist()) == original_entry_count + (2 if out_binder else 1)
    print(f"PASS offline-only {dest.relative_to(ROOT)}")
    if out_binder:
        print(f"PASS Android16 services dex preserved; appended {out_bridge} (Java), "
              f"{out_binder} (original Samsung Binder)")
    else:
        print(f"PASS Android16 services dex preserved; appended {out_bridge} "
              "(Java adapter + original Samsung Binder methods)")
    print("NOT DEPLOYABLE: native init, SELinux and actual enrolled biometric not validated")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
