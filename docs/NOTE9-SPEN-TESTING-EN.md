# UN1CA 1.5 Note9 EXT4 — S Pen testing and logs

This is a Note9 (`crownlte`, Exynos N960F/N960N) test build. It contains the current source fixes; working BLE pairing and every S Pen feature still need testing on a real Note9. Never install it on an S9/S9+ or Snapdragon Note9.

The purpose is to test, capture the failure, receive a matching TWRP fix, then repeat the same test and capture fresh logs. EXT4 makes targeted changes easier, but some fixes require a new boot image or full ROM rather than a small patch. Please only flash a patch supplied specifically for this build.

## Before starting

- Back up your data and recovery/boot setup. Ask the maintainer for the installation requirements; do not format data just to collect logs.
- Confirm the exact ROM ZIP name and compare its SHA256 with the supplied SHA256SUMS before installing. Keep that name with every report.
- Use a genuine compatible Note9 S Pen. Dock it for several minutes first. Enable Bluetooth and the S Pen options you want to test. Do not reset S Pen, clear app data or flash another fix before capturing the original failure.
- Note your exact model, pen model/origin, clean or dirty installation, previous ROM, extra modules, Notes version and AirCommand version. If a setting or app is missing, report that too.
- Logs can contain account/device identifiers and other personal information. Send them privately to the maintainer, not to a public group.

## Test one feature at a time

For every row, write PASS, FAIL or NOT AVAILABLE. For a failure, record the phone's time (including timezone), steps, expected result and actual result. A short video helps with drawing latency, but does not replace logs. Capture logs immediately after each important failure rather than waiting until the end of the whole test session.

1. **Insert/remove detection:** remove and reinsert the pen five times. Check the sound, notification, AirCommand popup and detection each time.
2. **Writing:** draw slow and fast strokes in Samsung Notes, including screen edges, pressure changes, hovering and the pen button/eraser. Save, close and reopen the note. Note any delayed ink or missing strokes.
3. **Air View:** check the hover cursor and previews in apps that support them. Record the app used.
4. **AirCommand:** open it using the floating icon and by pressing the pen button while hovering. Test each displayed shortcut separately, including Create note, View notes, Smart select and Screen write if available. Save and reopen the results.
5. **Quick/pop-up note:** invoke it through the normal supported shortcut, write, save and reopen it.
6. **Screen-off memo:** lock the phone, remove the pen, write several lines without lifting for one long stroke, then save and reopen the memo. Say whether ink appears while drawing or only after lifting the pen. Test with AOD on and off separately.
7. **Handwriting/S Pen to text:** test in Samsung Keyboard or another field that offers handwriting. Name the app and input mode. Report a missing option separately from failed recognition.
8. **BLE/Air Actions:** dock the pen and check connection/charging/battery status in S Pen settings. Undock and test configured single/double button presses in Camera and media playback, ten times each. Test the configured long press if offered. Report success counts, battery reading and exact timeout text.
9. **Reconnect:** after capturing any original failure, test docking/undocking, then Bluetooth off/on, then a normal reboot. Capture a separate report after each failing scenario. Do not reset pairing before the first logs.

Note9's original pen supports BLE button controls, but does not have the motion sensors used for later pens' directional air gestures. Circling or waving the pen is not a valid Note9 hardware acceptance test.

## Method A — phone only (SysDump)

1. Reproduce **one** problem and note its exact time. Do not reboot first.
2. Open the Samsung Phone app and enter `*#9900#`. SysDump should open without pressing Call.
3. Select **Run dumpstate/logcat** and wait for completion. Keep the phone awake until it finishes.
4. Select **Copy to sdcard**, possibly labelled **Copy to sdcard (Include CP Ramdump)**. The destination is normally internal storage, not necessarily the removable SD card.
5. Open **My Files → Internal storage → log**. A separate archive app is optional. Select the newly generated timestamped dumpState ZIP and any companion .log file from that same run. Send them as files/documents, without Telegram photo/video compression.
6. Include the failed test number, time, ROM ZIP name, expected/actual result and a short video if useful. Keep your local copies until the maintainer confirms receipt.

