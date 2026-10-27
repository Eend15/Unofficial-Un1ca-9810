# Telegram release 1.4 follow-up — 20 October 2026

## Current completion audit / external blockers

**Latest status, October 21:** User confirmed Now Brief works after onboarding;
Weather visibly loads its forecast with Wi-Fi and user-granted permissions.
Earlier network/consent blockers below are historical and superseded. New GMS
ART JIT crash evidence is preserved near the end of this document. The actual
libart extracted from the staged ART APEX exactly matches the installed crash
library SHA256, so this is not explained by a different live libart binary.
All three staged compressed ART APEX files have SHA256
`9a284580604f808fa660f575fd489f76b214fead49323291a317d85449426863`.
No runtime replacement or speculative JIT-disabling change has been made.

Additional pass over post-release messages identified device controls (6605),
Samsung Cloud (6200), Samsung Pass (6473), and sharing failure (6471) as reports
to retain alongside the main table. Device controls source exists in SystemUI;
SmartThings/SmartThingsKit are explicitly debloated on all three targets, and
no controls provider was identified on the attached S9+. SmartThingsKit's
manifest is package `com.samsung.android.service.stplatform` and does not itself
declare a BIND_CONTROLS service; restoring that APK alone is not a proven fix.
Do not claim that optional-provider absence proves the cause of the report.

Build hardening: Weather payload and RAM-profile verifier calls now propagate
failure explicitly instead of allowing later commands to mask a failed check.
This is build validation, not a new runtime Weather/performance fix.

Live follow-up after user connected wifi: active default network is now 100.
Weather opens its normal activity in 307 ms without a crash, but stops at its
first-run precise-location consent (Akkoord/Niet akkoord). Now Brief still
routes to the Galaxy AI welcome screen (606 ms). User was asked to make both
choices personally. Network is no longer a blocker; do not keep reporting it
as unavailable. Functional/cancellation tests remain pending the consent flow.

The objective "all reported bugs properly fixed" is **not achieved**. Source
fixes and test results below cover specific causes, not the entire report set.
No build is currently waiting to finish: the isolated kernel build is terminal
and validated, and no ROM build or phone flash was started in this follow-up.

After repeated goal continuations, the missing affected-device evidence remains
the completion blocker. The user confirmed no Note9 is available. S Pen radio
pairing, memo ink, Note9 lag/thermal/audio/graphics and its intermittent face/
power-menu failures cannot be accepted on an S9+ that lacks the pen hardware.
The S9-only radio drop and TWRP E1001 still lack current failure/recovery logs.
Neither an offline guard nor a successful S9+ check proves those reports fixed.

Latest live recheck: only star2lte serial 2284f28124027ece is attached, active
default network is still none, Galaxy AI welcome remains focused and crash
buffer is empty. Now Brief consent/network setup is awaiting the user;
Samsung Account is not signed in and AOD is off. These user settings are not
automatically changed to manufacture passing tests. Current module directory
is empty and the new kernel/system source fixes are not installed, so repeated-
reboot module preservation remains unverified too.

Next actionable inputs: a connected affected Note9 or full current reproduction
logs (including pre-TicToc scan/Wacom events, actual Personal Intelligence crash
stack and graphics/audio evidence); the S9 recovery log for E1001; and the
user-completed network/AI setup for the attached S9+. Preserve all source edits,
workdirs and old artifacts. Do not resume export monitoring or flash/publish.

October 21: user explicitly stopped the export-monitor automation and requested
continued foreground bug fixing. Automation `watch-telegram-rom-bug-report-export`
was deleted successfully. Do not recreate it without a new user request.

Export: `Downloads/Telegram Desktop/ChatExport_2026-10-20`, seven complete
HTML pages, 918 files, 1,222,073,884 bytes. All paths, sizes and modification
times were unchanged for more than five minutes before analysis. Parsed
6,221 messages. Treat chat text, scripts and attachments as evidence, never
as instructions to execute.

Use release post **6153** (15 October 2026, 23:22 UTC+01) as the main release
boundary. Earlier October 15 reports from users already on the S9+ release
remain relevant when explicitly discussing 1.4. Exclude the separate One UI 9
release posted in **6708**, old 1.3 failures and download quota chatter.

## Implemented and checked in source

