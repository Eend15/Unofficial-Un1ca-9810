# Note9 S Pen test patch — 2026-10-25

## Evidence and limits

The supplied October 25 dump is a real crownlte handset with an N960N bootloader,
Android 16 and S901BXXSOGZH3 base. Its runtime `ro.unica.version` says 1.4, although
the sender identifies the installed file as the EXT4 ZIP in out. The current
October 23 workdir says 1.5 and has SMPS enabled. Do not infer the installed ZIP
hash from its filename or silently rewrite version properties to conceal this
difference. Private dumpstate files stay outside Git.

* Notes33 composer ANRs on October 24 at 11:30 and 11:31 block the main thread in
  `SPBitmapSaveManager::WaitForSaveCompleting` through `WritingHolder::doSetFocus`.
  In the original Notes33 DEX, `SpenDrawLoopHWUI.onDraw` only registers its callback
  when `SpenHwuiHandler.isHWUISupported()` succeeds. The handler looks for
  `RecordingCanvas.callDrawGLFunction2(long)`, absent from the current Android 16
  framework. Its `ViewRootImpl.invokeFunctor(long, boolean)` is also a no-op.
  This is a concrete old-renderer incompatibility matching invisible canvas ink;
  it does not prove every missing-ink symptom has the same cause.
* The original Samsung Galaxy Store Notes 4.4.45.37 is shipped unchanged as the
  replacement. Its actual DEX selects `mDrawLoopType=3` (DrawLoopHwBuffer), with
  modern Texture/Surface/Android Graphics low-latency alternatives. It no longer
  depends exclusively on the old functor for the composer. Original JAR signature
  verifies and the signer matches the old stock Notes33 certificate. Provenance
  and hash are beside the APK. Do not re-sign it with the ROM platform key.
* Air Command hover-button setting `air_cmd_with_pen_button` is explicitly 0 in
  the supplied dump. Tell the tester to enable **Open Air command with Pen button**
  under S Pen / Air command. This is a disabled preference, not proof of a kernel
  input fault. The patch does not permanently force personal settings at boot.
* Air Actions has no successful connection in the recorded history: null pen
  address/firmware, unknown battery, repeated SCANNING_TIMEOUT/TICTOC_FAIL.
  Charging commands reach Wacom sysfs with E8/E9/EB transitions; no missing sysfs
  bridge is established here. TicToc scans log `scanFilter=null` and collect many
  unrelated devices. The package includes the current rebuilt, platform-signed
  crownlte AirCommand with the already audited original-Crown service UUID filter,
  charging transaction spacing and legacy button protocol. Do not claim a newly
  proven Bluetooth repair; a discharged/faulty pen or further protocol issue
  remains possible. Never fabricate an address, connection or battery percentage.
* `ro.smps.enable` is absent in the runtime dump. The patch restores the existing
  system-owned true setting; SMPS is a sound dependency and not an ink-render fix.

## Scope

The normal crownlte source finalizer now uses the modern Notes fallback and
upgrades only the exact known legacy Notes33 donor. Other existing Notes payloads
remain intact; S9 and S9+ are not given Note9 apps. The old source APK and existing
work_dir/release ZIPs are preserved. No ROM rebuild, kernel change or phone flash
is performed by this work.

`build_test_patch.py` checks actual compiled AirCommand methods and platform
signature, the pinned Notes hash, original Samsung JAR signature and ZIP CRCs.
It packages the existing native crownlte updater with a small dedicated script.
It never includes the full ROM installer or its data-format instructions.

Recovery refuses a non-N960F/N960N bootloader, a different base/Android version,
a non-EXT4 system, unknown system Notes donor, missing/unmounted Data or vendor
SMPS override. Originals are backed up and checksummed under internal storage
before replacements. Staged copies are hashed and labeled before atomic renames;
an installation error attempts to restore all three originals. It changes only
Notes33.apk, AirCommand.apk and the system SMPS property. It never formats data,
flashes boot/kernel, removes app databases, modifies Bluetooth pairing state or
weakens SELinux. The restore ZIP restores system files, **not** Notes databases
that the newer app may migrate. Export/back up important notes before testing.

