"""Exercise recovery repartitioning only against temporary sparse disk files."""
from pathlib import Path
import os
import shutil
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "platform/exynos9810/installer/repartition/repartition.sh"
SGDISK = shutil.which("sgdisk")


@unittest.skipUnless(SGDISK, "sgdisk required for real GPT fixtures")
class RepartitionTests(unittest.TestCase):
    def fixture(self, directory, mib=512):
        disk = directory / "disk.img"
        with disk.open("wb") as output:
            output.truncate(mib * 1024**2)
        args = [SGDISK, "--clear"]
        for number, (name, size) in enumerate([
            ("BOOT", "1"), ("EFS", "1"), ("SYSTEM_EXT", "1"),
            ("SYSTEM", "40"), ("VENDOR", "5"), ("ODM", "2"),
            ("CACHE", "2"), ("HIDDEN", "1"), ("OMR", "1"),
            ("CP_DEBUG", "1"), ("USERDATA", None),
        ], 1):
            code = "EF00" if name == "SYSTEM_EXT" else "8300"
            args.extend([f"--new={number}:0:" + (f"+{size}M" if size else "0"),
                         f"--typecode={number}:{code}", f"--change-name={number}:{name}"])
        subprocess.run(args + [str(disk)], check=True, capture_output=True)
        script = directory / "repartition.sh"
        # WSL1 does not provide sparse allocation here. Scale only fixture
        # capacities to keep real GPT tests small; production units are intact.
        text = SOURCE.read_text().replace("DISK=/dev/block/sda", f"DISK={disk}")
        for actual, scaled in ((9500, 95), (1300, 13), (860, 8),
                               (700, 7), (520, 5), (600, 6)):
            text = text.replace(f"size={actual}\n", f"size={scaled}\n")
        script.write_text(text)
        (directory / "sgdisk").symlink_to(SGDISK)
        return disk, script

    def table(self, disk):
        text = subprocess.check_output([SGDISK, "--print", str(disk)], text=True)
        rows = {}
        for line in text.splitlines():
            words = line.split()
            if len(words) >= 7 and words[0].isdigit():
                rows[words[-1]] = (int(words[1]), int(words[2]), words[5])
        return rows

    def test_real_gpt_all_three_targets_and_protected_partitions(self):
        for target in ("starlte", "star2lte", "crownlte"):
            with self.subTest(target=target), tempfile.TemporaryDirectory() as name:
                directory = Path(name)
                disk, script = self.fixture(directory)
                before = self.table(disk)
                result = subprocess.run(["sh", str(script), target], capture_output=True, text=True)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                after = self.table(disk)
                self.assertEqual(set(after), set(before))
                for protected in ("BOOT", "EFS", "SYSTEM_EXT"):
                    self.assertEqual(after[protected], before[protected])
                sizes = dict(SYSTEM=95, VENDOR=13,
                             ODM=8 if target == "crownlte" else 7,
                             CACHE=5 if target == "crownlte" else 6,
                             HIDDEN=1, OMR=1, CP_DEBUG=1)
                for partition, mib in sizes.items():
                    start, end, code = after[partition]
                    self.assertEqual(end - start + 1, mib * 2048, partition)
                    self.assertEqual(code, "8300")
                self.assertGreater(after["USERDATA"][1] - after["USERDATA"][0], 0)
                self.assertTrue((directory / "gpt-before-repartition.bin").is_file())
                subprocess.run([SGDISK, "--verify", str(disk)], check=True, capture_output=True)

    def test_insufficient_space_leaves_original_table_unchanged(self):
        with tempfile.TemporaryDirectory() as name:
            directory = Path(name)
            disk, script = self.fixture(directory, mib=80)
            before = self.table(disk)
            result = subprocess.run(["sh", str(script), "crownlte"], capture_output=True, text=True)
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("invalid repartition plan", result.stdout)
            self.assertEqual(self.table(disk), before)
            self.assertFalse((directory / "gpt-before-repartition.bin").exists())

    def test_failed_commit_is_not_reported_as_success(self):
        with tempfile.TemporaryDirectory() as name:
            directory = Path(name)
            disk, script = self.fixture(directory)
            before = self.table(disk)
            (directory / "sgdisk").unlink()
            wrapper = directory / "sgdisk"
            wrapper.write_text(
                "#!/bin/sh\ncase \"$1\" in\n"
                "--delete=*) exit 4 ;;\nesac\n"
                f'exec "{SGDISK}" "$@"\n')
            wrapper.chmod(0o755)
            result = subprocess.run(["sh", str(script), "starlte"], capture_output=True, text=True)
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("GPT write failed", result.stdout)
            self.assertEqual(self.table(disk), before)
            self.assertTrue((directory / "gpt-before-repartition.bin").is_file())


if __name__ == "__main__":
    unittest.main()