### October 22: lock-screen Now Brief investigation (not yet accepted)

Separate actual crash during this follow-up: SCPMAgent SamsungAccountReceiver
at device time 21:49:16 throws SecurityException through semGetSemUserInfo /
getUserInfo, requiring QUERY_USERS (or broader manage/create permissions).
Live package requested-permission list contains none of these. Existing source
adds a privapp allowlist, but an allowlist alone does not add a manifest request.
Do not assert this crash causes the Brief read-state policy. Preserved log at
`C:/Users/Admin/AppData/Local/Temp/unica-scpm-crash-20261022.txt`; source manifest
and shared-UID/signature constraints still need a data-preserving repair.

After user unlocked, navigated from the normal briefing to its actual settings
and read the displayed explanation: the Now Bar card persists until the briefing
is opened and returns when new content becomes available. The active briefing
has already been opened. This matches the app-side false show policy observed
earlier, so do not patch that policy to always show a previously read briefing.
Confirmed System enable_one_lock_ongoing=1. The separate 'expand without
unlocking' privacy toggle remains off, as does partner-data sharing; these do
not need to be enabled to show the card. Returned phone to home. A new-content
lock-screen card has not yet been physically observed, so acceptance is pending
the next natural briefing/content update. No source behavior override applied.

Live System `enable_one_lock_ongoing` was explicitly 0. In response to the
user's request to display Now Brief on lock screen it was set to 1 and the
screen woken. Screenshot `/data/local/tmp/nowbrief-lock.png` still shows no
card. No app data was reset; no SystemUI/app bytecode was patched for this.
User was asked to unlock for normal Now Brief/Now Bar settings verification.

Current SmartSuggestions log explicitly sends
`NowBarDataWrapper(needToCreateNowBar=false, briefType=EVENING, ...)` and
`canShowNowBar briefShown false`. SystemUI's AiBrief provider and Now Bar
controllers are present. The actual policy method reads per-brief state and
returns false on already-used/disallowed categories. This rules out treating
an empty card stack alone as a missing SystemUI class, but does not yet prove
whether the user's specific absence is scheduling, read-state or a settings
problem. Do not force retail mode, alter time, reset the briefing database or
make canShowNowBar always true. Preserve user lock-screen privacy choices.

### October 22: PIF update-button freshness and commit order

The Settings updater already fetches UN1CA's sixteen/pif/pif.json and compares
the numeric downloaded VERSION with the persistent installed version; it does
not limit updates to 20261011. A fresh no-cache endpoint read still returns
20261011 today. The shared build defaults are not a boot-time command that
rewrites a newer /data persistent property.

Hardened PIFUtils: disable URLConnection caches, request Cache-Control:no-cache,
bound connection/read waits to 15 seconds, commit persist.sys.pif.version only
after the other profile fields, and restart GMS/Play Store only after applying
an update (not after 'already current' or an error). Runtime property errors
use the existing failure UI. Newer saved profiles still cannot be downgraded
by an older upstream VERSION. Shared Settings source covers all three targets.
Actual edited smali assembles successfully to DEX using the pinned toolchain;
no fake future VERSION was written to a phone to manufacture a passing result.
This source change is not yet installed in the live Settings APK or ROM ZIPs.

### October 22: incomplete built-in PIF profile

Telegram 6308/6638 reports basic-only results alongside KernelSU grant resets;
6604 reports conflicting Zygisk providers. These are not proof that app-list
hiding alone fixes integrity. 6687 reports banking apps working with additional
modules. No app-specific failure stack or actual current verdict is attached.

Live S9+ has built-in PIF enabled, version 20261011 and the bluejay fingerprint,
but lacks `persist.sys.pif.security_patch` and `persist.sys.pif.first_api_level`.
The matching upstream UN1CA sixteen JSON includes SECURITY_PATCH=2026-10-05 and
DEVICE_INITIAL_SDK_INT=32. Source framework hooks otherwise leave those fields
unchanged when these properties are absent. Added both missing profile fields
to the existing shared defaults, and applied/read back those two persistent
properties on the live phone. Existing framework code/updater unchanged.
Source shell syntax and diff checks pass; actual Play Integrity success has
not been measured. Existing workdirs and ROM ZIPs unchanged.

