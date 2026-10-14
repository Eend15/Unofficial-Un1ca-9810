# Exynos9810 kernel prebuilt

The ROM defaults to the enforcing KernelSU-Next DS-ACK V1.12 release in this
directory:
- EROFS builds (`TARGET_OS_FILE_SYSTEM_TYPE=erofs`, default):
  `DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-erofs-dtb.zip`
  Expected SHA-256: `3e405a08fd5e0b4f8492096be9003349bb8372e4f16ec43f0308095d6615203f`
- EXT4 builds (`TARGET_OS_FILE_SYSTEM_TYPE=ext4`):
  `DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-ext4-dtb.zip`
  Expected SHA-256: `d95c59f6620583635919d983142c8315e68a5545f4d037e8b66d769d4c996735`

The packages are built and validated from `Eend15/exynos9810-kernel`
for G960F/G965F/N960F and their Korean G960N/G965N/N960N variants.

Set `EXYNOS9810_KERNEL_ZIP` explicitly to test a different package.

The G965F kernel entry uses the physically tested 14 October 2026 legacy Next 3.4.0 payload in both packages. Filesystem-specific DTBs and all other model entries remain unchanged. Permanent manager registration is provided by the source-shipped, certificate-verified system companion; the kernel archives alone do not add that system service to older ROMs.
