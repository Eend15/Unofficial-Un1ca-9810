#!/usr/bin/env python3
"""Fast clean-checkout preflight regression checks, without real firmware."""
import hashlib
import importlib.util
import json
import tempfile
import unittest
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location(
    "verify_source_checkout", ROOT / "scripts/internal/verify_source_checkout.py"
)
checker = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checker)


class SourceCheckoutTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        (self.root / "platform/exynos9810/installer").mkdir(parents=True)
        (self.root / "scripts/internal").mkdir(parents=True)
        (self.root / "scripts/internal/source-inputs.json").write_text(
            json.dumps({"files": [], "submodules": {}})
        )
        settings = []
        for fs in ("EROFS", "EXT4"):
            rel = f"platform/exynos9810/prebuilt/test-{fs.lower()}.zip"
            package = self.root / rel
            package.parent.mkdir(parents=True, exist_ok=True)
            with zipfile.ZipFile(package, "w") as archive:
                for model in checker.KERNEL_MODELS:
                    for kind in ("kernel", "dtb"):
                        archive.writestr(f"floyd/{model}-{kind}", b"payload")
                archive.writestr(
                    "META-INF/com/google/android/update-binary", b"installer"
                )
            sha = hashlib.sha256(package.read_bytes()).hexdigest()
            settings.extend(
                (
                    f'DS_ACK_{fs}_PREBUILT_ZIP="$SRC_DIR/{rel}"',
                    f'DS_ACK_{fs}_PREBUILT_SHA256="{sha}"',
                )
            )
        (self.root / "platform/exynos9810/installer/customize.sh").write_text(
            "\n".join(settings) + "\n"
        )

    def test_both_default_kernel_archives_have_complete_model_set(self):
        self.assertEqual(checker.check_default_kernels(self.root), [])

    def test_bad_kernel_checksum_fails_before_build(self):
        package = self.root / "platform/exynos9810/prebuilt/test-erofs.zip"
        with package.open("ab") as output:
            output.write(b"unwanted")
        errors = checker.check_default_kernels(self.root)
        self.assertTrue(any("EROFS kernel SHA256 mismatch" in e for e in errors))

    def test_missing_model_payload_fails_before_build(self):
        package = self.root / "platform/exynos9810/prebuilt/test-ext4.zip"
        with zipfile.ZipFile(package, "w") as archive:
            archive.writestr("floyd/G965F-kernel", b"payload")
        script = self.root / "platform/exynos9810/installer/customize.sh"
        source = script.read_text()
        old = next(line for line in source.splitlines()
                   if line.startswith("DS_ACK_EXT4_PREBUILT_SHA256="))
        source = source.replace(
            old, f'DS_ACK_EXT4_PREBUILT_SHA256="{hashlib.sha256(package.read_bytes()).hexdigest()}"'
        )
        script.write_text(source)
        self.assertTrue(any("archive missing" in e
                            for e in checker.check_default_kernels(self.root)))

    def test_android_partition_symlink_is_preserved(self):
        rel = "unica/vendor/lib/libGLES_mali.so"
        link = self.root / rel
        link.parent.mkdir(parents=True)
        link.symlink_to("/vendor/lib/egl/libGLES_mali.so")
        (self.root / "scripts/internal/source-inputs.json").write_text(
            json.dumps({"files": [rel], "submodules": {}})
        )
        checker.verify(self.root, submodules=False)

    def test_host_specific_symlink_is_rejected(self):
        rel = "unica/vendor/lib/libGLES_mali.so"
        link = self.root / rel
        link.parent.mkdir(parents=True)
        link.symlink_to("/home/someone/private/libGLES_mali.so")
        (self.root / "scripts/internal/source-inputs.json").write_text(
            json.dumps({"files": [rel], "submodules": {}})
        )
        with self.assertRaisesRegex(RuntimeError, "Host-specific source symlink"):
            checker.verify(self.root, submodules=False)


if __name__ == "__main__":
    unittest.main()
