# Exynos9810 kernel prebuilt

The ROM defaults to the enforcing KernelSU-Next DS-ACK V1.12 release in this
directory:
- EROFS builds (`TARGET_OS_FILE_SYSTEM_TYPE=erofs`, default):
  `DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-erofs-dtb.zip`
  Expected SHA-256: `01556276576c33cd33e7c795b92fc0fd488e4b314f630e1d31b53040205eff36`
- EXT4 builds (`TARGET_OS_FILE_SYSTEM_TYPE=ext4`):
  `DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-ext4-dtb.zip`
  Expected SHA-256: `b9a020882b695bc762cd3f1b63534626f8bf32432d45be5450b8ff939456e67e`

The packages are built and validated from `Eend15/exynos9810-kernel`
for G960F/G965F/N960F and their Korean G960N/G965N/N960N variants.

Set `EXYNOS9810_KERNEL_ZIP` explicitly to test a different package.
