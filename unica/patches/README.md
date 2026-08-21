# UN1CA ROM patches

This tree follows the upstream UN1CA patch layout:

```text
<patch module>/<feature>/<target artifact>/<NNNN-description>.patch
```

Each direct child of this directory is a module. Keep `module.prop` and
`customize.sh` at that module's root. Modules are applied in C locale sort
order by `scripts/internal/apply_modules.sh`.

The `exynos9810_device_stack` module is the former Exynos9810 platform patch
module. It lives here deliberately, but the build applies it in the old
platform stage before target and common patches. Its asset names and relative
paths are preserved. Builds intentionally use the normal large EROFS ZIP path;
the former TWRP-lite/FAT32 reduction mode has been removed.

## File roles

- A `.patch` file is a static unified diff for one decoded APK or JAR.
- A `smali/` tree is reserved for patches that the generic module loader
  applies without feature-specific branching.
- A `customize.sh` file owns conditional or generated changes. This includes
  `SMALI_PATCH`, `HEX_PATCH`, property changes, firmware-dependent changes,
  and inline Python transforms.
- XML, binary blobs, and replacement smali classes are assets. They stay next
  to the module that consumes them and must not be renamed to `.patch`.

Feature-gated patch sets remain beside their feature folder, for example
`product_feature/wifi/...` or `legacy/face/...`; moving them below `smali/`
would make the loader apply them unconditionally and can change device
compatibility.

Run the layout check from the repository root before committing:

```sh
bash scripts/internal/check_patch_layout.sh
```
