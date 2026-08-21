# Exynos9810 Device Stack

This is a platform patch module stored in `unica/patches` so every ROM patch
is kept in one visible tree. The original asset names and relative paths are
intentionally preserved because `customize.sh` consumes them directly.

Components:

- `audio6/`: Exynos9810 Audio HAL 6 bridge and VINTF fragment.
- `keymaster4/`: software Keymaster 4 payload and init configuration.
- `nfc/`: S3NRN82 NFC libraries, service files and per-target firmware.
- `panel/`: Exynos9810 panel wake init rule.
- `remotedisplay/`: Smart View/Wireless DeX framework, service and codec assets.
- `sensors2/`: Exynos9810 sensor-hub and grip HAL payloads.
- `customize.sh`: the named, conditional device-stack patch implementation.

The module is applied before target patches and the remaining common UN1CA
patch modules. It is therefore a patch module, rather than a collection of
standalone text diffs: binary replacements, firmware and generated metadata
must remain assets so the build can apply the correct target-specific layout.
