"""Small post-Apktool Note9 artifact checks; never touches a device or ROM tree."""
from __future__ import annotations

from pathlib import Path
import subprocess
import tempfile
import unittest
import zipfile

from verify_note9_rebuilt_artifacts import (
    AIRCOMMAND_MARKERS, SERVICES_MARKERS, verify, verify_archive,
    verify_aircommand_methods, verify_platform_signatures,
)


AUDIT = Path(__file__).resolve().parents[5] / "out/target/crownlte/spen_airactions_audit"
ROM_BUILDER = Path(__file__).resolve().parents[5] / "scripts/make_rom.sh"
ROOT = Path(__file__).resolve().parents[5]
CERT = ROOT / "security/aosp_platform.x509.pem"
FACTORY_ORIGINAL = ROOT / ("unica/patches/exynos9810_device_stack/embedded/"
                           "exynos9810_legacy_port/device_port/device/crownlte/pen/"
                           "app/FactoryAirCommandManager/FactoryAirCommandManager.apk")


def jar(path: Path, markers: tuple[bytes, ...], signed: bool) -> None:
    """Create a structurally valid synthetic DEX, not fake `dex` magic bytes."""
    with tempfile.TemporaryDirectory(prefix="note9-valid-fixture-dex-") as td:
        source = Path(td) / "fixture.smali"
        bytecode = Path(td) / "classes.dex"
        constants = "\n".join(
            f'    const-string v0, "{marker.decode("ascii")}"'
            for marker in markers)
        source.write_text(".class public Lfixture/Markers;\n"
                          ".super Ljava/lang/Object;\n"
                          ".method public static values()V\n"
                          "    .registers 1\n" + constants +
                          "\n    return-void\n.end method\n")
        command = ["java", "-cp", str(ROOT / "out/tools/bin/apktool.jar"),
                   "com.android.tools.smali.smali.Main", "assemble",
                   "--api", "34", "--output", str(bytecode), str(source)]
        result = subprocess.run(command, text=True, capture_output=True, check=False)
        if result.returncode:
            raise RuntimeError("Could not compile real DEX test fixture: " + result.stderr)
        dex_bytes = bytecode.read_bytes()
    path.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(path, "w", compression=zipfile.ZIP_STORED) as out:
        out.writestr("classes.dex", dex_bytes)
        if signed:
            out.writestr("META-INF/CERT.SF", b"fixture-signature-file")
            out.writestr("META-INF/CERT.RSA", b"fixture-cert")


