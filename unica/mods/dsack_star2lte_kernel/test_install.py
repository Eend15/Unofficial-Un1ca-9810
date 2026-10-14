"""Offline DS-ACK G965F EROFS/ext4 auto-selection tests; never touches a phone."""
from pathlib import Path
import hashlib
import os
import subprocess
import tempfile
import unittest
import zipfile


MODULE = Path(__file__).resolve().parent
EXPECTED_EROFS = "82978b09e838c8df365b17836ee3c77f75b4a86f1a747aa2c3f8ee57f762cd89"
EXPECTED_EXT4 = "a7989f68e03ac12aa0514c6ae5c925c2682fbf7f1581993842c3894684699030"
EXPECTED_USER_EXT4_ZIP = "b9a020882b695bc762cd3f1b63534626f8bf32432d45be5450b8ff939456e67e"
ROOT = MODULE.parents[2]


class DSACKKernelTests(unittest.TestCase):
    def run_module(self, base: Path, target: str, filesystem: str) -> subprocess.CompletedProcess[str]:
        env = os.environ.copy()
        env.update(MODPATH=str(MODULE), WORK_DIR=str(base), TARGET_PLATFORM="exynos9810",
                   TARGET_CODENAME=target, TARGET_OS_FILE_SYSTEM_TYPE=filesystem)
        script = ('LOG() { :; }; LOGE() { printf "%s\\n" "$*" >&2; }; '
                  'source "$MODPATH/customize.sh"')
        return subprocess.run(["bash", "-c", script], env=env, text=True,
                              capture_output=True, timeout=45, check=False)

    def assert_stages(self, fs: str, expected: str) -> None:
        with tempfile.TemporaryDirectory(prefix="dsack-s9plus-boot-") as d:
            work = Path(d)
            result = self.run_module(work, "star2lte", fs)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            boot = work / "kernel/boot.img"
            self.assertTrue(boot.is_file())
            with boot.open("rb") as file:
                self.assertEqual(hashlib.file_digest(file, "sha256").hexdigest(), expected)
            with boot.open("rb") as file:
                header = file.read(4096)
            self.assertIn(b"androidboot.selinux=enforcing", header)
            self.assertNotIn(b"androidboot.selinux=permissive", header)

    def test_real_star2lte_erofs_stages_original_enforcing_boot(self) -> None:
        self.assert_stages("erofs", EXPECTED_EROFS)

    def test_real_star2lte_ext4_stages_exact_ext4_enforcing_boot(self) -> None:
        self.assert_stages("ext4", EXPECTED_EXT4)

    def test_default_ext4_installer_zip_matches_user_archive(self) -> None:
        prebuilt = (ROOT / "platform/exynos9810/prebuilt/"
                    "DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-ext4-dtb.zip")
        with prebuilt.open("rb") as file:
            self.assertEqual(hashlib.file_digest(file, "sha256").hexdigest(),
                             EXPECTED_USER_EXT4_ZIP)
        with zipfile.ZipFile(prebuilt) as archive:
            self.assertIsNone(archive.testzip())
            self.assertIn(b"ext4", archive.read("floyd/G960F-dtb"))
            self.assertNotIn(b"erofs", archive.read("floyd/G960F-dtb"))

    def test_other_targets_are_not_modified(self) -> None:
        for codename in ("starlte", "crownlte"):
            for filesystem in ("erofs", "ext4"):
                with self.subTest(codename=codename, filesystem=filesystem), tempfile.TemporaryDirectory() as d:
                    work = Path(d)
                    result = self.run_module(work, codename, filesystem)
                    self.assertEqual(result.returncode, 0, result.stderr)
                    self.assertFalse((work / "kernel").exists())

    def test_unknown_filesystem_fails_closed(self) -> None:
        for filesystem in ("", "f2fs", "unsupported"):
            with self.subTest(filesystem=filesystem), tempfile.TemporaryDirectory() as d:
                work = Path(d)
                result = self.run_module(work, "star2lte", filesystem)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn("requires exactly erofs or ext4", result.stderr)
                self.assertFalse((work / "kernel").exists())


if __name__ == "__main__":
    unittest.main()
