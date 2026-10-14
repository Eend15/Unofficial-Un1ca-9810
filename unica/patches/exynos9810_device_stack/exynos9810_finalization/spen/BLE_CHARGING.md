# Note9 BLE charging compatibility

The supplied `dumpState_S901BXXSNGZD7_202608122137.log` already contains
successful direct sysfs writes and the legacy Crown scan UUID. Reapplying the
sysfs bridge does not address this report. Scans still time out and TicToc
ends without finding a pen.

Two charging differences remain compared with the local SM-N960F stock
AirCommand implementation:

* `CrownWacomChargingDriver.turnOnWacomChargingModule()` and `resetSpen()`
  enforce 200 ms between module transactions. The port flattened `0,1,2`
  and `0,1,3` into writes separated by only 20 ms. Restore 200 ms before
  commands 1 and 2 while retaining 20 ms before fast-charge command 3.
* The built-in continuous-charge branch still sends `3,8`. The kernel reports
  `wacom_ble_charge_mode: wrong mode, 8` at 21:37:21.032. Stock Crown's
  continuous-charge entry falls back to ordinary fast charging. Translate this
  remaining branch to `0,1,3`, as for the other compatibility branch.

`patch_crown_charge.py` runs after the existing BLE protocol translation,
only on crownlte. It rejects unexpected donor patterns and is idempotent.
It preserves scan, pairing, battery reporting and button actions.

Validation: unit tests for the sequence, intervals, repeat application and
unexpected donor rejection; assembled the complete smali tree of the existing
7.7.12 patched AirCommand APK with the added changes. A Note9 is not connected.
These repairs address confirmed incompatibilities, but successful BLE pairing
and camera/media single/double presses still require a Note9 hardware test.
The log alone cannot exclude a discharged or faulty pen or another scan issue.

The October 8 source audit also corrected the legacy-button patch's repeat
application check: it checked a label it never inserted, so the second pass
failed with `legacy button pattern mismatch`. It now checks the actual inserted
label. Note9 setup, controller, sysfs, BLE protocol and charge-settle failures
now propagate to the build instead of allowing an incomplete port to ship.
The controller decoder and garage fallback also propagate failures.

Validation used a fresh decode of the repository's AirCommand APK on a Linux
filesystem, applied the controller/protocol/charging patches twice, and built
the complete APK successfully. Both charging tests passed. This is source and
assembly verification, not proof of successful radio pairing or button actions;
only an S9+ was connected during this audit.

## October 13, 2026: Note9 Air Actions ROM source integration audit

The ROM now treats `crownlte` as an explicit S Pen target even when the Note9
firmware is not currently extracted. Previously `unica/patches/spen/customize.sh`
relied only on the firmware's `com.sec.feature.spen_usp*.xml` presence and could
silently skip the b0qxxx AirCommand APK, supporting libraries and Bluetooth
permissions. The Note9 finalization stage already uses the target-matched
USP40 feature, `builtin,button` BLE profile, original Crown UUID, Wacom sysfs
bridge, legacy button packets, scanner timing and 200ms charging settle.

The finalizer now rejects a missing Note9 factory eject/insert receiver or a
missing/unrecognized AirCommand garage parser (previously silently ignored),
removes conflicting USP versions, and validates its actual staged filesystem:

* AirCommand + FactoryAirCommandManager APKs, SMPS libraries and public library
  declaration
* exactly one USP40 system-feature declaration, proper garage/BLE floating
  features (button-only) and stock FCC identity
* privileged `BLUETOOTH_PRIVILEGED` permission and default `BLUETOOTH_SCAN`,
  `BLUETOOTH_CONNECT` and `BLUETOOTH_ADVERTISE` runtime grants
* Note9 sysinput init ownership of `epen_ble_charging_mode` for the real Wacom
  hardware interface

**Source tests:**

```sh
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/test_crown_charge.py -v
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/test_note9_installation.py -v
```

The first test covers Wacom mode/200ms timing and rejection of unknown inputs;
the second exercises actual target detection without firmware and verifies
positive/negative staged-file fixtures, permission/USP conflicts and garage
fallback fail-closed behavior. All passed. The *real* 25.6MB b0qxxx AirCommand
APK was freshly decoded in `out/target/crownlte/spen_airactions_audit`, all
five init/controller/BLE/charging patch phases were applied twice and checked
for idempotence, and the patched APK reassembled with Apktool and passed ZIP
integrity. This isolated APK is an **unsigned audit output**, not a shippable
ROM or a Note9-installed binary.

**Physical Note9 acceptance still required.** Test pen insertion/removal and
handwriting, initial BLE connection after docking/charging, battery report,
reconnection after Bluetooth toggle/reboot and disconnection/reinsertion,
then 10 repetitions each of camera shutter, media control and configured
single/double button presses. Verify `dumpsys package
com.samsung.android.service.aircommand` actually grants BLE permissions and
inspect filtered AirCommand/Wacom/TicToc logs for scanner timeout, GATT errors,
or a null BLE controller. A null-controller guard prevents an app crash; it
is not proof of working BLE. Do not claim hardware pairing passes without a
real `crownlte` handset and compatible charged S Pen.

