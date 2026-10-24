# Note9 BLE charging compatibility

## S10Portt fork comparison, October 22

Inspected default branch `port/exynos9820-s10` at commit
`c46f4da9a3b67000ef85a7a2e6ef34676fe46070`. Its targets are beyond1lte,
c1s/c2s and the other Exynos990 targets; no d1/d2/Note10 target is present.
The generic S Pen module imports dm3qxxx helpers/permissions and then
`prebuilts/extras/system/priv-app/AirCommand`, rather than the dm3qxxx APK.
That actual extra APK is version 7.4.11.3, minSDK33/targetSDK34, 18,800,690
bytes, SHA256 `b1abb0a8096a913795cc062acda18574a80fa9ccf3f312b8ad34ed199963fe32`.
Decoded separately at `/tmp/s10portt-aircommand-c46f4da`.

This APK is not a stock Crown protocol replacement: `b7/d` still has 600ms
transaction/write constants, and `e/c` still invokes the modern stop/reset,
5-second wait, then stop sequence before TicToc. The fork's exposed module
does not supply an additional Crown-specific protocol patch. Accordingly its
older APK is retained only as comparative evidence; it is not substituted
for our One UI8 app or described as a demonstrated Note9 pairing fix.

Reference: https://github.com/S10Portt/ArtisanROM/blob/c46f4da9a3b67000ef85a7a2e6ef34676fe46070/unica/patches/spen/customize.sh

## ArtisanROM comparison: missing stock SMPS property

Inspected ArtisanROM commit `98adacf221e1261cabac49fe2e2b178917c6eab3`,
`platform/exynos990/patches/spen_air_actions/customize.sh` and
`unica/patches/spen/customize.sh`. This is a Note20-generation Exynos990
compatibility approach, using a One UI6 AirCommand override kept authoritative
after generic donor import. Its charging/profile assumptions are not imported
to Crown, and our One UI8 AirCommand is retained.

One applicable omission was confirmed locally: original SM-N960F vendor
build.prop has `ro.smps.enable=true`, while neither staged Note9 system nor
vendor build.prop contains it. Artisan defines this property from system to
avoid Android16 vendor_init's unnamespaced-property restriction. Our crownlte
finalizer now independently restores this stock property in system and removes
vendor duplicates via `patch_smps_property.py`. The final boot verifier requires
it; S9/S9+ are excluded. Two tests cover duplicates/idempotence and actual Note9
property copies with failing precheck/passing postcheck and unchanged other
properties. Existing workdirs were not edited. This repairs SMPS enablement;
it does not by itself establish BLE pairing or screen-off ink acceptance.

Reference: https://github.com/ArtisanROM/ArtisanROM/blob/98adacf221e1261cabac49fe2e2b178917c6eab3/platform/exynos990/patches/spen_air_actions/customize.sh

## October 22: full supplied dump and newer timeout excerpt

Read the 73,036,430-byte `dumpState_S901BXXSNGZD7_202608122137 (1).log`
alongside the October diagnostics/status and October18 pasted failure excerpt.
The August dump contains successful kernel Wacom E8/E9/EB transitions, but
its TicToc scan still uses manufacturer 117 / bytes `01 SPEN02` (for example
lines 334137 and 334235), then TICTOC_FAIL/TIMEOUT. At line 231256 the kernel
explicitly rejects charging mode 8. The existing source service-filter and
continuous-charge repairs address those observed incompatibilities; this old
dump is not evidence that a current rebuilt source still has them.

The Oct18 excerpt starts after FORCE_RESET already failed with TICTOC_FAIL;
it contains no pre-failure scan setup/results. Its `unsetDeviceBatteryInfo`
IllegalArgumentException follows `address=null`, is logged/caught, and does
not establish a cause for the earlier timeout. The charging sequence already
uses 0,1,3 there. Do not fabricate a pen MAC or remove permissions/SELinux.

Compared the original N960F `turnOffWacomChargingModule`,
`turnOnWacomChargingModule`, `resetSpen`, and `resetWacomDsp` with the patched
modern writer. Stock enforces a 200ms transaction boundary for stop (0), enable
(1), reset (2), and DSP reset (7). The port covered only 1/2, leaving 0/7 at
the 20ms command interval. `patch_crown_charge.py` now includes 0/7 in that
same 200ms branch, retaining the short interval for fast-charge command 3.
It upgrades the previous patch idempotently. The compiled-APK verifier checks
all four command branches. This closes a stock-timing mismatch, not a claim
that timing alone caused the user's observed timeout.

## October 21: stock Note9 discovery reverse engineering

Decoded the actual `out/fw/SM-N960F_PHN/system/system/priv-app/AirCommand/AirCommand.apk`
(SHA256 `8a7547025d670754d19c6c449d8f76d65df89a70e62d4f0445d7f08537b4f6c1`)
into `/tmp/unica-n960f-original-aircommand-20261021`. The older directory named
`cos-worker6-crown-stock-20261013` contains a newer obfuscated application;
its name alone is not evidence that it implements the original N960F protocol.

Stock `CrownSpenDeviceFeature.getScanFilter()` constructs a filter from
`BleSpenCrownDriver.UUID_SPEN_SERVICE` (EDFEC62E-9910-0BAC-5241-D8BDA6932A2F).
`BleSpenScanFilter$1.applyFilter()` applies it through Android's
`ScanFilter.Builder.setServiceUuid`. Stock Crown's advertisement callbacks
toggle charging module commands 1/0, with no reset in `onPrepareTicToc`.
Its button bytes 1/2 map to single-click and long-click start/finish; boot
charge is 30 seconds. Those existing port translations were checked against
these original methods rather than inferred from newer pen implementations.

The current port removed the incompatible SPEN02 manufacturer filter by setting
the filter to null. This also discarded stock's service-UUID restriction,
allowing unrelated BLE advertisements into unknown-pen discovery. The new
`patch_crown_scan.py` restores that service filter in the null-filter branch
when no reconnect MAC is supplied. Existing explicit filters, saved-address
reconnects, scan duration, permissions, TicToc matching and GATT authentication
are preserved. It is called only inside crownlte's BLE protocol finalizer.
No MAC is fabricated or copied from another Bluetooth device.

Validation: three new transformation/real scanner assembly tests pass; the
actual four protocol finalizer functions apply twice idempotently; twelve
installation tests, two charge tests and eleven final-artifact tests pass.
Complete AirCommand main DEX was rebuilt and platform-signed in the separate
`out/target/crownlte/spen_discovery_audit_20261021` audit directory. The final
APK verifier now inspects compiled `R2/b` for the UUID filter and address bypass,
so an old APK without this change fails verification. This APK is an isolated
test artifact, not a new ROM release or a phone installation. Existing ROM
workdirs and distributed ZIPs are unchanged.

This restores another concrete stock behavior; it is not proof that all
reported TicToc timeouts are fixed. Physical Note9 first pairing, charging,
pen buttons, reconnect after reboot and screen-off ink still need acceptance.

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
