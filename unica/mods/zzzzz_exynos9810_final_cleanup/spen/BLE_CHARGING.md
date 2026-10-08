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
