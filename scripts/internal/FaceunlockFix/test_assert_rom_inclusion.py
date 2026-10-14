#!/usr/bin/env python3
"""Offline fixture tests for built-in face ROM and no-camera-probe packaging."""
from __future__ import annotations

from pathlib import Path
from unittest.mock import patch
import struct
import tempfile
import zipfile

import assert_rom_inclusion as inclusion
import stage_verified_rom as stage
from assert_rom_inclusion import (
    BRIDGE_CLASSES,
    assert_no_probe_apk,
    assert_rom_inclusion,
    probe_apks,
)
from verify_framework_classes import defined_classes


def write(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def apk(path: Path, manifest: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(path, "w") as jar:
        jar.writestr("AndroidManifest.xml", manifest)


def synthetic_dex(classes: tuple[str, ...] | list[str], extra_string: bytes = b"") -> bytes:
    """Build class_def/type/string tables for *parser-only* DEX fixture.

    Not executable Android bytecode; test that guards use class_def tables
    instead of accepting plain byte-string references.
    """
    count = len(classes)
    string_ids = 0x70
    type_ids = string_ids + count * 4
    class_defs = type_ids + count * 4
    payload = bytearray(class_defs + count * 32)
    payload[:8] = b"dex\n035\0"
    for offset, value in ((0x38, count), (0x3C, string_ids),
                          (0x40, count), (0x44, type_ids),
                          (0x60, count), (0x64, class_defs)):
        struct.pack_into("<I", payload, offset, value)
    for i, descriptor in enumerate(classes):
        if len(descriptor) >= 128:
            raise ValueError("Test fixture descriptor too long")
        struct.pack_into("<I", payload, string_ids + i * 4, len(payload))
        struct.pack_into("<I", payload, type_ids + i * 4, i)
        struct.pack_into("<I", payload, class_defs + i * 32, i)
        payload.extend(bytes((len(descriptor),)) + descriptor.encode() + b"\0")
    payload.extend(extra_string)
    struct.pack_into("<I", payload, 0x20, len(payload))
    return bytes(payload)


def services(path: Path, experimental: bool, *,
             class3: bytes | None = None) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(path, "w") as jar:
        hook_ref = (b"Lcom/android/server/biometrics/sensors/face/faceunlockfix/FaceunlockFixProbe;"
                    if experimental else b"")
        jar.writestr("classes.dex", synthetic_dex(
            ("Landroid/test/GoodCore;",), hook_ref))
        jar.writestr("classes2.dex", synthetic_dex(("Landroid/test/Core2;",)))
        if experimental:
            jar.writestr("classes3.dex", class3 if class3 is not None else
                         synthetic_dex(tuple(sorted(BRIDGE_CLASSES)), b"native-remove-all-verified-20261014"))


def must_block(fn, label: str) -> None:
    try:
        fn()
    except RuntimeError:
        return
    raise AssertionError(f"Expected fail-closed rejection: {label}")


def main() -> None:
    # The canonical ROM build is the only route which can package these
    # sources. Ensure both checks stay inside Exynos9810 gating and run before
    # marking the workdir completed / generating the target-files ZIP.
    build = (Path(__file__).resolve().parents[3] / "scripts/make_rom.sh").read_text()
    guard = '[[ "$TARGET_CODENAME" =~ ^(starlte|star2lte|crownlte)$ ]]'
    verifier = 'assert_rom_inclusion.py'
    assert build.count(verifier) == 2, "Missing post-build or pre-ZIP app audit"
    assert build.count(guard) >= 2, "Unsupported target builds must be unaffected"
    assert build.index(verifier) < build.index('echo -n "$FACEUNLOCKFIX_BUILD_VARIANT"')
    assert build.rindex(verifier) < build.index('ZIP_FILE_NAME="')
    assert all(not relative.lower().endswith(".apk") for relative in stage.NEW_SYSTEM_LABELS), (
        "Verified FaceunlockFix native stage unexpectedly contains an application")

    # Independently validate the actual offline D8 output when present. This
    # does not rebuild anything or use shared work_dir. A fixture-only mock
    # must never be the sole proof that a real bridge DEX has all definitions.
    bridge_zip = stage.BUILD / "faceunlockfix_bridge_current_dex.zip"
    if bridge_zip.is_file():
        with zipfile.ZipFile(bridge_zip) as archive:
            real_defs = defined_classes(archive.read("classes.dex"))
        missing = BRIDGE_CLASSES - real_defs
        assert not missing, f"Built FaceunlockFix bridge DEX missing class defs: {sorted(missing)}"
        assert 6 <= len(real_defs) <= 512, f"Unexpected bridge DEX class count: {len(real_defs)}"

    with tempfile.TemporaryDirectory(prefix="faceunlockfix-inclusion-fixture-") as tmp:
        work = Path(tmp) / "work"
        jar = work / "system/system/framework/services.jar"
        services(jar, experimental=False)
        apk(work / "product/app/Unrelated/Unrelated.apk",
            b'<manifest package="com.example.safe" />')
        assert_rom_inclusion(work, "standard")
        must_block(lambda: assert_rom_inclusion(work, "experimental"),
                   "native-less experimental ROM")

        forbidden = work / "system/system/priv-app/FaceCameraProbe/FaceCameraProbe.apk"
        apk(forbidden, b'<manifest package="com.example.anything" />')
        assert forbidden in probe_apks(work)
        must_block(lambda: assert_no_probe_apk(work), "probe APK by filename")
        forbidden.unlink()

        hidden = work / "system_ext/priv-app/Diagnostics/base.apk"
        apk(hidden, ('<manifest package="' + inclusion.PROBE_PACKAGE + '" />').encode())
        must_block(lambda: assert_no_probe_apk(work), "renamed probe APK")
        hidden.unlink()

        # A binary AndroidManifest often stores package strings as UTF-16LE.
        apk(hidden, inclusion.PROBE_PACKAGE.encode("utf-16le"))
        must_block(lambda: assert_no_probe_apk(work), "UTF-16 manifest package")
        hidden.unlink()
        assert_rom_inclusion(work, "standard")

        services(jar, experimental=True)
        must_block(lambda: assert_rom_inclusion(work, "standard"),
                   "experimental classes inside standard ROM")
        rc = work / "system/system/etc/init/faceunlockfixd.rc"
        write(rc, b"service faceunlockfixd /system/bin/faced\n    disabled\n")
        must_block(lambda: assert_rom_inclusion(work, "experimental"),
                   "non-oneshot runtime")
        write(rc, b"service faceunlockfixd /system/bin/faced\n    disabled\n    oneshot\n")
        must_block(lambda: assert_rom_inclusion(work, "experimental"),
                   "missing built-in native files")
        for part in ("bin/faced", "lib64/faceunlockfix/face.faceunlockfix.so",
                     "lib64/faceunlockfix/libFaceService.so",
                     "lib64/faceunlockfix/libsecfr_engine.so",
                     "lib64/faceunlockfix/libfaceunlockfix_hwredirect.so"):
            write(work / "system/system" / part, b"validated-integration-fixture")
        # A synthetic fixture cannot carry all 15,715 real Android16 classes.
        # The real class-retention checker is tested separately against
        # hash-verified original/live-good and known bootloop JARs.
        must_block(lambda: assert_rom_inclusion(work, "experimental"),
                   "synthetic framework must fail production core retention")
        with patch.object(inclusion, "require_preserved_framework_classes"):
            assert_rom_inclusion(work, "experimental")
            services(jar, experimental=True, class3=synthetic_dex(tuple(sorted(BRIDGE_CLASSES))))
            must_block(lambda: assert_rom_inclusion(work, "experimental"), "obsolete removal contract")
            services(jar, experimental=True)
            # A byte-string reference to a missing class is not a class_def.
            missing = sorted(BRIDGE_CLASSES)
            fake = synthetic_dex(tuple(missing[:-1]), missing[-1].encode())
            services(jar, experimental=True, class3=fake)
            must_block(lambda: assert_rom_inclusion(work, "experimental"),
                       "class string is not a defined bridge class")
            # A malicious classes3 redefining core classes is also forbidden.
            duplicate = synthetic_dex(tuple(sorted(BRIDGE_CLASSES))
                                      + ("Landroid/test/GoodCore;",))
            services(jar, experimental=True, class3=duplicate)
            must_block(lambda: assert_rom_inclusion(work, "experimental"),
                       "classes3 redefines platform class")
            services(jar, experimental=True)
            assert_rom_inclusion(work, "experimental")
        assert_no_probe_apk(work)

        # Even a renamed probe in a different partition must block packaging.
        apk(work / "vendor/app/Other/base.apk",
            ('<manifest package="' + inclusion.PROBE_PACKAGE + '" />').encode())
        must_block(lambda: assert_rom_inclusion(work, "experimental"),
                   "probe included in vendor image")

    print("PASS fixture standard variant clean; experimental requires built-in bridge")
    print("PASS reject probe by name, hidden package ID and UTF-16 manifest")
    print("PASS reject unverified native runtime and probe APK in other partitions")
    print("PASS make_rom stage/pre-ZIP guards cover all three Exynos9810 targets")
    print("PASS final DEX class_def bridge validation rejects string-only and duplicates")
    if bridge_zip.is_file():
        print("PASS offline built FaceunlockFix classes3 DEX has all required class definitions")


if __name__ == "__main__":
    main()
