#!/usr/bin/env python3
"""Read-only source and ROM-release safety checks, never deploys anything.

--mode source checks the inert integration preview. --mode release additionally
requires Binder/SELinux/init gates and is expected to fail until completed.
"""
from __future__ import annotations

import argparse
from collections import defaultdict
from pathlib import Path
import re
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
WORK = ROOT / "out/target/star2lte/work_dir"
FACE = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix"
AUDIT = ROOT / "out/target/star2lte/face-audit"
FACEUNLOCKFIX_STAGE = AUDIT / "faceunlockfix_rom_stage/star2lte"
MANIFEST = (ROOT / "unica/patches/exynos9810_device_stack/embedded"
            "/exynos9810_legacy_port/vendor/etc/vintf/manifest.xml")
TARGET_ADAPTER = (ROOT / "out/target/star2lte/apktool/system/framework"
                  "/services.jar/smali/com/android/server/biometrics/sensors"
                  "/face/hidl/HidlToAidlSensorAdapter.smali")
PREVIEW = AUDIT / "faceunlockfix_adapter_probe_preview/HidlToAidlSensorAdapter.smali"
SESSION_ADAPTER = (ROOT / "out/target/star2lte/apktool/system/framework"
                   "/services.jar/smali/com/android/server/biometrics/sensors"
                   "/face/hidl/HidlToAidlSessionAdapter.smali")
CLEANUP_SMALI = (ROOT / "out/target/star2lte/apktool/system/framework"
                 "/services.jar/smali/com/android/server/biometrics/sensors"
                 "/InternalCleanupClient.smali")
FACEUNLOCKFIX_CLEANUP = FACE / "bridge/FaceunlockFixCleanupFailureBridge.java"
NATIVE_NAME = "com.samsung.android.bio.face.IFaceDaemon"
OTHER_NAME = "samsung.face"


class Check:
    def __init__(self) -> None:
        self.failed = 0

    def check(self, label: str, valid: bool, detail: str = "") -> None:
        print(f"{'PASS' if valid else 'BLOCK'} {label}: {detail}")
        if not valid:
            self.failed += 1


def rc_definitions(root: Path) -> dict[str, list[tuple[Path, bool]]]:
    services: dict[str, list[tuple[Path, bool]]] = defaultdict(list)
    for partition in ("system", "system/system", "system/system/system_ext",
                      "system/product", "system_ext", "product", "vendor", "odm"):
        init_dir = root / partition / "etc/init"
        if not init_dir.is_dir():
            continue
        for path in init_dir.rglob("*.rc"):
            text = path.read_text(encoding="utf-8", errors="replace")
            chunks = re.split(r"(?m)^(?=[ \t]*service[ \t]+)", text)
            for chunk in chunks:
                match = re.match(r"[ \t]*service\s+(\S+)\s+(\S+)", chunk)
                if match:
                    disabled = bool(re.search(r"(?m)^\s+disabled\s*$", chunk))
                    services[match.group(1)].append((path, disabled))
    return services


