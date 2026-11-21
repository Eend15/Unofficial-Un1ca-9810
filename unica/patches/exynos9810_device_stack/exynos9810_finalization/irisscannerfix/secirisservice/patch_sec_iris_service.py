"""Make Android 10 SecIrisService run on One UI 8 (decoded smali tree)."""
from pathlib import Path
import re
import shutil
import sys

MARKER = "# UN1CA: resolve keyguard component by name"
KEYGUARD_OLD = """    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
"""
# v2/v3 are rewritten right after this call, so they are free here.
KEYGUARD_NEW = f"""    {MARKER}
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {{v1}}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_keyguardComponent"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {{v1, v2, v3, v4}}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {{v1, v2}}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
"""


def patch_keyguard(text: str) -> str:
    if MARKER in text:
        return text
    m = re.search(r"\.method public onCreate\(\)V\n    \.locals (\d+)\n", text)
    if not m or int(m.group(1)) < 5:
        raise ValueError("IrisService.onCreate needs at least 5 locals")
    if text.count(KEYGUARD_OLD) != 1:
        raise ValueError("config_keyguardComponent lookup not found exactly once")
    return text.replace(KEYGUARD_OLD, KEYGUARD_NEW, 1)


SURFACE_MARKER = "# UN1CA: Android 16 Surface parcel"
SURFACE_METHOD = re.compile(
    r"\.method public createSurfaceFromBinder\(Landroid/os/IBinder;\)Landroid/view/Surface;\n.*?\n\.end method", re.S)
# Android 10 wrote an empty Surface and overwrote its last binder with irisd's
# producer. Android 16 appends a SurfaceControl handle after the producer, so that
# trick replaced the wrong object and the camera got an abandoned Surface. Build
# the parcel Surface.readFromParcel expects: name, single-buffered, 'bque',
# producer, SurfaceControl handle.
SURFACE_NEW = f""".method public createSurfaceFromBinder(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 4

    {SURFACE_MARKER}
    invoke-static {{}}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {{v1}}, Landroid/view/Surface;-><init>()V

    :try_start_0
    const-string v2, "iris"

    invoke-virtual {{v0, v2}}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {{v0, v2}}, Landroid/os/Parcel;->writeInt(I)V

    const v3, 0x62717565

    invoke-virtual {{v0, v3}}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {{v0, p1}}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x0

    invoke-virtual {{v0, v3}}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {{v0, v2}}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {{v1, v0}}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {{:try_start_0 .. :try_end_0}} :catch_0

    invoke-virtual {{v0}}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "IrisService"

    const-string v1, "createSurfaceFromBinder failed"

    invoke-static {{v3, v1, v2}}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {{v0}}, Landroid/os/Parcel;->recycle()V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {{v1}}, Landroid/view/Surface;-><init>()V

    return-object v1
.end method"""


def patch_surface(text: str) -> str:
    if SURFACE_MARKER in text:
        return text
    found = SURFACE_METHOD.findall(text)
    if len(found) != 1 or "add-int/lit8 v4, v3, -0x18" not in found[0]:
        raise ValueError("createSurfaceFromBinder does not match the Android 10 parcel trick")
    return SURFACE_METHOD.sub(lambda m: SURFACE_NEW, text, count=1)


ORDER_MARKER = "# UN1CA: characteristics before openCamera"
# openCamera() is async; on Android 16 onOpened() can run on the camera handler
# before getCameraCharacteristics() returns, and startIRPreview() then reads a
# null field. Both blocks reload every register they use except the camera id.
OPEN_THEN_CHARS = re.compile(
    r"(?P<open>    iget-object (?P<r>v\d+), p0, L[^;\n]+;->this\$0:[^\n]+\n\n"
    r"    invoke-static \{(?P=r)\}, [^\n]+->access\$1400\([^\n]+\n\n"
    r"    move-result-object (?P=r)\n"
    r"(?:(?!\.line|:try_|\.catch)[\s\S])*?"
    r"Landroid/hardware/camera2/CameraManager;->openCamera\([^\n]+\n)"
    r"\n    \.line (?P<line>\d+)\n"
    r"(?P<chars>(?:(?!\.line|:try_|\.catch|openCamera)[\s\S])*?"
    r"->getCameraCharacteristics\([^\n]+\n\n"
    r"    move-result-object v\d+\n\n"
    r"    invoke-static \{[^}]+\}, [^\n]+->access\$\d+02\([^\n]+\n)"
)


