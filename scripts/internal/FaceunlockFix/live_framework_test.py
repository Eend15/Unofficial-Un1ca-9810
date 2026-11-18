#!/usr/bin/env python3
"""Read-only FaceunlockFix preflight and guarded rollback helpers.

**DIRECT LIVE PREVIEW INSTALLATION IS RETIRED AFTER THE OCT 13 BOOTLOOP.**
An older preview builder silently dropped two preexisting framework classes
(SdkLevel and UnboundedSdkLevel) while replacing classes.dex. Real ART
verification of one HAL method was not enough to make a new framework safe.
Use an independently reviewed full ROM assembly that preserves the Android16
DEX graph and a recovery-capable build/test plan. No automatic deployment.

If Android system_server bootloops, root ADB in recovery/bootloader may still
be used to restore /data/local/tmp/noble_services_original.jar manually.
"""
from __future__ import annotations

from hashlib import sha256
from pathlib import Path
import argparse
import json
import subprocess
import zipfile

from stage_runtime import AUDIT

PREVIEW = AUDIT / "buildtools/services_noble_merged_preview.jar"
CALLBACKSAFE_PREVIEW = AUDIT / "buildtools/services_faceunlockfix_preview.jar"
BACKUP_DIR = AUDIT / "noble_framework_live_backup"
BACKUP_FILE = BACKUP_DIR / "services.original.jar"
LAST_KNOWN_GOOD_FILE = BACKUP_DIR / "services.faceunlockfix-last-known-good.jar"
BACKUP_MANIFEST = BACKUP_DIR / "manifest.json"
SYSTEM = "/system/framework/services.jar"
DEVICE_BACKUP = "/data/local/tmp/noble_services_original.jar"
DEVICE_LAST_KNOWN_GOOD = "/data/local/tmp/faceunlockfix_last_known_good.jar"
DEVICE_PREVIEW = "/data/local/tmp/noble_services_preview_candidate.jar"
BROKEN_CONTROL = "/data/local/tmp/noble_services_preview_candidate.jar"
FIXED_CONTROL = "/data/local/tmp/noble_services_fixed_preview.jar"
ART_SMOKE = "/data/local/tmp/noble_dexverify_smoke.jar"
ART_MAIN = "com.un1ca.face.smoketest.DexVerifySmoke"
DEVICE_CALLBACKSAFE = "/data/local/tmp/noble_services_callbacksafe_candidate.jar"
GATE = "persist.sys.un1ca.noble_face.experimental"


def adb(*args: str, check: bool = True) -> str:
    result = subprocess.run(["adb", *args], capture_output=True, check=False)
    if check and result.returncode:
        raise RuntimeError(f"adb {' '.join(args)}: "
                           f"{result.stderr.decode(errors='replace')}")
    return result.stdout.decode(errors="replace").strip()


def shell(*args: str, check: bool = True) -> str:
    return adb("shell", *args, check=check)


def digest(path: Path) -> str:
    return sha256(path.read_bytes()).hexdigest()


def preflight(preview: Path = CALLBACKSAFE_PREVIEW) -> str:
    if shell("id", "-u") != "0":
        raise RuntimeError("Root ADB shell required")
    if shell("getprop", "ro.product.device") != "star2lte":
        raise RuntimeError("Only SM-G965F Exynos9810 star2lte may be tested")
    if shell("getenforce") != "Enforcing":
        raise RuntimeError("SELinux must remain enforcing")
    if shell("getprop", "ro.debuggable") != "1":
        raise RuntimeError("Experimental Noble gate needs debuggable ROM")
    if shell("getprop", "init.svc.vendor.face_hal") != "running":
        raise RuntimeError("Original vendor face HAL must remain available")
    if shell("getprop", "sys.boot_completed") != "1":
        raise RuntimeError("Device must be fully booted before FaceunlockFix upgrade")
    if not preview.is_file():
        raise RuntimeError("Compiled source-only services preview missing")
    with zipfile.ZipFile(preview) as jar:
        if jar.testzip() is not None:
            raise RuntimeError("Offline services preview checksum error")
        expected = {"classes.dex", "classes2.dex", "classes3.dex"}
        if not expected.issubset(jar.namelist()):
            raise RuntimeError("Missing original dex split or Noble extra dex")
        core = jar.read("classes.dex") + jar.read("classes2.dex")
        bridge = jar.read("classes3.dex")
        if preview == PREVIEW:
            required_probe = b"Lcom/android/server/biometrics/sensors/face/noble/NobleFaceProbe;"
            required_hidl = b"Lcom/android/server/biometrics/sensors/face/noble/NobleFaceHidl;"
        else:
            required_probe = b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;"
            required_hidl = b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixHidl;"
        if required_probe not in core:
            raise RuntimeError("No verified HIDL FaceunlockFix selection hook")
        if required_hidl not in bridge:
            raise RuntimeError("Genuine face Java HIDL implementation missing")
        if b"Lcom/samsung/android/bio/face/IFaceDaemon;" not in bridge:
            raise RuntimeError("Genuine native Binder interface missing")
    current = shell("sha256sum", SYSTEM).split()[0]
    print(f"PASS active services.jar {current}")
    print(f"PASS opt-in 3-dex services.jar preview {digest(preview)}")
    return current


