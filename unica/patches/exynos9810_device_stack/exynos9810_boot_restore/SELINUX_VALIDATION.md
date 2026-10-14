# Early-boot SELinux parser regression (2026-10-13)

The previously signed star2lte EROFS build included an appended Smart View
comment starting with `#` in system/etc/selinux/plat_sepolicy.cil. This is shell
comment syntax, not CIL syntax. secilc rejected the staged policy at line 35073
with "Symbol not inside parenthesis". Early init cannot load/compile that policy.

Changed only the comment prefix to `;` in the boot-restore heredoc and staged
workdir; the remotedisplay directory allow rule is retained. Compiling the ten
actual split policy inputs (platform, system_ext, product, vendor and 33.0
mapping/compatibility inputs) with secilc succeeds after the correction.

scripts/internal/verify_exynos9810_selinux.py now compiles the complete staged
policy before target-files or flashable packaging, including cached builds.
The CI build/blob setup installs secilc. Local build hosts require secilc too.
No permissive-policy substitution or removed service is part of this fix.

The old working reference and new build share the baseline ramdisk, system
init executable, bootstrap linker/libc, vendor fstab and vendor SELinux files.
TWRP cannot resolve the init symlink in either EROFS image, so that recovery
observation is not evidence of corruption in the new image. Temporary kernel
and init logger tests were reverted to the backed-up original built boot image.
Live confirmation is recorded separately once boot completes.
