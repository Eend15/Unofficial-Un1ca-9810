#!/usr/bin/env python3
"""Stage original Samsung stock Binder smali and fail-closed Android16 API fixes.

This edits only the offline apktool tree provided on the command line.
The four Binder families are copied byte-for-byte from Noble classes5.dex.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re
import shutil


FAMILIES = ("IFaceDaemon", "IFaceDaemonCallback",
            "IFaceService", "IFaceServiceReceiver")
STOCK_PACKAGE = Path("com/samsung/android/bio/face")
SERVICE = STOCK_PACKAGE / "service/FaceService.smali"
UTILITY = STOCK_PACKAGE / "service/FaceUtils.smali"


def replace_once(source: str, before: str, after: str, description: str) -> str:
    found = source.count(before)
    if found != 1:
        raise RuntimeError(f"{description}: expected 1 original call site, found {found}")
    return source.replace(before, after, 1)


def copy_bindings(src: Path, dst: Path) -> None:
    dst.mkdir(parents=True, exist_ok=True)
    matched = []
    for family in FAMILIES:
        expression = re.compile(rf"^{family}(?:\$[^/]*)?\.smali$")
        files = sorted(p for p in src.glob(f"{family}*.smali")
                       if expression.fullmatch(p.name))
        if len(files) != 4:
            raise RuntimeError(f"{family}: expected 4 original class/proxy files, got {len(files)}")
        for file in files:
            out = dst / file.name
            if out.exists() and out.read_bytes() != file.read_bytes():
                raise RuntimeError(f"Refusing to overwrite modified smali: {out}")
            shutil.copyfile(file, out)
        matched.extend(files)
    print(f"Copied {len(matched)} exact Noble Binder smali classes (4 interface families)")


def patch_legacy_biometric_api(service: Path, utility: Path) -> None:
    original = service.read_text(encoding="utf-8")
    source = original
    # Android16 IBiometricService no longer exports semGetFailedAttempts.
    # Read the *same per-user persisted local counter* maintained by
    # Noble's FaceUtils.handleFailedAttempt() (already used by this method).
    source = replace_once(
        source,
        "    iget-object v3, p0, Lcom/samsung/android/bio/face/service/FaceService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;\n\n"
        "    invoke-interface {v3, p1}, Landroid/hardware/biometrics/IBiometricService;->semGetFailedAttempts(I)I",
        "    iget-object v3, p0, Lcom/samsung/android/bio/face/service/FaceService;->mFaceUtils:Lcom/samsung/android/bio/face/service/FaceUtils;\n\n"
        "    iget-object v4, p0, Lcom/samsung/android/bio/face/service/FaceService;->mContext:Landroid/content/Context;\n\n"
        "    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/bio/face/service/FaceUtils;->getFailedAttemptCount(Landroid/content/Context;I)I",
        "semGetFailedAttempts",
    )
    # The surrounding methods *already persist* failures/reset through
    # FaceUtils.handleFailedAttempt(). Removing these obsolete calls prevents
    # NoSuchMethodError while retaining local lockout enforcement.
    for name in ("semAddFailedAttempt", "semResetFailedAttempts"):
        source = replace_once(
            source,
            f"    invoke-interface {{v1, v3, v4}}, Landroid/hardware/biometrics/IBiometricService;->{name}(II)V"
            if name == "semAddFailedAttempt" else
            "    invoke-interface {v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService;->semResetFailedAttempts(II)V",
            "    nop",
            name,
        )
    # Old IBiometricService.onReadyForAuthentication(cookie) no longer exists:
    # Android16 requires (requestId,long, cookie,int). The old service has no
    # valid modern requestId. Explicitly reject this *legacy prepared prompt*
    # instead of inventing a requestId or creating a success notification.
    old_ready = (
        "    if-eqz v3, :cond_9\n\n"
        "    .line 1319\n"
        "    invoke-virtual {p1}, Lcom/samsung/android/bio/face/service/ClientMonitor;->getCookie()I\n\n"
        "    move-result v4\n\n"
        "    invoke-interface {v3, v4}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(I)V"
    )
    fail_closed = (
        "    # Android16 incompatible legacy prepared prompt: fail closed.\n"
        "    const-string v3, \"SemBioFaceService\"\n\n"
        "    const-string v4, \"Prepared prompt requires Android16 biometric requestId; unsupported\"\n\n"
        "    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I\n\n"
        "    const/4 v3, 0x2\n\n"
        "    invoke-virtual {p1, v3}, Lcom/samsung/android/bio/face/service/ClientMonitor;->onError(I)Z\n\n"
        "    const/4 v3, 0x0\n\n"
        "    invoke-direct {p0, p1, v3}, Lcom/samsung/android/bio/face/service/FaceService;->removeClient(Lcom/samsung/android/bio/face/service/ClientMonitor;Z)V\n\n"
        "    invoke-direct {p0}, Lcom/samsung/android/bio/face/service/FaceService;->stopOperation()V\n\n"
        "    invoke-direct {p0}, Lcom/samsung/android/bio/face/service/FaceService;->stopCameras()V"
    )
    source = replace_once(source, old_ready, fail_closed, "onReadyForAuthentication")
    service.write_text(source, encoding="utf-8")

    utils = utility.read_text(encoding="utf-8")
    if "IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;" not in utils:
        raise RuntimeError("Expected old semGetPromptInfo call not present")
    print("Patched 4 incompatible old IBiometricService invocations.")
    print("Retained semGetPromptInfo (present in Android16).")
    print("Retained FaceUtils failed-attempt persistence; old prepared prompt fails closed.")
    print("Validation is static/offline only; genuine camera/enrollment not verified.")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--framework-smali", required=True, type=Path)
    parser.add_argument("--apk-smali", required=True, type=Path)
    args = parser.parse_args()
    native = args.framework_smali / STOCK_PACKAGE
    dest = args.apk_smali / STOCK_PACKAGE
    if not native.is_dir() or not dest.is_dir():
        raise SystemExit("Noble framework classes5.dex or decoded APK smali missing")
    copy_bindings(native, dest)
    patch_legacy_biometric_api(args.apk_smali / SERVICE, args.apk_smali / UTILITY)


if __name__ == "__main__":
    main()
