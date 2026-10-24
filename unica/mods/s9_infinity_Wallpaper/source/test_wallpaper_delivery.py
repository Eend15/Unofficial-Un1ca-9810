"""Prove both wallpaper catalogs survive the ROM's outgoing packaging path."""

from __future__ import annotations

import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
import zipfile
import xml.etree.ElementTree as ET

sys.path.insert(0, str(Path(__file__).resolve().parent))
from verify_built_wallpapers import (  # noqa: E402
    MODULE, EXPECTED_VIDEO_FILENAMES, NATIVE_ENGINE, UN1CA_ENGINE,
    SYSTEM_PACKAGE, verify, verify_catalog,
)
from patch_note9_sensorhub import patch as patch_note9_sensorhub


ROOT = MODULE.parents[2]
BUILDER = ROOT / "scripts/make_rom.sh"
MODULE_LOADER = ROOT / "scripts/internal/apply_modules.sh"


def isolated_work_dir(target: Path) -> None:
    """Make a safe mock of the final ROM tree without copying large videos."""
    source = MODULE / "payload"
    for file in source.rglob("*"):
        if not file.is_file():
            continue
        rel = file.relative_to(source)
        dest = target / (f"system/{rel}" if rel.parts[0] == "system" else rel)
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.symlink_to(file)


