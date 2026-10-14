#!/usr/bin/env python3
"""Explicit, fail-closed assembly of the FaceunlockFix Android16 candidate.

The default --check builds and verifies an audit-only candidate. A gated ROM
build uses --prepare BEFORE apktool rebuild to insert only the verified HIDL
getter smali method hook, then --apply AFTER rebuild to append ONLY the freshly
compiled FaceunlockFix bridge dex and the original native daemon runtime. This keeps
all other Android16 services.jar modifications intact. It NEVER accesses ADB
or toggles a property. Unsupported framework changes fail closed.
"""
from __future__ import annotations

import argparse
from hashlib import sha256
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import zipfile

from stage_adapter_probe import render as render_probe, restore_pristine
from assert_rom_inclusion import assert_no_probe_apk, assert_rom_inclusion
from verify_framework_classes import require_preserved_framework_classes


ROOT = Path(__file__).resolve().parents[3]
AUDIT = ROOT / "out/target/star2lte/face-audit"
WORK = ROOT / "out/target/star2lte/work_dir"
HERE = Path(__file__).resolve().parent
BUILD = AUDIT / "buildtools"
TARGETS = ("starlte", "star2lte", "crownlte")
STAGE = AUDIT / "faceunlockfix_rom_stage/star2lte"
SOURCE_SMALI = (ROOT / "out/target/star2lte/apktool/system/framework/services.jar"
                "/smali/com/android/server/biometrics/sensors/face/hidl"
                "/HidlToAidlSensorAdapter.smali")


def select_target(target: str) -> None:
    """Keep mutable per-device ROM paths separate; reuse read-only donor audit."""
    global WORK, STAGE, SOURCE_SMALI
    if target not in TARGETS:
        raise ValueError(f"Unsupported FaceunlockFix device target: {target}")
    workbase = ROOT / "out/target" / target
    WORK = workbase / "work_dir"
    STAGE = AUDIT / "faceunlockfix_rom_stage" / target
    SOURCE_SMALI = (workbase / "apktool/system/framework/services.jar/smali"
                    "/com/android/server/biometrics/sensors/face/hidl"
                    "/HidlToAidlSensorAdapter.smali")
ORIGINAL_SERVICES_SHA = (
    "790b977cee857e028e4dd0a43844c5d0d54701d9581ec7afd39712e70c088ad6"
)
KNOWN_PROBE_BASE_SHA = (
    "43e4c4cfa8ab798ee5331e545e4989d39a266a160c34ea4fdba402902b520425"
)
QUARANTINED_BOOTLOOP_SERVICES_SHA = (
    "8f9549e3a4d965d906c86fef706e8463fb7ca651fee194366a9417a2b8d15233"
)

NEW_SYSTEM_LABELS = {
    "system/bin/faced": (0, 0, 0o755, "u:object_r:faced_exec:s0"),
    "system/etc/init/faceunlockfixd.rc": (0, 0, 0o644, "u:object_r:system_configs_file:s0"),
    "system/lib64/faceunlockfix/face.faceunlockfix.so": (0, 0, 0o644, "u:object_r:system_lib_file:s0"),
    "system/lib64/faceunlockfix/libFaceService.so": (0, 0, 0o644, "u:object_r:system_lib_file:s0"),
    "system/lib64/faceunlockfix/libsecfr_engine.so": (0, 0, 0o644, "u:object_r:system_lib_file:s0"),
    "system/lib64/faceunlockfix/libfaceunlockfix_hwredirect.so": (0, 0, 0o644, "u:object_r:system_lib_file:s0"),
}


def digest(path: Path) -> str:
    return sha256(path.read_bytes()).hexdigest()


def verify_probe_source() -> str:
    source = SOURCE_SMALI.read_text(encoding="utf-8")
    if "FaceunlockFixProbe;->tryAcquire" in source:
        pristine = restore_pristine(source)
        if render_probe(pristine) != source:
            raise RuntimeError("Unexpected or modified FaceunlockFix probe in source")
        return source
    return render_probe(source)