def writable() -> None:
    shell("mount", "-o", "remount,rw", "/")


def readonly() -> None:
    shell("mount", "-o", "remount,ro", "/")


def write_system(src: str, expected: str) -> None:
    shell("cp", src, SYSTEM)
    shell("chown", "root:root", SYSTEM)
    shell("chmod", "0644", SYSTEM)
    shell("restorecon", "-F", SYSTEM)
    actual = shell("sha256sum", SYSTEM).split()[0]
    if actual != expected:
        raise RuntimeError(f"Live framework readback failed: {actual} != {expected}")


def check_art_negative_control() -> None:
    """A real ART verifier regression test; unlike D8 syntax checking, this
    INVOKES the method in isolated app_process with a null dummy receiver.
    Fail closed unless the known bootlooping build fails with the exact
    VerifyError and the corrected build gets past verification.
    """
    if shell("sha256sum", FIXED_CONTROL).split()[0] != digest(PREVIEW):
        raise RuntimeError("ART-tested corrected DEX differs from package preview")
    broken = shell("sha256sum", BROKEN_CONTROL).split()[0]
    if broken == digest(PREVIEW):
        raise RuntimeError("Broken ART control unexpectedly matches corrected preview")

    def verify(jar: str) -> str:
        return shell("env", "CLASSPATH=" + ART_SMOKE + ":" + jar,
                     "/system/bin/app_process", "/system/bin", ART_MAIN,
                     check=False)

    old = verify(BROKEN_CONTROL)
    corrected = verify(FIXED_CONTROL)
    if "java.lang.VerifyError:" not in old or "register v1 has type Undefined" not in old:
        raise RuntimeError("Old known-broken DEX did not trigger expected ART verifier")
    if "PASS Android ART executed method until expected null receiver field" not in corrected:
        raise RuntimeError(f"Corrected DEX did not pass real ART verifier: {corrected}")
    print("PASS negative control: old services.jar rejected by genuine Android ART")
    print("PASS corrected control: patched HIDL getter passes genuine Android ART")


