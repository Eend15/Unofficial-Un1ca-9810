# KernelSU Next 3.4.2 on Exynos9810 Linux 4.9

This source kit repairs two runtime faults found by a real S9+ reboot test:

- The allowlist file survived byte-for-byte, but profiles were not restored.
  KernelSU callers were passing the modern kernel_read argument order to the
  Linux 4.9 API. Use the existing ksu_kernel_read_compat adapter for the grant
  loader, package tracker, APK signer and init RC reader.
- An independent atomic counter advanced the AVC notification sequence without
  advancing the security server decision sequence. This produced continuous
  stale-decision warnings. Advance the real latest_granting under the existing
  policy lock, release that lock, then perform the normal cache notifications.

The patch also supplies a root-only, read-only status adapter for the original
signed KernelSU Next 3.4.2 manager. Its daemon queries SuSFS using a newer reboot
ABI, while this built-in non-GKI implementation retains the original prctl
control ABI. The adapter reports the real version, variant and compiled feature
names; it does not implement v2 controls, change hiding settings, or report a
false SuSFS version. Unknown and unprivileged commands remain unsupported.

## Source reproduction

runtime49-susfs.patch applies to both published Eend15/exynos9810-kernel source
revisions recorded in provenance.json. It does not change DTBs. Use a fresh
checkout at either baseline and run git apply --check before git apply. Keep
existing dirty checkouts intact. The normal ROM build uses the source-shipped
verified kernel archives and does not need an extra local kernel checkout.

The adjacent test_runtime49.py compiles the actual loader and cache-reset code
against Linux 4.9 API stubs, including negative controls reproducing both faults.
test_susfs_legacy_status.py checks the actual status handler with all 15 feature
flags and with no flags, root-only access, buffer bounds and unknown commands.
For these development tests, UN1CA_KERNEL_SOURCE may select the kernel checkout.

## SuSFS scope

SuSFS v1.5.5 NON-GKI already has all 15 available feature flags compiled in this
integration. A read-only query on the S9+ returned feature mask 0x7fff with zero
query errors. Compiled support is not a claim that every optional hiding mode
is active, compatible with every module, or physically tested on all models.

A separate community v2.3.0 port for Linux 4.9 was inspected at the exact commit
in provenance.json. It assumes a different hook integration and userspace ABI;
its patch does not directly apply here. It is not included or advertised as
working with this KernelSU Next build. Do not substitute a v2 control utility
for the v1.5.5 utility.

## Acceptance

Unit tests and compilation do not prove reboot persistence. After installing a
matched kernel and 3.4.2 system daemon, verify a dedicated test app can obtain
root before and after reboot, the grant profile remains loaded, and the test
module service runs exactly once for the new boot ID. Inspect SELinux logs and
verify Enforcing remains active. Do not replay boot hooks to fake this test.
Physical acceptance and final archive hashes are recorded separately in the
release provenance once those checks have actually passed.
