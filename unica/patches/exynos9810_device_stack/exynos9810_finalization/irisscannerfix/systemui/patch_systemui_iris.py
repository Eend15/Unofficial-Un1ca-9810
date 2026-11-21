"""Hook One UI 8 SystemUI for lock screen iris unlock (decoded SystemUI.apk).

* KeyguardUpdateMonitor.handleStartedWakingUp hands the monitor to Un1caIrisKeyguard,
  which registers a keyguard callback and drives SecIrisService with Samsung's own
  preview window.
* KeyguardSecUpdateMonitorImpl.shouldListenForFace yields Camera 1 to SecIrisService
  while Iris is active or starting so its full-color RGB preview and IR scan never
  collide with FaceService, and allows FaceService to run as Intelligent Scan fallback.
* AppOpsControllerImpl.isUserVisible exempts the platform-signed iris service from
  the privacy dot, like Samsung's own sead/sightcare sensor services.
Usage: patch_systemui_iris.py <decoded SystemUI.apk> <helper smali root>
"""
from pathlib import Path
import re
import shutil
import sys

MARKER = "# UN1CA: lock screen iris unlock"
HOOK = ("    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;"
        "->onStartedWakingUp(Lcom/android/keyguard/KeyguardUpdateMonitor;)V\n")
METHOD = re.compile(r"(\.method public handleStartedWakingUp\(I\)V\n.*?)(\n    return-void\n)(\.end method)", re.S)


def patch(text: str) -> str:
    if MARKER in text:
        return text
    found = METHOD.findall(text)
    if len(found) != 1 or found[0][0].count("return-void") != 0:
        raise ValueError("handleStartedWakingUp does not have the single trailing return-void expected")
    return METHOD.sub(lambda m: f"{m[1]}\n    {MARKER}\n{HOOK}{m[2]}{m[3]}", text, count=1)


FACE_GUARD_MARKER = "# UN1CA: yield Camera 1 to Iris RGB preview when Iris is active"
FACE_GUARD_HEAD = """.method public final shouldListenForFace()Z
    .locals 15
"""
FACE_GUARD_HOOK = f"""
    {FACE_GUARD_MARKER}
    invoke-static {{p0}}, Lcom/android/keyguard/Un1caIrisKeyguard;->shouldAllowFaceAuth(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-nez v0, :un1ca_allow_face

    const/4 v0, 0x0

    return v0

    :un1ca_allow_face
"""


def patch_face_guard(text: str) -> str:
    if FACE_GUARD_MARKER in text:
        return text
    if text.count(FACE_GUARD_HEAD) != 1:
        raise ValueError("KeyguardSecUpdateMonitorImpl.shouldListenForFace does not match One UI 8")
    return text.replace(FACE_GUARD_HEAD, FACE_GUARD_HEAD + FACE_GUARD_HOOK, 1)


PRIVACY_MARKER = "# UN1CA: system iris service camera use is not a privacy item"
PRIVACY_HEAD = """.method public final isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
"""
# Same rule Samsung applies to its own platform-signed sensor services (sead, sightcare)
# right below: only the real, platform-signed iris service is exempt.
PRIVACY_HOOK = f"""
    {PRIVACY_MARKER}
    const-string v0, "com.samsung.android.server.iris"

    invoke-virtual {{v0, p1}}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :un1ca_not_iris

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {{v1}}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {{v1, v2, v0}}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :un1ca_not_iris

    const/4 v1, 0x0

    return v1

    :un1ca_not_iris
"""


def patch_privacy(text: str) -> str:
    if PRIVACY_MARKER in text:
        return text
    if text.count(PRIVACY_HEAD) != 1 or '"com.samsung.sightcare"' not in text:
        raise ValueError("AppOpsControllerImpl.isUserVisible does not match One UI 8")
    return text.replace(PRIVACY_HEAD, PRIVACY_HEAD + PRIVACY_HOOK, 1)


COLLAPSE_MARKER = "# UN1CA: iris finishes the unlock like face when the screen is on"
COLLAPSE_METHOD = re.compile(
    r"\.method public final startWakeAndUnlock\(ILcom/android/systemui/keyguard/shared/model/"
    r"BiometricUnlockSource;\)V\n.*?\.end method", re.S)
COLLAPSE_FACE = re.compile(
    r"(    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:"
    r"Landroid/hardware/biometrics/BiometricSourceType;\n\n    if-ne p1, v1, (:cond_\w+)\n)")


