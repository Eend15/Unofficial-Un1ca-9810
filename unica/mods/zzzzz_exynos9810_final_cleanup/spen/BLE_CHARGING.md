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