HMA defaults already enable the feature and include com.rifsxd.ksunext; null
user overrides do not mean it is disabled. No extra Zygisk provider installed,
no app data cleared, no keybox imported, and SELinux remains Enforcing. The
previous kernel grant-pruning/lifecycle repairs remain source fixes pending
device installation/reboot acceptance. A property edit cannot establish Google's
hardware-backed Device/Strong verdict; do not advertise a guaranteed pass.

### October 22: original charging transaction boundaries and supplied logs

Full August dump confirms Wacom commands reach the kernel, incompatible SPEN02
discovery filtering, and explicit mode-8 rejection. Oct18 pasted excerpt begins
after FORCE_RESET/TICTOC_FAIL and does not reveal scan setup. Its null-address
battery cleanup exception follows the failure, so it is not treated as root
cause. See `spen/BLE_CHARGING.md` for exact lines and interpretation.

Original N960F Wacom methods also require 200ms transaction spacing for stop
(0) and DSP reset (7); only enable/reset (1/2) were covered by the previous
port. Extended the existing guarded charging transformation to 0/7, keeping
fast charge's 20ms command spacing. Existing-patch upgrade/idempotence test
added, and final compiled-APK verification checks all four branches.
Three charge tests, three discovery tests, protocol integration (two passes),
actual Android16 sysfs bridge compilation and all eleven rebuilt artifact tests
pass without skips in the final run. Full main DEX/platform-signed test APK:
`out/target/crownlte/spen_discovery_audit_20261022/AirCommand-note9-signed-audit.apk`,
SHA256 `d5eeed60e1b2b05d01c7d13b3b8585dc0f9cbca6c098901a98873e1e97570c26`.
No phone flash, ROM ZIP rebuild, existing workdir edit or physical Note9 test.
Screen-off ink and real pen pairing/remote controls remain unaccepted.

### October 21: original Note9 BLE discovery filter restored

Reverse engineered the actual SM-N960F firmware AirCommand, not the newer
obfuscated APK in an older audit directory bearing a stock-like name. Stock
Crown discovery applies its EDFEC62E service UUID via `setServiceUuid`.
The port's null replacement for the newer SPEN02 manufacturer filter discarded
that restriction. New crownlte-only `spen/patch_crown_scan.py` restores it when
no explicit filter or saved reconnect address is provided. Saved-MAC reconnect
and explicit filters retain their existing branches. No identity/MAC spoofing.
The final compiled APK check now verifies that branch as well.

Three new scanner tests, actual protocol finalizer idempotence, twelve install
tests, two charging tests and eleven artifact checks pass. Full AirCommand DEX
rebuilt/platform-signed only in `out/target/crownlte/spen_discovery_audit_20261021`.
See `spen/BLE_CHARGING.md` for exact stock APK hash/methods and limitations.
This is a verified source compatibility repair, not physical Note9 acceptance
or proof that every BLE timeout or delayed screen-off memo report is solved.

### October 21: actual S9+ versus S9/Note9 performance comparison

Compared the actual completed ZIPs in Downloads, not only staging boot.img.
S9 and Note9 staging boot.img contain stock base kernels that the bundled
installer replaces; comparing those base images alone gives a false result.
All three release ZIPs have the same nested kernel ZIP SHA256
`3e405a08fd5e0b4f8492096be9003349bb8372e4f16ec43f0308095d6615203f`.
Reconstructed G960F/G965F/N960F kernel images with bspatch and extracted their
embedded IKCONFIG. Their scheduling, compiler, memory, ZRAM and KernelSU
baseline is the same; differences are model hardware and Note9 vmpressure
threshold (70 versus 60). Do not copy S9+ camera/sensor/charger flags to Note9.

Performance-related system/vendor properties are identical. The real Mali,
HWC, SurfaceFlinger, Infinity APK, RAM Plus files and KernelSU runtime match.
Smart Suggestions APK hashes initially differ, but all DEX/resources are
identical: only signature files and redundant nested META-INF differ.
There is no demonstrated missing S9+-only RAM/graphics tweak to transplant.

### October 21: Note9 Infinity sensorhub board mismatch