def patch_collapse(text: str) -> str:
    """MODE_UNLOCK_COLLAPSING (screen already on) only finished the unlock for FINGERPRINT
    and FACE, so a successful iris scan left the phone on the lock screen until a swipe.
    Un1caIrisKeyguard already returned for "Stay on Lock screen", so finish it here."""
    if COLLAPSE_MARKER in text:
        return text
    methods = COLLAPSE_METHOD.findall(text)
    if len(methods) != 1:
        raise ValueError("BiometricUnlockController.startWakeAndUnlock(I, source) does not match One UI 8")
    body = methods[0]
    face = COLLAPSE_FACE.findall(body)
    if len(face) != 1 or "MODE_UNLOCK_COLLAPSING" not in body \
            or "iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor" not in body \
            or "const/4 v4, 0x1" not in body or "const/4 v8, 0x0" not in body:
        raise ValueError("MODE_UNLOCK_COLLAPSING face branch does not match One UI 8")
    skip = face[0][1]
    hook = f"""    {COLLAPSE_MARKER}
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :un1ca_not_iris_collapse

    invoke-virtual {{v0, v4}}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, {skip}

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {{p1, v8}}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    goto {skip}

    :un1ca_not_iris_collapse
"""
    new_body = COLLAPSE_FACE.sub(lambda m: hook + m[1], body, count=1)
    return text.replace(body, new_body, 1)


LAUNCH_MARKER = "# UN1CA: release the iris cameras before an app launches from the lock screen"
LAUNCH_HOOK = ("    invoke-static {}, Lcom/android/keyguard/Un1caIrisKeyguard;"
               "->onLaunchFromLockscreen()V\n")
# CameraGestureHelper.launchCamera: lock screen camera (shortcut, double press power);
# KeyguardSecAffordanceView.launchShortcut: One UI's lock screen shortcuts.
LAUNCH_METHODS = {
    "com/android/systemui/camera/CameraGestureHelper.smali": ".method public final launchCamera(I)V",
    "com/android/systemui/statusbar/KeyguardSecAffordanceView.smali": ".method public final launchShortcut(FF)V",
}


def patch_launch(text: str, head: str) -> str:
    if LAUNCH_MARKER in text:
        return text
    start = text.find(head + "\n")
    if start < 0 or text.count(head + "\n") != 1:
        raise ValueError(f"{head} does not match One UI 8")
    m = re.compile(r"\n    \.locals \d+\n").search(text, start)
    if not m or m.start() > text.find(".end method", start):
        raise ValueError(f"{head} has no .locals line")
    return text[:m.end()] + f"\n    {LAUNCH_MARKER}\n" + LAUNCH_HOOK + text[m.end():]


HELPER_PKG = "com/android/keyguard"
HELPER = HELPER_PKG + "/Un1caIrisKeyguard.smali"


def one(root: Path, rel: str) -> Path:
    found = list(root.glob("smali*/" + rel))
    if len(found) != 1:
        raise ValueError(f"expected one {rel}, found {len(found)}")
    return found[0]


def main(root: Path, helper_smali_root: Path):
    """root: decoded SystemUI.apk; helper_smali_root: prebuilt Un1caIrisKeyguard smali."""
    kum = one(root, "com/android/keyguard/KeyguardUpdateMonitor.smali")
    out = patch(kum.read_text())
    if patch(out) != out:
        raise ValueError("not idempotent")
    kum.write_text(out)
    sec_kum = list(root.glob("smali*/com/android/keyguard/KeyguardSecUpdateMonitorImpl.smali"))
    if len(sec_kum) == 1:
        out = patch_face_guard(sec_kum[0].read_text())
        if patch_face_guard(out) != out:
            raise ValueError("not idempotent")
        sec_kum[0].write_text(out)
    ops = one(root, "com/android/systemui/appops/AppOpsControllerImpl.smali")
    out = patch_privacy(ops.read_text())
    if patch_privacy(out) != out:
        raise ValueError("not idempotent")
    ops.write_text(out)
    buc = one(root, "com/android/systemui/statusbar/phone/BiometricUnlockController.smali")
    out = patch_collapse(buc.read_text())
    if patch_collapse(out) != out:
        raise ValueError("not idempotent")
    buc.write_text(out)
    for rel, head in LAUNCH_METHODS.items():
        path = one(root, rel)
        out = patch_launch(path.read_text(), head)
        if patch_launch(out, head) != out:
            raise ValueError("not idempotent")
        path.write_text(out)
    # The helper gets its own dex so no existing dex grows past the method limit.
    found_helper = list(root.glob("smali*/" + HELPER))
    if found_helper:
        dst = found_helper[0].parent
        for old_f in dst.glob("Un1caIrisKeyguard*.smali"):
            old_f.unlink()
    else:
        existing = [p.name for p in root.glob("smali_classes*")]
        n = max([1] + [int(p[len("smali_classes"):]) for p in existing]) + 1
        dst = root / f"smali_classes{n}" / HELPER_PKG
        dst.mkdir(parents=True, exist_ok=True)
    # Copy only the helper and its synthetic classes; the package itself is SystemUI's.
    for f in (helper_smali_root / HELPER_PKG).glob("Un1caIrisKeyguard*.smali"):
        shutil.copyfile(f, dst / f.name)
    print("SystemUI: KeyguardUpdateMonitor wake hook, Face/Iris Camera 1 guard, privacy dot exemption "
          "iris unlock-collapsing and lock screen launch release added")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
