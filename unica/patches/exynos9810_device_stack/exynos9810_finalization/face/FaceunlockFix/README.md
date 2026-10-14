# FaceunlockFix — Android16 genuine Samsung RGB Face Unlock

Shared Exynos9810 source module for Galaxy S9 (`starlte`), S9+ (`star2lte`),
and Note9 (`crownlte`) on Android 16 / One UI 8. Device-specific inclusion
and verification are handled separately; this source does not flash devices.
The genuine original Samsung face engine is accessed through its original
`com.samsung.android.bio.face.IFaceDaemon` Binder API; Android16 receives only
genuine enrollment, frame-processing and HAT-validated authentication results.

| Subdirectory | Responsibility |
| --- | --- |
| `bridge/FaceunlockFixHidl.java` | Original Samsung HIDL V2 adapter, callbacks, lifecycle, open-eyes and optional genuine fast mode |
| `bridge/FaceunlockFixNativeBackend.java` | Authenticated original 21-operation native Binder interface |
| `bridge/FaceunlockFixCamera2FrameSource.java` | Actual front camera and original 640×480 YUV plane transport, real enrollment UI Surface |
| `bridge/FaceunlockFixProbe.java` | Debug/SoC/property-gated Android16 FaceProvider discovery |
| `bridge/FaceunlockFixCleanupFailureBridge.java` | Fail-closed Android16 internal enumeration cleanup |
| `bridge/FaceunlockFixNativeEnumeration.java` | Strict original request(11) positive native template decoder |
| `aidl/` | Untouched stock Samsung descriptor and callback interfaces |
| `bridge/tests/` | Pure-JDK payload and native enumeration parser tests |

**Demand-only processing:** Camera2 sessions, ImageReader and frame workers run
only for active Android16 enrollment or authentication clients; success,
cancellation, errors or hard watchdog limits close them. The native Binder
daemon may remain **idle** at zero camera usage to keep FaceProvider stable.

**Genuine Keyguard prewarm:** The FaceunlockFix HIDL adapter opens the front
Camera2 session while the stock native authenticate request is being prepared.
Frame transport stays disarmed until the real daemon accepts authentication;
an error, timeout or cancellation closes the relevant camera generation.
The same guarded Java bridge source is used for all three Exynos9810 targets.

**Security:** The original 69-byte secure HAT is required; Android16 open-eyes
flag 4 maps to stock native mode 10 by default. An explicitly user-enabled
Samsung Keyguard faster-recognition option maps to original stock mode 8
**without disabling open-eyes**; it is never enabled automatically. Unverified
mask modes, TestHal fake recognition, fabricated templates and PIN bypasses
remain forbidden.

The original face engine is Samsung's legacy `faced` implementation. Its
native ELF and Binder interface identifiers must remain unchanged for
compatibility. The canonical ROM-source opt-in key is
`persist.sys.un1ca.faceunlockfix.experimental`; native init and ROM staging
checks must use this exact key. Existing live modules remain untouched.
The product/project name and user-visible diagnostic wording are FaceunlockFix.
Historical donor research is retained separately under `docs/`.

Build, source safety tests, evidence and current limitations:
`scripts/internal/FaceunlockFix/README.md`.

**Release caveat:** New renamed/optimized sources have passed offline tests,
not a full ROM build or live framework replacement. The previously proven
working on-device framework remains separately backed up and untouched.
