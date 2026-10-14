#!/usr/bin/env python3
"""Safely install/restore the isolated native Noble runtime for a live smoke test.

Only the explicit --apply command modifies the S9+; --preflight is read-only.
This script does NOT install services.jar, enable the Noble property, change
SELinux enforcement, reboot, enroll a face or replace the existing vendor HAL.
The two stock vendor init files are backed up byte-for-byte and rewritten ONLY
to comment out their duplicate, unused legacy 'service faced' definitions.

--restore restores every original file (including originals missing at
installation time). The local backup in ignored face-audit must be retained.
Always complete and verify --preflight before applying.
"""
from __future__ import annotations

import argparse
from hashlib import sha256
import json
from pathlib import Path
import re
import subprocess

from stage_runtime import AUDIT, OLD_STANZA, OUTPUT, ROOT, VENDOR_RC_FILES

BACKUP = AUDIT / "noble_live_backup"
META = BACKUP / "native-test-manifest.json"
STAGE = OUTPUT
SYSTEM_PATHS = (
    "system/bin/faced",
    "system/lib64/nobleface/face.noble.so",
    "system/lib64/nobleface/libFaceService.so",
    "system/lib64/nobleface/libsecfr_engine.so",
    "system/lib64/nobleface/libnoble_face_hwredirect.so",
    "system/etc/init/faceunlockfixd.rc",
)
ALL = SYSTEM_PATHS + VENDOR_RC_FILES


def adb(*arguments: str, check: bool = True, binary: bool = False):
    result = subprocess.run(["adb", *arguments], capture_output=True, check=False)
    if check and result.returncode:
        raise RuntimeError(f"adb {' '.join(arguments)}: "
                           f"{result.stderr.decode(errors='replace')}")
    return result if binary else result.stdout.decode(errors="replace").strip()


def shell(*arguments: str, check: bool = True):
    return adb("shell", *arguments, check=check)


def device_path(relative: str) -> str:
    return "/" + relative


def exist(path: str) -> bool:
    return subprocess.run(["adb", "shell", "test", "-e", path],
                          capture_output=True, check=False).returncode == 0


def digest(data: bytes) -> str:
    return sha256(data).hexdigest()


def preflight() -> None:
    connected = [line.split()[0] for line in adb("devices").splitlines()[1:]
                 if "\tdevice" in line]
    if len(connected) != 1:
        raise RuntimeError("Exactly one authorized ADB device required")
    if shell("id", "-u") != "0":
        raise RuntimeError("Root ADB shell required")
    if shell("getprop", "ro.product.device") != "star2lte":
        raise RuntimeError("Refusing to touch anything except star2lte")
    if shell("getenforce") != "Enforcing":
        raise RuntimeError("SELinux Enforcing required")
    if shell("getprop", "sys.boot_completed") != "1":
        raise RuntimeError("Device must be fully booted")
    if shell("getprop", "init.svc.vendor.face_hal") != "running":
        raise RuntimeError("Original face HAL must be running")
    for path in SYSTEM_PATHS:
        data = (STAGE / path).read_bytes()
        if not data or (path.endswith(".so") and data[:4] != b"\x7fELF"):
            raise RuntimeError(f"Invalid source runtime artifact: {path}")
        installed = exist(device_path(path))
        print(f"{'EXISTS' if installed else 'NEW   '} {device_path(path)}"
              f" <- SHA256 {digest(data)[:20]}")
    for path in VENDOR_RC_FILES:
        remote = device_path(path)
        if not exist(remote):
            raise RuntimeError(f"Missing original vendor init file: {remote}")
        # Root-accessible source only: read-only before --apply.
        text = shell("cat", remote)
        if len(OLD_STANZA.findall(text)) != 1:
            raise RuntimeError(f"Expected exactly one old 'faced' stanza: {remote}")
        print(f"EXISTS {remote}: one old auto-start 'faced' stanza")
    print("PASS native-only live preflight. --apply requires explicit choice.")


def backup_originals() -> dict:
    if META.exists():
        raise RuntimeError("Prior native backup exists; restore it before another --apply")
    BACKUP.mkdir(parents=True, exist_ok=True)
    records = []
    for relative in ALL:
        remote = device_path(relative)
        present = exist(remote)
        record = {"path": relative, "exists": present}
        if present:
            target = BACKUP / "original" / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            adb("pull", remote, str(target))
            record["sha256"] = digest(target.read_bytes())
            record["backup"] = str(target.relative_to(BACKUP))
        records.append(record)
    plan = {"device": "star2lte", "paths": records,
            "property_name": "persist.sys.un1ca.noble_face.experimental",
            "installed_by": "native-only staging; no services.jar patch"}
    META.write_text(json.dumps(plan, indent=2))
    print(f"BACKUP {META}")
    return plan


