#!/usr/bin/env python3
"""Fail closed if rebuilt Note9 AirCommand/services.jar lost the Crown BLE fixes.

Runs after the ROM's Apktool rebuild, before image packaging. This is *not* a
hardware pairing test. Only the built archives are read; no device is touched.
"""
from __future__ import annotations

import argparse
import hashlib
import os
from pathlib import Path
import re
import struct
import subprocess
import sys
import tempfile
import zipfile
import zlib


AIRCOMMAND_MARKERS = (
    b"EDFEC62E-9910-0BAC-5241-D8BDA6932A2F",
    b"prepareTicToc : crown advertisement off",
    b"v9 Note9 built-in pen legacy firmware accepted",
    b"v8 direct GATT attempt for saved Crown address; service validation unchanged",
)
SERVICES_MARKERS = (
    b"UN1CA Note9 direct BLE sysfs write succeeded",
    b"/sys/class/sec/sec_epen/epen_ble_charging_mode",
)
ROOT = Path(__file__).resolve().parents[5]
BAKSMALI_JAR = ROOT / "out/tools/bin/apktool.jar"


def _check_dex_structure(dex: bytes, name: str) -> None:
    """Reject truncated, fabricated or checksum-corrupted DEX files."""
    if len(dex) < 0x70 or not re.fullmatch(rb"dex\n0[0-9]{2}\x00", dex[:8]):
        raise ValueError(f"invalid DEX header: {name}")
    declared_size, header_size = struct.unpack_from("<II", dex, 32)
    if declared_size != len(dex) or header_size < 0x70 or header_size > len(dex):
        raise ValueError(f"invalid DEX size: {name}")
    if hashlib.sha1(dex[32:]).digest() != dex[12:32]:
        raise ValueError(f"invalid DEX SHA1 checksum: {name}")
    if (zlib.adler32(dex[12:]) & 0xffffffff) != struct.unpack_from("<I", dex, 8)[0]:
        raise ValueError(f"invalid DEX Adler32 checksum: {name}")


def verify_archive(path: Path, markers: tuple[bytes, ...], signed: bool) -> None:
    if not path.is_file() or path.stat().st_size == 0:
        raise ValueError(f"missing or empty final archive: {path}")
    try:
        with zipfile.ZipFile(path) as archive:
            if archive.testzip() is not None:
                raise ValueError(f"corrupt final archive: {path}")
            names = archive.namelist()
            dex_names = [name for name in names if re.fullmatch(r"classes\d*\.dex", name)]
            if not dex_names:
                raise ValueError(f"no DEX bytecode in final archive: {path}")
            dex_contents = [archive.read(name) for name in dex_names]
            for name, dex in zip(dex_names, dex_contents):
                _check_dex_structure(dex, f"{path}:{name}")
            bytecode = b"\n".join(dex_contents)
            for marker in markers:
                if marker not in bytecode:
                    raise ValueError(f"missing compiled Note9 Crown BLE marker {marker!r}: {path}")
            if signed:
                names_upper = {name.upper() for name in names}
                for item in ("META-INF/CERT.SF", "META-INF/CERT.RSA"):
                    if item not in names_upper:
                        raise ValueError(f"final S Pen APK lacks SignApk signature file {item}: {path}")
    except (zipfile.BadZipFile, OSError, RuntimeError) as exc:
        raise ValueError(f"cannot inspect final archive {path}: {exc}") from exc


def _run_java_tool(args: list[str], description: str) -> str:
    try:
        result = subprocess.run(args, text=True, capture_output=True,
                                timeout=45, env={**os.environ, "LC_ALL": "C"},
                                check=False)
    except (OSError, subprocess.TimeoutExpired) as exc:
        raise ValueError(f"cannot {description}: {exc}") from exc
    if result.returncode:
        raise ValueError(f"cannot {description}: {result.stderr[-800:]}")
    return result.stdout


def _disassemble_required(archive_path: Path, classes: tuple[str, ...]) -> dict[str, str]:
    """Inspect the *compiled* class methods, not strings elsewhere in the DEX."""
    if not BAKSMALI_JAR.is_file():
        raise ValueError(f"missing baksmali DEX inspection tool: {BAKSMALI_JAR}")
    with zipfile.ZipFile(archive_path) as archive:
        dex_names = sorted(
            (name for name in archive.namelist()
             if re.fullmatch(r"classes\d*\.dex", name)),
            key=lambda name: (name != "classes.dex", name))
        dex_entries = [(name, archive.read(name)) for name in dex_names]
    with tempfile.TemporaryDirectory(prefix="note9-rebuilt-dex-") as scratch:
        decoded: dict[str, str] = {}
        for index, (entry, contents) in enumerate(dex_entries):
            # Inspect the DEX as a standalone file. Container format v041 can
            # otherwise confuse ZipDexContainer about the enclosing ZIP offset.
            dex_file = Path(scratch) / f"dex-{index}.dex"
            dex_file.write_bytes(contents)
            output_dir = Path(scratch) / f"dex-{index}"
            _run_java_tool([
                "java", "-cp", str(BAKSMALI_JAR),
                "com.android.tools.smali.baksmali.Main", "disassemble",
                "--jobs", "1",
                "--classes", ",".join(f"L{name};" for name in classes),
                "--output", str(output_dir), str(dex_file),
            ], f"disassemble Note9 classes in {archive_path}:{entry}")
            for name in classes:
                candidate = output_dir / f"{name}.smali"
                if candidate.is_file():
                    decoded[name] = candidate.read_text(encoding="utf-8")
            if len(decoded) == len(classes):
                break
    missing = sorted(set(classes) - set(decoded))
    if missing:
        raise ValueError(f"compiled Note9 classes missing from {archive_path}: {missing}")
    return decoded


