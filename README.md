# Unofficial UN1CA 9810

<p align="center">
  <img src="readme-res/unofficial-un1ca-9810-oneui8-banner.png" alt="Unofficial UN1CA 9810 Series"/>
</p>

Unofficial UN1CA 9810 is an experimental custom firmware project for Samsung Exynos9810 devices, maintained by Eend15 and based on the UN1CA build system by salvo_giangri.

It is designed to bring a modern, refined, and feature-rich One UI experience to the Galaxy S9, Galaxy S9+, and Galaxy Note9. The current development target is Android 16 / One UI 8.0, adapted for the legacy Exynos9810 platform.

This is an unofficial community port. It is not affiliated with Samsung and is not an official release from the upstream UN1CA maintainers.

## What Is Unofficial UN1CA 9810?

UN1CA 9810 keeps the upstream UN1CA workflow: the build system extracts Samsung firmware, applies ROM patches, prepares target-specific files, and generates a flashable recovery zip.

This fork changes the target from newer supported Samsung devices to Exynos9810 devices. It adds a dedicated platform layer, S9/S9+/Note9 targets, built in repartition support, large-ZIP recovery installation support, kernel installer support, and device-specific fixes required to boot One UI 8 on these phones.

The goal is to provide a usable Android 16 / One UI 8 ROM for the Exynos Galaxy S9 series and Note9 while keeping as much of the upstream UN1CA experience as possible.

## Supported Devices

- Galaxy S9 Exynos (`starlte`) — SM-G960F, SM-G960FD, SM-G960N
- Galaxy S9+ Exynos (`star2lte`) — SM-G965F, SM-G965FD, SM-G965N
- Galaxy Note9 Exynos (`crownlte`) — SM-N960F, SM-N960FD, SM-N960N

Snapdragon models are not supported.

## Current Base

- Android 16 / One UI 8.0 target
- Galaxy S22 source firmware path, following the upstream UN1CA layout
- Exynos9810 vendor compatibility work based around Note10 Lite VNDK33 components
- S9, S9+, and Note9 stock firmware extraction support
- Exynos9810 recovery, partition, and kernel workflow integration

## Core Features

- One UI 8 experience adapted for Exynos9810
- Retained upstream UN1CA feature patches where compatible
- Galaxy AI framework support where hardware and vendor components allow it
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
- UN1CA Settings with custom Bixby Button remapper made for Exynos9810. Play Integrity / PIF tooling, TrickyStore options, Hide My Applist integration, developer-options hiding, app downgrade toggle, old target SDK install toggle, secure screenshot toggle, screenshot and screen-recording detection toggle, Google Photos backup option, and games FPS unlock toggle

## Exynos9810 Port Features

- Dedicated `exynos9810` platform layer for legacy non-dynamic partition devices
- Device targets for `starlte`, `star2lte`, and `crownlte`
- Automatic Exynos9810 repartition and clean install flow integrated into the installer
- DS-ACK-compatible kernel installer support
- Permissive and enforcing kernel package support
- KernelSU-Next support through compatible kernel packages
- Large EROFS ZIP recovery workflow for modern recovery environments
- Full EROFS support (system, vendor, odm as erofs)
- EROFS-aware and large ZIP recovery workflow support when paired with a compatible recovery
- Exynos9810 boot, fstab, first-stage init, metadata, keymaster, radio, and slot/IMEI compatibility fixes
- Note10 Lite vendor vndk33 adaptation with S9/S9+/Note9 specific overlays and properties
- Bluetooth compatibility patches for the legacy Exynos9810 stack
- Audio HAL compatibility patches and legacy audio effect backports
- Camera feature matrices split per device, including S9 single-camera and S9+/Note9 dual-camera layouts
- One UI 8 camera compatibility fixes for photo, video, portrait, and pro-mode paths where possible
- Ported Motion Photo feature from SM-S901B
- Debloat profile tailored for legacy Exynos9810 memory and partition limits
- Device-specific overlays, DVFS/SIOP policy hooks, floating features, CSC feature tuning, and framework feature declarations
- Fully working face unlock ported from stock firmware

## Build

Use Ubuntu 24.04 (or Ubuntu in WSL). Keep the project on the Linux filesystem.

### 1. Clone the source

Clone the ROM with its submodules:

```bash
git clone --recurse-submodules https://github.com/Eend15/Unofficial-Un1ca-9810.git
cd Unofficial-Un1ca-9810
git lfs install
git lfs pull
```

