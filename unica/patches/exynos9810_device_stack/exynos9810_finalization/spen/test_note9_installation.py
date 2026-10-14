"""Offline Note9 S Pen staging regression tests; no ROM build or device I/O."""
from __future__ import annotations

import os
from pathlib import Path
import hashlib
import shutil
import subprocess
import tempfile
import unittest
import xml.etree.ElementTree as ET

from verify_note9_rebuilt_artifacts import verify_platform_signatures


ROOT = Path(__file__).resolve().parents[5]
UPSTREAM = ROOT / "unica/patches/spen/customize.sh"
FINAL = ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/customize.sh"
FEATURE = Path(__file__).resolve().parent / "com.sec.feature.spen_usp_level40.xml"
SFF = ROOT / "target/crownlte/sff.sh"
PREBUILT = ROOT / "prebuilts/samsung/b0qxxx/system"
PLATFORM_CERT = ROOT / "security/aosp_platform.x509.pem"
NOTES = FINAL.parent / "spen/notes/Notes33.apk"
NOTES_SHA = "7efba32e183e6ace5291f7d80c8cf00022c6374a4c7e5e5c8d1d03aad917239f"


def source_function(contents: str, name: str) -> str:
    marker = name + "()\n{\n"
    start = contents.index(marker)
    # This verifier embeds Python dictionaries: a bare `}` in its here-doc
    # is not the Bash function terminator. Match the actual `PY` close first.
    end = contents.index("\nPY\n}\n", start + len(marker))
    return contents[start:end + len("\nPY\n}\n")]