def patch_open_order(text: str) -> str:
    if ORDER_MARKER in text:
        return text
    found = OPEN_THEN_CHARS.findall(text)
    if len(found) != 1:
        raise ValueError(f"expected one openCamera/getCameraCharacteristics pair, found {len(found)}")
    return OPEN_THEN_CHARS.sub(
        lambda m: f"    {ORDER_MARKER}\n{m['chars']}\n    .line {m['line']}\n{m['open']}", text, count=1)


OPEN_ORDER_CLASSES = ("IRV2Controller$6.smali", "IRV2Controller$22.smali")

BOOST_MARKER = "# UN1CA: CPU boost via init"
BOOST_PROP = "sys.un1ca.iris_boost"
# HyperHAL refuses SecIrisService's own CPU boost (its encrypted permission list lacks
# the package), so set a property that irisd.rc turns into a cpufreq floor.
BOOST_METHODS = {
    "acquireDVFS": ".method public acquireDVFS(I)V\n    .locals 10\n    .param p1, \"millisecond\"    # I\n",
    "releaseDVFS": ".method public releaseDVFS()V\n    .locals 2\n",
}


def patch_boost(text: str) -> str:
    if BOOST_MARKER in text:
        return text
    for name, head in BOOST_METHODS.items():
        if text.count(head) != 1:
            raise ValueError(f"{name} does not match the Android 10 method header")
        value = "1" if name == "acquireDVFS" else "0"
        hook = (f"\n    {BOOST_MARKER}\n"
                f"    const-string v0, \"{BOOST_PROP}\"\n\n"
                f"    const-string v1, \"{value}\"\n\n"
                f"    invoke-static {{v0, v1}}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V\n")
        text = text.replace(head, head + hook, 1)
    return text


GRACE_MARKER = "# UN1CA: 60 s registration scan window"
GRACE_CLASS = "Lcom/samsung/android/server/iris/Un1caIrisGrace;"
TIMER_TAIL = """    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
"""
ENROLL_HEAD = """.method protected handleEnrollResult(JIII)V
    .locals 3
"""


def patch_grace(text: str) -> str:
    if GRACE_MARKER in text:
        return text
    if text.count(TIMER_TAIL) != 1 or text.count(ENROLL_HEAD) != 1:
        raise ValueError("startInactivityTimer/handleEnrollResult do not match the Android 10 code")
    text = text.replace(TIMER_TAIL, TIMER_TAIL + f"""
    {GRACE_MARKER}
    invoke-static {{}}, {GRACE_CLASS}->onTimerStart()V
""", 1)
    # v0 is free at method entry.
    return text.replace(ENROLL_HEAD, ENROLL_HEAD + f"""
    {GRACE_MARKER}
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    invoke-static {{v0}}, {GRACE_CLASS}->onEnrollProgress(Landroid/os/Handler;)V
""", 1)


EXPOSURE_MARKER = "# UN1CA: cap iris auto-exposure"
EXPOSURE_HEAD = """.method public declared-synchronized onIRPropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
"""


def patch_exposure(text: str) -> str:
    if EXPOSURE_MARKER in text:
        return text
    if text.count(EXPOSURE_HEAD) != 1:
        raise ValueError("IRV2Controller.onIRPropertyChanged does not match the Android 10 code")
    return text.replace(EXPOSURE_HEAD, EXPOSURE_HEAD + f"""
    {EXPOSURE_MARKER}
    invoke-static {{p2}}, {GRACE_CLASS}->clampExposure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
""", 1)


KEYSTORE_OLD = (
    "invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;",
    "invoke-virtual {v0, p5}, Landroid/security/KeyStore;->addAuthToken([B)I",
)
# Android 15 renamed android.security.KeyStore's token entry point; same shape, returns an error code.
KEYSTORE_NEW = (
    "invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;",
    "invoke-virtual {v0, p5}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I",
)


def patch_keystore(text: str) -> str:
    if KEYSTORE_NEW[1] in text:
        return text
    if any(text.count(line) != 1 for line in KEYSTORE_OLD) or "Landroid/security/KeyStore;" in \
            text.replace(KEYSTORE_OLD[0], "").replace(KEYSTORE_OLD[1], ""):
        raise ValueError("handleAuthenticated KeyStore call does not match the Android 10 code")
    for old, new in zip(KEYSTORE_OLD, KEYSTORE_NEW):
        text = text.replace(old, new, 1)
    return text