Samsung's Note9 pen supports single/double BLE button actions, **not** the
later gyro/accelerometer air-motion gestures. These later motion capabilities
remain disabled deliberately; spoofing them would break native compatibility.

### Post-Apktool output verification (October 13 follow-up)

The staged filesystem preflight above runs *before* Apktool rebuilds the actual
AirCommand APK and Android16 `services.jar`. Therefore it cannot prove the final
archives retain the patched BLE and Wacom DEX after recompilation and signing.
`scripts/make_rom.sh` now runs `spen/verify_note9_rebuilt_artifacts.py` after
its Apktool batch, only for `crownlte`, and stops the ROM before image packaging
if the rebuilt APK/JAR is absent or corrupted, if compiled Crown BLE UUID or
TicToc advertisement strings disappeared, if the system-service Wacom sysfs
bridge disappeared, or if AirCommand lacks SignApk signature entries. The
verifier now also validates each DEX header, declared size, SHA1 and Adler32;
uses baksmali on the final APK/JAR to inspect the **actual compiled methods**
(`b3/b` Crown GATT service UUID, `U2/k` one-byte button dispatch, `j3/a` 200ms
Wacom spacing, `A/j` TicToc scan, and `SpenGestureManagerService` secured sysfs
write); and rejects forged strings in unrelated DEX classes. This is an
output-integrity guard, not Bluetooth hardware certification.

```sh
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/test_note9_rebuilt_artifacts.py -v
```

The extra tests include negative fixtures (stale donor UUID, missing Wacom
bridge, unsigned APK), production call ordering and checks against the real
isolated compiled AirCommand APK and Android16 S Pen class. The real APK was
signed with the existing build platform key **only inside the audit folder**,
and `jarsigner -verify` accepted it (self-signed platform certificate warnings
are expected). Neither file was installed or flashed.

**New factory receiver signing fix:** an independent APK/manifest audit found
the original Note9 `FactoryAirCommandManager.apk` carries the Samsung signing
certificate, while its manifest requests `android.uid.system` as shared UID.
The port's system packages use its own platform certificate: an unmodified
copy can therefore fail Android PackageManager's shared-UID signing check,
leaving S Pen insertion/ejection support absent despite the APK file existing.
`_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN` now re-signs **only crownlte's** factory
receiver with the same `aosp_platform` or `unica_platform` key selected for
other reassembled ROM APKs. The post-Apktool verifier checks both AirCommand
and FactoryAirCommandManager certificate SHA256 values against that exact ROM
platform certificate and validates their JAR signatures. This does **not**
change other Samsung S Pen APK signatures or bypass Bluetooth permissions.

An isolated copy of the original Factory receiver was signed under
`out/target/crownlte/spen_airactions_audit`; its output certificate matched
the AOSP platform key, whereas the stock APK did not. The new tests verify
the mismatch is rejected and that the signed audited AirCommand, factory
receiver and compiled Wacom class pass the combined production verifier.
Actual final Note9 ROM packaging and runtime BLE interactions remain untested.

### Full S Pen screen reference: Quick Notes and screen-off memos

The S Pen settings UI has separate entries for Air Actions, Air Command, Air
View, S Pen to text, **Quick notes** and **Screen off memos**. The modern b0qxxx
AirCommand APK explicitly starts `com.samsung.android.app.notes` component
classes for the Create note action, popup note, composer and memo list. The
Note9 debloat lists previously deleted both SamsungNotes variants and
SNoteProvider; the S22 base contains no Samsung Notes APK, leaving the Settings
toggle visible but the actual note target missing.

The `crownlte` target debloat list and finalizer now preserve SamsungNotes and
SNoteProvider on Note9 only, and preserve the Notes role overlay. If an existing
modern SamsungNotes APK is already staged, the finalizer keeps it. Otherwise it
installs `spen/notes/Notes33.apk` from the extracted **SM-N960F stock firmware**,
stored in the repository (SHA256
`7efba32e183e6ace5291f7d80c8cf00022c6374a4c7e5e5c8d1d03aad917239f`).
The APK manifest names all AirCommand-required entry points including
`PopupNoteService`, `ComposerBaseActivity`, `MemoListBaseActivity`,
`ScreenOffMemoService` and `ScreenOffMemoProvider`, which are asserted by a
real-APK decode regression test. The staged-payload checker now refuses a
Note9 ROM with no Notes app, or with missing `com.samsung.device` shared
library/JAR required by stock Notes33; S9/S9+ do not receive this app.

The stock Notes33 app targets an older Android SDK. Its presence and correct
manifest components do **not** prove those components work on Android 16.
Before claiming screenshot-equivalent behavior, validate the real ROM with a
physical Note9: create/save/reopen a Quick note, invoke the pen-detach popup,
write/save/reopen a screen-off memo, and inspect crashes/PackageManager errors.
Also validate Air View, handwriting/S Pen to text, BLE battery %/charging and
camera/media button actions. Note9's genuine pen has no modern accelerometer/
gyroscope motion Air Gestures, even if newer UI graphics show such options.
