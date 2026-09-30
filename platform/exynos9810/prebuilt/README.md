# Exynos9810 kernel prebuilt

The ROM defaults to the enforcing KernelSU DS-ACK V1.12 EROFS release in this
directory. The package is built and validated from `Eend15/exynos9810-kernel`
for G960F/G965F/N960F and their Korean G960N/G965N/N960N variants.

The archive itself is not tracked in git (too large for GitHub); download it
from the Google Drive release folder and place it here before building:

https://drive.google.com/drive/folders/1M3treF2xQEiIdIt4XQtWLgpqhQBPJi6-

Expected SHA-256:
`01556276576c33cd33e7c795b92fc0fd488e4b314f630e1d31b53040205eff36`

Set `EXYNOS9810_KERNEL_ZIP` explicitly to test a different package.