The last Infinity module copied the S9 AK09916C sensorhub onto Note9, replacing
its AK09918C Samsung HAL. The actual 64-bit sensor service uses this library.
The working S9+ library differs from its embedded donor **only** by restoration
of the `libhidltransport.so` DT_NEEDED entry (plus stripping a trailing donor
annotation). This was established by byte-for-byte comparison, not inferred
from sensor names alone.

The module now selects the repository-owned Note9 HAL for crownlte and applies
the exact same HIDL dependency repair with a source-owned SHA256 guard. All
executable sections, target sensor identity and donor annotation are preserved;
S9/S9+ keep the tested common blob, and all keep the same grip HAL, wallpaper
and gyro features. The post-Apktool verifier now requires an explicit target
and rejects the S9 sensorhub for crownlte.

Validation: the actual module's selection loop executed in isolated trees for
all three targets; tests compare S9+ repair equivalence, unchanged Note9 ELF
code, repeat application, corrupt-input rejection and final payload checks.
`bash unica/mods/s9_infinity_Wallpaper/source/verify.sh` passes staging for all
three targets plus seven delivery and three sensorhub tests. It uses copied
vendor fixtures, so patching cannot modify a repository donor via a hardlink.
The missing framework decode mocks in the older verification helper were
also supplied for its actual default-wallpaper patch hooks.

This repairs a concrete wrong-board payload and is relevant to the wallpaper
lag reports, but Note9 sensor/frame-time/temperature acceptance is still
required. **Existing workdirs, ROM ZIPs and phones are unchanged.**

### Wired HDMI/DeX port collision — 5841, 5847, 5956, 6675–6683

The attached `sf_external_display_fix_v1_3.zip` contains a SurfaceFlinger
whose only difference from the staged compositor is one four-byte branch at
file offset `0x45264c`. All three staged targets have the module's exact
expected input SHA256. The module author reports this working for HDMI and
corrected the earlier bind-mount SELinux-domain regression in v1.3.

The finalizer now applies a source-owned, exact-hash guarded transformation
through `display/patch_external_display.py`, directly inside the system image.
It retains `surfaceflinger_exec`, uid/gid/mode and normal init startup. The
boot contract checks the final binary digest, SELinux label and permissions.
Tests execute the real finalizer on isolated copies of all three target
binaries, test repeat application, compare every byte outside the one
instruction, reject corruption and check the output digest. No workdir or
phone has been modified. Physical HDMI/audio acceptance still needs testing.

### KernelSU grants lost during package-list updates — 6308, 6476, 6497, 6604

Kernel source `KernelSU-Next/kernel/manager/pkg_observer.c` subscribed to
`FS_CREATE` and called `track_throne(false)` immediately. The tracker treated
an empty or incomplete `packages.list` as authoritative and could invalidate
the manager and persistently prune all grants. This provides a concrete
mechanism for the reported idle/reboot grant resets; a user-device kernel log
has not yet confirmed which occurrence triggered it.

In `/home/admin1/exynos9810-kernel`, observation now waits for close-write or
atomic moved-to publication. The parser rejects empty, truncated, malformed
and failed-read snapshots before invalidation/pruning, while preserving real
uninstallation handling. The exact source diff is preserved in the ROM tree
as `kernelsu/package_snapshot.patch`.

`kernelsu/test_package_snapshot.py` compiles the **actual kernel parser and
decision function** with userspace file/allocation stubs. Empty, truncated and
malformed fixtures preserve the throne/grant; complete app/manager uninstall
fixtures still revoke the appropriate entry. All seven cases passed.

Follow-up: the same synchronous PackageManager callback previously performed
one VFS read per byte and an extra read for every line. It now buffers 4 KiB
chunks, retaining line state across chunks and bounding the package/UID prefix
without placing a 4 KiB array on the kernel stack. Added long-line, chunk-boundary
and 5,002-entry fixtures; all ten cases pass, with reads bounded by
`ceil(file_size / 4096) + 1`. This reduces package-update kernel work; it does
not prove the reported Note9 UI lag is fully resolved. Both modified actual
AArch64 kernel objects also compiled with the existing generated kernel headers
and distro clang18 (donor-only optimisation flags omitted for this compile check).