def _method(smali: str, name: str) -> str:
    match = re.search(r"(?ms)^\.method[^\n]*\s" + re.escape(name) +
                      r"\s*\n(.*?)^\.end method", smali)
    if not match:
        raise ValueError(f"missing compiled Note9 method {name}")
    return match.group(1)


def verify_crown_discovery(smali: str) -> None:
    scan = _method(smali,
        "a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V")
    if not re.search(
            r'(?s)invoke-static\s+\{p5\},\s+Landroid/text/TextUtils;->isEmpty'
            r'.*?move-result\s+p4.*?if-eqz\s+p4,\s+:\w+'
            r'.*?const-string\s+v0,\s+"EDFEC62E-9910-0BAC-5241-D8BDA6932A2F"'
            r'.*?Landroid/os/ParcelUuid;->fromString'
            r'.*?->setServiceUuid\(Landroid/os/ParcelUuid;\)'
            r'.*?const/4\s+p4,\s+0x1', scan):
        raise ValueError("Note9 compiled stock service filter/address bypass missing")
    if '->setDeviceAddress(Ljava/lang/String;)' not in scan:
        raise ValueError("Note9 compiled address reconnect path missing")


def verify_aircommand_methods(apk: Path) -> None:
    classes = _disassemble_required(apk, ("b3/b", "U2/k", "j3/a", "A/j", "R2/b", "G2/e", "L2/p", "L2/m"))
    verify_crown_discovery(classes["R2/b"])
    # EJ-PN960 reports fw 23; the donor rejects fw <= 0x30 as a "sticky" pen.
    firmware = classes["G2/e"]
    if not all(text in firmware for text in (
            "STICKY S-Pen detected", "v9 Note9 built-in pen legacy firmware accepted",
            '"N960F"', '"N960N"', "ro.bootloader")):
        raise ValueError("Note9 compiled legacy S Pen firmware acceptance missing")
    direct = _method(classes["L2/p"], "unicaTryKnownCrownGatt()Z")
    if not all(text in direct for text in (
            "ro.bootloader", "checkBluetoothAddress", "getRemoteDevice",
            "unicaDirectEpoch:J", "LL2/p;->c()V")):
        raise ValueError("Note9 compiled saved-address Crown GATT path missing")
    if "LL2/p;->unicaTryKnownCrownGatt()Z" not in classes["L2/m"]:
        raise ValueError("Note9 saved-address Crown GATT path is not reachable")
    profile = _method(classes["b3/b"], "<clinit>()V")
    if not re.search(
            r'(?s)const-string\s+(v\d+),\s+"EDFEC62E-9910-0BAC-5241-D8BDA6932A2F"'
            r'.*?sput-object\s+\1,\s+Lb3/b;->c:Ljava/util/UUID;', profile):
        raise ValueError("Note9 compiled GATT service UUID not installed in b3/b.<clinit>")

    button = _method(classes["U2/k"],
        "o(Lg2/e;Landroid/bluetooth/BluetoothGattCharacteristic;)V")
    if not all(text in button for text in (
            "getValue()[B", "array-length", "and-int/lit16",
            "LU2/j;->c(IJLjava/lang/String;)LS2/l;",
            "Lg2/e;->x(LS2/q;)V")):
        raise ValueError("Note9 compiled one-byte button notification decoder missing")
    # The Note9 legacy decoder injects three dispatches into the 1-byte path:
    # single click (1), long-press start (2) and long-press end (3).
    head = button.split('"dispatchButtonData : Multiple event format.', 1)[0]
    if (head.count("LU2/j;->c(IJLjava/lang/String;)LS2/l;") < 3 or
            not re.search(r"(?s)array-length.*?if-ne\s+\w+,\s+\w+,\s+:\w+"
                          r".*?and-int/lit16.*?if-eq\s+\w+,\s+\w+,\s+:\w+", head)):
        raise ValueError("Note9 compiled legacy single/long button branch missing")

    timing = _method(classes["j3/a"], "a()V")
    if not all(text in timing for text in (
            "const-wide/16", "0xc8", "SystemClock;->elapsedRealtime()J",
            "Ljava/lang/Math;->min(JJ)J")):
        raise ValueError("Note9 compiled 200ms Wacom transaction spacing missing")
    writer = _method(classes["j3/a"], "h(Ljava/lang/String;)V")
    for command in ('0', '1', '2', '7'):
        if not re.search(r'(?s)const-string\s+v0,\s+"' + command +
                         r'"\s+invoke-virtual\s+\{v0, p1\}.*?move-result\s+v0'
                         r'\s+if-nez\s+v0,\s+:\w+', writer):
            raise ValueError(f"Note9 compiled command {command} transaction boundary missing")

    scanner = classes["A/j"]
    if not all(text in scanner for text in (
            "prepareTicToc : crown advertisement off",
            "Landroidx/emoji2/text/l;->q(Z)Landroid/os/ParcelUuid;",
            "LR2/b;->a(Landroid/content/Context;ILandroid/os/ParcelUuid;")):
        raise ValueError("Note9 compiled TicToc scan setup is incomplete")


