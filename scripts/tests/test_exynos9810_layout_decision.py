"""prepare_layout.sh must repartition only when the layout is really too small."""
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
REPART = ROOT / "platform/exynos9810/installer/repartition"


class LayoutDecisionTests(unittest.TestCase):
    def run_layout(self, codes):
        """codes: exit code of each successive preflight.sh call."""
        with tempfile.TemporaryDirectory() as name:
            d = Path(name)
            text = (REPART / "prepare_layout.sh").read_text()
            text = text.replace("/sbin/sh", "sh").replace("sleep 3", ":")
            (d / "prepare_layout.sh").write_text(text)
            (d / "codes").write_text("\n".join(map(str, codes)) + "\n")
            (d / "preflight.sh").write_text(
                'd="$(dirname "$0")"; c="$(head -n 1 "$d/codes")"; '
                'tail -n +2 "$d/codes" > "$d/codes.n"; mv "$d/codes.n" "$d/codes"; '
                'exit "${c:-0}"\n')
            (d / "repartition.sh").write_text('touch "$(dirname "$0")/repartitioned"\n')
            result = subprocess.run(["sh", str(d / "prepare_layout.sh"), "star2lte"],
                                    capture_output=True, text=True)
            state = (d / "layout.prop").read_text().strip()
            return result.returncode, (d / "repartitioned").exists(), state, result.stdout

    def test_ready_layout_is_left_alone(self):
        rc, repartitioned, state, _ = self.run_layout([0])
        self.assertEqual((rc, repartitioned, state), (0, False, "repartitioned=0"))

    def test_late_partition_table_is_rechecked_not_repartitioned(self):
        rc, repartitioned, state, _ = self.run_layout([1, 0])
        self.assertEqual((rc, repartitioned, state), (0, False, "repartitioned=0"))

    def test_unreadable_sizes_never_repartition(self):
        rc, repartitioned, state, out = self.run_layout([2, 2, 2])
        self.assertEqual((rc, repartitioned, state), (1, False, "repartitioned=0"))
        self.assertIn("nothing was changed", out)

    def test_too_small_layout_is_repartitioned_once(self):
        rc, repartitioned, state, _ = self.run_layout([1, 1, 1, 0])
        self.assertEqual((rc, repartitioned, state), (0, True, "repartitioned=1"))


PREFLIGHT = REPART / "preflight.sh"


class PreflightSizeTests(unittest.TestCase):
    """The minimum layout depends on the build: EROFS accepts the 6700/725 layout."""

    def run_preflight(self, fs_type, sizes):
        with tempfile.TemporaryDirectory() as name:
            d = Path(name)
            block = d / "by-name"
            block.mkdir()
            for part, mib in sizes.items():
                (block / part).write_text(str(mib))
            text = PREFLIGHT.read_text().replace(
                "BLOCK=/dev/block/platform/11120000.ufs/by-name", f"BLOCK={block}")
            # fixture: each "node" holds its size in MiB; report it as 512-byte sectors
            text = text.replace('sectors="$(blockdev --getsz "$node" 2>/dev/null)"',
                                'sectors=$(( $(cat "$node") * 2048 ))')
            (d / "preflight.sh").write_text(text)
            if fs_type:
                (d / "fs_type.prop").write_text(f"fs_type={fs_type}\n")
            return subprocess.run(["sh", str(d / "preflight.sh"), "star2lte"],
                                  capture_output=True, text=True).returncode

    COMMUNITY = dict(SYSTEM=6700, VENDOR=725, ODM=700, CACHE=600)
    EXT4 = dict(SYSTEM=9500, VENDOR=1300, ODM=700, CACHE=600)

    def test_erofs_accepts_the_community_layout(self):
        self.assertEqual(self.run_preflight("erofs", self.COMMUNITY), 0)

    def test_ext4_needs_the_large_layout(self):
        self.assertEqual(self.run_preflight("ext4", self.COMMUNITY), 1)
        self.assertEqual(self.run_preflight("ext4", self.EXT4), 0)

    def test_unknown_build_type_stays_on_the_safe_large_layout(self):
        self.assertEqual(self.run_preflight(None, self.COMMUNITY), 1)

    def test_erofs_still_rejects_a_too_small_system(self):
        self.assertEqual(self.run_preflight("erofs", dict(self.COMMUNITY, SYSTEM=6000)), 1)

if __name__ == "__main__":
    unittest.main()
