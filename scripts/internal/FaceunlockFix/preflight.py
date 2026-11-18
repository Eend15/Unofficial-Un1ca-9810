#!/usr/bin/env python3
"""Fail-closed, read-only offline checks for a Noble 2C face port.

This does not deploy files, patch SELinux, call ADB, or start services.
Exit status 1 intentionally means the original Noble stack cannot yet be
enabled unchanged in the currently assembled Android 16 ROM.
"""

from __future__ import annotations

import hashlib
import re
import subprocess
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
NOBLE = ROOT / "out/target/star2lte/face-audit/noble2c_face/system"
WORK = ROOT / "out/target/star2lte/work_dir"

NATIVE = (
    "bin/faced",
    "lib64/hw/face.default.so",
    "lib64/libFaceService.so",
    "lib64/libsecfr_engine.so",
)

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def apk_v1_fingerprint(path: Path) -> str | None:
    with zipfile.ZipFile(path) as archive:
        sigs = [name for name in archive.namelist()
                if re.fullmatch(r"META-INF/[^/]+\.(?:RSA|EC|DSA)", name)]
        if not sigs:
            return None  # Cannot validate an APK with v2/v3-only signatures.
        der = archive.read(sigs[0])
    pem = subprocess.run(
        ["openssl", "pkcs7", "-inform", "DER", "-print_certs"],
        input=der, capture_output=True, check=True,
    ).stdout
    info = subprocess.run(
        ["openssl", "x509", "-noout", "-fingerprint", "-sha256"],
        input=pem, capture_output=True, check=True, text=False,
    ).stdout.decode()
    match = re.search(r"Fingerprint=([0-9A-Fa-f:]+)", info)
    return match.group(1).upper() if match else None


def platform_key_matches(platform_fingerprint: str | None) -> bool:
    cert = ROOT / "security/aosp_platform.x509.pem"
    key = ROOT / "security/aosp_platform.pk8"
    if not (platform_fingerprint and cert.is_file() and key.is_file()):
        return False
    cert_info = subprocess.run(
        ["openssl", "x509", "-in", str(cert),
         "-noout", "-fingerprint", "-sha256"],
        check=True, capture_output=True, text=True,
    ).stdout
    if f"Fingerprint={platform_fingerprint}" not in cert_info:
        return False
    key_pub = subprocess.run(
        ["openssl", "pkey", "-inform", "DER", "-in", str(key),
         "-pubout", "-outform", "DER"],
        check=True, capture_output=True,
    ).stdout
    cert_pub_pem = subprocess.run(
        ["openssl", "x509", "-in", str(cert), "-pubkey", "-noout"],
        check=True, capture_output=True,
    ).stdout
    cert_pub = subprocess.run(
        ["openssl", "pkey", "-pubin", "-outform", "DER"],
        input=cert_pub_pem, check=True, capture_output=True,
    ).stdout
    return bool(key_pub) and key_pub == cert_pub


def contains_class(jar: Path, descriptor: str) -> bool:
    needle = descriptor.encode("ascii")
    with zipfile.ZipFile(jar) as archive:
        for name in archive.namelist():
            if re.fullmatch(r"classes\d*\.dex", name):
                if needle in archive.read(name):
                    return True
    return False


def check(title: str, passed: bool, detail: str) -> bool:
    print(f"[{'PASS' if passed else 'BLOCK'}] {title}: {detail}")
    return passed


def main() -> int:
    ok = True
    for name in NATIVE:
        native = NOBLE / name
        ok &= check("Noble native " + name, native.is_file(),
                    digest(native)[:16] if native.is_file() else "missing")

    current_hal = WORK / "system/system/lib64/hw/face.default.so"
    noble_hal = NOBLE / "lib64/hw/face.default.so"
    if current_hal.is_file() and noble_hal.is_file():
        same = digest(current_hal) == digest(noble_hal)
        ok &= check("Android 16 HAL filename conflict", same,
                    "same bytes" if same else "face.default.so already exists and differs")

    init_dirs = (
        WORK / "vendor/etc/init",
        WORK / "vendor/etc/init/hw",
        WORK / "system/system/etc/init",
    )
    declarations: list[str] = []
    for folder in init_dirs:
        for path in folder.glob("*.rc"):
            for no, line in enumerate(path.read_text(errors="replace").splitlines(), 1):
                if re.match(r"^\s*service\s+faced\s+", line):
                    declarations.append(f"{path.relative_to(ROOT)}:{no}")
    ok &= check("No conflicting enabled faced init definitions",
                len(declarations) == 0,
                "; ".join(declarations) if declarations else "none")

    bio_apk = NOBLE / "priv-app/BioFaceService/BioFaceService.apk"
    platform_apk = WORK / "system/system/framework/framework-res.apk"
    if bio_apk.is_file() and platform_apk.is_file():
        bio_cert = apk_v1_fingerprint(bio_apk)
        platform_cert = apk_v1_fingerprint(platform_apk)
        cert_ok = bool(bio_cert and platform_cert and bio_cert == platform_cert)
        ok &= check("Shared android.uid.system signing", cert_ok,
                    f"BioFaceService={bio_cert}; A16 platform={platform_cert}")
        # This can be PASS even when the shipped Samsung-signed APK fails:
        # it means a *rebuilt* compatible app can be signed with the ROM key.
        check("Available matching A16 platform private key",
              platform_key_matches(platform_cert),
              "security/aosp_platform.pk8 + x509.pem")
    else:
        ok &= check("Shared UID signing inputs", False, "one or more APKs missing")

    java_roots = (
        WORK / "system/system/framework",
        WORK / "system_ext/framework",
        WORK / "product/framework",
    )
    jars = sorted(path for base in java_roots for path in base.glob("*.jar"))
    if jars:
        for clazz in ("IFaceDaemon", "IFaceService", "IFaceDaemonCallback"):
            name = f"Lcom/samsung/android/bio/face/{clazz};"
            providers = [jar.relative_to(ROOT) for jar in jars
                         if contains_class(jar, name)]
            present = bool(providers)
            ok &= check("Android 16 Java ABI " + clazz, present,
                        ", ".join(map(str, providers))
                        if providers else "missing in packaged framework jars")
    else:
        ok &= check("Android 16 framework jars", False, "not found")

    contexts = [
        WORK / "system/system/etc/selinux/plat_service_contexts",
        WORK / "system/system/system_ext/etc/selinux/system_ext_service_contexts",
        WORK / "system_ext/etc/selinux/system_ext_service_contexts",
        WORK / "vendor/etc/selinux/vendor_service_contexts",
    ]
    text = "\n".join(path.read_text(errors="replace")
                     for path in contexts if path.is_file())
    for name in ("com.samsung.android.bio.face.IFaceDaemon", "samsung.face"):
        mapped = any(re.match(rf"^{re.escape(name)}\s+", line)
                     for line in text.splitlines())
        ok &= check("Binder service_contexts " + name, mapped,
                    "mapped" if mapped else "missing service label")

    # These conditions require actual devices and compiled policy; the
    # tool intentionally never treats offline existence as proof of success.
    print("[RUNTIME REQUIRED] Compile Android 16 SELinux policy/neverallow.")
    print("[RUNTIME REQUIRED] Validate old Binder C++ API behavior and registration.")
    print("[RUNTIME REQUIRED] Verify Camera2 ID 1, CAMERA/AppOps and /data/system/users/*/bio/fr.")
    print("[RUNTIME REQUIRED] Real trusted enrollment/authentication and valid HAT.")
    print("RESULT: offline integration prerequisites " +
          ("satisfied; live validation still required." if ok
           else "BLOCKED; leave Noble faced disabled."))
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