def verify_service_method(services: Path) -> None:
    source = _disassemble_required(services,
                                  ("com/android/server/smartclip/SpenGestureManagerService",))
    smali = source["com/android/server/smartclip/SpenGestureManagerService"]
    charge = _method(smali, "writeBleSpenCommand(Ljava/lang/String;)V")
    if not all(text in charge for text in (
            "checkSmartClipMetaExtractionPermission()V",
            "/sys/class/sec/sec_epen/epen_ble_charging_mode",
            "UN1CA Note9 direct BLE sysfs write succeeded")):
        raise ValueError("Note9 compiled Wacom sysfs bridge lost its permission/charge path")


def _cert_fingerprint(path: Path, from_apk: bool) -> str:
    mode = "-jarfile" if from_apk else "-file"
    output = _run_java_tool(
        ["keytool", "-J-Duser.language=en", "-printcert", mode, str(path)],
        f"read signing certificate from {path}")
    fingerprints = re.findall(r"(?im)^\s*SHA256:\s*([0-9a-f:]{64,95})\s*$", output)
    if len(fingerprints) != 1:
        raise ValueError(f"ambiguous or missing signing certificate in {path}")
    digest = fingerprints[0].replace(":", "").lower()
    if len(digest) != 64:
        raise ValueError(f"invalid SHA256 certificate fingerprint in {path}")
    return digest


def verify_platform_signatures(apks: tuple[Path, ...], cert: Path) -> None:
    expected = _cert_fingerprint(cert, from_apk=False)
    for apk in apks:
        actual = _cert_fingerprint(apk, from_apk=True)
        if actual != expected:
            raise ValueError(f"Note9 shared/system APK signer mismatch: {apk}")
        output = _run_java_tool(["jarsigner", "-J-Duser.language=en", "-verify", str(apk)],
                                f"verify JAR signature on {apk}")
        if "jar verified." not in output:
            raise ValueError(f"JAR signature not verified on {apk}")


def verify(work_dir: Path, platform_cert: Path | None = None) -> None:
    from stage_notes_native import APK_SHA, stage
    import hashlib
    for notes in (work_dir / "system/system").glob("**/Notes33.apk"):
        if hashlib.sha256(notes.read_bytes()).hexdigest() == APK_SHA:
            stage(notes, notes.parent / "lib/arm64", verify=True)
    system = work_dir / "system/system"
    import smartcapture_engine
    smartcapture = system / "app/SmartCapture/SmartCapture.apk"
    if (smartcapture.is_file() and
            hashlib.sha256(smartcapture.read_bytes()).hexdigest() == smartcapture_engine.APK_SHA):
        smartcapture_engine.stage(smartcapture, smartcapture.parent / "lib/arm64", verify=True)
    aircommand = system / "priv-app/AirCommand/AirCommand.apk"
    factory = system / "app/FactoryAirCommandManager/FactoryAirCommandManager.apk"
    verify_archive(aircommand, AIRCOMMAND_MARKERS, signed=True)
    services = system / "framework/services.jar"
    verify_archive(services, SERVICES_MARKERS, signed=False)
    verify_aircommand_methods(aircommand)
    verify_service_method(services)
    if platform_cert is not None:
        verify_archive(factory, (), signed=True)
        verify_platform_signatures((aircommand, factory), platform_cert)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--work-dir", required=True, type=Path)
    parser.add_argument("--platform-cert", required=True, type=Path)
    args = parser.parse_args()
    try:
        verify(args.work_dir, args.platform_cert)
    except ValueError as exc:
        print(f"FAIL Note9 post-Apktool S Pen verification: {exc}", file=sys.stderr)
        raise SystemExit(1) from exc
    print("PASS signed rebuilt AirCommand carries Note9 Crown BLE/TicToc bytecode")
    print("PASS rebuilt services.jar carries native Note9 Wacom sysfs bridge")
    print("PASS compiled Crown GATT, button, TicToc, Wacom and service methods validated")
    print("PASS AirCommand and factory eject receiver signed with the ROM platform certificate")


if __name__ == "__main__":
    main()
