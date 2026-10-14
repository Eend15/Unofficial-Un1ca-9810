#!/usr/bin/env python3
"""Offline, read-only coverage test for a genuine FaceunlockFixHidl bridge.

No device, adb, build artifact, credential, or active smali file is touched.
The original Noble framework jar must already be baksmalied into the ignored
out/target/star2lte/face-audit/noble2c_face/noble_framework_smali directory.
"""

from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
SRC = ROOT / "out/target/star2lte/apktool/system/framework/services.jar/smali/com/android/server/biometrics/sensors/face/hidl"
NOBLE = ROOT / "out/target/star2lte/face-audit/noble2c_face/noble_framework_smali/smali_classes5/com/samsung/android/bio/face"
FACEUTILS = ROOT / "out/target/star2lte/face-audit/noble2c_face/decompiled/BioFaceService/sources/com/samsung/android/bio/face/service/FaceUtils.java"
CLIENT = SRC / "HidlToAidlSensorAdapter.smali"
CONVERTER = SRC / "HidlToAidlCallbackConverter.smali"
JAVA_METHOD = re.compile(r"^\.method[^\n]*\s([\w<>]+)\(", re.M)
TXN = re.compile(r"^\.field[^\n]*TRANSACTION_(\w+):I = (0x[0-9a-f]+)", re.M)


def method_names(path: Path) -> set[str]:
    return set(JAVA_METHOD.findall(path.read_text()))


def txns(path: Path) -> dict[str, int]:
    return {name: int(code, 16) for name, code in TXN.findall(path.read_text())}


def check(cond: bool, label: str) -> None:
    if not cond:
        raise AssertionError(label)
    print("PASS " + label)


def main() -> None:
    contract = json.loads((HERE / "contract.json").read_text())
    hidl = method_names(SRC / "TestHal.smali") - {"<init>"}
    actual_native = method_names(NOBLE / "IFaceDaemon.smali")
    actual_cb = method_names(NOBLE / "IFaceDaemonCallback.smali")
    actual_native_txns = txns(NOBLE / "IFaceDaemon$Stub.smali")
    actual_cb_txns = txns(NOBLE / "IFaceDaemonCallback$Stub.smali")

    check(hidl == set(contract["hidl_method_routes"]),
          f"all {len(hidl)} Java ISehBiometricsFace/TestHal methods mapped")
    check(actual_native == set(contract["native_transactions"]),
          f"all {len(actual_native)} native IFaceDaemon methods mapped")
    check(actual_cb == set(contract["native_callback_transactions"]),
          f"all {len(actual_cb)} native callbacks mapped")
    check(actual_native_txns == contract["native_transactions"],
          "all 21 Noble daemon AIDL transaction codes match extracted jar")
    check(actual_cb_txns == contract["native_callback_transactions"],
          "all 6 Noble callback AIDL transaction codes match extracted jar")
    check(set(contract["callbacks"]) == actual_cb,
          "every native callback has a HIDL conversion contract")
    check(
        {c["hidl_transaction"] for c in contract["callbacks"].values()} == set(range(1, 7)),
        "all 6 HIDL callback transaction IDs accounted for",
    )
    check(all("mock" not in route.lower() and "fake" not in route.lower()
              for route in contract["hidl_method_routes"].values()),
          "all HIDL routes avoid mock/fake behavior")
    check(contract["version"].startswith("faceunlockfix-")
          and all("typed" in entry["route"].lower()
                  and "HwParcel" not in entry["route"]
                  for entry in contract["callbacks"].values()),
          "FaceunlockFix callback contracts use typed framework dispatch")
    positive = contract["callbacks"]["onAuthenticated"]["require"].lower()
    check("69-byte" in positive and "original" in positive and "secure engine" in positive,
          "successful authentication guarded by 69-byte genuine secure-engine HAT")
    converter = CONVERTER.read_text()
    check("onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V"
          in converter and "onEnrollmentProgress(II)V" in converter,
          "Android 16 converter handles real auth token and enrollment progress")
    adapter = CLIENT.read_text()
    check("->getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;"
          in adapter and "new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;"
          in adapter,
          "local in-process HIDL injection site exists")

    java = FACEUTILS.read_text()
    for name, value in contract["noble_request_codes"].items():
        java_name = f"FACE_REQUEST_{name}"
        needle = rf"\b{re.escape(java_name)}\s*=\s*{value}\s*;"
        check(bool(re.search(needle, java)),
              f"Noble FaceUtils request {java_name}={value}")

    print("RESULT: contracts complete. This does NOT prove Binder/camera or HAT runtime validity.")


if __name__ == "__main__":
    main()
