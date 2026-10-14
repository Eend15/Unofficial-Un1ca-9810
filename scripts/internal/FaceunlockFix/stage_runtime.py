#!/usr/bin/env python3
"""Stage the genuine Exynos9810 FaceunlockFix runtime under face-audit ONLY.

Never edits a live device, the primary ROM tree, active services.jar, SELinux
policy, or anything outside out/target/star2lte/face-audit/faceunlockfix_rom_stage.

Original vendor binary extraction sometimes appends one ASCII '.' sentinel to each ELF.
Trim ONLY a proven single sentinel beyond the authenticated ELF SHA-256.
The private native HAL path avoids overwriting the Android 16 vendor HAL.
Use existing Samsung SELinux faced_exec/faced_service policy, never permissive.
"""
from __future__ import annotations

from hashlib import sha256
from pathlib import Path
import argparse
import re
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
AUDIT = ROOT / "out/target/star2lte/face-audit"
NATIVE_DONOR = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/native/system"
WORK = ROOT / "out/target/star2lte/work_dir"
OUTPUT = AUDIT / "faceunlockfix_rom_stage/star2lte"
TARGETS = ("starlte", "star2lte", "crownlte")

NATIVE = {
    "bin/faced": ("system/bin/faced", 50048,
                  "7ce329241c9428653436984a62139e2611f8d374f95e7ce37906b883c9c6f732"),
    "lib64/hw/face.default.so": ("system/lib64/faceunlockfix/face.faceunlockfix.so", 10088,
                                  "32096b4cc61e6bf503b3cc907c92e283e4ee1fd4e1cc3fda6c58888ff96a0b35"),
    "lib64/libFaceService.so": ("system/lib64/faceunlockfix/libFaceService.so", 46848,
                                "9013ac8b926b372431830d04c46f9d258c7ccd1dc02fc1bf0da93cfeb4ae34e3"),
    "lib64/libsecfr_engine.so": ("system/lib64/faceunlockfix/libsecfr_engine.so", 59216,
                                 "370acde5cd404f04c027b86f503033083189f6f3f720c5e78b5b8a38d7d029e0"),
}
VENDOR_RC_FILES = (
    "vendor/etc/init/init.samsungexynos9810.rc",
    "vendor/etc/init/hw/init.samsungexynos9810.rc",
)
OLD_STANZA = re.compile(
    r"(?m)^[ \t]*service[ \t]+faced[ \t]+/system/bin/faced[ \t]*\r?\n"
    r"[ \t]+class[ \t]+late_start[ \t]*\r?\n"
    r"[ \t]+user[ \t]+system[ \t]*\r?\n"
    r"[ \t]+group[ \t]+system[ \t]*(?=\r?\n|\Z)"
)


def store(relative: str, data: bytes, mode: int = 0o644) -> None:
    dest = OUTPUT / relative
    if not dest.resolve().is_relative_to(OUTPUT.resolve()):
        raise ValueError(f"Unsafe stage path {relative}")
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_bytes(data)
    dest.chmod(mode)
    print(f"STAGED {relative}: {len(data)} bytes")


def verify_existing_policy() -> None:
    policy = WORK / "system/system/system_ext/etc/selinux"
    file_contexts = (policy / "system_ext_file_contexts").read_text()
    service_contexts = (policy / "system_ext_service_contexts").read_text()
    cil = (policy / "system_ext_sepolicy.cil").read_text()
    checks = {
        "stock faced_exec transition": bool(re.search(
            r"(?m)^/system/bin/faced[ \t]+u:object_r:faced_exec:s0$", file_contexts)),
        "native IFaceDaemon service label": bool(re.search(
            r"(?m)^com\.samsung\.android\.bio\.face\.IFaceDaemon[ \t]+"
            r"u:object_r:faced_service:s0$", service_contexts)),
        "stock init domain transition": "(typetransition init faced_exec process faced)" in cil,
        "stock faced service registration": "(allow faced faced_service (service_manager (add)))" in cil,
        "stock system_server face access": "(allow system_server faced_service (service_manager (find)))" in cil,
    }
    for label, valid in checks.items():
        print(f"{'PASS' if valid else 'BLOCK'} {label}")
    if not all(checks.values()):
        raise RuntimeError("Stock SELinux policy is incompatible; refusing to stage")


