#!/usr/bin/env python3
"""Exercise the real ROM cache hash function against an isolated tiny fixture.

No real ROM files or build outputs are touched.
"""
from __future__ import annotations

import os
from pathlib import Path
import re
import subprocess
import tempfile


ROOT = Path(__file__).resolve().parents[3]
MAKE_ROM = (ROOT / "scripts/make_rom.sh").read_text(encoding="utf-8")
FUNCTION = re.search(r"(?ms)^GET_WORK_DIR_HASH\(\)\n\{\n.*?^\}\n", MAKE_ROM)


def write(base: Path, path: str, value: str) -> None:
    target = base / path
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(value, encoding="utf-8")


def build_hash(base: Path, experimental: bool, target: str = "star2lte") -> str:
    if FUNCTION is None:
        raise AssertionError("Missing GET_WORK_DIR_HASH shell function")
    environment = os.environ.copy()
    environment.update(
        SRC_DIR=str(base),
        TARGET_PLATFORM="exynos9810",
        TARGET_CODENAME=target,
        TARGET_OS_FILE_SYSTEM_TYPE="ext4",
        EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=(
            "true" if experimental else "false"
        ),
    )
    result = subprocess.run(
        ["bash", "-c", FUNCTION.group() + "\nGET_WORK_DIR_HASH\n"],
        env=environment,
        cwd=base,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=True,
    )
    digest = result.stdout.strip()
    if re.fullmatch(r"[0-9a-f]{40}", digest) is None:
        raise AssertionError(f"Unexpected build hash: {digest!r}")
    return digest


def main() -> None:
    with tempfile.TemporaryDirectory(prefix="faceunlockfix-cache-") as temporary:
        fixture = Path(temporary)
        write(fixture, "platform/exynos9810/base.txt", "platform-v1")
        write(fixture, "unica/rom.txt", "rom-v1")
        write(fixture, "target/star2lte/config.txt", "target-v1")
        write(fixture, "scripts/internal/FaceunlockFix/stage_runtime.py", "stage-v1")
        write(fixture, "scripts/internal/FaceunlockFix_bridge/contract.json", "bridge-v1")
        write(fixture, "scripts/make_rom.sh", "make_rom-v1")

        standard = build_hash(fixture, False)
        experimental = build_hash(fixture, True)
        assert standard != experimental, "ROM variants share a cache key"

        write(fixture, "scripts/internal/FaceunlockFix_bridge/contract.json", "bridge-v2")
        assert build_hash(fixture, False) == standard, "Default cache changed"
        assert build_hash(fixture, True) != experimental, "Bridge edit reused experimental cache"
        experimental = build_hash(fixture, True)

        write(fixture, "scripts/make_rom.sh", "make_rom-v2")
        assert build_hash(fixture, True) != experimental, "Build script edit reused cache"
        experimental = build_hash(fixture, True)

        write(fixture, "scripts/internal/FaceunlockFix/__pycache__/source.pyc", "noise")
        assert build_hash(fixture, True) == experimental, "Generated cache changed build key"

        write(fixture, "unica/rom.txt", "rom-v2")
        assert build_hash(fixture, False) != standard, "Default ROM edits were ignored"
        assert build_hash(fixture, True) != experimental, "Experimental ROM edits were ignored"

        # Every Exynos9810 target must have distinct source/cache fingerprints,
        # and the debug FaceunlockFix variant must differ from its normal ROM.
        for target in ("starlte", "crownlte"):
            write(fixture, f"target/{target}/config.txt", target)
            normal = build_hash(fixture, False, target)
            enabled = build_hash(fixture, True, target)
            assert normal != enabled, f"{target} reused the normal ROM cache"
            assert enabled != build_hash(fixture, True, "star2lte"), (
                f"{target} reused the S9+ experimental cache")

    print("PASS three-target standard/experimental FaceunlockFix build cache isolation")


if __name__ == "__main__":
    main()
