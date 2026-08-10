# Exynos9810 kernel prebuilt

The ROM defaults to the enforcing KernelSU DS-ACK V1.12 EROFS release in this
directory. The package is built and validated from `Eend15/exynos9810-kernel`
for G960F/G965F/N960F and their Korean G960N/G965N/N960N variants.

The archive itself is not tracked in git (too large for GitHub); download it
from the Google Drive release folder and place it here before building:

https://drive.google.com/drive/folders/1M3treF2xQEiIdIt4XQtWLgpqhQBPJi6-

Expected SHA-256:
`243e08f706534cb3299cef24bdad874f27d0ffb0d2e5e9baee5d4be4fcffedba`

Set `EXYNOS9810_KERNEL_ZIP` explicitly to test a different package.