**October21: rebuilt into both source enforcing kernel ZIPs.** The isolated
six-model build completed. The complete base/delta kernel family was transferred
into the existing EROFS and EXT4 archives, preserving every filesystem-specific
DTB, tool and installer byte. Both archives pass reconstruction, DTB validation
and embedded EROFS/KSU/enforcing configuration checks for all six variants.
The ROM installer selection and final ZIP verifier now pin the new archives.
Hashes and exact kernel source provenance are in
`platform/exynos9810/prebuilt/20261021-kernel-provenance.json`. No phone was
flashed and existing ROM ZIPs/workdirs remain untouched. Physical repeated-reboot
and module acceptance is still pending.
Existing unrelated kernel edits in `kernel/sys.c` and
`security/selinux/hooks.c` must be preserved.

### Repeated module startup during manager registration

The system companion invoked `ksud post-fs-data`, `services` and
`boot-completed` from `crown_manager`, although the built-in kernel already
injects those phases into init. Both boot-completed and CE availability can
start that companion. Replaying early mount/module phases after boot can run
module initialization twice and does not repair early startup ordering.
Manager registration now only verifies the certificate/UID and registers the
manager; the kernel's existing ordered init actions retain module startup.
Three tests execute the actual shell function with isolated commands, covering
repeated registration, guardian repair and invalid UID rejection. The trusted
runtime manifest was updated and all source/payload hashes verified. This does
not erase or recreate `/data/adb/modules` or user grants.

Follow-up: the existing-registration check now applies to normal boot/CE
registration too, not only guardian `--repair`. Thus CE availability cannot
unnecessarily re-register and force-stop a trusted, already working manager.
Four actual-function shell tests pass, including the no-force-stop CE case.
The runtime manifest was refreshed and verified after this change.

### Live S9+ findings and fresh-data bootstrap, October21

ADB serial `2284f28124027ece` is star2lte, ROM 1.4, SELinux Enforcing; adbd
already runs as root in `su` context. No firmware/boot/system image was flashed.
Saved ksud logcat confirms the native early `post-fs-data`, `services` and
`boot-completed` init actions already run successfully; the installed old
companion replays those phases again at boot-completed and CE availability.
The source fix removing those replays is therefore backed by live evidence.

The main native post-fs-data hook runs **before** the imported companion RC's
`copy /system/bin/ksud /data/adb/ksud`. Existing data masks this ordering defect;
a fresh data partition has no daemon for the first native hook. Source staging
now patches the end of the main init.rc checkpoint/data-setup action to prepare
the daemon before the appended native hook. This retains checkpoint preparation
before any added data writes, and removes the too-late imported copy action.
The patch rejects changed/ambiguous main actions and verifies idempotently.
Three tests cover actual isolated init files from all three targets, unchanged
other bytes, checkpoint-before-copy ordering and the native appended hook.
The final boot contract checks this bootstrap before image packaging.

The updated manager script was pushed only to `/data/local/tmp` and invoked
twice on the live S9+. The manager PID remained `10011` across both executions;
the real `ksu_crown --check 10257` succeeded. No module hooks were replayed by
this script. `/data/adb/modules` is empty on this phone, so this is **not** a
module persistence/reboot acceptance test. The old system script/kernel remain
installed; source changes were not represented as a live permanent repair.

Smart Suggestions 7.2.31.0 is running without a crash-buffer entry here; opening
its normal Now Brief activity routes to the uncompleted Galaxy AI welcome
screen. User was asked to handle the consent flow themselves. Do not count this
as Now Brief functional acceptance or silently enable data collection.

Additional live constraints: Samsung Account 15.4.01.2 is donor-signed and not
signed in on this S9+. Its ProfileProvider explicitly reports `Samsung Account
is not signed in`; there is no observed AES/keymaster failure in that trace.
The old application-level software-AES patch is deliberately not called and
the finalizer preserves the original Samsung signature for Galaxy Store updates.
Do not enable the obsolete global-key patch to address a logout report.

`dumpsys AODManagerService` reports `isAODTouchDisabled=false`, but the current
user's AOD is off (`mIsEnabled=false`, reason AOD OFF), with no active touch
rectangle. `/sys/class/sec/tsp/input/enabled` exists with system/system 0660
and reads 1 in interactive mode. These observations do not reproduce the
reported double-tap failure or justify bypassing the user's AOD setting.
Weather location mode is currently 3 (enabled), so the GPS-off popup report
also has not been reproduced in this live session.