def verify_prerequisites(target: str) -> tuple[list[tuple[Path, Path]], bytes]:
    # The release payload and Java/AIDL source manifest live in source.
    # No private compiler jars, donor audit APKs or full preview services.jar
    # are required by a fresh build; donor core DEX is never replaced.
    from release_bridge import load_release_bridge
    extra = load_release_bridge()
    subprocess.run([sys.executable, str(HERE / "stage_runtime.py"),
                    "--target", target],
                   cwd=ROOT, check=True)
    # The historic camera probe is a separate *diagnostic app*, not part of
    # Android16's in-framework FaceunlockFix pipeline. Never stage any APK,
    # including an app renamed to an innocuous base.apk.
    assert_no_probe_apk(STAGE)
    pairs: list[tuple[Path, Path]] = []
    for src in sorted(STAGE.rglob("*")):
        if not src.is_file() or src.name == "README.txt":
            continue
        relative = src.relative_to(STAGE)
        if relative.parts[0] == "system":
            dst = WORK / "system/system" / Path(*relative.parts[1:])
            metadata = "system/" + "/".join(relative.parts[1:])
            if metadata not in NEW_SYSTEM_LABELS:
                raise RuntimeError(f"Unreviewed FaceunlockFix system stage item: {relative}")
        elif relative.parts[0] == "vendor":
            dst = WORK / relative
            if relative.as_posix() not in (
                    "vendor/etc/init/init.samsungexynos9810.rc",
                    "vendor/etc/init/hw/init.samsungexynos9810.rc"):
                raise RuntimeError(f"Unreviewed FaceunlockFix vendor stage item: {relative}")
        else:
            raise RuntimeError(f"Unexpected FaceunlockFix staged partition: {relative}")
        if not (WORK / relative.parts[0]).is_dir():
            raise RuntimeError(f"Missing target partition root for {relative}")
        pairs.append((src, dst))
    if len(pairs) != len(NEW_SYSTEM_LABELS) + 2:
        raise RuntimeError("Incomplete FaceunlockFix daemon/vendor-init bundle")
    print("PASS reviewed FaceunlockFix ROM staging inputs; existing framework unchanged")
    print(f"PASS native stage entries={len(pairs)}, bridge DEX SHA256={sha256(extra).hexdigest()}")
    return pairs, extra


def append_only_verified_bridge(current: Path, bridge_dex: bytes) -> None:
    """Append one dex without replacing or re-assembling any donor ROM dex."""
    if not current.resolve().is_relative_to(WORK.resolve()):
        raise RuntimeError("Target services.jar resolves outside ROM workdir")
    temporary = current.with_name(current.name + ".faceunlockfix.part")
    if temporary.exists():
        raise RuntimeError("Stale FaceunlockFix assembly temporary file; refusing overwrite")
    try:
        with zipfile.ZipFile(current) as original:
            original_names = original.namelist()
            dex_names = {name for name in original_names if name.endswith(".dex")}
            if dex_names != {"classes.dex", "classes2.dex"}:
                raise RuntimeError(f"Unexpected original services dex layout: {dex_names}")
            all_framework_dex = original.read("classes.dex") + original.read("classes2.dex")
            if b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;" not in all_framework_dex:
                raise RuntimeError("Rebuilt services.jar lacks the verified FaceunlockFix HIDL getter hook")
            with zipfile.ZipFile(temporary, "w") as output:
                for info in original.infolist():
                    output.writestr(info, original.read(info.filename))
                output.writestr("classes3.dex", bridge_dex,
                                compress_type=zipfile.ZIP_STORED)
        with zipfile.ZipFile(temporary) as test:
            if test.testzip() is not None:
                raise RuntimeError("FaceunlockFix assembly ZIP integrity error")
            with zipfile.ZipFile(current) as original:
                for name in original.namelist():
                    if test.read(name) != original.read(name):
                        raise RuntimeError("Original Android16 framework entry was changed")
        if digest(temporary) == QUARANTINED_BOOTLOOP_SERVICES_SHA:
            raise RuntimeError("Refusing quarantined Oct13 bootloop services.jar")
        os.replace(temporary, current)
    finally:
        if temporary.exists():
            temporary.unlink()


