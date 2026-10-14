# Release integration (October 14)

The user explicitly requested built-in face support for starlte/star2lte/crownlte.
make_rom enables the reviewed bridge and immutable builtin flag for these targets.
The existing explicit opt-in staging and framework class-preservation checks
remain in force; unsupported targets remain rejected. Native Binder identity,
real enrollment/authentication and supported-SoC checks are retained.

For today's star2lte package, the verified live framework, services.jar, faced
and four native runtime libraries were copied exactly into the existing work_dir.
Use --package-staged to avoid overwriting this already-compiled live fix.
This mode still runs artifact, face inclusion, boot and SELinux checks.
The original Android16 classes and source hook remain checked on normal builds.

Live S9+ face unlock was confirmed by the owner. S9 and Note9 have shared source
integration and target-isolation checks; physical authentication remains untested.

KernelSU manager now waits for PackageManager's handler and published UID before
crowning. Live manager screenshot shows Working Built-in Legacy v3.4.0-legacy.
The exact live October14 S9+ kernel replaces its BSDIFF entry in the EROFS
archive; other device payloads remain unchanged. The enforcing bootstrap
ramdisk is preserved from the live phone, while EROFS DTBs remain paired with
the image filesystem.