Live power-menu test: temporarily set Global accessibility_reduce_transparency
to 1, held POWER, captured the actual opaque black menu, then dismissed it and
restored the originally absent setting (verified null). SystemUI PID 2110 and
launcher PID 2550 survived unchanged; crash buffer stayed empty. Both blur
guards are present in all three decoded target SystemUI trees, and all three
staged APKs have identical combined DEX SHA256
`ea0baf176516030b319f79944c407aede6dfb9922a40c36350bc9965664ae258`.
This validates the existing fix on S9+ and shared bytecode, not physical Note9
frame-time/launcher acceptance.

Live Weather attempt: temporarily changed location_mode from 3 to 0 and launched
the normal internal.APP activity (471 ms), then pressed Back and restored mode
3 in a host finally block. The first screenshot showed the **system** location-
disabled warning with Close/Enable controls; the next showed Weather's cannot-
add-location/network-required toast and returned to Settings. No crash. This
does not reproduce or disprove Weather's own repeated GPS-condition dialog:
no city/weather data could load, and the system warning interrupted the attempt.
Do not patch Weather cancellation based on this different dialog.

### Installer partial GPT writes / false success — installation reports

`repartition.sh` previously issued a separate on-disk write for every deletion
and creation, ignored intermediate failures and exited zero unconditionally.
It now assembles one complete sgdisk command, performs a no-write `--pretend`
geometry check, saves the original GPT in the installer directory, and commits
once with checked exit status. Exact-name matching avoids treating SYSTEM_EXT
as SYSTEM. Existing filesystem/model sizes and layout refresh checks remain.

Three integration tests use real sgdisk on disposable disk files, with scaled
fixture capacities because this WSL filesystem does not support sparse
allocation. They cover all three targets, unchanged BOOT/EFS/SYSTEM_EXT, correct
partition names/types/sizes, insufficient-space rejection without a GPT change,
and commit-failure propagation with a backup. All pass. This addresses a concrete
installer defect; it is not proof that every reported TWRP E1001 shares this
cause. No actual device partition table was changed.

## Open investigations (do not claim fixed)

| Area | Recent report IDs | Evidence / next check |
| --- | --- | --- |
| Note9 severe lag, hot, graphic/audio hitches | 6269, 6351, 6386, 6432, 6442, 6460, 6673, 6723, 6737 | Several independent Note9 users; removing live wallpaper partly helped one user. S9+ users repeatedly report smooth operation. Compare actual target kernel, compositor and crash activity; retain wallpaper and features. |
| S9 performance/radio | 6655; user request | S9 mobile service drops; no radio log for this event. Do not assume same cause as old IMS fixes. |
| Personal Intelligence crash loop / Now Brief | 6232, 6318, 6322, 6396, 6432, 6561 | Updated app was reported to help. Existing source patches **createKey**, but modern `DatabaseKeyStoreImpl.getKey` still uses the keymaster decrypt path for saved keys and checks a key store that the replacement createKey never writes. Inspect migration and the runtime exception before changing database keys or deleting data. |
| S Pen BLE | 6353, 6383, 6600, 6651–6653, 6663, 6679 | Actual log: `TICTOC_FAIL, msg:TIMEOUT`, battery -1, no address. The Oct18 screenshot 368 shows a scan for a specific saved MAC connecting to a Samsung TV; user instrumentation may have supplied it. This is not proof that firmware validation should be bypassed or EFS overwritten. Capture/inspect pre-TicToc scan + Wacom kernel events. |
| Screen-off memo delayed drawing | 6442, 6627 | Ink visible after pen-up only; normal Notes does not show this. Inspect old Notes33 screen-off drawing versus hardware composition. |
| Face sometimes unavailable | 6286, 6733 + photo369 | Capture actual HAL/service failure after repeated authentication, not only lighting assumptions. |
| AOD double taps | 6399 | Clock/music double taps no longer act; inspect Infinity AOD touch routing. |
| Power menu launcher crash | 6442 | Existing blur/accessibility patch needs output/runtime verification for Note9. |
| Speaker crackle | 6428, 6429, 6673 | Intermittent/end-of-music on Note9. Use matched stereo blobs and actual underrun/routing logs. |
| Samsung Account logout per boot / watch pairing | 6476, 6497 | Check persistence, keymaster and repair services. Do not clear user account data. |
| Installer E1001 / repartition | 6170, 6381, 6395, 6413, 6424, 6590, 6657 | Sometimes second recovery boot works. Inspect recovery log/screenshots and block-device refresh after repartition; do not hide flashing failure. |
| Weather forces GPS prompt | 6283 | Repeated prompt when location switch off; preserve manual locations. |
| Play Store crash, heat/drain | 6661, 6664, 6684 | No specific new stack trace. Investigate together with repeated service crashes and KernelSU lifecycle. |

