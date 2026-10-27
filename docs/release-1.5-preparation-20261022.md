# Release 1.5 preparation — 2026-10-22

## Installation complete — user confirms Android setup screen

After installation, native Format Data including internal storage, and reboot,
the user confirmed that the phone reached the Android setup screen. Installation
state is now `complete`, with that physical confirmation recorded as boot
evidence. The installation monitor was deleted after success; do not recreate
or repeat installation/formatting. No post-format ADB runtime acceptance was
possible yet, so this confirms a successful fresh boot, not new AOT/AOD,
KernelSU module persistence or all-feature acceptance on all three targets.
Earlier pending-state paragraphs below are retained as chronological evidence
and are superseded by this completion entry.

## Installed and formatted — first boot pending

The intended phone reconnected as serial `2284f28124027ece`, star2lte SM-G965F,
TWRP 3.7.1_12-0. The 5,509,598,133-byte ZIP was pushed successfully and its
phone-side SHA256 matched the PC/final build hash. `twrp install` completed
with updater RC=0, operation status=0 and the expected star2lte identity.
The installer's own optional USERDATA formatter refused the still-mounted
partition; it did not complete the user's requested data wipe. The subsequent,
explicitly authorized native `twrp format data` completed with RC=0 and
operation status=0. `/data` was verified empty; its native filesystem is F2FS,
supported by both actual installed vendor fstabs alongside ext4. External SD
was not erased. The system/vendor/odm images remain the validated ext4 build.

Recovery logs and installer old/new boot images are saved in
`C:/Users/Admin/Documents/Codex/2026-10-03/po/release15-install-20261023`.
The cache-format stage truncated recovery.log, so the after-install log only
contains its final portion; the TWRP command's success output was also observed.
The final format log confirms the native F2FS formatting succeeded.
The phone has been rebooted to system; boot confirmation is pending.
`out/target/star2lte/install15-20261023.status.json` records the current state.
Do not repeat installation or Format Data. The monitor remains useful only
for boot confirmation/actual boot-error diagnosis, then should be deleted.

## Build complete — installation awaiting USB

October23: the full source build and ext4 packaging finished successfully.
The log confirms `Verified Exynos9810 flashable` for ext4, enforcing, six device
payloads; release-default, SELinux, face bridge and actual image/PSI checks passed.
Final artifact:
`C:/Users/Admin/Downloads/UN1CA-1.5-star2lte-ext4-20261023/UN1CA_1.5 (stable)-Unofficial-UN1CA 3.2.1_20261023_star2lte-sign.zip`.
SHA256 (recorded by hashing the final file, matching SHA256SUMS):
`dfbdeaf92d259c3d899705476e83dadbcae0e058400059366c10c8903fa8b3dd`.
Continuation state is `complete`; do not restart the build or runner.
ADB still shows no device. The existing connection question is pending; do
not repeatedly ask it. No installation, data format or boot test has occurred.
The monitor continues only for the user-authorized installation/Format Data
workflow below and should be deleted once that workflow is complete.

## Latest human authorization: installation and Format Data

October23, after the build reached flashable ZIP generation, the user explicitly
requested transferring the finished ZIP to their S9+, installing it, and then
Format Data including internal storage. They were told that apps, photos and
downloads are erased. This supersedes earlier no-flash/no-wipe instructions
only for serial `2284f28124027ece`, verified star2lte/G965, and this completed,
verified ext4 ZIP. It does not authorize external SD erasure or other devices.
ADB currently has no device and the user has been asked to reconnect in TWRP.
Do not repeat that pending question on every heartbeat. Do not install partial
ZIP output. Check the completed build/verifier and SHA256SUMS, verify target
identity and the transferred ZIP hash, install with supported TWRP mechanisms,
save and check recovery logs, and only after installation succeeds perform
native TWRP Format Data (including /data/media). Inspect actual supported
commands/UI; factory reset alone may preserve media, and blind mkfs/dd is not
an acceptable substitute. Reboot and verify boot afterward. The existing build
monitor has been updated to continue through these steps and delete itself
after verified completion. Do not publish or push source.

## October23 continuation

The user confirms the temporary double-tap wake worked and has reconnected the
S9+. Added the missing Samsung AOT command/capability contract to both kernel
touchdriver versions. See the finalization `input/README.md` and saved kernel
patch. Five tests pass, covering actual C state transitions, both real command
tables with/without CONFIG_WAKE_GESTURES, clean-checkout reproduction, idempotence and incomplete-input
rejection. A first compile found a command-table comma error, corrected in both
drivers; the failed log/status are preserved as `dt2w-audit.attempt1.*`.

