# Unofficial UN1CA 9810

Unofficial UN1CA 9810 is a community fork of [UN1CA](https://github.com/salvogiangri/UN1CA) focused on bringing Android 16 / One UI 8.0 to Samsung Exynos9810 devices.

This project is unofficial, experimental, and not affiliated with or endorsed by Samsung or the upstream UN1CA maintainers. It keeps the UN1CA build system and adapts it for the Galaxy S9 series and Galaxy Note9.

## Supported Devices

- Galaxy S9 Exynos (`starlte`, SM-G960F/FD/N)
- Galaxy S9+ Exynos (`star2lte`, SM-G965F/FD/N)
- Galaxy Note9 Exynos (`crownlte`, SM-N960F/FD/N)

## Current Base

- Android 16 / One UI 8.0 target
- Galaxy S22 source firmware path, following the upstream UN1CA layout
- Exynos9810 vendor compatibility work based around Note10 Lite VNDK31 components and device-specific S9/Note9 fixes
- Samsung stock firmware extraction support for each target

## Retained UN1CA Features

- Galaxy S22-based One UI 8 experience
- EROFS-powered system image support
- Galaxy AI feature framework where compatible with Exynos9810
- Galaxy S25 wallpapers and sounds from upstream UN1CA
- High-end animations, native blur, live blur, and One UI Home animation options
- AOD clock transition support
- Adaptive color tone, outdoor mode, extra brightness, and camera privacy toggle support
- Picture remaster, object eraser, shadow eraser, reflection eraser, and image clipper support where compatible
- Multi-user support
- Samsung DeX framework support where hardware allows it
- Dual Messenger available for all apps
- Custom FlipFont font support
- Extra CSC features such as call recording, Hiya, network speed in the status bar, and AltZLife where compatible
- BluetoothLibraryPatcher and KnoxPatch integration from upstream UN1CA
- UN1CA Settings with native/live blur toggle, Vulkan renderer toggle, Play Integrity / PIF tooling, TrickyStore options, Hide My Applist integration, developer-options hiding, app downgrade toggle, old target SDK install toggle, secure screenshot toggle, screenshot/screen-recording detection toggle, unlimited Google Photos backup option, and games FPS unlock toggle

## Exynos9810 Port Features

- Dedicated `exynos9810` platform layer for legacy non-dynamic partition devices
- Device targets for `starlte`, `star2lte`, and `crownlte`
- Automatic Exynos9810 repartition and clean install flow integrated into the installer
- DS-ACK / CrownTrail-compatible kernel installer support with permissive and enforcing kernel packages
- KernelSU-Next support through compatible kernel packages
- Custom TWRP lite / large ZIP compatibility hooks for older recovery environments
- EROFS-aware and large ZIP recovery workflow support when paired with a compatible recovery
- Exynos9810 boot, fstab, first-stage init, metadata, keymaster, radio, and slot/IMEI compatibility fixes
- Note10 Lite vendor adaptation with S9/S9+/Note9 specific overlays and properties
- Bluetooth compatibility patches for the legacy Exynos9810 stack
- Audio HAL compatibility patches and legacy audio effect backports
- Camera feature matrices split per device, including S9 single-camera and S9+/Note9 dual-camera layouts
- One UI camera compatibility fixes for photo, video, portrait, food, and pro-mode paths where possible
- Debloat profile tailored for legacy Exynos9810 memory and partition limits
- Device-specific overlays, DVFS/SIOP policy hooks, floating features, CSC feature tuning, and framework feature declarations
- Optional Play Integrity / PIF integration through UN1CA Settings
- UN1CA Settings and upstream UN1CA feature patches retained where they are compatible with Exynos9810

## Build

Use the same build entry point as upstream UN1CA:

```bash
source buildenv.sh star2lte unica make_rom -z
source buildenv.sh starlte unica make_rom -z
source buildenv.sh crownlte unica make_rom -z
```

Build output and extracted firmware are intentionally not tracked in git. Keep `out/` and `work/` local.

## Branches

- `Android-16`: active Android 16 / One UI 8 Exynos9810 work
- `Qpr2`: reserved branch for future Android 16 QPR2 work

## Notes

This ROM is still a porting project. Some hardware features may require device-specific debugging, logs, and recovery-side fixes. Flash only on supported Exynos models and keep backups of EFS, modem, and important data.

## Credits

- [salvogiangri](https://github.com/salvogiangri) and all upstream UN1CA contributors for the original project and build system
- Exynos9810 kernel and device-port contributors in the S9/S9+/Note9 community
- BluetoothLibraryPatcher, KnoxPatch, TrickyStore, Play Integrity Fix, and the other upstream projects used by UN1CA

## License

This project follows the upstream UN1CA license terms. See [LICENSE](LICENSE).