# Android 10 startIRCamera/stopIRCamera call PowerManager.setAutoBrightnessLimit(II),
# which One UI 8 removed: with automatic brightness on, enrollment and unlock threw
# NoSuchMethodError and killed the service (the enroll screen then hit an ANR).
BRIGHTNESS_OLD = re.compile(
    r"invoke-virtual \{(v\d+|p\d+), (v\d+|p\d+), (v\d+|p\d+)\}, "
    r"Landroid/os/PowerManager;->setAutoBrightnessLimit\(II\)V")
BRIGHTNESS_NEW = (r"invoke-static {\1, \2, \3}, Lcom/samsung/android/server/iris/Un1caIrisGrace;"
                  r"->setAutoBrightnessLimit(Landroid/os/PowerManager;II)V")


def patch_brightness(text: str) -> str:
    if "Un1caIrisGrace;->setAutoBrightnessLimit" in text:
        if BRIGHTNESS_OLD.search(text):
            raise ValueError("setAutoBrightnessLimit only partly redirected")
        return text
    text, count = BRIGHTNESS_OLD.subn(BRIGHTNESS_NEW, text)
    if count != 2:
        raise ValueError(f"expected 2 setAutoBrightnessLimit(II) calls, found {count}")
    return text


LOCKPATTERN_OLD = "Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I"
LOCKPATTERN_NEW = "Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I"


def patch_lockpattern(text: str) -> str:
    if LOCKPATTERN_NEW in text:
        if LOCKPATTERN_OLD in text:
            raise ValueError("getBiometricLockscreen only partly replaced")
        return text
    if text.count(LOCKPATTERN_OLD) != 2:
        raise ValueError(f"expected 2 getBiometricLockscreen(II)I calls, found {text.count(LOCKPATTERN_OLD)}")
    return text.replace(LOCKPATTERN_OLD, LOCKPATTERN_NEW)


FACE_SHARE_CLASS = "Lcom/samsung/android/server/iris/Un1caIrisFaceShare;"
FACE_SHARE_MARKER = "# UN1CA: Intelligent Scan shares the front camera with face unlock"
FACE_SESSION_CALL = (
    "    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraDevice;"
    "->createCaptureSessionByOutputConfigurations(Ljava/util/List;"
    "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V\n"
)
WRAPPER_ONTRANSACT = f"""
{FACE_SHARE_MARKER}
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-static {{v0, p1, p2, p3}}, {FACE_SHARE_CLASS}->onTransact(Ljava/lang/Object;ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :un1ca_super

    const/4 v0, 0x1

    return v0

    :un1ca_super
    invoke-super {{p0, p1, p2, p3, p4}}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
"""


AUTH_HEAD = (".method public authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJI"
             "Lcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;"
             "Landroid/os/Bundle;[B)V\n")


def patch_face_share_wrapper(text: str) -> str:
    if FACE_SHARE_MARKER in text:
        return text
    if ".method public onTransact(" in text:
        raise ValueError("IrisServiceWrapper already overrides onTransact")
    if text.count(AUTH_HEAD) != 1:
        raise ValueError("IrisServiceWrapper.authenticate does not match the Android 10 code")
    # Mark the start of an iris scan setup before the first instruction (no registers used).
    start = text.index(AUTH_HEAD) + len(AUTH_HEAD)
    lines = text[start:].split("\n")
    i = next(n for n, l in enumerate(lines) if l.strip() and not l.strip().startswith("."))
    lines.insert(i, f"    {FACE_SHARE_MARKER}\n    invoke-static {{}}, {FACE_SHARE_CLASS}->onAuthenticateStart()V\n")
    text = text[:start] + "\n".join(lines)
    return text.rstrip("\n") + "\n" + WRAPPER_ONTRANSACT


def patch_face_share_session(text: str) -> str:
    if FACE_SHARE_MARKER in text:
        return text
    if text.count(FACE_SESSION_CALL) != 1:
        raise ValueError("IRV2Controller.startFrontPreview session call does not match the Android 10 code")
    # v1 is the OutputConfiguration list; the helper only appends to it.
    return text.replace(FACE_SESSION_CALL, f"""    {FACE_SHARE_MARKER}
    invoke-static {{p0, v1}}, {FACE_SHARE_CLASS}->onFrontSession(Ljava/lang/Object;Ljava/util/List;)V

""" + FACE_SESSION_CALL, 1)