class Note9SpenInstallation(unittest.TestCase):
    def run_real_factory_stager(self, work: Path, signer_dir: Path,
                                codename: str = "crownlte") -> subprocess.CompletedProcess[str]:
        source = FINAL.read_text(encoding="utf-8")
        name = "_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN"
        start = source.index(name + "()\n{\n")
        function = source[start:source.index("\n}\n", start) + 3]
        script = function + '''
LOG() { :; }
LOGE() { printf 'ERROR: %s\\n' "$*" >&2; }
_EXYNOS9810_FINAL_SET_METADATA() { :; }
_EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY() { return 0; }
_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK() { :; }
SET_FLOATING_FEATURE_CONFIG() { :; }
_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN
'''
        env = os.environ.copy()
        env.update({
            "TARGET_CODENAME": codename, "TARGET_FIRMWARE": "SM-N960F/PHN/fixture",
            "MODPATH": str(FINAL.parent), "WORK_DIR": str(work), "FW_DIR": str(work / "fw"),
            "SRC_DIR": str(ROOT), "TOOLS_DIR": str(signer_dir),
            "ROM_IS_OFFICIAL": "false",
            "EXYNOS9810_LEGACY_PORT_DIR": str(ROOT / "unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port"),
        })
        return subprocess.run(["bash", "-c", script], cwd=ROOT, env=env,
                              text=True, capture_output=True, check=False)

    def test_real_finalizer_platform_signs_factory_receiver(self) -> None:
        # This invokes the actual finalization shell function against only a
        # temporary filesystem, and reads the actual stock Samsung APK.
        with tempfile.TemporaryDirectory(prefix="crown-factory-source-sign-") as td:
            work = Path(td)
            result = self.run_real_factory_stager(work, ROOT / "out/tools")
            self.assertEqual(result.returncode, 0, result.stderr + result.stdout)
            apk = work / "system/system/app/FactoryAirCommandManager/FactoryAirCommandManager.apk"
            self.assertTrue(apk.is_file())
            verify_platform_signatures((apk,), PLATFORM_CERT)
            notes = work / "system/system/app/Notes33/Notes33.apk"
            self.assertTrue(notes.is_file(), "Note9 Notes popup target not staged")
            self.assertEqual(hashlib.sha256(notes.read_bytes()).hexdigest(), NOTES_SHA)

    def test_s9_finalizer_does_not_stage_any_note9_apps(self) -> None:
        with tempfile.TemporaryDirectory(prefix="s9-spen-isolation-") as td:
            work = Path(td)
            result = self.run_real_factory_stager(work, work / "absent-tools", "star2lte")
            self.assertEqual(result.returncode, 0, result.stderr + result.stdout)
            self.assertFalse((work / "system/system/app/Notes33").exists())
            self.assertFalse((work / "system/system/app/FactoryAirCommandManager").exists())

    def test_preexisting_samsung_notes_is_not_overwritten(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-modern-notes-") as td:
            work = Path(td)
            notes = work / "system/system/app/SamsungNotes/SamsungNotes.apk"
            notes.parent.mkdir(parents=True)
            notes.write_bytes(b"test-modern-notes-fixture")
            result = self.run_real_factory_stager(work, ROOT / "out/tools")
            self.assertEqual(result.returncode, 0, result.stderr + result.stdout)
            self.assertEqual(notes.read_bytes(), b"test-modern-notes-fixture")
            self.assertFalse((work / "system/system/app/Notes33").exists())

    def test_stock_note9_notes_payload_is_repository_owned(self) -> None:
        self.assertTrue(NOTES.is_file())
        self.assertEqual(hashlib.sha256(NOTES.read_bytes()).hexdigest(), NOTES_SHA)
        self.assertNotIn("SamsungNotes\n", (ROOT / "target/crownlte/debloat.sh").read_text())
        source = FINAL.read_text()
        self.assertIn('SamsungNotes|SamsungNotes_Removable|SNoteProvider) continue', source)
        self.assertIn('Staging stock Note9 Samsung Notes', source)

    def test_stock_note9_notes_has_all_aircommand_note_components(self) -> None:
        # Inspect the embedded *real* Samsung APK manifest, rather than
        # claiming a package-name match from filenames or UI toggles.
        with tempfile.TemporaryDirectory(prefix="crown-notes-manifest-") as td:
            decoded = Path(td) / "notes"
            command = ["java", "-Xmx2g", "-jar", str(ROOT / "out/tools/bin/apktool.jar"),
                       "d", "--no-src", "--force", "--output", str(decoded), str(NOTES)]
            result = subprocess.run(command, cwd=ROOT, text=True,
                                    capture_output=True, timeout=120, check=False)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            manifest = ET.parse(decoded / "AndroidManifest.xml").getroot()
            self.assertEqual(manifest.attrib.get("package"), "com.samsung.android.app.notes")
            ns = "{http://schemas.android.com/apk/res/android}name"
            components = {item.attrib.get(ns)
                          for item in manifest.iter()
                          if item.tag in ("service", "activity", "provider")}
            for required in (
                "com.samsung.android.app.notes.popupnote.PopupNoteService",
                "com.samsung.android.app.notes.composer.ComposerBaseActivity",
                "com.samsung.android.app.notes.memolist.MemoListBaseActivity",
                "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService",
                "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoProvider",
            ):
                self.assertIn(required, components)

    def test_factory_receiver_signing_fails_closed_if_signer_missing(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-factory-no-sign-") as td:
            work = Path(td)
            result = self.run_real_factory_stager(work, work / "absent-tools")
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("Required ROM platform signer is missing", result.stderr)

    def run_stager(self, codename: str, firmware_root: Path,
                   image_type: str = "essi") -> subprocess.CompletedProcess[str]:
        env = os.environ.copy()
        env.update({
            "SRC_DIR": str(ROOT),
            "FW_DIR": str(firmware_root),
            "SOURCE_FIRMWARE": "SM-S901B/EUX/fixture",
            "TARGET_FIRMWARE": "SM-N960F/PHN/fixture",
            "TARGET_CODENAME": codename,
            "TARGET_PLATFORM": "exynos9810",
            "TARGET_OS_SINGLE_SYSTEM_IMAGE": image_type,
            "SPEN_SCRIPT": str(UPSTREAM),
        })
        # The full ROM installer is *not* invoked. Record its requested source
        # paths with a mock and prove note-specific files cannot be skipped.
        script = '''set -e
ADD_TO_WORK_DIR() { printf 'STAGE:%s:%s\\n' "$1" "$3"; }
LOG() { :; }
ABORT() { printf 'ABORT:%s\\n' "$*" >&2; return 1; }
. "$SPEN_SCRIPT"
'''
        return subprocess.run(["bash", "-c", script], cwd=ROOT, env=env,
                              text=True, capture_output=True, check=False)

    def test_note9_always_stages_aircommand_without_target_firmware(self) -> None:
        with tempfile.TemporaryDirectory(prefix="note9-spen-fw-missing-") as td:
            for image_type, expected_lib_source in (("essi", "b0sxxx"),
                                                    ("qssi", "b0qxxx")):
                result = self.run_stager("crownlte", Path(td), image_type)
                self.assertEqual(result.returncode, 0, result.stderr)
                paths = result.stdout.splitlines()
                for required in (
                    "system/priv-app/AirCommand/AirCommand.apk",
                    "system/etc/permissions/privapp-permissions-com.samsung.android.service.aircommand.xml",
                    "system/etc/default-permissions/default-permissions-com.samsung.android.service.aircommand.xml",
                ):
                    self.assertEqual(paths.count("STAGE:b0qxxx:" + required), 1,
                                     (image_type, required))
                lib = "system/lib64/libsmpsft.smps.samsung.so"
                self.assertEqual(paths.count(f"STAGE:{expected_lib_source}:{lib}"), 1)
                self.assertTrue((ROOT / "prebuilts/samsung" /
                                 expected_lib_source / lib).is_file())

    def test_nonpen_s9_skips_aircommand(self) -> None:
        with tempfile.TemporaryDirectory(prefix="s9-spen-fw-missing-") as td:
            result = self.run_stager("star2lte", Path(td))
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertNotIn("STAGE:", result.stdout)

    def test_target_has_stock_feature_and_button_only_ble(self) -> None:
        xml = ET.parse(FEATURE).getroot()
        self.assertIn({"name": "com.sec.feature.spen_usp", "version": "40"},
                      [element.attrib for element in xml.findall("feature")])
        floating = SFF.read_text(encoding="utf-8")
        self.assertIn("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN=TRUE", floating)
        self.assertIn("SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC=builtin,button", floating)
        self.assertNotIn("builtin,gesture", floating)

    def test_finalization_is_strict_and_orders_protocol_before_charge(self) -> None:
        source = FINAL.read_text(encoding="utf-8")
        stage = source[source.index("_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN || return 1"):
                       source.index("_EXYNOS9810_FINAL_PATCH_CAMERA_FLUSH_RECOVERY", source.index(
                           "_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN || return 1"))]
        order = (
            "_EXYNOS9810_FINAL_ENABLE_NOTE9_SPEN || return 1",
            "_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_BLE_CONTROLLER_NULL || return 1",
            "_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_SYSFS_BRIDGE || return 1",
            "_EXYNOS9810_FINAL_PATCH_NOTE9_SPEN_BLE_PROTOCOL || return 1",
            "_EXYNOS9810_FINAL_FIX_NOTE9_CHARGE_SETTLE || return 1",
            "_EXYNOS9810_FINAL_VERIFY_NOTE9_SPEN_PAYLOAD || return 1",
        )
        self.assertEqual([stage.index(item) for item in order],
                         sorted(stage.index(item) for item in order))
        self.assertIn("SpenGarageSpecParser smali not found; refusing", source)
        self.assertIn('python3 - "$PARSER" <<\'PY\' || return 1', source)
        self.assertIn("Required Note9 FactoryAirCommandManager source is missing", source)
        # The stock factory app uses android.uid.system but is Samsung-signed;
        # the normal ROM platform cert must be used before it can join that UID.
        self.assertIn('local FACM_CERT_PREFIX="aosp"', source)
        self.assertIn('FACM_CERT_PREFIX="unica"', source)
        self.assertIn('if ! "$TOOLS_DIR/bin/signapk"', source)
        self.assertIn('Failed to sign Note9 factory S Pen receiver', source)

    def test_final_payload_preflight_passes_and_rejects_broken_ble(self) -> None:
        verifier = source_function(
            FINAL.read_text(encoding="utf-8"),
            "_EXYNOS9810_FINAL_VERIFY_NOTE9_SPEN_PAYLOAD")
        with tempfile.TemporaryDirectory(prefix="note9-spen-bundle-") as td:
            root = Path(td)
            system = root / "system/system"
            for rel in (
                "priv-app/AirCommand/AirCommand.apk",
                "app/FactoryAirCommandManager/FactoryAirCommandManager.apk",
                "app/Notes33/Notes33.apk",
                "etc/public.libraries-smps.samsung.txt",
                "framework/com.samsung.device.jar",
                "lib/libsmpsft.smps.samsung.so",
                "lib64/libsmpsft.smps.samsung.so",
            ):
                dest = system / rel
                dest.parent.mkdir(parents=True, exist_ok=True)
                dest.write_bytes(b"test-fixture-not-shippable")
            for rel in (
                "etc/default-permissions/default-permissions-com.samsung.android.service.aircommand.xml",
                "etc/permissions/privapp-permissions-com.samsung.android.service.aircommand.xml",
            ):
                dest = system / rel
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(PREBUILT / rel, dest)
            shutil.copyfile(FEATURE, system / "etc/permissions/com.sec.feature.spen_usp_level40.xml")
            library = system / "etc/permissions/com.samsung.device.xml"
            library.write_text('<permissions><library name="com.samsung.device" '
                               'file="/system/framework/com.samsung.device.jar"/></permissions>')
            floating = system / "etc/floating_feature.xml"
            floating.write_text('''<SecFloatingFeatureSet>
<SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION>40</SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION>
<SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN>TRUE</SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN>
<SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC>builtin,button</SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC>
<SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC>type=insert, bundled=true</SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC>
<SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID>A3LEJPN960</SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID>
</SecFloatingFeatureSet>''')
            rc = root / "vendor/etc/init/sysinput.rc"
            rc.parent.mkdir(parents=True, exist_ok=True)
            rc.write_text("chown system radio /sys/class/sec/sec_epen/epen_ble_charging_mode\n")

            env = os.environ.copy()
            env.update({"WORK_DIR": str(root), "TARGET_CODENAME": "crownlte"})

            def run() -> subprocess.CompletedProcess[str]:
                return subprocess.run([
                    "bash", "-c", verifier + "\n_EXYNOS9810_FINAL_VERIFY_NOTE9_SPEN_PAYLOAD\n"
                ], cwd=ROOT, env=env, text=True, capture_output=True, check=False)

            result = run()
            self.assertEqual(result.returncode, 0, result.stderr + result.stdout)

            # A stale feature declaration must block an incomplete ROM.
            duplicate = system / "etc/permissions/com.sec.feature.spen_usp_level70.xml"
            duplicate.write_text('<permissions><feature name="com.sec.feature.spen_usp" version="70"/></permissions>')
            self.assertIn("Conflicting Note9 S Pen declarations", run().stderr)
            duplicate.unlink()

            # No runtime Bluetooth grant means pen cannot connect reliably.
            defaults = system / "etc/default-permissions/default-permissions-com.samsung.android.service.aircommand.xml"
            original = defaults.read_text()
            defaults.write_text(original.replace("android.permission.BLUETOOTH_CONNECT", "android.permission.REMOVED_CONNECT"))
            self.assertIn("missing BLE runtime permission defaults", run().stderr)
            defaults.write_text(original)

            notes = system / "app/Notes33/Notes33.apk"
            notes.unlink()
            self.assertIn("lacks Samsung Notes popup/composer", run().stderr)
            notes.write_bytes(b"test-fixture-not-shippable")

            library.unlink()
            self.assertIn("missing required com.samsung.device library", run().stderr)
            library.write_text('<permissions><library name="com.samsung.device" '
                               'file="/system/framework/com.samsung.device.jar"/></permissions>')

            rc.write_text("# missing stock sysfs ownership\n")
            self.assertIn("lacks the stock init ownership", run().stderr)

    def test_garage_parser_patch_cannot_silently_skip_invalid_donor(self) -> None:
        contents = FINAL.read_text(encoding="utf-8")
        start = contents.index("_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK()\n{\n")
        end = contents.index("\n}\n", start) + 3
        function = contents[start:end]
        with tempfile.TemporaryDirectory(prefix="note9-garage-invalid-") as td:
            apktool = Path(td)
            parser = apktool / "system/priv-app/AirCommand/AirCommand.apk/smali/w1/e.smali"
            parser.parent.mkdir(parents=True)
            parser.write_text(".class public Lw1/e;\n# unexpected decoder revision\n")
            env = os.environ.copy()
            env.update({"TARGET_CODENAME": "crownlte", "APKTOOL_DIR": str(apktool)})
            command = (function + '''
LOG() { :; }
LOGW() { :; }
LOGE() { :; }
DECODE_APK() { return 1; }
_EXYNOS9810_FINAL_PATCH_AIRCOMMAND_GARAGE_FALLBACK
''')
            run = subprocess.run(["bash", "-c", command], cwd=ROOT, env=env,
                                 text=True, capture_output=True, check=False)
            self.assertNotEqual(run.returncode, 0)
            self.assertIn("PATTERN_NOT_FOUND", run.stdout)
            parser.unlink()
            missing = subprocess.run(["bash", "-c", command], cwd=ROOT, env=env,
                                     text=True, capture_output=True, check=False)
            self.assertNotEqual(missing.returncode, 0)


if __name__ == "__main__":
    unittest.main()