**Git LFS is required** for the large kernel ZIP files and ROM payloads. Run
`git lfs pull` after cloning so all required files are downloaded.

### 2. Add the firmware

Place the **extracted** firmware in `out/fw/`:

- **Donor (Galaxy S22):** `out/fw/SM-S901B_EUX`
- **Galaxy S9:** `out/fw/SM-G960F_PHN`
- **Galaxy S9+:** `out/fw/SM-G965F_PHN`
- **Galaxy Note9:** `out/fw/SM-N960F_PHN`

You need the S22 donor firmware and the firmware for the device you are
building. The folders must contain the extracted partitions and a
`.extracted` marker; simply placing a firmware ZIP there is not enough.
Firmware is not included in the repository.

### 3. Build the ROM

Run these commands from the repository folder. For **EROFS**, choose your
device:

```bash
# Galaxy S9+
source buildenv.sh star2lte
unica make_rom -z --fs-type erofs

# Galaxy S9
source buildenv.sh starlte
unica make_rom -z --fs-type erofs

# Galaxy Note9
source buildenv.sh crownlte
unica make_rom -z --fs-type erofs
```

For **EXT4**, use the same commands but change `erofs` to `ext4`. For example:

```bash
source buildenv.sh star2lte
unica make_rom -z --fs-type ext4
```

The correct **Enforcing KernelSU Next + SuSFS** kernel is selected automatically
for EROFS or EXT4. The build creates the ROM ZIP in `out/`.

## Installation

### Before you start

- Use a [supported Exynos Galaxy S9, S9+ or Note9](#supported-devices).
  **Snapdragon models are not supported.**
- **Back up your files, EFS and modem.** The installer may resize partitions
  and formats `/data`, so **your data and internal storage can be erased**.
- Flash the [custom TWRP recovery](https://drive.google.com/drive/u/1/folders/1fHC1F6aZkXxVGCHYRtzU_RQqX51rYGtk)
  for your device through Download Mode. It must support **EROFS** and
  **ROM ZIP files larger than 5 GB**.

### Flash the ROM

1. Download the UN1CA ZIP for your device. Copy it to a **microSD card or USB
   OTG drive** (recommended, since internal storage may be wiped).
2. Boot into TWRP, select **Install**, choose the ROM ZIP and swipe to flash.
   The installer handles repartitioning if needed.
3. If installation stops with a partition/recovery refresh error, reboot back
   into TWRP, select **Wipe > Format Data**, type `yes`, then flash the ZIP again.
4. When coming from an older One UI version, or if encryption/mount problems
   remain, use **Wipe > Format Data** and type `yes` before rebooting.
5. Select **Reboot > System**. The first boot can take several minutes.

The ROM already includes the matching **EROFS or EXT4** kernel with
**SELinux Enforcing, KernelSU Next and SuSFS**. Do not flash a kernel for
the wrong filesystem.

For bugs and feature requests, join the [official Telegram group](https://t.me/+sE1dIX31j5w1OWRk).

### Disclaimer

Flashing an unofficial ROM is at your own risk. It may void your warranty,
erase your data or make your device unusable. The maintainers are not
responsible for damage caused by flashing.

## Branches

- `Android-16`: active Android 16 / One UI 8 Exynos9810 work
- `Qpr2`: reserved branch for future Android 16 QPR2 work (if even possible)

## Status

This ROM is still a porting project. Some hardware features may require device-specific debugging, logs, vendor changes, kernel changes, or recovery-side fixes.

Flash only on supported Exynos models. Keep backups of EFS, modem, and important data before testing.

## Credits

- [salvogiangri](https://github.com/salvogiangri) and all upstream UN1CA contributors for the original project and build system
- Exynos9810 kernel and device-port contributors in the Galaxy S9, Galaxy S9+, and Galaxy Note9 community
- BluetoothLibraryPatcher, KnoxPatch, TrickyStore, Play Integrity Fix, and the other upstream projects used by UN1CA

## License

This project follows the upstream UN1CA license terms. See [LICENSE](LICENSE).
This project is licensed under the terms of the GNU General Public License v3.0. External dependencies might be distributed under a different license, such as:

android-tools, licensed under the Apache License 2.0
apktool, licensed under the Apache License 2.0
erofs-utils, dual license (GPL-2.0, Apache-2.0)
img2sdat, licensed under the MIT License
platform_build (ext4_utils, f2fs_utils, signapk), licensed under the Apache License 2.0