def _archived_unsafe_apply(*, retry: bool = False) -> None:
    original_hash = preflight(PREVIEW)
    check_art_negative_control()
    if original_hash == digest(PREVIEW):
        raise RuntimeError("Preview is already live; refusing duplicate deployment")
    if retry:
        if not BACKUP_MANIFEST.is_file() or not BACKUP_FILE.is_file():
            raise RuntimeError("Retry requires both the manifest and intact original backup")
        metadata = json.loads(BACKUP_MANIFEST.read_text())
        if metadata.get("device") != "star2lte" or original_hash != metadata.get("original"):
            raise RuntimeError("Retry refused: running services.jar is not the original")
        if digest(BACKUP_FILE) != metadata["original"]:
            raise RuntimeError("Retry refused: original local framework backup changed")
        if metadata.get("preview") == digest(PREVIEW):
            raise RuntimeError("Retry refused: preview has not changed since failed trial")
    elif BACKUP_MANIFEST.exists():
        raise RuntimeError("Existing framework trial; use --retry only after restoring original")
    shell("setprop", GATE, "0")
    if shell("getprop", GATE) != "0":
        raise RuntimeError("Failed to turn off experimental selection before installing")
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    if not retry:
        adb("pull", SYSTEM, str(BACKUP_FILE))
    if digest(BACKUP_FILE) != original_hash:
        raise RuntimeError("Backup and active services.jar checksums differ")
    adb("push", str(BACKUP_FILE), DEVICE_BACKUP)
    if shell("sha256sum", DEVICE_BACKUP).split()[0] != original_hash:
        raise RuntimeError("Device fallback backup checksum mismatch")
    if retry:
        metadata.setdefault("previous_previews", []).append(metadata["preview"])
        metadata["preview"] = digest(PREVIEW)
    else:
        metadata = {"device": "star2lte", "original": original_hash,
                    "preview": digest(PREVIEW), "fallback": DEVICE_BACKUP,
                    "opt_in_default": False}
    BACKUP_MANIFEST.write_text(json.dumps(metadata, indent=2))
    adb("push", str(PREVIEW), DEVICE_PREVIEW)
    writable()
    try:
        write_system(DEVICE_PREVIEW, metadata["preview"])
    finally:
        readonly()
    print("PASS trial services.jar applied with EXPERIMENTAL PROPERTY OFF.")
    print("The original vendor face HAL remains active until separately enabled.")
    print("Reboot and verify normal boot before enabling the Noble gate.")


def apply(*, retry: bool = False) -> None:
    """Never allow historical source-preview injection back onto the device."""
    raise RuntimeError(
        "BLOCKED: direct services.jar install/retry is retired following "
        "FaceunlockFix system_server bootloop. Only a full ROM build with "
        "class-preserving integration and verified recovery may be tested.")


def restore() -> None:
    if not BACKUP_MANIFEST.exists():
        raise RuntimeError("Missing local framework backup manifest")
    manifest = json.loads(BACKUP_MANIFEST.read_text())
    if manifest["device"] != "star2lte":
        raise RuntimeError("Backup manifest device mismatch")
    if shell("id", "-u") != "0" or shell("getprop", "ro.product.device") != "star2lte":
        raise RuntimeError("Wrong device or non-root shell")
    shell("setprop", GATE, "0")
    original = manifest["original"]
    if digest(BACKUP_FILE) != original:
        raise RuntimeError("Corrupt local backup; no replacement attempted")
    adb("push", str(BACKUP_FILE), DEVICE_BACKUP)
    if shell("sha256sum", DEVICE_BACKUP).split()[0] != original:
        raise RuntimeError("Corrupt on-device fallback; no replacement attempted")
    writable()
    try:
        write_system(DEVICE_BACKUP, original)
    finally:
        readonly()
    print("PASS original services.jar restored; gate disabled.")
    print("Reboot/restart system_server for restored DEX to become active.")