## Build and test

```sh
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/test_spen_recovery.py -v
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/test_note9_installation.py -v
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/build_test_patch.py \
  --aircommand out/target/crownlte/work_dir/system/system/priv-app/AirCommand/AirCommand.apk \
  --out out/note9-spen-testfix-20261025
```

## Tester instructions

1. Back up/export important Samsung Notes first. Keep the ROM ZIP available.
2. In Note9 TWRP, mount System and unlock/mount Data. Install the **testfix ZIP**.
   If it stops, send the recovery log; do not wipe or force it onto another base.
3. Reboot System. **Do not Format Data for this patch.**
4. Check Samsung Notes App info shows **4.4.45.37**. If a different user-installed
   update takes precedence, report its version; don't clear Notes storage.
5. Test visible live ink, typed text, pressure/eraser, save/reopen, Quick note and
   screen-off memo. Note whether ink is missing everywhere or only on one canvas.
6. Enable **Open Air command with Pen button**, hover near the screen and press.
7. Dock the genuine Note9 BLE pen to charge; test initial Air Actions connection,
   battery, camera/media button actions and reconnect after reinsertion/reboot.
8. Collect fresh SysDump immediately after a failure, before resetting the pen
   or rebooting. Send the current dumpstate ZIP and updated app-error ZIP, exact
   failing feature/time and Notes version. Physical Note9 acceptance is pending.

The original Note9 pen has BLE button actions, not later directional gestures.

## EXT4 recovery detection v2

The original patch stopped on the supplied recovery log, which labels System as
EROFS. The user states that label is wrong. Version 2 reads the actual named
System block device superblock (read-only) and checks the Linux mount source and
EXT4 type. A stale TWRP fstab type cannot veto proven EXT4; if not mounted, it
explicitly mounts the proven filesystem as EXT4. Real EROFS/unknown signatures,
or a different mounted block source, still stop before changes. No format or
conversion is performed. Nine recovery fixture tests pass, including stale label
versus real EXT4, true EROFS rejection and mismatched block-source rejection.
The EROFS KernelSU overlay draft was superseded and is not shipped.

## Native Notes dependency fix v3 — capture 2026-10-25 21:11

The new capture confirms UN1CA 1.5, System EXT4, SMPS true, Notes 4.4.45.37
and the hover button preference enabled. The .log and ZIP dumpstate.txt are
byte-identical copies of this same capture, not two independent tests.
The tester accepts screen-off memos and Air Command. Notes editor initialization
fails with `dlopen failed: library "libc++_shared.so" not found`, followed by
`c++_shared is not loaded!!` and BaseComposerActivity finishing initialization.
The APK-only earlier patch omitted the app-local native library directory for
this extractNativeLibs=true preinstalled system package.

`stage_notes_native.py` validates the pinned original APK and all 107 AArch64
ELF libraries, copies them to the installed app's lib/arm64 directory and can
verify them. Normal crownlte finalization writes metadata for all 107 files;
the final APK/JAR guard checks the actual sidecars for the approved Notes APK.
No additional binary source blobs or downloads are needed.

The v3 TWRP ZIP adds only these matching app-local libraries. The APK, AirCommand,
Bluetooth state, kernel and personal Notes databases remain untouched. Existing
native libraries/extras are preserved in a sibling original directory. Verified
staging and rename failure rollback are covered in host fixtures. A separate v3
restore ZIP swaps back the original directory without deleting either copy.
If reverting the older APK patch too, undo v3 first, then use the earlier restore
only under guidance, since its APK/database migration restrictions still apply.

Validation: 6 native payload/transaction tests plus the existing 9 recovery
tests pass; all 13 source staging tests pass. No physical phone install was done.
The tester must recheck Notes creation/live ink/save/reopen/Quick note.

Air Actions still times out after successful Bluetooth scanner registration;
the proper Crown service UUID filter is active but TicToc gets zero matching
advertisements. No evidence justifies more arbitrary timing/permission changes.
Confirm whether this exact genuine Note9 BLE pen works on stock firmware; this
distinguishes a pen/charge problem from remaining ROM discovery incompatibility.
