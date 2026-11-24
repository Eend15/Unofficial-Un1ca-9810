# Exynos9810 kernel prebuilt

The ROM defaults to the enforcing KernelSU-Next DS-ACK V1.14 release in this
directory:
- EROFS builds (`TARGET_OS_FILE_SYSTEM_TYPE=erofs`, default):
  `DS-ACK-V1.14-21.11.2026-Enforcing-KernelSU-Next-v3.4.0-legacy-SuSFS-erofs-dtb.zip`
  Expected SHA-256: `c49ef67e4b4761cd957e67bc0624d0ba2d103bbf1932e146ec55b7d450b8b51b`
- EXT4 builds (`TARGET_OS_FILE_SYSTEM_TYPE=ext4`):
  `DS-ACK-V1.14-21.11.2026-Enforcing-KernelSU-Next-v3.4.0-legacy-SuSFS-ext4-dtb.zip`
  Expected SHA-256: `86057280f250d535e7480ff82f868d6a80c0848a09e2c555a9a259fda78b762c`

November21 V1.14 (kernel a58f635): the November14 V1.14 kernel plus an HBM
request clamp in the panel brightness fixup. One UI 8 sends high-brightness
values above the UI maximum (449-895 on a 448 scale); those were rejected as
out of range, so outdoor/HBM brightness did nothing. They are now clamped to
the panel maximum (720 nits). Same version name, toolchain, KernelSU-Next
v3.4.0-legacy, SuSFS v1.5.5 and six-model family; older archives were
removed from the tree (still in git history).

November14 V1.14: rebuilt on KernelSU-Next v3.4.0-legacy (UAPI 4) so the
kernel matches the bundled v3.4.0 manager and ksud, with SuSFS v1.5.5, EROFS,
the double-tap-to-wake tap window fix and a panel brightness fix: brightness
values above 420 no longer turn the panel black, the maximum now follows the
panel's real ceiling. Built with Google Clang 20 r547379 for six models. Both
archives carry the same kernels; only the DTB fstab type (system, vendor, odm)
differs.

November11 V1.13: the November7 family plus
`exynos9810_finalization/input/patch_dt2w_tap_coords.py` in wake_gestures.c.
While the screen is off sec_ts adds 5000 to X only on MOVE reports, but the
wake backend subtracted it from every X, so a clean tap (PRESS + RELEASE) got a
negative X and was ignored: double-tap wake needed several taps. The offset is
now removed only where it was added. Built from 0f2d01d plus both touch
patches with Google Clang 20 r547379; DTBs/tools unchanged from the
November7/October24 archives. Archive-verified for six models; not yet
physically accepted.

November7 touch freeze fix: the October24 family plus
`exynos9810_finalization/input/patch_touch_lpm_exit.py` in both sec_ts drivers.
With double-tap wake on, a touchscreen reset while the screen was off left the
panel in LPM and input_open skipped TO_TOUCH_MODE, so the screen woke with
touch dead. Built from the `ext4` branch (0f2d01d, all 89 provenance sources
matched) with Google Clang 20 r547379; DTBs/tools unchanged. Archive-verified
for six models; not yet physically accepted.

The packages are built and validated from `Eend15/exynos9810-kernel`
for G960F/G965F/N960F and their Korean G960N/G965N/N960N variants.

Set `EXYNOS9810_KERNEL_ZIP` explicitly to test a different package.

The current six-model family was rebuilt October24 with the Linux4.9 read-ABI
repair, aligned SELinux policy/cache sequence, read-only legacy SuSFS status ABI,
and the preserved package-snapshot, AOT and wake-only key fixes. Existing unrelated kernel/sys.c and SELinux hooks were retained.
`scripts/internal/DSAck/update_kernel_payload.py` transferred the complete
kernel base/delta family into each previous filesystem-specific archive;
DTBs, installer and tools remain byte-identical to their previous versions.
All six reconstructed images/DTBs pass the release verifier. The October24
S9+ acceptance is recorded below; other models still require physical tests.

Permanent manager registration is provided by the source-shipped,
certificate-verified system companion. It no longer replays module boot hooks
when registering the manager at boot-completed/CE unlock; the built-in kernel's
ordered init actions handle module startup. Kernel archives alone do not add
that system service update to older ROMs.

October23 AOT integration: the new enforcing KernelSU family also exposes
Samsung's `aot_enable` command and AOT feature bit using DS-ACK's existing
double-tap wake backend, in both sec_ts driver versions. The original backend
was accepted on the S9+; the newly exposed Samsung setting interface and AOD
coexistence still require physical acceptance after installation. Build source,
tests and limitations are in the finalization `input/` directory. Archives and
default pins are replaced only after the complete six-model family passes
validation; the provenance file records that step. This does not turn the
software wake backend into a firmware-based low-power gesture implementation.

October24 KernelSU Next v3.4.2 (33355) update: all six model kernels were
upgraded to official KernelSU Next legacy v3.4.2 (465490a2, 3.4.2-legacy,
version code 33355) while retaining our buffered complete-snapshot
packages.list parser, verified-APK manager cache guards, once-per-boot
services guard, SuSFS 1.5.5, and the touchscreen/wake-gesture fixes. Previous
v3.4.0 archives remain preserved in this directory.

## KernelSU Next 3.4.2 integration (October24)

The defaults pair the six-model legacy 3.4.2 kernels (33355, UAPI 5) with the
original signed 3.4.2 manager and its embedded arm64 ksud. The finalizer extracts
that daemon into /system/bin/ksud; the boot bootstrap prepares /data/adb/ksud.
A kernel-only upgrade on an older ROM is not sufficient if its system daemon is
still 3.4.0/UAPI 4: the manager update alone cannot repair that early-boot copy,
and the system guardian can copy the old daemon back on reboot. Keep the system
payload and kernel ABI paired when preparing an update for existing installs.

The upstream legacy backports and downstream snapshot, manager identity,
service-once, AOT queue and wake-key guards are recorded in
20261024-kernel-provenance.json. Exact kernel source is published in
Eend15/exynos9810-kernel (the source revisions are recorded in provenance).
A successful build does not certify third-party modules, other models physical
acceptance, or a Strong Integrity verdict.

October24 runtime acceptance: a dedicated S9+ test app retained its grant across
the kernel-update reboot and obtained UID0 again. Its grant file was unchanged;
the audit module executed once for that boot. Enforcing remained active and the
continuous stale-policy warnings disappeared. The user confirmed smooth
scrolling and double-tap wake. This does not certify every third-party module,
Strong Integrity, or physical S9/Note9 behavior.

The Android half of the wake-only key contract is also required on older ROMs:
wg_pwrkey.kl maps 143 to WAKEUP WAKE as well as 116 to POWER WAKE. The source
writer installs this for every target. A native init rule sets only the private
wake-gesture vib_strength to zero after boot; normal Android haptics are not
disabled. The boot contract rejects either missing integration. Kernel-only
archives do not update those system files or the system daemon on older ROMs.

A second S9+ reboot retained the same app grant file and root access. The quiet
wake feedback value remained zero after boot. The temporary audit app, its
grant and the audit module were removed after verification.