If SysDump does not open or an option is absent, report that and use Method B or Developer options → Take bug report if available. Do not change Debug Level, Auto Blocker, Bluetooth HCI logging or other security/debug settings unless the maintainer requests a specific follow-up.

## Method B — PC capture (recommended for connection/timeouts)

Install Google's official [SDK Platform-Tools](https://developer.android.com/tools/releases/platform-tools). Enable Developer options and USB debugging, connect by USB, and approve your own PC's authorization prompt. These examples use Windows PowerShell opened inside the extracted platform-tools folder. Connect only the Note9 while following these commands.

Check connection and model:

```powershell
.\adb.exe devices -l
.\adb.exe shell getprop ro.product.model
.\adb.exe shell getprop ro.product.device
```

The entry must say `device`, not `unauthorized` or `recovery`, and the handset must be your Note9. If more than one phone is listed, disconnect the others or use `-s YOUR_NOTE9_SERIAL` with every command.

In **PowerShell window 1**, start an unfiltered live capture **before** reproducing the problem:

```powershell
.\adb.exe logcat -b all -v threadtime > spen-live.txt
```

Leave it running. Reproduce one failure, note the time, then press **Ctrl+C** in window 1. This does not clear the phone's logs. Use a new folder or filename for each attempt so you do not overwrite the previous capture.

Immediately afterward, in **PowerShell window 2**, run:

```powershell
.\adb.exe shell date > phone-time.txt
.\adb.exe shell getprop > build-properties.txt
.\adb.exe shell dumpsys input > input-state.txt
.\adb.exe shell dumpsys bluetooth_manager > bluetooth-state.txt
.\adb.exe shell dumpsys package com.samsung.android.service.aircommand > aircommand-package.txt
.\adb.exe shell dumpsys -l > service-list.txt
.\adb.exe shell dumpsys activity services com.samsung.android.service.aircommand > aircommand-services.txt
.\adb.exe logcat -b crash -d -v threadtime > crash-buffer.txt
.\adb.exe bugreport note9-spen-bugreport.zip
```

Wait until bugreport finishes and the ZIP exists on the PC. Send that ZIP, spen-live.txt, the state text files and your test notes privately. An empty or permission-denied section is useful evidence: send it rather than trying to bypass permissions. No root is required for these commands on normal authorized ADB; completeness depends on the ROM's diagnostic permissions.

For an insertion/charging timeout, a kernel/Wacom trace may be requested next. Do not write charging commands or pen MAC addresses into sysfs/EFS, enable SELinux permissive, or clear Bluetooth data to obtain it. The maintainer will provide a narrowly scoped read-only collection step if necessary.

## Sending results and testing the next fix

Use this template:

```text
Device/model and pen:
ROM ZIP name + patch version:
Clean/dirty install and previous ROM:
Extra modules or changes:
Test number:
Phone time + timezone:
Exact steps:
Expected:
Actual (including battery/connection text):
Reproduced: __ out of __ attempts
Log/archive filenames:
```

For a TWRP follow-up patch, verify its supplied hash and build/model compatibility, follow the supplied instructions and save `/tmp/recovery.log` before leaving recovery if installation fails. Do not format data for a patch unless explicitly instructed. After a successful patch, repeat the same failing steps and send fresh logs, even if it now works. Keep the pre-patch report for comparison.

## Reference

Samsung documents the [SysDump collection workflow](https://docs.samsungknox.com/admin/knox-platform-for-enterprise/troubleshoot/get-device-logs/). Android documents [bugreport capture](https://developer.android.com/studio/debug/bug-report) and [logcat](https://developer.android.com/tools/logcat). Live logging is particularly useful here because circular log buffers can lose the events leading up to a long BLE timeout.