def stage() -> None:
    verify_existing_policy()
    for source, (destination, expected_size, digest) in NATIVE.items():
        candidate = NATIVE_DONOR / source
        full = candidate.read_bytes()
        if len(full) == expected_size:
            data = full
        elif len(full) == expected_size + 1 and full[-1:] == b".":
            data = full[:-1]
        else:
            raise RuntimeError(f"Unexpected native extraction length: {candidate}")
        if not data.startswith(b"\x7fELF") or sha256(data).hexdigest() != digest:
            raise RuntimeError(f"Native SHA mismatch: {candidate}")
        store(destination, data, 0o755 if source.startswith("bin/") else 0o644)

    shim = AUDIT / "buildtools/libfaceunlockfix_hwredirect.so"
    shim.parent.mkdir(parents=True, exist_ok=True)
    subprocess.run([
        "clang", "--target=aarch64-linux-android31", "-shared", "-fPIC", "-nostdlib",
        "-DFACEUNLOCKFIX_STANDALONE_CROSSCOMPILE",
        "-Wl,-soname,libfaceunlockfix_hwredirect.so", "-Wl,-z,now", "-Wl,-z,relro",
        "-o", str(shim), str(HERE / "faceunlockfix_hwredirect.c"),
    ], cwd=HERE, check=True)
    data = shim.read_bytes()
    if not data.startswith(b"\x7fELF") or data[4] != 2 or data[18:20] != b"\xb7\x00":
        raise RuntimeError("Missing verified ARM64 interposer")
    if b"/system/lib64/faceunlockfix/face.faceunlockfix.so" not in data:
        raise RuntimeError("Interposer points outside the private FaceunlockFix HAL path")
    store("system/lib64/faceunlockfix/libfaceunlockfix_hwredirect.so", data)

    rc = (HERE / "faceunlockfixd.rc").read_bytes()
    if b"service faceunlockfixd /system/bin/faced" not in rc or b"    disabled\n" not in rc:
        raise RuntimeError("FaceunlockFix service not explicitly opt-in")
    store("system/etc/init/faceunlockfixd.rc", rc)

    for path in VENDOR_RC_FILES:
        original = (WORK / path).read_text()
        matches = OLD_STANZA.findall(original)
        if len(matches) != 1:
            raise RuntimeError(f"Expected exactly one duplicate native faced service in {path}; got {len(matches)}")
        patched = OLD_STANZA.sub(
                    lambda m: "\n".join("# FaceunlockFix: disable competing " + line.strip()
                                for line in m.group(0).splitlines()), original,
            count=1)
        if re.search(r"(?m)^[ \t]*service[ \t]+faced[ \t]", patched):
            raise RuntimeError(f"Competing faced init entry survived in {path}")
        store(path, patched.encode())

    manifest = ("FaceunlockFix Android16 optional genuine stock native runtime\n"
                "SELinux: reuse existing faced_exec/faced_service; no policy modifications\n"
                "Enable only with persist.sys.un1ca.faceunlockfix.experimental=1 on a debug build\n"
                "Default: disabled and oneshot, no vendor Face HAL overwrite\n"
                "Requires framework adapter integration and real enrollment test\n")
    store("README.txt", manifest.encode())
    print("PASS source-only FaceunlockFix native runtime staging; NO DEPLOYMENT")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--target", choices=TARGETS, default="star2lte")
    parser.add_argument("--output", type=Path,
                        help="Optional audit-local staging path for source-only tests")
    args = parser.parse_args()
    WORK = ROOT / "out/target" / args.target / "work_dir"
    OUTPUT = (args.output if args.output is not None else
              AUDIT / "faceunlockfix_rom_stage" / args.target).resolve()
    if not OUTPUT.is_relative_to(AUDIT.resolve()):
        raise SystemExit("Refusing stage output outside ignored face-audit workspace")
    if not WORK.is_dir():
        raise SystemExit(f"Missing {args.target} target ROM work_dir")
    stage()
