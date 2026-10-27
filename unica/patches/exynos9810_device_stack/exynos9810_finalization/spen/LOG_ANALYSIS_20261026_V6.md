# Note9 v6: latest 19:31 log collection

Private input: UN1CA-SPen-v5-20261026-193129.tar.gz, plus Notes video.
The native bugreportz dumpstate ZIP completed and its exported copy passed SHA256 verification on the remote Note9. Previous v5.1 collector is now physically proven to export a complete report.

## Notes crash
Four current Notes tombstones abort in Scudo misaligned free. Frame #07 is Text::SPenRecognizerResultText::PrintResult(bool)+424 (PC0x74bcc, entry0x74a24). Previous GroupResult::PrintResult entry guard was actually installed: recognizer SHA2561eb4c190ee27192f12541022f15eff160c41205fc21974c7ae070ec97c0bf8dd. It did not cover this separate text diagnostic branch.

Disassembly of pinned original7dd25522867bb182893d29e3101becf2df75787b3046de137c94c463c7abb363 shows reporting, result-string formatting and temporary string cleanup. v6 also returns immediately from that diagnostic entry. It preserves recognition, result getters, allocator checks, Notes APK/signature, data and all other native bytes. This is a candidate crash repair requiring remote validation, not proof every Notes crash is solved.
Normal source staging and the compiled release native verifier now use this same guarded recognizer. No ROM rebuild was performed.

## Air Actions
Raw FS/data/log/bt/btsnoop_hci.log in the dumpstate contains649 connectable public-address advertisements with the Crown128-bit UUID; one device. Advertisement payload0201040303f5fe11072f2a93a6bdd84152ac0b10992ec6feed. AirCommand repeatedly scans with Samsung mode100/custom scan parameters/hidden setUuid, reports no devices and times out. Scan and Connect AppOps are allowed. This narrows the failure to filtering/delivery, but does not prove which stack component drops it.

The separate TEST patch uses standard low-latency settings ONLY when the requested service is the Crown UUID. UUID/address filters, callbacks, timeouts, charge timings, button decoder and GATT profile remain unchanged; other UUIDs retain the vendor path. Signed with the same ROM platform key; compiled Crown methods and signature verification passed. Not applied to default ROM builds pending physical pairing/battery/button/reconnect acceptance. Restore preserves the exact previous AirCommand.

## Screen-off ink
Tester reports ink only on pen-up. This report contains no recent successful ScreenOffActivity writing sequence: at19:38:38 the PenAttach service receives interactive=true and closes; removal at19:38:53 has isAwake=true and cannot start ScreenOffMemo. Notes main composer frames after19:41 and Honeyboard InkWindow frames must not be mistaken for screen-off rendering. No speculative global rendering/property/driver patch is shipped. Next collection explicitly reproduces a continuous pen-down stroke with screen off, with AOD on/off; an external video helps correlate actual tip contact.

## Recovery and scope
Notes ZIP requires the audited v5 recognizer plus exact Notes4.4.45.37 APK. It has independent v6 backups and restore hash validation and reuses the single existing v5 one-shot logger (no second service). The scan ZIP requires the exact audited AirCommand hash7aa47e01f336bd3dea586c97a49e4c60ffb5b9bacdd178425bc2221349744c1d and logger. Both require N960F/N960N, matching Android16 base, real EXT superblock and actual EXT4 mount source agreement. No format, kernel flashing, Bluetooth reset, Notes data deletion or SELinux changes. Restore scan before Notes v6.

Host tests:40 Notes/native/v6 recovery tests plus16 scanner/recovery tests passed (counts include imported existing recovery cases). Scanner APK was built successfully and compiled methods/platform signature checked. Physical acceptance remains pending on remote Note9. The attached S9+ was not used to flash Note9 files.
