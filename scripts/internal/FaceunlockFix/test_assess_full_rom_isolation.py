#!/usr/bin/env python3
"""Read-only unit tests for full-ROM isolation preflight."""
from __future__ import annotations

from pathlib import Path
import tempfile

from assess_full_rom_isolation import SHARED_ROOT, blockers


def main() -> None:
    reasons = blockers(SHARED_ROOT)
    assert any("Shared checkout" in reason for reason in reasons)

    with tempfile.TemporaryDirectory(prefix="faceunlockfix-isolation-") as temp:
        independent = Path(temp) / "candidate"
        independent.mkdir()
        reasons = blockers(independent)
        assert any("Missing offline build input" in reason for reason in reasons)
        assert any("Missing snapshot source" in reason for reason in reasons)
        work = independent / "out/target/star2lte/work_dir"
        work.mkdir(parents=True)
        marker = work / ".build_in_progress"
        marker.touch()
        assert any(".build_in_progress" in reason for reason in blockers(independent))
        marker.unlink()
        work.rmdir()
        work.parent.rmdir()
        work.parent.parent.rmdir()
        (independent / "out").rmdir()
        target = independent / "out"
        target.symlink_to(SHARED_ROOT / "out", target_is_directory=True)
        reasons = blockers(independent)
        assert any("symlinks into shared checkout: out" in reason for reason in reasons)
    print("PASS refuses shared/incomplete star2lte work_dir")
    print("PASS refuses empty candidate checkout and symlinks to shared out/")
    print("PASS isolation preflight is read-only; no ROM build invoked")


if __name__ == "__main__":
    main()