def service_contexts(work: Path) -> dict[str, set[str]]:
    definitions: dict[str, set[str]] = defaultdict(set)
    for partition in ("system/system", "system/system/system_ext",
                      "system/product", "system_ext", "product", "vendor", "odm"):
        base = work / partition / "etc/selinux"
        if not base.is_dir():
            continue
        for path in base.glob("*service_contexts"):
            for line in path.read_text(errors="replace").splitlines():
                line = line.split("#", 1)[0].strip()
                if not line:
                    continue
                fields = line.split()
                if len(fields) >= 2:
                    definitions[fields[0]].add(fields[1])
    return definitions


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--mode", choices=("source", "release"), default="source")
    args = parser.parse_args()
    c = Check()

    adapter = TARGET_ADAPTER.read_text(encoding="utf-8") if TARGET_ADAPTER.is_file() else ""
    c.check("Android16 HIDL getter discovered",
            "getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;" in adapter
            and "mTestHalEnabled:Z" in adapter
            and "ISehBiometricsFace;->getService()" in adapter)
    valid_adapter = "FaceunlockFixProbe;->tryAcquire" not in adapter
    if not valid_adapter:
        # A resumed opt-in source tree may already have our exact hook.
        # Reject modified/duplicate insertions rather than accepting a marker.
        from stage_adapter_probe import restore_pristine, render
        try:
            valid_adapter = render(restore_pristine(adapter)) == adapter
        except (ValueError, AssertionError):
            valid_adapter = False
    c.check("Extracted HAL getter is pristine or exactly verified opt-in",
            valid_adapter)
    p = PREVIEW.read_text(encoding="utf-8") if PREVIEW.is_file() else ""
    c.check("Isolated opt-in preview exists", bool(p)
            and p.count("FaceunlockFixProbe;->tryAcquire") == 1
            and p.count("ISehBiometricsFace;->getService()") == 1
            and "mTestHalEnabled:Z" in p)
    # HidlToAidlSensorAdapter.getIBiometricsFace merges the FaceunlockFix-success and
    # original vendor-success control-flow paths at :goto_2. That downstream
    # block may log an error using v1 before v1 is overwritten. Missing a v1
    # String on the new branch makes system_server method verification unsafe,
    # even when the FaceunlockFix opt-in property is OFF at runtime.
    face_hook = re.search(
        r"FaceunlockFixProbe;->tryAcquire.*?\n[ \t]*:faceunlockfix_probe_fallback", p, re.S)
    c.check("FaceunlockFix HIDL branch initializes logging register at CFG merge",
            face_hook is not None and bool(re.search(
                r'const-string v1, "HidlToAidlSensorAdapter"\s+goto :goto_2',
                face_hook.group(0))),
            "both HIDL acquisition branches give v1 a String before :goto_2")
    probe_source = FACE / "bridge/FaceunlockFixProbe.java"
    probe = probe_source.read_text(encoding="utf-8") if probe_source.is_file() else ""
    c.check("Probe defaults off and requires real native Binder",
            "persist.sys.un1ca.faceunlockfix.experimental" in probe
            and "Build.IS_DEBUGGABLE" in probe
            and "ServiceManager.checkService(NATIVE_SERVICE)" in probe
            and "getInterfaceDescriptor()" in probe)
    session_source = (SESSION_ADAPTER.read_text(encoding="utf-8")
                      if SESSION_ADAPTER.is_file() else "")
    c.check("Samsung extension ABI enforced for injected HAL",
            "ISehBiometricsFace create(" in probe
            and "check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;"
                in session_source)
    cleanup_smali = CLEANUP_SMALI.read_text() if CLEANUP_SMALI.is_file() else ""
    cleanup = FACEUNLOCKFIX_CLEANUP.read_text() if FACEUNLOCKFIX_CLEANUP.is_file() else ""
    hidl_file = FACE / "bridge/FaceunlockFixHidl.java"
    hidl = hidl_file.read_text() if hidl_file.is_file() else ""
    c.check("Cleanup error is not silently routed to ErrorConsumer",
            ".implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;" in cleanup_smali
            and ".implements Lcom/android/server/biometrics/sensors/ErrorConsumer;" not in cleanup_smali
            and "task.mCallback == null" in cleanup
            and "task.mCallback != cleanup.mEnumerateCallback" in cleanup,
            "Android16 InternalCleanupClient is an EnumerateConsumer, not ErrorConsumer")
    c.check("Stalled FaceunlockFix enumeration fails closed without faked templates",
            "onClientFinished(task, false)" in cleanup
            and "FaceunlockFixCleanupFailureBridge.completeFailedEnumeration(cb, user)" in hidl
            and "ENUMERATE_CALLBACK_TIMEOUT_MS = 30000L" in hidl
            and "onEnrollmentsEnumerated(" not in cleanup
            and "cb.onEnumerate(" not in cleanup,
            "uses the native framework enumerate failure callback, never empty result")
    backend_src = FACE / "bridge/FaceunlockFixNativeBackend.java"
    backend_text = backend_src.read_text() if backend_src.is_file() else ""
    native_enum_src = FACE / "bridge/FaceunlockFixNativeEnumeration.java"
    native_enum_text = native_enum_src.read_text() if native_enum_src.is_file() else ""
    c.check("Original Samsung read-only template query never fabricates empty templates",
            "readVerifiedNativeTemplateIds()" in backend_text
            and "daemon.request(11, new byte[0], output, 0)" in backend_text
            and "FaceunlockFixNativeEnumeration.positiveTemplateIds(output, returned)" in backend_text
            and "returnedCount <= 0" in native_enum_text
            and "if (returned == 0)" in backend_text
            and "confirmedEmptyStore(store, returned)" in backend_text
            and "!store.isDirectory()" in native_enum_text
            and "!store.canRead()" in native_enum_text
            and "files != null && files.length == 0" in native_enum_text
            and "if (character < '1' || character > '9') return null" in native_enum_text
            and "backend.readVerifiedNativeTemplateIds()" in hidl
            and "onEnumerate(backend.getDeviceId(), nativeIds, nativeUsers)" in hidl
            and "int rc = backend.enumerate()" in hidl,
            "native request(11) IDs; empty requires readable native store confirmation; invalid/unreadable fails closed")
    c.check("Android16 HIDL int32 enrollment features cannot crash FaceHandler",
            "supportsNativeEnrollmentFeatures(ArrayList<?> features)" in hidl
            and "for (Object boxedFeature : features)" in hidl
            and "boxedFeature instanceof Integer" in hidl
            and "boxedFeature instanceof Byte" in hidl
            and "((Number) boxedFeature).intValue()" in hidl
            and "for (Byte feature : features)" not in hidl,
            "Android16 sends ArrayList<Integer> from HIDL int32Vector; no Byte cast")
    # Critical live crash 2026-10-12 11:25:51: onAcquired invoked
    # cb.asBinder().transact(3,...) on a LOCAL HwBinder implementation.
    # JHwBinder_native_transact's unchecked HIDL Return SIGABRT'd system_server.
    # The actual framework converter has typed public handler methods; native
    # callbacks must reach those without any raw HIDL Binder transaction.
    c.check("FaceunlockFix native callbacks do not transact a local Java HwBinder",
            "cb.asBinder().transact(transaction" not in hidl
            and "HwParcel parcel = new HwParcel()" not in hidl
            and "private HidlToAidlCallbackConverter frameworkCallback()" in hidl
            and "frameworkCallback().mAidlResponseHandler.onEnrollmentProgress(" in hidl
            and "frameworkCallback().mAidlResponseHandler.handleResponse(" in hidl
            and "AcquisitionClient.class" in hidl
            and "frameworkCallback().onAuthenticated(" in hidl,
            "genuine enroll/acquired/auth callbacks delivered through typed Android16 converter")
    c.check("FaceunlockFix enrollment uses framework-converted feature codes",
            "FACEUNLOCKFIX_SUPPORTED_DEFAULT_FEATURE = 2" in hidl
            and "FACEUNLOCKFIX_IGNORED_OPTIONAL_DEBUG_FEATURE = 3" in hidl,
            "Android16 AidlConversionUtils maps AIDL diverse poses 1 to framework 2 and DEBUG 2 to framework 3")
    cam_src_path = FACE / "bridge/FaceunlockFixCamera2FrameSource.java"
    cam_src = cam_src_path.read_text() if cam_src_path.is_file() else ""
    c.check("FaceunlockFix Camera2 native image-type contract preserved",
            "FACEUNLOCKFIX_IMAGE_TYPE_NV21 = 0" in cam_src
            and "FACEUNLOCKFIX_IMAGE_TYPE_YUV_420_888 = 2" in cam_src
            and "FaceunlockFixPlanePayload.copy(" in cam_src
            and "Nv21Packer.pack(" not in cam_src,
            "original FrCamCtrl: NV21=0, YUV_420_888=2, planes copied verbatim")
    # 2026-10-12 physical enrollment: real front Camera2 opened and queued
    # 614398-byte YUV frames, but the Samsung face circle was black. Its UI
    # Surface was present in the actual FaceEnrollClient, while FaceunlockFix only
    # started camera.start() with its private ImageReader output.
    c.check("FaceunlockFix enrollment renders real front-camera frames to Samsung preview",
            "genuineEnrollmentPreview()" in hidl
            and "active instanceof FaceEnrollClient" in hidl
            and "((FaceEnrollClient) active).mPreviewSurface" in hidl
            and "preview == null || !preview.isValid()" in hidl
            and "expected == Operation.ENROLL ? genuineEnrollmentPreview() : null" in hidl
            and "camera.start(preview)" in hidl
            and "targets.add(preview)" in cam_src
            and "request.addTarget(preview)" in cam_src
            and "previewSurfaceAttached=" in cam_src,
            "same camera capture session targets both native ImageReader and genuine UI Surface")
    # Live physical keyguard run 22:30 after successful genuine enrollment
    # yielded 15 error2 auth failures because A16 SemFaceUtils passes mode=4
    # for face_open_eyes=1 while stock Samsung native expects RGB mode=10 for eyes open.
    # Explicit 0 maps to stock6, unset to stock2. Mask 0x10 must remain blocked.
    c.check("Keyguard Samsung open-eyes mode preserves original security policy",
            "stockFaceunlockFixSecurityMode(int androidMode, int openEyesSetting)" in hidl
            and "A16_REQUIRE_OPEN_EYES = 4" in hidl
            and "FACEUNLOCKFIX_RGB_REQUIRE_OPEN_EYES = 10" in hidl
            and "FACEUNLOCKFIX_RGB_NO_OPEN_EYES = 6" in hidl
            and "context.getContentResolver(), \"face_open_eyes\"" in hidl
            and "if (androidMode != 0) return -1" in hidl
            and "if (nativeSecurityMode < 0)" in hidl
            and "backend.authenticateReserved(ticket, operationId," in hidl
            and "nativeSecurityMode, originalFido)" in hidl
            and "backend.authenticate(operationId, securityMode, originalFido)" not in hidl,
            "Android16 eye flag4 maps only to verified stock eye-open10, never weakens mask/unknown settings")
    c.check("Stock faster recognition opt-in preserves open-eyes and Keyguard policy",
            "STOCK_FAST_WITH_OPEN_EYES = 8" in hidl
            and "stockSpeed != 2 && stockSpeed != 0" in hidl
            and '"com.android.systemui".equals(client.mOwner)' in hidl
            and '"face_faster_recognition", -1, -2' in hidl
            and '"face_recognition_speed_up", -1, -2' in hidl
            and "userSelectedStockSpeed()" in hidl
            and "stockFaceunlockFixSecurityMode(" in hidl,
            "defaults to stock mode 10; real stock mode 8 only by Keyguard user preference")
    c.check("FaceunlockFix camera is demand-only and always bounded",
            "cachedFrontCamera" in cam_src
            and "if (selected == null)" in cam_src
            and "cachedFrontCamera = null" in cam_src
            and "AUTH_CAPTURE_HARD_LIMIT_MS = 12000L" in hidl
            and "ENROLL_CAPTURE_HARD_LIMIT_MS = 60000L" in hidl
            and "armCaptureHardLimit(expected, expectedSerial)" in hidl
            and "operationSerial != expectedSerial" in hidl
            and "failOperationForSerial(expectedSerial" in hidl
            and "cancelCaptureTimeoutLocked()" in hidl
            and "camera.stopIfGeneration(cameraGeneration)" in hidl
            and "stopIfGeneration(long generation)" in cam_src
            and "onFailure(long generation, String reason, Throwable cause)" in cam_src
            and "session.stopRepeating()" in cam_src
            and "cameraThread.quitSafely()" in cam_src,
            "no idle stream; cache only genuine metadata and cancel runaway sessions")
    image_callback = cam_src.split(
        "private void onImageAvailable(long generation, ImageReader reader)", 1)[-1].split(
        "private void processImageOnTransport(", 1)[0]
    c.check("FaceunlockFix fast frame delivery keeps Camera2 callbacks lightweight",
            "ImageReader.newInstance(WIDTH, HEIGHT," in cam_src
            and "selected.format, 3)" in cam_src
            and "sendHandler.post(" in image_callback
            and "processImageOnTransport(generation, queuedFrame," in image_callback
            and "FaceunlockFixPlanePayload.copy(" not in image_callback
            and "FaceunlockFixPlanePayload.copy(" in cam_src.split(
                "private void processImageOnTransport(", 1)[-1]
            and "Process.THREAD_PRIORITY_DISPLAY" in cam_src
            and "stopIfGeneration(generation);" in cam_src
            and "frame.close()" in cam_src,
            "real image ownership moves to bounded native worker; no extra idle frames")
    # The native authenticate Binder call used to serialize Camera2 startup.
    # New Keyguard warmup may open only while framework auth is active; native
    # receives zero frames until it has accepted the operation with HAL_OK.
    auth_method = hidl.split("@Override public int sehAuthenticate(", 1)[-1].split(
        "@Override public int sehCloseTaSession()", 1)[0]
    capture_method = cam_src.split(
        "private void onImageAvailable(long generation, ImageReader reader)", 1)[-1].split(
        "private void processImageOnTransport(", 1)[0]
    c.check("Keyguard camera startup overlaps native setup without premature biometric frames",
            "warmCameraDuringNativeAuthentication(serial)" in auth_method
            and auth_method.index("warmCameraDuringNativeAuthentication(serial)")
            < auth_method.index("backend.authenticateReserved(ticket, operationId,")
            < auth_method.index("camera.armNativeTransport(generation)")
            and "camera.start(null, false)" in hidl
            and "armCaptureHardLimit(Operation.AUTHENTICATE, expectedSerial)" in hidl
            and "!nativeTransportArmed" in capture_method
            and "!isCurrent(generation) || !nativeTransportArmed" in cam_src
            and "nativeTransportArmed = armImmediately" in cam_src
            and "nativeTransportArmed = false;" in cam_src
            and "if (ticket != 0L) nativeAuthInvoked = true;" in auth_method
            and "ticket = backend.reserveAuthentication();" in auth_method
            and "backend.reserveEnrollment();" in hidl
            and "backend.cancelAuthentication()" in hidl
            and "backend.cancelEnrollment()" in hidl
            and "authStart.beginNative(ticket)" in backend_text
            and "authStart.finishNative(ticket, rc)" in backend_text
            and "enrollStart.beginNative(ticket)" in backend_text
            and "enrollStart.finishNative(ticket, rc)" in backend_text
            and "finishNativeAuthCancellation(ticket)" in backend_text
            and "finishNativeEnrollCancellation(ticket)" in backend_text
            and "if (authInvoked) backend.cancelAuthentication();" in hidl
            and "return authInvoked ? backend.cancelAuthentication() : HAL_OK;" in hidl
            and "operationSerial != serial" in auth_method
            and "if (rc != HAL_OK) return failOperationForSerial" in auth_method,
            "camera prewarm overlaps reserved real daemon auth; cancellation cannot race ahead of native start")
    gate = FACE / "bridge/FaceunlockFixAuthStartGate.java"
    gate_src = gate.read_text() if gate.is_file() else ""
    c.check("Native authentication start/cancel reservation is race-safe",
            "CANCEL_AFTER_START" in gate_src
            and "TERMINAL_DURING_START" in gate_src
            and "POISONED" in gate_src
            and "CancelAction.DEFERRED" in gate_src
            and "StartResult.CANCEL_NATIVE" in gate_src
            and "nativeStartException" in gate_src
            and "FaceunlockFixAuthStartGate authStart" in backend_text
            and "FaceunlockFixAuthStartGate enrollStart" in backend_text,
            "skip pre-dispatch cancellation, defer in-flight cancellation, reject uncertain Binder state")
    for name in ("FaceunlockFixHidl.java", "FaceunlockFixProbe.java",
                 "FaceunlockFixAuthStartGate.java",
                 "FaceunlockFixNativeBackend.java", "FaceunlockFixCamera2FrameSource.java",
                 "Nv21Packer.java", "FaceunlockFixPlanePayload.java",
                 "NativeFaceCallback.java", "FaceunlockFixNativeEnumeration.java",
                 "FaceunlockFixCleanupFailureBridge.java"):
        c.check("Source exists " + name, (FACE / "bridge" / name).is_file())
    for name in ("IFaceDaemon", "IFaceDaemonCallback", "IFaceService",
                 "IFaceServiceReceiver", "SemBioFace"):
        c.check("Legacy AIDL staged " + name,
                (FACE / "aidl/com/samsung/android/bio/face" / (name + ".aidl")).is_file())

    rc_template = HERE / "faceunlockfixd.rc"
    rc = rc_template.read_text(encoding="utf-8") if rc_template.is_file() else ""
    c.check("FaceunlockFix init isolated and disabled",
            bool(re.search(r"(?m)^service\s+faceunlockfixd\s+/system/bin/faced\s*$", rc))
            and bool(re.search(r"(?m)^\s+disabled\s*$", rc))
            and bool(re.search(r"(?m)^\s+oneshot\s*$", rc))
            and "persist.sys.un1ca.faceunlockfix.experimental=1" in rc)
    example = HERE / "policy/service_contexts.example"
    labels = example.read_text(encoding="utf-8") if example.is_file() else ""
    c.check("FaceunlockFix uses genuine stock Binder service labels",
            bool(re.search(r"(?m)^" + re.escape(NATIVE_NAME)
                           + r"\s+u:object_r:faced_service:s0\s*$", labels))
            and bool(re.search(r"(?m)^" + re.escape(OTHER_NAME)
                           + r"\s+u:object_r:faced_service:s0\s*$", labels)))
    security_doc = HERE / "policy/SECURITY_MODEL.md"
    security = security_doc.read_text() if security_doc.is_file() else ""
    file_labels = (HERE / "policy/file_contexts.example").read_text()
    c.check("FaceunlockFix reuses stock SELinux; no privilege escalation",
            "/system/bin/faced u:object_r:faced_exec:s0" in file_labels
            and "neverallow" in security
            and "no privilege-adding TE" in security
            and not any((HERE / "policy").glob("*.te*")))
    make_rom = (ROOT / "scripts/make_rom.sh").read_text()
    assembly_path = HERE / "stage_verified_rom.py"
    assembly = assembly_path.read_text() if assembly_path.is_file() else ""
    c.check("FaceunlockFix ROM assembly supports all three Exynos9810 targets",
            "EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD" in make_rom
            and "stage_verified_rom.py" in make_rom
            and "starlte|star2lte|crownlte" in make_rom
            and 'choices=TARGETS' in assembly
            and 'select_target(args.target)' in assembly
            and ".faceunlockfix_build_variant" in make_rom
            and "PREVIOUS_FACEUNLOCKFIX_VARIANT" in make_rom
            and "FACEUNLOCKFIX_BUILD_VARIANT" in make_rom
            and '"$SRC_DIR/scripts/internal/FaceunlockFix_bridge"' in make_rom
            and "FACEUNLOCKFIX_HASH" in make_rom
            and "EXPLICIT_CLEAN_WORK_DIR" in make_rom
            and "Standard ROM work_dir contains FaceunlockFix runtime" in make_rom
            and "Experimental FaceunlockFix work_dir is missing" in make_rom
            and "ORIGINAL_SERVICES_SHA" in assembly
            and "KNOWN_PROBE_BASE_SHA" in assembly
            and "append_only_verified_bridge" in assembly
            and "--prepare" in assembly
            and "classes3.dex" in assembly
            and "Original Android16 framework entry was changed" in assembly
            and "EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD" in assembly
            and "--apply" in assembly
            and "neverallow" in assembly,
            "off by default, variant-safe cache, guarded hook, append-only dex and no ADB")
    for target in ("starlte", "star2lte", "crownlte"):
        device = ROOT / "target" / target / "config.sh"
        config = device.read_text() if device.is_file() else ""
        c.check(f"FaceunlockFix target configuration {target}",
                f'TARGET_CODENAME="{target}"' in config
                and 'TARGET_PLATFORM="exynos9810"' in config,
                "registered Exynos9810 ROM target")
    # Only the original native binary ABI is external. ROM-facing source and
    # metadata must consistently present the FaceunlockFix identity.
    branded = [
        ROOT / "scripts/make_rom.sh",
        HERE / "stage_verified_rom.py",
        HERE / "stage_runtime.py",
        HERE / "faceunlockfixd.rc",
        HERE / "faceunlockfix_hwredirect.c",
        HERE / "assert_rom_inclusion.py",
        HERE / "build_probe_base.py",
        HERE / "build_services_trial.sh",
        FACE / "README.md",
    ] + sorted((FACE / "bridge").glob("*.java"))
    obsolete_brand = bytes.fromhex("6e6f626c65").decode("ascii")
    leaks = [str(path.relative_to(ROOT)) for path in branded
             if not path.is_file() or obsolete_brand in path.read_text(
                 encoding="utf-8", errors="replace").lower()]
    c.check("All ROM-facing FaceunlockFix sources use clean naming",
            not leaks, ", ".join(leaks) if leaks else "no retired brand in Java, init, C shim or ROM hooks")

    if args.mode == "release":
        c.check("Private FaceunlockFix runtime staged",
                all((FACEUNLOCKFIX_STAGE / p).is_file() for p in (
                    "system/bin/faced", "system/lib64/faceunlockfix/face.faceunlockfix.so",
                    "system/lib64/faceunlockfix/libFaceService.so",
                    "system/lib64/faceunlockfix/libsecfr_engine.so",
                    "system/lib64/faceunlockfix/libfaceunlockfix_hwredirect.so",
                    "system/etc/init/faceunlockfixd.rc")),
                "source-only overlay under ignored face-audit; never live device")
        registered = rc_definitions(FACEUNLOCKFIX_STAGE)
        faced = registered.get("faced", [])
        renamed = registered.get("faceunlockfixd", [])
        c.check("Both old faced init duplicates removed in overlay", len(faced) == 0,
                f"{len(faced)} remaining definitions")
        c.check("Exactly one isolated FaceunlockFix init service, opt-in only",
                len(renamed) == 1 and all(disabled for _, disabled in renamed),
                "; ".join(f"{p.relative_to(ROOT)} disabled={disabled}"
                          for p, disabled in renamed) or "none")
        contexts = service_contexts(WORK)
        native_types = contexts.get(NATIVE_NAME, set())
        c.check("IFaceDaemon has unique SELinux Binder service label",
                len(native_types) == 1,
                str(sorted(native_types)) if native_types else "MISSING")
        c.check("Native Binder service uses stock faced_service domain",
                native_types == {"u:object_r:faced_service:s0"},
                f"native={native_types}; old={contexts.get(OTHER_NAME, set())}")
        fragments = [MANIFEST] + sorted(
            (MANIFEST.parent / "manifest").glob("*.xml")
        )
        if MANIFEST.is_file():
            try:
                face: list[str] = []
                for fragment in fragments:
                    if not fragment.is_file():
                        continue
                    root = ET.parse(fragment)
                    face.extend(h.findtext("name", "") for h in root.findall(".//hal")
                                if "face" in h.findtext("name", "").lower())
                c.check("VINTF face entries visible for manual review",
                        bool(face), str(face))
            except ET.ParseError as error:
                c.check("VINTF XML valid", False, str(error))
        else:
            c.check("VINTF source manifest available", False, str(MANIFEST))
        service_context_file = WORK / "system/system/etc/selinux/plat_service_contexts"
        c.check("Platform service contexts available", service_context_file.is_file(),
                str(service_context_file.relative_to(ROOT)))
        print("RUNTIME REQUIRED: compiled SELinux/neverallow, binder death,")
        print("RUNTIME REQUIRED: real Camera2, Trustonic enrollment, authentic HAT.")
    print(f"RESULT {args.mode}: {c.failed} blocked check(s)")
    return int(c.failed > 0)


if __name__ == "__main__":
    raise SystemExit(main())
