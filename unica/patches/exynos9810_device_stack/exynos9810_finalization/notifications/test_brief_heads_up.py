"""Isolated regression tests for One UI 8 Brief/HUN staging and bytecode."""
from __future__ import annotations

import importlib.util
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest
import xml.etree.ElementTree as ET
import zipfile

from verify_brief_rebuilt_artifacts import verify as verify_rebuilt


ROOT = Path(__file__).resolve().parents[5]
SCRIPT = Path(__file__).with_name("patch_brief_heads_up.py")
FINALIZER = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/customize.sh"
REAL_SYSTEMUI = ROOT / "out/target/star2lte/apktool/system_ext/priv-app/SystemUI/SystemUI.apk"
REAL_SETTINGS_PROVIDER = ROOT / "out/target/star2lte/apktool/system/priv-app/SettingsProvider/SettingsProvider.apk"
REAL_SERVICES = ROOT / "out/target/star2lte/apktool/system/framework/services.jar"

spec = importlib.util.spec_from_file_location("patch_brief_heads_up", SCRIPT)
assert spec is not None and spec.loader is not None
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class BriefHeadsUpTests(unittest.TestCase):
    def test_after_apktool_output_is_checked_before_image_build(self) -> None:
        builder = (ROOT / "scripts/make_rom.sh").read_text(encoding="utf-8")
        call = "verify_brief_rebuilt_artifacts.py"
        self.assertEqual(builder.count(call), 1)
        self.assertGreater(builder.index(call), builder.index('wait $(jobs -p) || exit 1'))
        self.assertIn('^(starlte|star2lte|crownlte)$',
                      builder[builder.index('wait $(jobs -p) || exit 1'):builder.index(call)])
        self.assertIn('--work-dir "$WORK_DIR" || exit 1',
                      builder[builder.index(call):builder.index(call) + 110])

    def test_samsung_settings_provider_seeds_heads_up_enabled(self) -> None:
        # Independent proof: SystemUI's missing-key default is only a
        # resilience fix, not the presumed cause on a clean installation.
        default = REAL_SETTINGS_PROVIDER / "res/values/integers.xml"
        helper = REAL_SETTINGS_PROVIDER / "smali/com/android/providers/settings/DatabaseHelper.smali"
        if not default.is_file() or not helper.is_file():
            self.skipTest("SettingsProvider source not decoded")
        resources = ET.parse(default).getroot()
        self.assertEqual(next((item.text for item in resources.findall("integer")
                               if item.get("name") == "def_heads_up_enabled"), None), "1")
        self.assertIn('"heads_up_notifications_enabled"', helper.read_text())

    def test_systemui_edge_service_matches_notification_manager_target(self) -> None:
        manifest = REAL_SYSTEMUI / "AndroidManifest.xml"
        manager = (REAL_SERVICES /
                   "smali_classes2/com/android/server/notification/sec/edgelighting/"
                   "EdgeLightingClientManager.smali")
        if not manifest.is_file() or not manager.is_file():
            self.skipTest("SystemUI/NMS source not decoded")
        root = ET.parse(manifest).getroot()
        namespace = "{http://schemas.android.com/apk/res/android}"
        components = {item.get(namespace + "name")
                      for item in root.iter("service")}
        self.assertIn("com.android.systemui.edgelighting.EdgeLightingService", components)
        self.assertIn("com.android.systemui.edgelighting.EdgeLightingForegroundService", components)
        source = manager.read_text(encoding="utf-8")
        self.assertIn('"com.android.systemui.edgelighting.EdgeLightingService"', source)
        self.assertIn("startServiceAsUser", source)

    def test_finalizer_preserves_samsung_brief_capability(self) -> None:
        text = FINALIZER.read_text(encoding="utf-8")
        self.assertIn('"SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION" "TRUE"', text)
        self.assertIn("_EXYNOS9810_FINAL_ENABLE_REPORTED_FEATURES || return 1", text)
        self.assertIn("'<SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION>TRUE", text)

    def test_only_three_9810_targets_get_guarded_patch(self) -> None:
        script = FINALIZER.read_text(encoding="utf-8")
        start = script.index("_EXYNOS9810_FINAL_PATCH_BRIEF_HEADSUP_DEFAULT()\n{\n")
        end = script.index("\n}\n", start)
        function = script[start:end]
        self.assertIn('^(starlte|star2lte|crownlte)$', function)
        self.assertIn('DECODE_APK "system" "$REL" || return 1', function)
        self.assertIn('python3 "$MODPATH/notifications/patch_brief_heads_up.py" "$DIR" || return 1', function)
        self.assertEqual(script.count("_EXYNOS9810_FINAL_PATCH_BRIEF_HEADSUP_DEFAULT || return 1"), 1)

    @unittest.skipUnless((REAL_SYSTEMUI / module.CLASS).is_file(),
                         "Real decoded One UI 8 SystemUI not available")
    def test_real_systemui_patch_reapplies_and_assembles(self) -> None:
        with tempfile.TemporaryDirectory(prefix="brief-heads-up-dex-") as td:
            root = Path(td)
            smali = root / module.CLASS
            smali.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(REAL_SYSTEMUI / module.CLASS, smali)
            module.patch(smali)
            once = smali.read_text(encoding="utf-8")
            module.patch(smali)
            self.assertEqual(once, smali.read_text(encoding="utf-8"))
            self.assertEqual(once.count(module.NEW), 1)
            self.assertIn("if-eqz p1, :cond_0", once)
            self.assertIn("iput-boolean v2", once)
            dex = root / "brief_hun.dex"
            compile = subprocess.run([
                "java", "-cp", str(ROOT / "out/tools/bin/apktool.jar"),
                "com.android.tools.smali.smali.Main", "assemble", "--api", "34",
                "--output", str(dex), str(smali),
            ], cwd=ROOT, capture_output=True, text=True, timeout=45, check=False)
            self.assertEqual(compile.returncode, 0, compile.stdout + compile.stderr)
            self.assertGreater(dex.stat().st_size, 100)

    def test_unknown_donor_refused_without_modifying_source(self) -> None:
        with tempfile.TemporaryDirectory(prefix="brief-hun-bad-donor-") as td:
            smali = Path(td) / "observer.smali"
            content = (".class public LExample;\n"
                       ".method public final onChange(Z)V\n"
                       "    return-void\n.end method\n")
            smali.write_text(content)
            with self.assertRaisesRegex(ValueError, "unexpected SystemUI"):
                module.patch(smali)
            self.assertEqual(smali.read_text(), content)

    @unittest.skipUnless((REAL_SYSTEMUI / module.CLASS).is_file(),
                         "Real Samsung SystemUI not decoded")
    def test_compiled_and_signed_output_requires_patched_observer(self) -> None:
        with tempfile.TemporaryDirectory(prefix="brief-edge-signed-dex-") as td:
            root = Path(td)
            observer = root / "source" / module.CLASS
            observer.parent.mkdir(parents=True)
            shutil.copy2(REAL_SYSTEMUI / module.CLASS, observer)
            # The real build tree may already contain the fix. Explicitly
            # construct the negative fixture in this temporary copy only.
            source = observer.read_text(encoding="utf-8")
            if module.NEW in source:
                observer.write_text(source.replace(module.NEW, module.OLD, 1), encoding="utf-8")
            edge_class = ("smali_classes2/com/android/systemui/edgelighting/"
                          "EdgeLightingService.smali")
            service = root / "source" / edge_class
            service.parent.mkdir(parents=True)
            shutil.copy2(REAL_SYSTEMUI / edge_class, service)
            dex = root / "classes.dex"

            def build(destination: Path) -> None:
                cmd = ["java", "-cp", str(ROOT / "out/tools/bin/apktool.jar"),
                       "com.android.tools.smali.smali.Main", "assemble", "--api", "34",
                       "--output", str(dex), str(root / "source")]
                compile = subprocess.run(cmd, cwd=ROOT, text=True,
                                         capture_output=True, timeout=45, check=False)
                self.assertEqual(compile.returncode, 0, compile.stderr + compile.stdout)
                unsigned = root / "unsigned.apk"
                with zipfile.ZipFile(unsigned, "w") as archive:
                    archive.write(dex, "classes.dex")
                cmd = [str(ROOT / "out/tools/bin/signapk"), "--min-sdk-version", "29",
                       str(ROOT / "security/aosp_platform.x509.pem"),
                       str(ROOT / "security/aosp_platform.pk8"),
                       str(unsigned), str(destination)]
                signed = subprocess.run(cmd, cwd=ROOT, text=True,
                                        capture_output=True, timeout=45, check=False)
                self.assertEqual(signed.returncode, 0, signed.stderr + signed.stdout)

            output = (root / "work/system/system/system_ext/priv-app/SystemUI/SystemUI.apk")
            output.parent.mkdir(parents=True)
            build(output)
            with self.assertRaisesRegex(ValueError, "unset-key heads-up fallback"):
                verify_rebuilt(root / "work")

            module.patch(observer)
            build(output)
            verify_rebuilt(root / "work")


if __name__ == "__main__":
    unittest.main()