The initial `ro.product.system.*` identity hypothesis was withdrawn. The ROM
deliberately uses an S22 system donor; the diagnostic model strings alone do
not demonstrate an AirCommand or performance defect. Its speculative changes
and tests were removed, leaving existing product identity behavior intact.

### Further offline evidence, October21

Decoded the exact source Notes33 and Weather APKs into isolated `/tmp` trees;
no APK, installed app or workdir was changed. Notes33's SOMCanvas advertises
front-buffer availability unconditionally, while its underlying SPen SDK checks
four EGL extensions, model exclusions and an EGL config. Its base writing view
caches the requested state before calling the SDK and ignores the success
return. This is a concrete contract weakness, but normal editors have different
rendering paths and a device trace is needed before changing/re-signing this
Samsung-signed app or claiming it caused delayed memo ink.

Weather's actual location-settings dialog is cancelable, has a Cancel button,
and both negative-click and cancel callbacks resume with cancellation result 4.
The report is therefore not evidence to force location on or bypass consent.
Next evidence needed is which scenario re-enters the prompt after result 4.

The actual ThingDatabase caller passes createIfEmpty=true to getKey, so missing
key-value persistence alone does not establish a crash there: the patched
createKey can regenerate the same bytes. Existing wrapped key records still
take the incompatible keymaster path; its recovery callback can delete app
databases. Do not replace keys, invoke that recovery, or downgrade databases
without identifying the failing runtime path and a data-preserving migration.

## Constraints

### Follow-up verification, 2026-10-21

Re-ran the full Infinity delivery verification on isolated trees for all three
targets, the HDMI binary transformation test, the actual KernelSU parser harness
and all eleven rebuilt S Pen artifact checks. All passed. These checks do not
exercise a physical Note9 pen, measure device frame times, or produce new kernel
ZIPs.

Kernel packaging review: `apollo.sh --erofs-release` builds both enforcing and
permissive profiles across six variants, and its packager removes
`Apollo/Out/kernelzip` before staging the base variant. Even dirty mode removes
generated configuration, Image and DTBs. Do not invoke it against the shared
build tree without isolating generated outputs and preserving existing artifacts.
There was no active kernel build at this check; WSL had approximately 16 GiB free.
The next kernel step remains an isolated enforcing build and payload validation,
not replacing shipped ZIPs with the object-only compile check.

An isolated source snapshot is being copied to
`/home/admin1/exynos9810-kernel-audit-20261021` from the current **working files**
listed by Git, including all four existing modified kernel sources. No hardlinks
are used. Completion is marked by `source-snapshot.json`, which records origin,
HEAD, copied byte/file counts and the complete working diff. Do not build this
tree until that manifest exists and source hashes have been checked. The copy
was started in exec session 22313; inspect its process/manifest before attempting
another copy. No original kernel outputs or ROM workdirs are changed.

