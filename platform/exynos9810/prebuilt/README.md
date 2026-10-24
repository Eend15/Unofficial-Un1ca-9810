# Exynos9810 kernel prebuilt

The ROM defaults to the enforcing KernelSU-Next DS-ACK V1.12 release in this
directory:
- EROFS builds (`TARGET_OS_FILE_SYSTEM_TYPE=erofs`, default):
  `DS-ACK-V1.12-23.10.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-erofs-dtb.zip`
  Expected SHA-256: `ed5963a64ec99cb401c96e0a008f09df7ba9762e050355b3195f0a54324c6ce8`
- EXT4 builds (`TARGET_OS_FILE_SYSTEM_TYPE=ext4`):
  `DS-ACK-V1.12-23.10.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-ext4-dtb.zip`
  Expected SHA-256: `fb366c09131491c49fffab3355cdd470ad10a97b7ab06e1b6c86e758e6034209`

The packages are built and validated from `Eend15/exynos9810-kernel`
for G960F/G965F/N960F and their Korean G960N/G965N/N960N variants.

Set `EXYNOS9810_KERNEL_ZIP` explicitly to test a different package.

All six kernel images were rebuilt October21 from the current kernel working
source, including the incomplete-package-snapshot/pruning fix and buffered
parser. Existing unrelated kernel/sys.c and SELinux hooks were retained.
`scripts/internal/DSAck/update_kernel_payload.py` transferred the complete
kernel base/delta family into each previous filesystem-specific archive;
DTBs, installer and tools remain byte-identical to their previous versions.
All six reconstructed images/DTBs pass the release verifier. Reboot/module
acceptance on physical devices is still required; these are not device-tested
replacements for the October14 baseline.

Permanent manager registration is provided by the source-shipped,
certificate-verified system companion. It no longer replays module boot hooks
when registering the manager at boot-completed/CE unlock; the built-in kernel's
ordered init actions handle module startup. Kernel archives alone do not add
that system service update to older ROMs. Previous archives are retained.

October23 AOT integration: the new enforcing KernelSU family also exposes
Samsung's `aot_enable` command and AOT feature bit using DS-ACK's existing
double-tap wake backend, in both sec_ts driver versions. The original backend
was accepted on the S9+; the newly exposed Samsung setting interface and AOD
coexistence still require physical acceptance after installation. Build source,
tests and limitations are in the finalization `input/` directory. Archives and
default pins are replaced only after the complete six-model family passes
validation; the provenance file records that step. This does not turn the
software wake backend into a firmware-based low-power gesture implementation.
