# Note9 v7 test candidates, 2026-10-27

## New evidence
Input UN1CA-SPen-v5-20261027-131122.tar.gz includes a successful native dumpstate ZIP. Recognizer SHA25654fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9 confirms Notes v6 is now installed. Tester confirms Notes list and handwriting work without the prior crash. No fresh Notes fatal exception/abort was found in the captured current session. A separate lshal diagnostic process crash during dumpstate is not a Notes crash.

Both remaining symptoms persist physically: screen-off ink appears on pen lift and Air Actions cannot connect. AirCommand hashcd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea confirms v6 standard-scan trial, which still times out. Keep that trial out of defaults.

## Ink trial
The SDK enables FBR on this port. The pinned libSPenEngine.so JNI FbrDrawPadGlue.isSupported entry atVA/file offset0xc2a5c tail-calls SPen::IsFBRSupported. ELF LOAD segment maps file0..0x175700 to matching VA. SHA25679a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505 and exact first8bytesfd7bbfa9fd030091 are checked before replacing them with00008052c0035fd6 (mov w0,0;ret). This JNI boolean capability result selects the SDK's existing non-FBR drawing path; recognition and stored stroke data are unchanged. Java SpenLatencyConfiguration.isFrontBufferRenderingSupported checks that result; normal view setup proceeds when unsupported. The change is app-local, not a GPU driver/global framework patch.

This is a reversible renderer compatibility test, not proof the FBR path is the root cause or that fallback fixes latency. Test continuous pen-down ink, erasing, pressure, handwriting, saves, screen-off AOD on/off and Quick notes. APK and recognizer remain identical. Default ROM staging does NOT apply this experimental engine patch until physical results support it.

## Bluetooth trial
R2/b already selects mode2 only for Crown UUID. D0/d now supplies a null controller-filter list only for that mode. Its callback retains the original filters and calls ScanFilter.matches before any result dispatch; unmatched devices are not passed to pen connection logic. Other modes keep original controller filters. Existing GATT profile, charging timing, original device address, timeouts and permissions are unchanged. A once-per-scan log indicates a raw callback arrived, without logging unrelated addresses. Thus next logs distinguish no callback delivery from a later pen match/GATT failure. This remains a test, not a claim of successful pairing.

Callback constructor, scanner bridge, original Crown charging/button methods and platform certificate are verified in compiled DEX/APK before packaging. Critical monitor object register is preserved: the mode2 comparison uses v3, never lock register v0.

## Guards/acceptance
Two numbered install ZIPs plus matching restores. Exact old library/APK hashes, Notes4.4.45.37 and accepted v6 recognizer (ink patch), N960F/N960N, matching Android16 base, actual EXT superblock/mount source, existing known one-shot logger and free System space are required. Original files and earlier backups retained; staged replacement with rollback and verified restore. No data formatting, kernel/ROM rebuild, permission bypass, Bluetooth reset or Note9 patch flashing on attached S9+.

23 host tests passed (including imported prior recovery cases): install/reinstall/restore, invalid target, corrupt candidate/backup, changed input and failed candidate rename restoring original. Ink byte-diff checks prove only8bytes change. Scanner APK compilation, original Crown method checks and platform signature checks passed. ZIP CRC and output SHA256 checks pass. Physical acceptance of both v7 candidates is pending.
