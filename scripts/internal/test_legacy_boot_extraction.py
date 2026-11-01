#!/usr/bin/env python3
"""Exercise real header layouts and fail-closed extraction, without firmware."""
import importlib.util
from pathlib import Path
import struct
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
SPEC = importlib.util.spec_from_file_location("kernel_extract", ROOT / "unica/patches/legacy/extract_kernel_image.py")
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)
PAYLOAD = bytes(range(256)) * 17


def boot(version=0, samsung=False):
    page = 4096 if version >= 3 else 2048
    image = bytearray(page)
    image[:8] = b"ANDROID!"
    struct.pack_into("<I", image, 8, len(PAYLOAD))
    struct.pack_into("<I", image, 40, version)
    if version >= 3:
        struct.pack_into("<I", image, 20, 1584 if version == 4 else 1580)
    else:
        struct.pack_into("<I", image, 36, page)
    image.extend(PAYLOAD)
    if samsung:
        image.extend(b"\0" * (-len(image) % page))
        image.extend(b"DTBH" + b"\0" * 60)
        struct.pack_into("<I", image, 40, 64)
    return image


class KernelTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.image = Path(self.temp.name) / "boot.img"
        self.output = Path(self.temp.name) / "out/kernel"

    def read(self, image):
        self.image.write_bytes(image)
        return MODULE.read_kernel(self.image)

    def test_android_versions(self):
        for version in range(5):
            with self.subTest(version=version):
                kernel, kind = self.read(boot(version))
                self.assertEqual(kernel, PAYLOAD)
                self.assertEqual(kind, f"Android v{version}")

    def test_samsung_dtb_size_is_not_header_version(self):
        kernel, kind = self.read(boot(samsung=True))
        self.assertEqual(kernel, PAYLOAD)
        self.assertEqual(kind, "Samsung legacy DTB")

    def test_samsung_accepts_raw_fdt(self):
        image = boot(samsung=True)
        image[-64:-60] = b"\xd0\x0d\xfe\xed"
        self.assertEqual(self.read(image)[0], PAYLOAD)

    def test_invalid_headers_are_rejected(self):
        cases = [bytearray(b"ANDROID!"), bytearray(b"WRONG!!!") + bytearray(8192)]
        for size in (0, 512, 3000, 131072):
            image = boot()
            struct.pack_into("<I", image, 36, size)
            cases.append(image)
        image = boot()
        struct.pack_into("<I", image, 8, 0)
        cases.append(image)
        cases.append(boot()[:-1])
        cases.append(boot(samsung=True)[:-1])
        image = boot(samsung=True)
        image[-64:-60] = b"BAD!"
        cases.append(image)
        image = boot(3)
        struct.pack_into("<I", image, 20, 8192)
        cases.append(image)
        for image in cases:
            with self.subTest(size=len(image)), self.assertRaises(ValueError):
                self.read(image)

    def test_failure_does_not_replace_output(self):
        self.output.parent.mkdir()
        self.output.write_bytes(b"existing")
        self.image.write_bytes(boot(samsung=True)[:-1])
        with self.assertRaises(ValueError):
            MODULE.extract(self.image, self.output)
        self.assertEqual(self.output.read_bytes(), b"existing")

    def test_atomic_output_is_exact(self):
        self.image.write_bytes(boot(samsung=True))
        size, kind = MODULE.extract(self.image, self.output)
        self.assertEqual(size, len(PAYLOAD))
        self.assertEqual(self.output.read_bytes(), PAYLOAD)
        self.assertEqual(list(self.output.parent.iterdir()), [self.output])

    def test_eval_reports_failure_under_errexit(self):
        script = 'set -e; SRC_DIR="$1"; source "$SRC_DIR/scripts/utils/common_utils.sh"; EVAL "bash -c \'echo useful-diagnostic >&2; exit 7\'"; echo SHOULD_NOT_RUN'
        result = subprocess.run(["bash", "-c", script, "test", str(ROOT)], text=True, capture_output=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("useful-diagnostic", result.stderr)
        self.assertIn("Command returned a non-zero exit code", result.stderr)
        self.assertNotIn("SHOULD_NOT_RUN", result.stdout)


if __name__ == "__main__":
    unittest.main()