def update_metadata() -> None:
    fs_path = WORK / "configs/fs_config-system"
    contexts_path = WORK / "configs/file_context-system"
    fs = fs_path.read_text().splitlines()
    contexts = contexts_path.read_text().splitlines()
    for entry, (uid, gid, mode, label) in NEW_SYSTEM_LABELS.items():
        fs = [line for line in fs if not line.startswith(entry + " ")]
        escaped = "/" + re.escape(entry)
        contexts = [line for line in contexts
                    if not line.split(maxsplit=1)
                    or line.split(maxsplit=1)[0] not in ("/" + entry, escaped)]
        fs.append(f"{entry} {uid} {gid} {mode:o} capabilities=0x0")
        contexts.append(f"{escaped} {label}")
    fs_path.write_text("\n".join(fs) + "\n")
    contexts_path.write_text("\n".join(contexts) + "\n")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    phase = parser.add_mutually_exclusive_group()
    phase.add_argument("--prepare", action="store_true",
                       help="Patch only the verified apktool HIDL getter source")
    phase.add_argument("--apply", action="store_true",
                       help="Append FaceunlockFix dex and stage verified native ROM runtime")
    parser.add_argument("--target", default="star2lte", choices=TARGETS)
    args = parser.parse_args()
    if (os.environ.get("EXYNOS9810_FACEUNLOCKFIX_BUILTIN_STAR2LTE") == "true"
            and os.environ.get("EXYNOS9810_FACEUNLOCKFIX_BUILTIN") != "true"
            and args.target != "star2lte"):
        raise SystemExit("Built-in release activation is limited to star2lte")
    select_target(args.target)
    if (args.apply or args.prepare) and os.environ.get(
            "EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD") != "true":
        raise SystemExit("Refusing assembly without explicit experimental build flag")
    if not WORK.is_dir():
        raise SystemExit(f"Missing {args.target} ROM work_dir")
    AUDIT.mkdir(parents=True, exist_ok=True)
    assert_no_probe_apk(WORK)
    patched = verify_probe_source()
    if args.prepare:
        # This runs at the end of the module phase, before rebuilding jars.
        # It changes exactly one method in the ROM worktree smali; the normal
        # Apktool rebuild can retain every other generic module's change.
        if SOURCE_SMALI.read_text(encoding="utf-8") != patched:
            SOURCE_SMALI.write_text(patched, encoding="utf-8")
        print(f"PASS {args.target} source-stage FaceunlockFix HIDL probe with original branches preserved")
        return 0
    if args.apply and "FaceunlockFixProbe;->tryAcquire" not in SOURCE_SMALI.read_text():
        raise SystemExit("Refusing FaceunlockFix dex stage without prior source-stage hook")
    staging, extra = verify_prerequisites(args.target)
    current = WORK / "system/system/framework/services.jar"
    if not args.apply:
        if digest(current) != ORIGINAL_SERVICES_SHA:
            print("NOTICE original workdir framework has other changes; opt-in build uses smali staging")
        print("PASS dry-run; ROM work_dir and attached phone remain unchanged")
        return 0

    with zipfile.ZipFile(current) as final:
        dex_names = {name for name in final.namelist() if name.endswith(".dex")}
        if dex_names != {"classes.dex", "classes2.dex"}:
            raise RuntimeError("Unexpected rebuilt services.jar split; refusing stage")
        if b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;" not in (
                final.read("classes.dex") + final.read("classes2.dex")):
            raise RuntimeError("Rebuilt services.jar has no FaceunlockFix probe; refusing stage")
    # Apktool can silently drop donor framework class definitions. Refuse
    # incomplete output before staging the disabled daemon or altering JARs.
    require_preserved_framework_classes(current)

    # No device I/O. The Android 16 ROM's property gate stays OFF by default.
    for src, dst in staging:
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(src, dst)
        dst.chmod(src.stat().st_mode & 0o777)
    update_metadata()
    append_only_verified_bridge(current, extra)
    assert_rom_inclusion(WORK, "experimental")
    if (os.environ.get("EXYNOS9810_FACEUNLOCKFIX_BUILTIN") == "true" or
            os.environ.get("EXYNOS9810_FACEUNLOCKFIX_BUILTIN_STAR2LTE") == "true"):
        prop = WORK / "system/system/build.prop"
        content = re.sub(r"(?m)^ro\.un1ca\.faceunlockfix\.builtin=.*\n?", "", prop.read_text())
        prop.write_text(content.rstrip() + "\nro.un1ca.faceunlockfix.builtin=1\n")
    print(f"PASS explicitly enabled {args.target} FaceunlockFix ROM work_dir staging")
    print("NOTICE: boot image, SELinux neverallow and final ROM flashing are not validated")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
