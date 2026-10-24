# Exynos9810 double-tap wake integration

The DS-ACK kernel already has `CONFIG_WAKE_GESTURES` and an android_touch
double-tap backend. On October23 the user confirmed that enabling its existing
`/sys/android_touch/doubletap2wake` control wakes the connected S9+ successfully.
This verifies the old backend on that device, not a new kernel or other models.

Samsung One UI8 uses the `aot_enable` touchscreen command and bit0 of
`support_feature` (`SEM_INPUT_FEATURE_AOT`). The old sec_ts and Note9 y771
drivers provide neither integration, despite containing the wake backend.
The source setting observer already watches System `double_tab_to_wake_up`;
the input service already maps this to `aot_enable`. A permanent boot-time
shell loop or a forced-on default would bypass that normal setting.

`patch_dt2w_kernel.py KERNEL_ROOT` adds the missing command and advertises the
capability only when `CONFIG_WAKE_GESTURES` is enabled. Both driver versions
use the same existing state and suspend deferral as the android_touch control.
Inputs other than 0/1 fail without modifying state. No SELinux rules or device
tree/firmware files are changed. `dt2w_aot.patch` saves the kernel diff with
the ROM source for reproducibility; it is not an APK patch or a runtime mod.

The AOD APK checks this same capability before honoring double-tap wake.
Its empty-space fallback in `aod/y3.c` calls `aod/W.E`, which requires both
the AOT capability and the user setting. Live logs before integration showed
`dispatchTspEvent wakeup? false`; clock/empty-space taps were received by the
app but had no actionable target. The integration restores the missing
capability contract instead of deleting visibility/clickability checks or
forcing a successful wake response in the APK. Music/notification targets
still use the app's existing dispatch and need physical acceptance testing.

Run `python3 -B -m unittest -v test_dt2w_kernel.py` in this directory. The tests
compile the actual C command handler and both actual command tables, including
the build without the wake backend, and cover invalid values and asleep/awake
state changes. Full six-model compilation and release verification are required
before updating prebuilt kernel pins. For AOT audit ZIPs the kernel release
verifier also requires CONFIG_WAKE_GESTURES and the compiled command/backend
strings in all six reconstructed images. The ext4/EROFS DTBs must remain paired
with their respective proven baselines.

The new AOT interface, persistence after reboot, AOD coexistence, and power use
are not yet accepted on physical hardware. Do not describe source tests as
S9 or Note9 device tests. No new kernel has been flashed in this follow-up.