The six-model enforcing KernelSU build is now running in the existing isolated
kernel snapshot, log `dt2w-audit.log`, status `dt2w-audit.status.json`.
The original source's KernelSU snapshot/SELinux fixes were byte-compared and
preserved. The old successful kernel archive/status were retained. Do not
launch another kernel build against that snapshot while this one runs.

An exclusive-lock continuation runner is waiting for that build at
`out/target/star2lte/complete-release15-20261023.py`; state is recorded in
`release15-ext4-20261023.status.json`. It validates the complete compiled family,
transfers it into both filesystem-specific archives while retaining the DTBs,
validates those, updates exact source pins, then rebuilds star2lte from source.
It stops on any failure. ROM log: `release15-ext4-20261023.log`.

The ROM runner first executes all source/compile stages with ext4 selected,
then uses supported staged packaging on that newly compiled tree. Only regular
images/OTA staging and final ZIPs use the dedicated Windows Downloads output
folder `UN1CA-1.5-star2lte-ext4-20261023` to avoid disk exhaustion; the actual
Android workdir and APK decode trees stay on case-sensitive WSL storage. Final
flashable verification and SHA256 are required before completion. Nothing has
been flashed or published. Earlier "physical test pending" and "no build
started" entries below describe the October22 state and are superseded here.

Build follow-up automation `monitor-un1ca-1-5-ext4-build` is active in this chat
every five minutes, continuing the user's earlier request to monitor builds,
repair actual failures and resume. It must not launch a duplicate while the
locked continuation runner is alive. It reports meaningful failures/repairs or
verified completion, and pauses after success. The deleted Telegram-export
monitor was not recreated.

User requested version 1.5, an ext4 ROM build after the fixes, and correct
enforcing KernelSU payloads for both ext4 and EROFS. Double-tap-to-wake is
conditional on a defensible port/test, not grounds for advertising an untested
feature. Preserve existing fixes and do not publish or flash this preparation.

## Completed

- Changed `ro.unica.version` from 1.4 to 1.5 in both the Settings module and
  Exynos9810 final identity pass. The upstream UN1CA version remains 3.2.1.
- Both edited shell scripts pass `bash -n`.
- With only 9.7 GiB free, removed precisely the user-authorized
  `out/target/starlte/work_dir` and `out/target/crownlte/work_dir` after checking
  their resolved paths and confirming no ROM build was running. Source, APK
  decode trees, audit artifacts and `star2lte/work_dir` remain intact. Free space
  afterward was 29 GiB. This authorization supersedes the older instruction to
  preserve those two workdirs; it does not authorize other cleanup.
- Rechecked both October21 enforcing KernelSU ZIPs: CRC passes; all six model
  kernel/DTB members exist; SHA256 matches the installer and final ZIP verifier:
  EROFS `877a853187607bc6a6e988dad63bd154b93b6d08bbc794266f5300a26070c348`,
  ext4 `414fde15e9a79f8b7742758a829a75a73250b0ec61f8e9256265afcc97af8e51`.

## AOD and double-tap investigation — not accepted as fixed

The user physically reproduced non-responsive double taps on the AOD clock.
Firmware events reach AOD as `AOD_DOUBLE_TAB`, with raw coordinates converted
by density rate 1.3333334. The app's recursive target lookup returns no target;
it rejects invisible/transparent/non-clickable views. Do not remove those guards
globally. The visible main clock wrapper `aod/J` and the interactive
`AODFaceWidgetClockPage` are different classes and must not be conflated.

The modern sysinput HAL additionally attempts the missing `/sys/class/sec/tsp/enabled`
using staged values such as `3,1`. The legacy `/sys/class/sec/tsp/input/enabled`
accepts booleans. A symlink would not implement the missing protocol. AOD and
SystemUI already address the correct legacy path for single/double touch mode.

DS-ACK already includes software double-tap wake in `wake_gestures.c`, integrated
with both sec_ts variants including Note9 y771. The live S9+ exposes
`/sys/android_touch/doubletap2wake`, initially 0. It was temporarily set to 1
for the user's physical test. This is runtime-only; no new kernel has been
compiled and no permanent default has been changed. The code defers writes
made during suspension until the next input-open transition. The full-touch
software route differs from the low-power AOD firmware route and needs testing
for coexistence, wake behavior and power use before enabling by default.

The physical test question is pending. No new ext4 ROM build has been started
in this preparation; do not describe a new ZIP as complete or the wake feature
as working. Continue the AOD diagnosis and physical test, then build from source
with `scripts/build_logged.sh star2lte LOG STATUS --build-rom-zip --fs-type ext4`.
Do not use `--package-staged` on the old workdir and silently omit new source
changes. Verify the final flashable and its SHA256 before reporting completion.