def _archived_unsafe_upgrade_callbacksafe() -> None:
    """ARCHIVED: old direct framework replacement path; never invoke.

    Only update the known, verified pre-callback-lockfix preview after ART
    verifies the new candidate on-device. User/ROM authorization is required
    separately; this function never reboots or enrolls a user automatically.
    """
    current = preflight(CALLBACKSAFE_PREVIEW)
    if shell("getprop", "sys.boot_completed") != "1":
        raise RuntimeError("Device did not finish booting; refusing framework update")
    if not BACKUP_MANIFEST.is_file() or not BACKUP_FILE.is_file():
        raise RuntimeError("Original framework backup/manifest missing")
    manifest = json.loads(BACKUP_MANIFEST.read_text())
    if manifest.get("device") != "star2lte" or current != manifest.get("preview"):
        raise RuntimeError("Current framework differs from recorded preview")
    # A DEX may pass isolated ART smoke and still fail during system_server
    # startup. A previously bootlooping jar must not be installed twice.
    if digest(CALLBACKSAFE_PREVIEW) in manifest.get("failed_previews", []):
        raise RuntimeError("Candidate is quarantined after live bootloop; refuse redeployment")
    original = manifest.get("original")
    if digest(BACKUP_FILE) != original:
        raise RuntimeError("Original framework backup hash mismatch")
    if shell("sha256sum", DEVICE_BACKUP).split()[0] != original:
        raise RuntimeError("Original on-device fallback hash mismatch")
    scheduler = shell("dumpsys", "face")
    if "Current operation: null" not in scheduler or "Pending operations: 0" not in scheduler:
        raise RuntimeError("Face enrollment/authentication is active; refusing framework update")
    if shell("getprop", "init.svc.noble_faced") != "running":
        raise RuntimeError("Existing real face daemon is not running")
    with zipfile.ZipFile(CALLBACKSAFE_PREVIEW) as jar:
        if jar.testzip() is not None or not {
                "classes.dex", "classes2.dex", "classes3.dex"
        }.issubset(jar.namelist()):
            raise RuntimeError("Invalid callback-safe multidex preview")
        if b"Lcom/samsung/android/bio/face/IFaceDaemon;" not in jar.read("classes3.dex"):
            raise RuntimeError("Noble Binder contract absent from bridge dex")
    expected = digest(CALLBACKSAFE_PREVIEW)
    if expected == current:
        raise RuntimeError("Callback-safe candidate is already active")

    # The untouched original vendor services.jar is retained separately. Also
    # preserve the CURRENT, demonstrably working FaceunlockFix framework:
    # reverting to stock with the gate OFF can discard face metadata on boot.
    if LAST_KNOWN_GOOD_FILE.is_file():
        if digest(LAST_KNOWN_GOOD_FILE) != current:
            raise RuntimeError("Last-known-good file belongs to another build; refuse overwrite")
    else:
        adb("pull", SYSTEM, str(LAST_KNOWN_GOOD_FILE))
    if digest(LAST_KNOWN_GOOD_FILE) != current:
        raise RuntimeError("Last-known-good framework backup checksum mismatch")
    adb("push", str(LAST_KNOWN_GOOD_FILE), DEVICE_LAST_KNOWN_GOOD)
    if shell("sha256sum", DEVICE_LAST_KNOWN_GOOD).split()[0] != current:
        raise RuntimeError("Last-known-good on-device backup checksum mismatch")
    adb("push", str(CALLBACKSAFE_PREVIEW), DEVICE_CALLBACKSAFE)
    if shell("sha256sum", DEVICE_CALLBACKSAFE).split()[0] != expected:
        raise RuntimeError("Candidate upload checksum mismatch")
    verified = shell(
        "env", "CLASSPATH=" + ART_SMOKE + ":" + DEVICE_CALLBACKSAFE,
        "/system/bin/app_process", "/system/bin", ART_MAIN, check=False)
    if "PASS Android ART executed method until expected null receiver field" not in verified:
        raise RuntimeError("Device ART verifier rejected candidate: " + verified)
    # Disable opt-in while changing framework bytes. Restore original opt-in
    # BEFORE reboot, since a full gate-OFF boot could prune enrolled metadata.
    previous_gate = shell("getprop", GATE)
    if previous_gate not in ("0", "1"):
        raise RuntimeError("Unexpected FaceunlockFix opt-in state")
    shell("setprop", GATE, "0")
    try:
        if shell("getprop", GATE) != "0":
            raise RuntimeError("Failed to disable FaceunlockFix opt-in before upgrade")
        writable()
        try:
            try:
                write_system(DEVICE_CALLBACKSAFE, expected)
            except Exception:
                # Restore the previously working image while the mount is still
                # writable. Do not reboot a partially copied system_server jar.
                write_system(DEVICE_LAST_KNOWN_GOOD, current)
                raise
        finally:
            readonly()
    finally:
        # Restore the property even if remount or write verification failed.
        # A later gate-OFF boot can affect existing face enrollment metadata.
        shell("setprop", GATE, previous_gate)
    manifest.setdefault("previous_previews", []).append(current)
    manifest["preview"] = expected
    BACKUP_MANIFEST.write_text(json.dumps(manifest, indent=2))
    print("PASS FaceunlockFix services.jar updated; stock AND live-working backups intact.")
    print("Opt-in restored to its prior state. Reboot with gate ON to preserve enrollment.")


