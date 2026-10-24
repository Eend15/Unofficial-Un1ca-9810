#!/usr/bin/env python3
"""Fail closed if the outgoing Exynos9810 ROM lost either wallpaper collection.

The legacy Galaxy S9 Infinity effects and UN1CA variants are distributed in
one deliberately paired wallpaper-res/SpriteWallpaper/AOD payload. Verify the
*actual final workdir*, after generic Apktool rebuilds, not just the source.
No device is accessed and no image is built by this script.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
import sys
import zipfile
from patch_note9_sensorhub import PATCHED_SHA256 as NOTE9_SENSOR_SHA256


MODULE = Path(__file__).resolve().parents[1]
EXPECTED_VIDEO_FILENAMES = [f"video_{i:03d}.mp4" for i in range(1, 11)]
NATIVE_ENGINE = "com.samsung.android.wallpaper.live.infinity.InfinityWallpaper"
UN1CA_ENGINE = "com.samsung.android.wallpaper.live.infinity.InfinityVideoWallpaper"
SYSTEM_PACKAGE = "com.samsung.android.wallpaper.live"


def verify_catalog(path: Path) -> None:
    if not path.is_file():
        raise ValueError(f"missing wallpaper-res in final ROM: {path}")
    try:
        with zipfile.ZipFile(path) as archive:
            names = set(archive.namelist())
            signed = {"META-INF/CERT.SF", "META-INF/CERT.RSA"}
            if not signed.issubset(names):
                raise ValueError("final wallpaper-res APK has no SignApk certificate entries")
            catalog = json.loads(archive.read("res/raw/resources_info.json"))
            entries = catalog.get("phone", [])
            if len(entries) != 10:
                raise ValueError("wallpaper-res must list exactly 5 S9 + 5 UN1CA backgrounds")
            indexes = [entry.get("index") for entry in entries]
            if indexes != list(range(10)):
                raise ValueError("wallpaper-res mixes or reorders the two wallpaper collections")
            if sum(entry.get("isDefault") is True for entry in entries) != 1 or \
                    entries[0].get("isDefault") is not True:
                raise ValueError("S9 Infinity blue must be the sole catalog default")
            if [entry.get("filename") for entry in entries] != EXPECTED_VIDEO_FILENAMES:
                raise ValueError("wallpaper-res lacks one of ten indexed video backgrounds")
            for index, entry in enumerate(entries):
                params = entry.get("type_params", {})
                settings = params.get("service_settings", {})
                expected_engine = NATIVE_ENGINE if index < 5 else UN1CA_ENGINE
                if (params.get("content_type") != "infinity" or
                        params.get("service_package_name") != SYSTEM_PACKAGE or
                        params.get("service_class_name") != expected_engine or
                        settings.get("filename") != EXPECTED_VIDEO_FILENAMES[index] or
                        entry.get("type") != 10):
                    raise ValueError(f"invalid wallpaper service routing for index {index}")
                video = f"res/raw/{EXPECTED_VIDEO_FILENAMES[index]}"
                if video not in names or archive.getinfo(video).file_size < 100_000:
                    raise ValueError(f"missing/truncated live wallpaper video: {video}")
                thumbnail = f"res/drawable-nodpi/wallpaper_{index + 1:03d}.webp"
                if thumbnail not in names or archive.getinfo(thumbnail).file_size < 1_000:
                    raise ValueError(f"missing wallpaper carousel thumbnail: {thumbnail}")
    except (OSError, zipfile.BadZipFile, KeyError, json.JSONDecodeError) as exc:
        raise ValueError(f"cannot inspect final wallpaper-res: {exc}") from exc


def verify_payload_hashes(work_dir: Path, module: Path = MODULE, target: str | None = None) -> None:
    manifest = module / "SHA256SUMS"
    if not manifest.is_file():
        raise ValueError("S9 Infinity module checksum manifest missing")
    paths: set[str] = set()
    for line in manifest.read_text(encoding="utf-8").splitlines():
        match = re.fullmatch(r"([0-9a-f]{64})\s{2}(system/\S+|vendor/\S+)", line)
        if not match:
            raise ValueError(f"invalid wallpaper SHA256SUMS entry: {line[:100]}")
        expected, rel = match.groups()
        if target == 'crownlte' and rel == 'vendor/lib64/sensors.sensorhub.so':
            expected = NOTE9_SENSOR_SHA256
        if rel in paths:
            raise ValueError(f"duplicate wallpaper payload entry {rel}")
        paths.add(rel)
        # In the ROM's workdir the logical /system partition lives at
        # work_dir/system, with Android's own system/ directory nested under
        # it. ADD_TO_WORK_DIR(..., system, "system/priv-app/...", ...) therefore
        # writes work_dir/system/system/priv-app/... (not work_dir/system/priv-app).
        installed = work_dir / (f"system/{rel}" if rel.startswith("system/") else rel)
        if not installed.is_file():
            raise ValueError(f"final ROM is missing Infinity dependency {rel}")
        with installed.open("rb") as fh:
            digest = hashlib.file_digest(fh, "sha256").hexdigest()
        if digest != expected:
            raise ValueError(f"final ROM wallpaper payload was overwritten/stale: {rel}")
    mandatory = {
        "system/priv-app/wallpaper-res/wallpaper-res.apk",
        "system/priv-app/SpriteWallpaper/SpriteWallpaper.apk",
        "system/priv-app/AODService_v80/AODService_v80.apk",
        "system/framework/S9AodWallpaperPolicy.dex",
        "system/bin/s9_aod_wallpaper_policy.sh",
        "system/etc/init/s9_aod_wallpaper_policy.rc",
        "vendor/lib64/sensors.grip.so",
        "vendor/lib64/sensors.sensorhub.so",
    }
    if paths != mandatory:
        raise ValueError(f"unexpected S9 Infinity payload file set: {sorted(paths ^ mandatory)}")


def verify(work_dir: Path, module: Path = MODULE, target: str | None = None) -> None:
    verify_payload_hashes(work_dir, module, target)
    verify_catalog(work_dir / "system/system/priv-app/wallpaper-res/wallpaper-res.apk")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--work-dir", required=True, type=Path)
    parser.add_argument("--target", required=True, choices=('starlte', 'star2lte', 'crownlte'))
    args = parser.parse_args()
    try:
        verify(args.work_dir, target=args.target)
    except ValueError as exc:
        print(f"FAIL Exynos9810 wallpaper catalog: {exc}", file=sys.stderr)
        raise SystemExit(1) from exc
    print("PASS final ROM: five native Galaxy S9 Infinity and five UN1CA wallpapers")
    print("PASS signed wallpaper-res + matching SpriteWallpaper/AOD/sensor payload")


if __name__ == "__main__":
    main()