class Note9RebuiltArtifactsTests(unittest.TestCase):
    def test_note9_verifier_runs_after_apktool_before_image_packaging(self) -> None:
        script = ROM_BUILDER.read_text(encoding="utf-8")
        call = "verify_note9_rebuilt_artifacts.py"
        self.assertEqual(script.count(call), 1)
        apktool_rebuild = script.index('wait $(jobs -p) || exit 1')
        self.assertGreater(script.index(call), apktool_rebuild)
        self.assertIn('[ "$TARGET_CODENAME" = "crownlte" ]',
                      script[apktool_rebuild:script.index(call)])
        callsite = script[apktool_rebuild:script.index(call) + 240]
        self.assertIn('--work-dir "$WORK_DIR"', callsite)
        self.assertIn('--platform-cert "$SRC_DIR/security/', callsite)
        self.assertIn(' || exit 1', callsite)

    def test_valid_dex_archive_layout_complete(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-final-artifact-") as td:
            work = Path(td)
            system = work / "system/system"
            jar(system / "priv-app/AirCommand/AirCommand.apk", AIRCOMMAND_MARKERS, True)
            jar(system / "framework/services.jar", SERVICES_MARKERS, False)
            verify_archive(system / "priv-app/AirCommand/AirCommand.apk",
                           AIRCOMMAND_MARKERS, signed=True)
            verify_archive(system / "framework/services.jar",
                           SERVICES_MARKERS, signed=False)

    def test_strings_only_cannot_fake_legacy_button_or_gatt_methods(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-stripped-ble-methods-") as td:
            apk = Path(td) / "AirCommand.apk"
            jar(apk, AIRCOMMAND_MARKERS, True)
            # Correct marker strings in a real DEX are insufficient when the
            # expected b3/b / U2/k classes and methods were not compiled.
            verify_archive(apk, AIRCOMMAND_MARKERS, signed=True)
            with self.assertRaisesRegex(ValueError, "compiled Note9 classes missing"):
                verify_aircommand_methods(apk)

    def test_fabricated_dex_header_is_rejected(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-malformed-dex-") as td:
            apk = Path(td) / "AirCommand.apk"
            with zipfile.ZipFile(apk, "w") as archive:
                archive.writestr("classes.dex", b"dex\n035\x00" + b"\x00".join(AIRCOMMAND_MARKERS))
                archive.writestr("META-INF/CERT.SF", "fixture")
                archive.writestr("META-INF/CERT.RSA", "fixture")
            with self.assertRaisesRegex(ValueError, "invalid DEX"):
                verify_archive(apk, AIRCOMMAND_MARKERS, signed=True)

    def test_missing_ble_patch_rejected_even_when_signed(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-stale-apk-") as td:
            apk = Path(td) / "AirCommand.apk"
            jar(apk, (b"0000FD6C-0000-1000-8000-00805F9B34FB",), True)
            with self.assertRaisesRegex(ValueError, "compiled Note9 Crown BLE marker"):
                verify_archive(apk, AIRCOMMAND_MARKERS, signed=True)

    def test_unsigned_apk_rejected_even_with_crown_bytecode(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-unsigned-apk-") as td:
            apk = Path(td) / "AirCommand.apk"
            jar(apk, AIRCOMMAND_MARKERS, False)
            with self.assertRaisesRegex(ValueError, "SignApk signature"):
                verify_archive(apk, AIRCOMMAND_MARKERS, signed=True)

    def test_missing_framework_bridge_rejected(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-no-bridge-") as td:
            services = Path(td) / "services.jar"
            jar(services, (b"other framework class",), False)
            with self.assertRaisesRegex(ValueError, "compiled Note9 Crown BLE marker"):
                verify_archive(services, SERVICES_MARKERS, signed=False)

    @unittest.skipUnless((AUDIT / "AirCommand-note9-signed-audit.apk").is_file(),
                         "No isolated signed donor audit output")
    def test_real_patched_aircommand_compiles_and_is_signed(self) -> None:
        verify_archive(AUDIT / "AirCommand-note9-signed-audit.apk",
                       AIRCOMMAND_MARKERS, signed=True)

    @unittest.skipUnless((AUDIT / "FactoryAirCommandManager-signed-audit.apk").is_file(),
                         "No separately platform-signed Note9 factory receiver")
    def test_original_factory_shared_uid_signer_is_incompatible(self) -> None:
        with self.assertRaisesRegex(ValueError, "signer mismatch"):
            verify_platform_signatures((FACTORY_ORIGINAL,), CERT)

    @unittest.skipUnless(
        all((AUDIT / name).is_file() for name in (
            "AirCommand-note9-signed-audit.apk",
            "FactoryAirCommandManager-signed-audit.apk",
            "spen_sysfs_services_smali.dex")),
        "Missing isolated final artifacts for end-to-end verifier")
    def test_real_signed_compiled_artifacts_pass_final_verifier(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-real-signed-artifact-") as td:
            work = Path(td)
            system = work / "system/system"
            apk = system / "priv-app/AirCommand/AirCommand.apk"
            facm = system / "app/FactoryAirCommandManager/FactoryAirCommandManager.apk"
            services = system / "framework/services.jar"
            apk.parent.mkdir(parents=True, exist_ok=True)
            facm.parent.mkdir(parents=True, exist_ok=True)
            services.parent.mkdir(parents=True, exist_ok=True)
            apk.symlink_to(AUDIT / "AirCommand-note9-signed-audit.apk")
            facm.symlink_to(AUDIT / "FactoryAirCommandManager-signed-audit.apk")
            with zipfile.ZipFile(services, "w") as out:
                out.write(AUDIT / "spen_sysfs_services_smali.dex", "classes2.dex")
            verify(work, CERT)

    @unittest.skipUnless((AUDIT / "spen_sysfs_services_smali.dex").is_file(),
                         "No isolated compiled Android16 S Pen service")
    def test_real_compiled_android16_service_contains_wacom_bridge(self) -> None:
        with tempfile.TemporaryDirectory(prefix="crown-service-compiled-") as td:
            services = Path(td) / "services.jar"
            with zipfile.ZipFile(services, "w") as out:
                out.write(AUDIT / "spen_sysfs_services_smali.dex", "classes2.dex")
            verify_archive(services, SERVICES_MARKERS, signed=False)


if __name__ == "__main__":
    unittest.main()