def upgrade_callbacksafe() -> None:
    """Fail-closed: source-only preview is NOT suitable for live replacement.

    An October 13 preview bootlooped after losing framework classes.dex class
    definitions. A clean isolated ART smoke cannot establish boot safety.
    Always stage into the actual, complete ROM build and validate the result.
    """
    raise RuntimeError(
        "BLOCKED: live preview services.jar upgrades caused an Android bootloop. "
        "The reference preview dropped existing SdkLevel and UnboundedSdkLevel "
        "framework classes. Use only the gated built-in FaceunlockFix full-ROM "
        "integration and verified recovery, never direct preview replacement.")


def restore_last_known_good() -> None:
    """Restore prior FUNCTIONAL FaceunlockFix framework, not old vendor stock.

    Unlike --restore, this retains the known-good opt-in FaceProvider and
    avoids booting with the donor HAL that can prune face enrollment metadata.
    It can run with a root ADB shell during a failed Android framework boot.
    """
    if not BACKUP_MANIFEST.is_file() or not LAST_KNOWN_GOOD_FILE.is_file():
        raise RuntimeError("Missing local FaceunlockFix rollback and manifest")
    metadata = json.loads(BACKUP_MANIFEST.read_text())
    if metadata.get("device") != "star2lte":
        raise RuntimeError("Rollback manifest is not for star2lte")
    prior = digest(LAST_KNOWN_GOOD_FILE)
    if prior not in metadata.get("previous_previews", []):
        raise RuntimeError("Prior working FaceunlockFix image is not in trial history")
    if shell("id", "-u") != "0" or shell("getprop", "ro.product.device") != "star2lte":
        raise RuntimeError("Rollback requires original rooted S9+ star2lte")
    if shell("getenforce") != "Enforcing":
        raise RuntimeError("This helper requires booted Enforcing Android; use mounted recovery for TWRP")
    current = shell("sha256sum", SYSTEM).split()[0]
    if current == prior:
        failed = metadata.get("preview")
        if failed != prior:
            metadata.setdefault("failed_previews", [])
            if failed not in metadata["failed_previews"]:
                metadata["failed_previews"].append(failed)
            metadata["preview"] = prior
            BACKUP_MANIFEST.write_text(json.dumps(metadata, indent=2))
        print("PASS previously working FaceunlockFix image already installed")
        return
    if current != metadata.get("preview"):
        raise RuntimeError("Unexpected currently installed services.jar; refusing overwrite")
    adb("push", str(LAST_KNOWN_GOOD_FILE), DEVICE_LAST_KNOWN_GOOD)
    if shell("sha256sum", DEVICE_LAST_KNOWN_GOOD).split()[0] != prior:
        raise RuntimeError("Rollback upload failed SHA readback")
    shell("setprop", GATE, "0")
    try:
        writable()
        try:
            write_system(DEVICE_LAST_KNOWN_GOOD, prior)
        finally:
            readonly()
    finally:
        # Original face templates must not encounter a boot with the gate OFF.
        shell("setprop", GATE, "1")
    metadata.setdefault("previous_previews", []).append(current)
    metadata.setdefault("failed_previews", [])
    if current not in metadata["failed_previews"]:
        metadata["failed_previews"].append(current)
    metadata["preview"] = prior
    BACKUP_MANIFEST.write_text(json.dumps(metadata, indent=2))
    print("PASS prior working FaceunlockFix framework restored; gate ON")
    print("Restart Android only after readback and security checks")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--preflight", action="store_true")
    mode.add_argument("--apply", action="store_true")
    mode.add_argument("--retry", action="store_true",
                      help="Only after restoring previous original, with ART regression proof")
    mode.add_argument("--restore", action="store_true")
    mode.add_argument("--upgrade-callbacksafe", action="store_true",
                      help="DISABLED: old direct preview replacement bootlooped; ROM integration only")
    mode.add_argument("--restore-last-known-good", action="store_true",
                      help="Restore earlier live-working FaceunlockFix, preserving face metadata")
    args = parser.parse_args()
    if args.preflight:
        preflight(CALLBACKSAFE_PREVIEW)
    elif args.apply:
        apply()
    elif args.retry:
        apply(retry=True)
    elif args.restore:
        restore()
    elif args.restore_last_known_good:
        restore_last_known_good()
    else:
        upgrade_callbacksafe()
