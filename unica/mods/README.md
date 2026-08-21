# UN1CA ROM mods

Mods use the same module contract as ROM patches but are applied after
`unica/patches`. The normal layout is:

```text
<mod>/<feature>/<target artifact>/<NNNN-description>.patch
```

Static patches that are always safe for a module can live under its
`smali/<partition>/<artifact>/` tree and are discovered by the generic loader.
Feature-gated patches stay in the feature folder and are called explicitly by
that module's `customize.sh`. This preserves the upstream order and prevents a
feature patch from being applied to an incompatible target.

Keep `module.prop` at the module root. Keep replacement smali classes, APK
resources, binaries, permissions, and other non-diff assets in their existing
module paths. They are inputs, not unified patch files.

The `zzzz*` and `zzzzz*` modules are intentionally late-stage Exynos9810
orchestrators. Their order is part of the build contract; do not rename or
move them without updating the module order and verification routines.

Use `bash scripts/internal/check_patch_layout.sh` to validate both patches and
mods before a build.