def remount(rw: bool) -> None:
    flag = "rw" if rw else "ro"
    shell("mount", "-o", f"remount,{flag}", "/")
    shell("mount", "-o", f"remount,{flag}", "/vendor")


def push_bytes(data: bytes, remote: str, mode: str) -> None:
    temp = BACKUP / "temp_stage.bin"
    temp.write_bytes(data)
    android_tmp = "/data/local/tmp/noble_native_install_tmp"
    adb("push", str(temp), android_tmp)
    shell("mkdir", "-p", str(Path(remote).parent))
    shell("cp", android_tmp, remote)
    shell("chown", "root:root", remote)
    shell("chmod", mode, remote)
    shell("restorecon", "-F", remote)
    actual = shell("sha256sum", remote).split()[0]
    if actual != digest(data):
        raise RuntimeError(f"Device readback mismatch: {remote}")
    print(f"PASS installed {remote}: SHA256 {actual[:20]}")


def comment_duplicate_stanza(data: bytes, path: str) -> bytes:
    text = data.decode()
    if len(OLD_STANZA.findall(text)) != 1:
        raise RuntimeError(f"Incorrect faced stanza count in {path}")
    patched = OLD_STANZA.sub(
        lambda match: "\n".join("# noble-native-optin: disabled " + line.strip()
                                for line in match.group(0).splitlines()),
        text, count=1)
    if re.search(r"(?m)^[ \t]*service[ \t]+faced[ \t]", patched):
        raise RuntimeError(f"Competing faced service remains: {path}")
    return patched.encode()


def apply() -> None:
    preflight()
    original = backup_originals()
    originals = {entry["path"]: entry for entry in original["paths"]}
    remount(True)
    try:
        for path in VENDOR_RC_FILES:
            record = originals[path]
            saved = (BACKUP / record["backup"]).read_bytes()
            patched = comment_duplicate_stanza(saved, path)
            push_bytes(patched, device_path(path), "0644")
        for path in SYSTEM_PATHS:
            mode = "0755" if path == "system/bin/faced" else "0644"
            push_bytes((STAGE / path).read_bytes(), device_path(path), mode)
    finally:
        remount(False)
    print("PASS runtime files staged on device, property NOT enabled.")
    print("The current vendor HIDL HAL remains the active face provider.")
    print("Reboot separately to parse the new disabled init definition.")


def restore() -> None:
    if not META.exists():
        raise RuntimeError("Cannot restore: native backup manifest missing")
    manifest = json.loads(META.read_text())
    if manifest["device"] != "star2lte":
        raise RuntimeError("Backup targets the wrong device")
    if shell("id", "-u") != "0" or shell("getprop", "ro.product.device") != "star2lte":
        raise RuntimeError("Restore requires rooted star2lte")
    # Disable experimental start before touching the service files.
    shell("setprop", "persist.sys.un1ca.noble_face.experimental", "0")
    shell("stop", "noble_faced", check=False)
    remount(True)
    try:
        for entry in reversed(manifest["paths"]):
            remote = device_path(entry["path"])
            if entry["exists"]:
                source = BACKUP / entry["backup"]
                if digest(source.read_bytes()) != entry["sha256"]:
                    raise RuntimeError(f"Corrupt original backup {entry['path']}")
                push_bytes(source.read_bytes(), remote,
                           "0755" if entry["path"] == "system/bin/faced" else "0644")
            elif exist(remote):
                shell("rm", "-f", remote)
                print(f"RESTORED previous absence of {remote}")
    finally:
        remount(False)
    print("PASS original native/vendor files restored (new init is cached until reboot).")
    print("After verification, reboot to apply restored init definitions.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    operation = parser.add_mutually_exclusive_group(required=True)
    operation.add_argument("--preflight", action="store_true")
    operation.add_argument("--apply", action="store_true")
    operation.add_argument("--restore", action="store_true")
    args = parser.parse_args()
    if args.preflight:
        preflight()
    elif args.apply:
        apply()
    else:
        restore()