PREVIEW_MARKER = "# UN1CA: Show camera preview setting for the lock screen"
PREVIEW_ADD = """    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/server/iris/ui/IrisViewManager;->mWindowManager:Landroid/view/WindowManager;
"""
PREVIEW_HOOK = f"""    :cond_6
    :try_start_3
    {PREVIEW_MARKER}
    iget-object v3, p0, Lcom/samsung/android/server/iris/ui/IrisViewManager;->mContext:Landroid/content/Context;

    invoke-static {{v3, v0, p1}}, {GRACE_CLASS}->applyPreviewSetting(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/server/iris/ui/IrisViewManager;->mWindowManager:Landroid/view/WindowManager;
"""


def patch_preview(text: str) -> str:
    """IrisViewManager.addAuthenticateView: let the iris settings hide the lock screen
    preview (transparent window, same size) right before it is added."""
    if PREVIEW_MARKER in text:
        return text
    head = ".method public declared-synchronized addAuthenticateView(Lcom/samsung/android/server/iris/ClientMonitor;Landroid/os/IBinder;IIII)V"
    start = text.find(head)
    end = text.find(".end method", start)
    body = text[start:end] if start >= 0 else ""
    if body.count(PREVIEW_ADD) != 1 or "invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView" not in body:
        raise ValueError("IrisViewManager.addAuthenticateView does not match the Android 10 code")
    return text[:start] + body.replace(PREVIEW_ADD, PREVIEW_HOOK, 1) + text[end:]


GRACE_SMALI = "com/samsung/android/server/iris/Un1caIrisGrace.smali"
FACE_SHARE_SMALI = "com/samsung/android/server/iris/Un1caIrisFaceShare.smali"


def main(root: Path, helper_smali_root: Path):
    svc = root / "smali/com/samsung/android/server/iris/IrisService.smali"
    # Un1caIrisGrace (registration window, exposure cap) lives next to IrisService.
    shutil.copyfile(helper_smali_root / GRACE_SMALI, root / "smali" / GRACE_SMALI)
    # Un1caIrisFaceShare and its synthetic lambda classes.
    share = sorted((helper_smali_root / FACE_SHARE_SMALI).parent.glob("Un1caIrisFaceShare*.smali"))
    if not any(p.name == Path(FACE_SHARE_SMALI).name for p in share):
        raise ValueError("Un1caIrisFaceShare smali missing; run tools/regen_smali.sh")
    for p in share:
        shutil.copyfile(p, root / "smali" / Path(FACE_SHARE_SMALI).parent / p.name)
    text = svc.read_text()
    out = patch_brightness(patch_keystore(patch_grace(patch_boost(patch_surface(patch_keyguard(text))))))
    if patch_brightness(patch_keystore(patch_grace(patch_boost(patch_surface(patch_keyguard(out)))))) != out:
        raise ValueError("not idempotent")
    svc.write_text(out)
    wrapper = svc.parent / "IrisService$IrisServiceWrapper.smali"
    out = patch_face_share_wrapper(patch_lockpattern(wrapper.read_text()))
    if patch_face_share_wrapper(patch_lockpattern(out)) != out:
        raise ValueError("not idempotent")
    wrapper.write_text(out)
    irv2 = svc.parent / "IRV2Controller.smali"
    out = patch_face_share_session(patch_exposure(irv2.read_text()))
    if patch_face_share_session(patch_exposure(out)) != out:
        raise ValueError("not idempotent")
    irv2.write_text(out)
    for name in OPEN_ORDER_CLASSES:
        path = svc.parent / name
        out = patch_open_order(path.read_text())
        if patch_open_order(out) != out:
            raise ValueError("not idempotent")
        path.write_text(out)
    ivm = svc.parent / "ui/IrisViewManager.smali"
    out = patch_preview(ivm.read_text())
    if patch_preview(out) != out:
        raise ValueError("not idempotent")
    ivm.write_text(out)
    print("SecIrisService: keyguard component resolved by name, Surface parcel rebuilt for Android 16, "
          "camera characteristics loaded before openCamera, CPU boost, registration window, "
          "exposure cap, KeyStoreAuthorization, LockPatternUtils.getBiometricState and "
          "One UI 8 auto brightness limit hooked, front camera shared with face unlock, "
          "lock screen preview setting")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
