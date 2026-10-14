# FaceunlockFix — Android 16 / One UI 8, Exynos9810

**FaceunlockFix** connects the genuine Samsung Exynos9810 RGB face engine to
Android16's HIDL-to-AIDL face provider. The shared source supports Galaxy S9
(`starlte`), S9+ (`star2lte`) and Note9 (`crownlte`). Original native hardware
interfaces, security tokens and stock binary contents remain unchanged.

## Verified functionality and scope

On `star2lte` (S9+), the systemless FaceunlockFix bridge was actually selected
after a framework-process restart and measured on 2026-10-13: six genuine
successful unlocks (1693, 2074, 2002, 1957, 1990, 2940 ms), median **1996 ms**,
mean **2109 ms**, zero rejected matches and zero Face HAL deaths. One separate
attempt was cancelled (Android error 5). Native mode **10** preserved open-eyes
security. The preceding older bridge averaged 2652 ms on five successful runs.

Those results validate the previously deployed Java optimization only on the
S9+. This **new source-level naming/property/runtime-path migration is not the
identical live-tested binary**. Neither S9 nor Note9 has been physically tested.

## Layout

| Path | Purpose |
| --- | --- |
| `unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge` | FaceunlockFix Java HIDL, Camera2 and native Binder bridge |
| `unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/aidl` | Original unchanged Samsung Binder AIDL interface definitions |
| `scripts/internal/FaceunlockFix` | Safety checks, offline build/stage tools and Android ART smoke tests |
| `scripts/internal/FaceunlockFix_bridge` | Reverse-engineered original native ABI contract tests |
| `scripts/internal/FaceunlockFix/policy` | Existing SELinux labels and enforcement notes; no permissive rules |

## Enrollment and authentication

- Native face frames come only from actual Camera2 front-camera capture.
- Enrollment progress is driven by the genuine old Samsung native engine;
  head motion is not separately forced by the Android16 adapter. Looking
  straight ahead can be sufficient for this stock RGB enrollment protocol.
- Android16 `face_open_eyes=1` maps to original stock mode **10** by default.
  Unsupported face-mask flags remain rejected, and no HATs/templates are faked.
- Only when the user **explicitly chooses** Samsung's original faster-
  recognition preference for Keyguard, the stock engine receives mode **8**
  with the same required eyes-open flag. Fast recognition may trade matching
  accuracy for speed. No setting is modified automatically; other apps retain
  the conservative mode.

## Performance and privacy lifecycle

**Historical recovery warning (2026-10-13):** an earlier incorrect framework
preview caused a **bootloop** because it dropped platform classes during
smali rebuild. Android was recovered and the class-retention build guard was
corrected. See `LIVE_BOOTLOOP_ROLLBACK_2026-10-13.md`. The broken JAR with SHA256
`8f9549e3a4d965d906c86fef706e8463fb7ca651fee194366a9417a2b8d15233`
is quarantined and **must never be reinstalled**. The subsequent KernelSU
framework trial with a corrected candidate was successful, but the new ROM
source packaging described here still requires its own boot validation.

- The genuine native `faced` daemon remains a sleeping Binder provider for
  framework stability, not a background face scanner.
- Camera2, ImageReader, per-session worker threads and native frame transfer
  start only for framework-accepted enrollment or authentication. Sensor
  metadata is cached between operations to avoid redundant Camera2 discovery.
- **Lower first-unlock latency:** during an accepted Keyguard authentication,
  Camera2 now opens in parallel with the real Samsung native authentication
  setup. Before the daemon accepts that operation, all real camera frames are
  immediately dropped (native transport disarmed). On verified native accept,
  and only for the same current session, frame delivery is armed. A native
  rejection/cancel stops the camera. This reduces serialized startup latency
  without changing genuine face comparisons, HAT or eyes-open requirements.
  This optimization was live-measured through a KernelSU framework overlay on
  the S9+; its ROM-embedded packaging still requires a physical boot test.
- The Camera2 callback now only collects the latest genuine `Image` and hands
  it to the single in-flight native transport worker. The full 640x480 stock
  YUV plane copy and native Binder call run **off the camera callback thread**.
  The reader keeps three slots (one owned by the worker, two for acquiring and
  discarding outdated frames), so slow native processing cannot accumulate an
  image backlog. The transport worker has an active-session display priority
  to reduce camera-to-native handoff delay; it is terminated after capture.
  Each Image is always closed after processing/cancellation.
- On success, errors or cancellations, camera sessions and workers are closed.
  Hard limits (12s authentication, 60s enrollment) provide backup cleanup if
  Android loses a callback. A 30s fail-closed enumeration timeout remains.
- Actual live measurement with the in-framework Camera2 bridge: six successful
  recognition times averaged 2109ms, with five of six below 2200ms. A 2940ms
  outlier was due mainly to the original native matcher, not camera startup.
- Non-sensitive `cameraToFrameMs` and real-native `latencyMs` timings are logged
  only during a legitimate capture/success, to compare real Keyguard runs.

## Validation and build

From repository root:

```bash
bash scripts/internal/FaceunlockFix/check_all.sh
```

Or run its individual component checks:

```bash
bash scripts/internal/FaceunlockFix/build_services_trial.sh
bash scripts/internal/FaceunlockFix/run_source_checks.sh
python3 scripts/internal/FaceunlockFix/integration_ci.py --mode release
python3 scripts/internal/FaceunlockFix/stage_verified_rom.py
python3 scripts/internal/FaceunlockFix/test_stage_verified_rom.py
```

For opt-in **starlte, star2lte or crownlte development ROM** assembly, set
`EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=true` when invoking the regular
ROM build. Ordinary builds remain unchanged. The framework and bundled native
init now use the clean, exact property
`persist.sys.un1ca.faceunlockfix.experimental=1` on a debuggable ROM. This is
an intentional property migration: users of the older live test must opt in
again after installing a future experimental ROM. Do not weaken release build
debuggable/SoC/Binder checks or start the camera outside genuine operations.

The Camera2 RGB capture is **built into** `services.jar` as
`FaceunlockFixCamera2FrameSource`. The former standalone face camera probe
APK is not shipped, installed, or launched by the ROM assembly. Both release
variants now fail packaging if a Camera Probe APK (including a renamed copy)
is found. Standalone probe sources remain archived for development only.
The retired diagnostic app is not a ROM dependency and must never be packaged.

**October 13 root-cause fix:** the old preview build copied decoded smali with
recursive `shutil.ignore_patterns("build", "dist")`; this accidentally
deleted the real `com/android/modules/utils/build/` SDK package from the copy.
The corrected builder ignores temporary build folders **only at its source
root**. A new full offline build retains all **15,715** original framework
class definitions, including `SdkLevel` and `UnboundedSdkLevel`, and the
known bootloop SHA remains quarantined. The exact boot exception was not
persisted; no source test can promise zero bootloops on a new ROM image.
Only the gated ROM integration (not a standalone preview install) may proceed
to later whole-ROM and recovery review. No full ROM or phone flash has been
built or performed as part of this three-target source integration.

See `BUILD_INTEGRATION.md`, `policy/SECURITY_MODEL.md`, and the append-only
historical incident record `LIVE_SYSTEM_SERVER_CRASH_2026-10-12.md`.

**Not yet confirmed:** complete three-target ROM builds, final ZIP flashing,
and face registration/unlock on an actual S9 or Note9. Do not reset,
clean, auto-commit or auto-push the user's separate uncommitted ROM changes.
