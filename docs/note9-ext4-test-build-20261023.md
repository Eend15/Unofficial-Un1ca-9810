# Note9 EXT4 test build — October 23

## Resume after SMPS verifier false failure

Attempt1 completed all APK/JAR builds and actual rebuilt Note9 S Pen guards,
then failed the boot contract because patch_smps_property.transform relocated
a valid system-owned true value to EOF. Later identity properties are legitimate.
The transformation now preserves an already valid single system true value
with no vendor occurrence. Missing/wrong/duplicate/vendor-owned values still
fail verification. Three tests pass including the order regression.

Attempt1 log/status are preserved. Both failed-run module/in-progress markers
matched; assert_rom_inclusion --variant experimental passed and retained all
15715 required framework classes. The interrupted variant checkpoint was
recovered as experimental only after that proof. Runner resumes through the
supported --resume-after-mods phase, retaining workdir/APK caches and rerunning
all compiled artifact/boot/default/SELinux guards. Resume PID7846; inspect actual
processes rather than relying on old PID24958. No completion hashes were forged,
and no final validation was bypassed. Packaging remains after successful source
completion.

User requests a current-source crownlte EXT4 test ZIP and an English tutorial
for a remote Note9 tester, followed by evidence-based targeted TWRP fixes.
No phone installation or publication is requested here.

The old `out/target/crownlte/work_dir` is absent, previously removed with user
permission for disk space. Existing audit folders are not complete ROM trees.
No stale staged packaging is used. A fresh source build uses the current source
and October23 enforcing KernelSU/AOT filesystem-specific kernel pins, including
the Note9-only S Pen finalizer and post-Apktool compiled/signature guards.

Runner: `out/target/crownlte/build-release15-ext4-20261023.sh`, exclusive flock.
Log/status: `release15-ext4-20261023.log` / `.status` in that directory. Python
Popen detached launch PID24958 was verified alive. Inspect processes before any
resume. First phase is full `--no-target-files --fs-type ext4`, then supported
`--package-staged --build-rom-zip --fs-type ext4`. No duplicate runner.

Output: `C:/Users/Admin/Downloads/UN1CA-1.5-crownlte-ext4-20261023`.
Case-sensitive Android trees remain in WSL; only image/OTA output uses NTFS.
Final flashable/compiled S Pen/boot/SELinux checks and SHA256SUMS are required
before describing a ZIP as complete. Build monitor
`monitor-note9-1-5-ext4-s-pen-test-build` is active and deletes itself on success.

Tests repeated before build: Crown scan 3/3 and charging 3/3 passed.
SMPS property pure fixture passed, real-workdir fixture could not run because
the fresh workdir properties did not yet exist. Rerun once staged; this was a
missing test fixture, not a property regression diagnosis.

Tester guide: `docs/NOTE9-SPEN-TESTING-EN.md`, copied as Markdown and plain text
into the output folder. Includes per-feature test checklist, immediate SysDump
capture, unfiltered live ADB logcat before reproduction, bugreport and state
snapshots, report template and patch/retest instructions. No root/sysfs writes
are required. Note9 button BLE is distinguished from unsupported later motion
gestures. Logs are sent privately, not published.

Physical Note9 pairing, charging, AirCommand and memo rendering acceptance
remain pending. Do not promise a definitive full S Pen repair or minute-scale
fixes before the tester supplies current logs. EXT4 facilitates targeted
updates but cannot guarantee every repair fits a small filesystem patch.
# Resume repair, October 23 18:33 UTC

18:39 UTC: attempt 3 disappeared while rebuilding Traceur, leaving status running
and no make_rom/Java processes. No compiler diagnostic beyond stopped smaling.
An isolated supported Traceur rebuild and signing then passed (exit 0).
Preserved attempt3 log/status; restarted the same locked runner through a persistent
hidden Windows wsl.exe host (Windows PID 22944), instead of an orphaned Linux
Popen. Cause of the prior process termination is not established; no source
Traceur changes or validation bypass were needed.

The second attempt reached FaceunlockFix assembly after APK rebuilds, then stopped
because stage_runtime.py required the original competing faced stanza, already
commented by the first attempt. Staging now accepts the exact previously disabled
stanza by reconstructing and validating the original shape before disabling it
again. Missing, duplicate, modified and surviving competing services still fail.
Two regression tests and actual crownlte native staging pass, including existing
SELinux policy checks. Attempt 2 log/status are preserved alongside the main log.
The same locked runner was restarted with supported --resume-after-mods, PID 22123.
No workdir was cleaned and no completion or verification guard was bypassed.