class WallpaperDeliveryTests(unittest.TestCase):
    def test_wallpaper_catalog_contains_both_screenshot_series(self) -> None:
        archive = MODULE / "payload/system/priv-app/wallpaper-res/wallpaper-res.apk"
        verify_catalog(archive)
        with zipfile.ZipFile(archive) as apk:
            catalog = json.loads(apk.read("res/raw/resources_info.json"))
        self.assertEqual(len(catalog["phone"]), 10)
        self.assertEqual([x["filename"] for x in catalog["phone"]], EXPECTED_VIDEO_FILENAMES)
        self.assertEqual([x["index"] for x in catalog["phone"][:5]], list(range(5)))
        self.assertEqual([x["index"] for x in catalog["phone"][5:]], list(range(5, 10)))
        self.assertTrue(all(x["type_params"]["service_class_name"].endswith(".InfinityWallpaper")
                            for x in catalog["phone"][:5]))
        self.assertTrue(all(x["type_params"]["service_class_name"].endswith(".InfinityVideoWallpaper")
                            for x in catalog["phone"][5:]))

    def test_samsung_live_wallpaper_services_are_exported(self) -> None:
        app = MODULE / "payload/system/priv-app/SpriteWallpaper/SpriteWallpaper.apk"
        with tempfile.TemporaryDirectory(prefix="s9-sprite-manifest-") as td:
            decoded = Path(td) / "SpriteWallpaper"
            command = ["java", "-Xmx2g", "-jar", str(ROOT / "out/tools/bin/apktool.jar"),
                       "d", "--no-src", "--force", "--output", str(decoded), str(app)]
            run = subprocess.run(command, text=True, capture_output=True, timeout=120,
                                 check=False)
            self.assertEqual(run.returncode, 0, run.stderr + run.stdout)
            manifest = ET.parse(decoded / "AndroidManifest.xml").getroot()
            self.assertEqual(manifest.get("package"), SYSTEM_PACKAGE)
            ns = "{http://schemas.android.com/apk/res/android}"
            services = {service.get(ns + "name"): service
                        for service in manifest.iter("service")}
            for cls in (NATIVE_ENGINE, UN1CA_ENGINE):
                self.assertIn(cls, services)
                self.assertEqual(services[cls].get(ns + "exported"), "true")
                self.assertEqual(services[cls].get(ns + "permission"),
                                 "android.permission.BIND_WALLPAPER")
            providers = {provider.get(ns + "authorities")
                         for provider in manifest.iter("provider")}
            self.assertIn("com.samsung.android.wallpaper.live.provider", providers)
            self.assertIn("com.samsung.android.wallpaper.live.provider.sepwallpaper", providers)

    def test_both_screenshot_series_are_staged_to_final_paths(self) -> None:
        with tempfile.TemporaryDirectory(prefix="s9-infinity-final-payload-") as td:
            work_dir = Path(td)
            isolated_work_dir(work_dir)
            verify(work_dir)

    def test_stale_or_removed_payload_fails_closed(self) -> None:
        with tempfile.TemporaryDirectory(prefix="s9-infinity-stale-payload-") as td:
            work_dir = Path(td)
            isolated_work_dir(work_dir)
            script = work_dir / "system/system/bin/s9_aod_wallpaper_policy.sh"
            script.unlink()
            script.write_text("unexpected replacement", encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "overwritten/stale"):
                verify(work_dir)
            script.unlink()
            with self.assertRaisesRegex(ValueError, "missing Infinity dependency"):
                verify(work_dir)

    def test_note9_rejects_s9_sensor_and_accepts_board_matched_dependency_repair(self) -> None:
        with tempfile.TemporaryDirectory(prefix='note9-infinity-sensors-') as td:
            work_dir = Path(td)
            isolated_work_dir(work_dir)
            with self.assertRaisesRegex(ValueError, 'sensorhub'):
                verify(work_dir, target='crownlte')
            sensor = work_dir / 'vendor/lib64/sensors.sensorhub.so'
            sensor.unlink()
            source = ROOT / ('unica/patches/exynos9810_device_stack/embedded/'
                             'exynos9810_legacy_port/device_port/device/crownlte/'
                             'vendor/lib64/sensors.sensorhub.so')
            sensor.write_bytes(patch_note9_sensorhub(source.read_bytes()))
            verify(work_dir, target='crownlte')
            with self.assertRaisesRegex(ValueError, 'sensorhub'):
                verify(work_dir, target='star2lte')

    def test_missing_video_asset_is_rejected(self) -> None:
        src = MODULE / "payload/system/priv-app/wallpaper-res/wallpaper-res.apk"
        with tempfile.TemporaryDirectory(prefix="s9-infinity-truncated-catalog-") as td:
            with zipfile.ZipFile(src) as donor:
                catalog = donor.read("res/raw/resources_info.json")
            out = Path(td) / "wallpaper-res.apk"
            with zipfile.ZipFile(out, "w", compression=zipfile.ZIP_STORED) as fixture:
                fixture.writestr("META-INF/CERT.SF", "test-only")
                fixture.writestr("META-INF/CERT.RSA", "test-only")
                fixture.writestr("res/raw/resources_info.json", catalog)
                for i in range(1, 11):
                    fixture.writestr(f"res/drawable-nodpi/wallpaper_{i:03d}.webp", b"w" * 1024)
                    if i != 7:
                        fixture.writestr(f"res/raw/video_{i:03d}.mp4", b"v" * 100_001)
            with self.assertRaisesRegex(ValueError, "video_007.mp4"):
                verify_catalog(out)

    def test_wallpaper_module_runs_last_and_has_final_image_guard(self) -> None:
        read = lambda p: p.read_text(encoding="utf-8")
        builder = read(BUILDER)
        module = read(MODULE / "module.prop")
        finalizer = read(ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/module.prop")
        self.assertIn("build_order=40", module)
        self.assertIn("build_order=30", finalizer)
        self.assertIn("--include-exynos9810-final-stages", builder)
        self.assertIn('if [ -d "$SRC_DIR/unica/mods" ]', builder)
        self.assertIn('return order, path.name', read(MODULE_LOADER))
        marker = "source/verify_built_wallpapers.py"
        self.assertEqual(builder.count(marker), 1)
        self.assertGreater(builder.index(marker), builder.index('wait $(jobs -p) || exit 1'))
        self.assertIn('^(starlte|star2lte|crownlte)$', builder[builder.index('wait $(jobs -p) || exit 1'):builder.index(marker)])
        self.assertIn('--work-dir "$WORK_DIR" --target "$TARGET_CODENAME" || exit 1',
                      builder[builder.index(marker):builder.index(marker) + 160])


if __name__ == "__main__":
    unittest.main()
