# Note9 S Pen diagnostic test patch v5 — 26 October 2026

## Scope and evidence

Remote tester capture: 26 October 11:17, UN1CA 1.5 / Android16, EXT4,
Samsung Notes4.4.45.37. The 25 October21:11 archive is older evidence,
not a new independent test. No physical acceptance of v4/v5 yet.

Working according to tester: pen insertion, Air View, Air Command including
hover button, Quick notes, handwriting input, saving notes and memos.
Remaining: Notes main-list native crash, delayed screen-off memo ink,
Air Actions connection.

The 31 Notes native tombstones consistently enter GroupResult::PrintResult
through MakeLevelIndentLogString, then fail with Scudo misaligned deallocation.
Disassembly shows diagnostic stringstream formatting/logging and recursive
PrintResult traversal, separate from recognition and result construction.
v5 uses the v4 diagnostic entry RET change (four bytes at ELF executable
offset0x7aba8), with exactly matching official Notes native libraries.
The APK, recognition algorithms, libc/allocator checks and SELinux are unchanged.
This is a targeted compatibility workaround; not a vendor source-level repair.

Further reverse engineering of the embedded BTSNOOP_LOG_SUMMARY using AOSP's
btsnooz decoder found6990 controller packets, including2124 LE advertising
reports from the saved pen address. AD type0x07 contains the correct Crown
service UUID edfec62e-9910-0bac-5241-d8bda6932a2f. Reports exist during the
failed11:01–11:03 scan period. Vendor HCI command completions were status0.
Therefore a missing/uncharged/non-BLE pen is not an adequate explanation.
AirCommand's callback/scan processing boundary needs further observation.
The manifest declares neverForLocation, but no evidence yet proves that flag,
scanmode100, Samsung's hidden setUuid, or the scan denylist is the cause.
Those permissions/filters/settings are not blindly changed in this test.
Stock N960F scan mode100 and Crown UUID match the port. Stock TicToc also
extends phase timing on charge->off transitions;1500ms alone is not a bug.

Screen-off writing uses SpenWritingView/Texture in the audited Notes APK,
whereas the main composer supports DrawLoopHwBuffer. This plus delayed ink
suggests a rendering path mismatch but does not identify a safe patch yet.
Do not force global HWUI/GPU settings or disable acceleration without evidence.

## Logger

KernelSU's locally inspected init_event.rs runs common service.d scripts via
on_services/run_stage. v5 installs a separate one-shot diagnostic script,
not a KernelSU module. It waits for Android/user unlock, captures one bounded
session and then becomes inert. It records scoped logcat, Wacom kernel logs,
read-only Wacom counters/firmware, package/native hashes, actual scan policy,
AirCommand AppOps, Bluetooth/GATT state, input/power/graphics state and up to
four Notes tombstones. Existing HCI trace is included only if already enabled
and below20MiB. It never resets/charges the pen, changes permissions, enables
snoop globally, modifies SELinux, clears logs/data, sends
anything over the network. Logs may contain device addresses or note text
already emitted by apps; share privately only.

## Guards and restore

Requires Note9N960F/N960N, Android16 matching base, real EXT4 superblock and
mount-source agreement, exact Notes APK, mounted KernelSU data. Existing native
files, v3/v4 backups and extras are preserved. Native payload checksums,
labels, staged commit and rollback are checked. Restore native backup and
disable the service before undoing any earlier patch. Logs remain preserved.
No kernel, radio firmware, APK, partition layout or personal-note data changes.

20 isolated host tests pass, including one-shot logger export, correct target,
real EROFS rejection, corrupt logger/native rejection, install/reinstall/restore,
symlink rejection and rollback after service commit failure. ZIP CRC and payload
hashes pass. These checks do not substitute for remote physical testing.

## Further test needed

Reproduce Notes list crash, handwriting recognition, screen-off ink with AOD
on/off, Air Actions initial connect/battery/button actions and reconnect. Send
the v5 archive and report each outcome. Do not claim full S Pen functionality
until those tests pass on the Note9.

## v5.1 logger update

Uses native Android bugreportz -p to request the full dumpstate ZIP, accepts only
an OK-completed known report location, and compares the copied report SHA256.
If native ZIP reporting is unavailable/fails promptly, attempts native dumpstate
stdout and requires exit0 plus recognizable report content before calling it
complete. Timed-out native requests do not start another dumpstate concurrently.
Failures and partial output are labelled explicitly. Requires at least1GiB free
before full collection; never deletes older data to free space.

Exports raw session files, dumpstate ZIP/text, completion status and an archive
into Download/UN1CA-SPen-Logs-YYYYMMDD-HHMMSS, using phone local time. Checks
space for both the visible folder and archive. Original private collection is
preserved if export fails. Full native reports can contain private device/app
information and must be shared privately. Existing v5 collector is upgraded
only if its exact known hash matches; the previous script is backed up.

The20 host tests now cover native ZIP creation/copy, text fallback, failure
labelling, dated export, one-shot behavior and upgrading the known v5 collector,
in addition to the filesystem/rollback guards. Actual Note9 dumpstate execution
is still unverified until the tester returns this version's output.

Native bugreportz protocol reference:
https://android.googlesource.com/platform/frameworks/native/+/refs/heads/main/cmds/bugreportz/readme.md
