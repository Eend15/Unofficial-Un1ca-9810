# Source-contained Exynos9810 release fixes, 14 October 2026

## Face / credential prompts
The common Java source and native runtime serve starlte, star2lte and crownlte. Normal make_rom builds select built-in support for all three. The shared release bridge DEX, Java/AIDL hash manifest and fingerprinted Android16 class-definition reference now live under the canonical face/FaceunlockFix/prebuilt source path. A fresh release build no longer requires private out/face-audit compiler/backups. If source changes without regenerating/revalidating the release DEX, the build fails rather than silently shipping old behavior.

A private clean-source staging test without the historical audit/compiler cache passed for all three targets and preserved the original services.jar core DEX bytes. These tests demonstrate source/packaging parity; physical S9 and Note9 verification is unavailable.

## KernelSU persistence
The legacy driver invalidated the manager after PackageManager writes, even while its official APK remained installed. The old helper also returned a syscall failure despite setting the kernel UID, preventing subsequent refresh.

ksu_crown.c now verifies actual manager UID with the driver's GET_MANAGER_APPID ioctl. Its --watch mode waits on packages.list write/rename events, with bounded settling checks and no idle polling. The root-only repair script queries actual PackageManager signing lineage and UID, accepts only the official release certificate, respects uninstall, and does not repeat daemon boot hooks or stop a healthy manager on each update. The init service starts on boot completion and credential unlock. All helpers, compiled payloads, source/runtime manifest, staging metadata and common target integration are in source.

Live S9+ tests: deliberate registry loss followed by a real PackageManager update automatically recovered the manager; two reboots subsequently showed Working / BUILT-IN (LEGACY), a running event service, correct UID 10257 and retained face registration. The event process waits while idle (about 236 KiB RSS observed). Full fresh-userdata installation was not performed; its install/registration path and immutable payload are guarded at build time.

## Kernels
The KernelSU persistence repair is in system, not a new kernel driver patch. The source and user enforcing EROFS/ext4 archives use the previously physically tested 14 October G965F kernel payload. Filesystem-specific DTBs and other model entries are preserved. The ext4 boot-image checksum mismatch is corrected and its DTB exactly matches the live working ext4 boot image. These kernel archives work with the companion included in this ROM; they do not retrofit system services into arbitrary older ROMs.

User originals backed up under out/kernel-pair-20261014/original-user-packages.

## Packaging guard
make_rom runs verify_exynos9810_release_defaults.py after assembly and before zip creation, on all three targets. It checks exact current release bridge, permanent certificate-verified KSU runtime, built-in face flag, Blue native Infinity catalog/component, compiled Bixby selector and enabled PIF dated 20261011. Existing camera/Edge Lighting/S Pen/kernel/SELinux validators remain active.


## Permissive KernelSU archives
The existing 30.09.2026 permissive KernelSU-Next v3.4.0 EROFS and EXT4 archives in the user Documents directories were CRC-checked and all six model kernel payloads decoded. Each retains its ARM64 header and KernelSU manager registration/query interface (GET_MANAGER_APPID and ksu_set_manager_appid). Their kernel and DTB bytes were preserved, including permissive behavior. No kernel replacement is required for the permanent manager registration repair, which is supplied by this ROM system companion. This does not retrofit the companion into an arbitrary old ROM merely by flashing a kernel ZIP. Physical permissive-boot testing was not performed. Detailed hashes are recorded in out/kernel-pair-20261014/permissive-validation.json.