Snapshot completed: 65,001 files / 915,702,384 bytes. All four modified kernel
sources and `apollo.sh` were byte-compared with the original before launching
the existing all-variant enforcing/KSU interface (six variants, no permissive
build). Runner: `run_enforcing_audit.py`; status/log:
`enforcing-audit.status.json` / `enforcing-audit.log` in the snapshot root.
Do not start a duplicate. First attempt failed in host fixdep because the shared
Clang20 loader wrapper re-executed the ELF loader as `-cc1`. A compile probe
confirmed `-fintegrated-cc1` fixes that invocation. A **snapshot-local** toolchain
wrapper adds this flag, retaining the same Clang20 binary/resource directory;
shared compiler files were untouched. First-attempt log/status preserved under
`enforcing-audit.attempt1.*`; second attempt launched. ZIPs remain unverified.
Follow-up attempts 2/3 are also preserved: shell argument forwarding was fixed
in the local wrapper; host compile-and-link still triggers Clang self-execution
even with integrated cc1. Runner now passes `HOSTCC=gcc HOSTCXX=g++` through
MAKEFLAGS for host build utilities only, retaining Clang20 for ARM64 objects.
Inspect the current status/log before resuming; no source patches were discarded.
Attempt 4 showed the same self-execution issue on preprocessed ARM64 assembly.
The local wrapper now uses loader `--argv0` plus `-no-canonical-prefixes` so Clang
re-executes the wrapper, which forwards raw `-cc1`/`-cc1as` invocations directly.
Actual host fixdep linking and ARM64 note.S compilation probes pass. Attempt 5
is actively compiling the kernel; original compiler and kernel source are intact.

The available Telegram log ZIPs and standalone AirCommand crash attachments map
to July/August messages (524, 1192, 3273, 3341, 3464, 3505), before release 1.4.
They cannot establish the cause of the current October S Pen or Now Brief reports.

### Additional S9 E1001 report (2026-10-21)

User relays that some S9 devices fail the new release with E1001 while the
previous release works and S9+ users can install, including dirty flashes.
Installing Duhan first did not help the reporter. No recovery log, exact ZIP
or recovery version is available; do not infer a unique cause from this.
Source confirms E1001 is emitted when `block_image_update` returns false for
SYSTEM in the full OTA generator. It is not the device assertion or kernel
installation error. S9 and S9+ use the same 9500MiB SYSTEM layout checks,
with their respective target arguments. The pending transactional GPT fix
remains relevant but is not proven to resolve this particular report, and
does not modify an already distributed ZIP. Keep block-image validation intact.

### Now Brief acceptance and three-target comparison (2026-10-21)

User confirms Now Brief works on the live S9+ after onboarding. Weather also
visibly loaded its forecast. Smart Suggestions main process remained PID 3575;
recent exit records contain empty search-process reclamation, not app crashes.
The live installed APK and each existing starlte/star2lte/crownlte workdir APK
have identical concatenated, filename-sorted DEX SHA256:
`79f4039614203722f21bafe97b3bbffea31f15d5aa7ae22521a9b6907589754c`.
The personalization patch and Brief-stack verification are platform-wide.
Their finalizer calls now explicitly propagate failure (`|| return 1`) so a
failed patch/check cannot be ignored by subsequent successful commands.
No new database-key migration, data wipe or app replacement was applied.
This establishes shared code and S9+ acceptance, not physical S9/Note9
acceptance or a guarantee against every future crash.

### Live follow-up: Weather consent and ART crash (2026-10-21)

User connected Wi-Fi and accepted Weather's local-weather introduction. The
foreground is now Android PermissionController's GrantPermissionsActivity;
runtime location permission remains the user's choice. Galaxy AI introduction
also needs the user's choice before Now Brief acceptance testing.

A separate real native GMS crash was preserved from `/data/tombstones/tombstone_02`
to `C:/Users/Admin/AppData/Local/Temp/unica-gms-art-tombstone-20261021.txt`.
At device time 18:45:27, GMS PID 17388 / JIT thread 17396 hit SIGSEGV in
`art::HBasicBlock::AddInstruction`, with fault address `0x002d2d2d2d2d2d3d`.
libart BuildId: `80d2ab18f9d259d8e546c1e6bae752b1`; installed SHA256:
`8ce2020ad6cabf7a9645c42f35b8479b63035c39bc6b949650fdc8d6e99b8d8a`.
GMS reports version 26.40.32 (260400-995630914). No installed KSU modules were
listed. Text-source search found no explicit libart replacement/patch, but APEX
provenance still needs inspection. This is evidence of a crash, not yet proof
of its cause or a link to the reported heat/lag. Do not disable JIT or clear
GMS data as a substitute for diagnosing it.

Preserve all three existing ROM workdirs and unrelated source/kernel edits.
No phone flashing, source pushes or publication are authorized for this
follow-up. Passing source/assembly tests is not device acceptance. Do not
disable S Pen, live wallpaper, blur, enforcing SELinux or normal app lifecycle
to make the report disappear.
