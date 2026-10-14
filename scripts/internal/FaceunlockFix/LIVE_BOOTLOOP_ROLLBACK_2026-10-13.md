# FaceunlockFix Android16 trial: bootloop, TWRP rollback, confirmed recovery

Device: Samsung Galaxy S9+ `star2lte`; Android16 debug ROM, hardware root ADB.

## Incident

2026-10-13: After the low-latency source preview passed offline Java/D8,
release CI (0 blocked), and isolated Android ART probes, the experimental
`services.jar` with SHA256
`8f9549e3a4d965d906c86fef706e8463fb7ca651fee194366a9417a2b8d15233`
was installed with original owner/mode/SELinux label and verified readback.
The user reported repeated reboots at **Powered by Android** after reboot.
Those isolated verification passes did **not** imply successful Android
`system_server` boot. The precise crash stack for this boot is unavailable:
`/sys/fs/pstore` was empty, and `/data/system/dropbox` retained no corresponding
2026-10-13 `system_server_crash` report. Never redeploy that exact candidate.

### Confirmed framework packaging regression

On a read-only comparison of original live-working `services.jar` and the
candidate recovered from `/data/local/tmp/faceunlockfix_services_candidate.jar`,
`classes2.dex` was identical, but `classes.dex` was **not preserved**: the
working DEX defined 8685 classes while the bootlooping preview defined 8683.
The rebuilt preview lost two existing Android class definitions:

- `Lcom/android/modules/utils/build/SdkLevel;`
- `Lcom/android/modules/utils/build/UnboundedSdkLevel;`

The bridge `classes3.dex` also changed from 47 legacy Noble-package classes
to 49 FaceunlockFix-package classes. This is strong evidence of an unsafe
whole-framework candidate rebuild rather than a purely isolated camera fix.
Missing classes are a proven packaging bug, but **cannot be certified as the
unique root cause** without the missing boot crash stack. The old direct
preview installation commands are now hard-disabled. Production ROM assembly
must retain all preexisting framework classes and reject missing ones.

### Identified build-script mechanism and correction

`build_probe_base.py` previously cloned an Apktool smali tree using
`shutil.ignore_patterns("build", "dist")`. That ignore callback is recursive:
it filtered **not only the top-level Apktool build output**, but also the
legitimate nested package directory
`smali/com/android/modules/utils/build/`, silently omitting precisely the two
missing SDK utility classes. The fix ignores only generated `build` and `dist`
directories located at the Apktool SOURCE ROOT, retaining every nested Java
package directory. The offline builder now requires these two `.smali` files
in its isolated source copy AND all original DEX class definitions in the
result. This is the exact mechanism for the class loss; a full verified
system_server crash stack is still required to prove the precise boot
exception. Never bypass the retention gate to publish the old preview.

## Safely restored

TWRP recovery was accessible via rooted `adb` (`product:twrp_star2lte`), `/data`
was intact. TWRP mounted `/system_root` as ext4 rw; the failed `services.jar`
checksum was confirmed on `/system_root/system/framework/services.jar`.
Recovered from `/data/local/tmp/faceunlockfix_last_known_good.jar` with SHA256
`5ae5fc418a54745ff0029af1dc8bf0a9b0fc0c268a6076f7fe41d8e62b8c7da9`.
Restored original `root:root`, `0644`, `system_file` SELinux label and synced
storage. Original untouched stock fallback remains at
`/data/local/tmp/noble_services_original.jar`, SHA256
`790b977cee857e028e4dd0a43844c5d0d54701d9581ec7afd39712e70c088ad6`.

No data wipe, no face template reset, no ROM flash or security downgrade.

## Verified after restoring and rebooting

- `adb devices -l`: regular `device` online (Windows identifies S9+ with MTP)
- `getprop sys.boot_completed`: `1`
- `getenforce`: **Enforcing** (TWRP recovery was Permissive, normal)
- `/system/framework/services.jar` SHA matches old working `5ae5fc...`
- `persist.sys.un1ca.noble_face.experimental`: `1`
- `init.svc.noble_faced`: `running`
- `dumpsys face`: **one** enrolled face, **zero** HAL deaths, operation idle
- `faced` idle CPU: `0.0%`

The restored build is the *old*, confirmed-working one. No new real Keyguard
unlock was performed to measure it. The speed optimization has **not** been
validated as a deployable ROM; avoid further experimental framework swaps
until the system_server startup fault is understood and a full bootable ROM
image and verified recovery path have been tested. Current
`live_framework_test.py` quarantines the exact failed SHA in the local manifest
and disables direct `--apply`, `--retry`, and `--upgrade-callbacksafe` preview
replacement. The user ROM tree has unrelated uncommitted changes;
do not clean/reset them.

### Standalone Noble Camera Probe removed

The test-only APK `com.un1ca.noble.camerasmoke` was discovered as a real
user-installed package. `pm uninstall --user 0 com.un1ca.noble.camerasmoke`
returned `Success`; subsequent `pm path` and installed-package checks showed
no such app. It has no role in Face Unlock, which uses framework-owned Camera2
capture and original native faced Binder only. No probe APK should be
included in any standard or experimental ROM variant.
Its separate diagnostic `/data/local/tmp/noble_camera_meta_smoke.jar` was
also removed. Two leftover copies of the **quarantined failed** SHA8f9549
preview, `/data/local/tmp/faceunlockfix_services_candidate.jar` and
`/data/local/tmp/noble_services_callbacksafe_candidate.jar`, were likewise
removed *after their checksums matched the failed artifact*. A read-only
copy remains in offline face-audit for comparison. Original and working
rollback backups were kept intact, as was the live SHA5ae5 framework.
