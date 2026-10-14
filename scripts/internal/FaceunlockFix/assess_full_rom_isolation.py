#!/usr/bin/env python3
"""READ-ONLY preflight for a separate experimental star2lte ROM checkout.

Never invokes make_rom, Apktool, D8, create_work_dir, ADB, or any destructive
operation. A green result is only filesystem isolation readiness, NOT
proof of a bootable ROM. The existing shared checkout is always refused.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import shutil

SHARED_ROOT = Path(__file__).resolve().parents[3]
AUDIT_SUBDIR = Path("out/target/star2lte/face-audit")
BACKUPS = (
    "noble_framework_live_backup/services.original.jar",
    "noble_framework_live_backup/services.faceunlockfix-last-known-good.jar",
)
TOOL_INPUTS = (
    "out/tools/bin/apktool.jar",
    "out/target/star2lte/face-audit/buildtools/r8-9.5.23.jar",
    "out/target/star2lte/face-audit/buildtools/services_noble_probe_preview.jar",
    "out/target/star2lte/face-audit/buildtools/noble_ipc_smoke.dex",
    "out/target/star2lte/face-audit/noble2c_face/system/bin/faced",
)
SNAPSHOT_SCRIPTS = (
    "buildenv.sh",
    "scripts/make_rom.sh",
    "scripts/internal/FaceunlockFix/stage_verified_rom.py",
    "scripts/internal/FaceunlockFix/verify_framework_classes.py",
    "unica/configs/version.sh",
    "target/star2lte",
)


def blockers(candidate: Path, shared: Path = SHARED_ROOT) -> list[str]:
    candidate = candidate.resolve()
    shared = shared.resolve()
    found: list[str] = []
    if not candidate.is_dir():
        return [f"Candidate independent checkout does not exist: {candidate}"]
    if candidate == shared or candidate.is_relative_to(shared):
        found.append("Shared checkout (or subdirectory) cannot be used for a full build")
    if candidate != shared and shared.is_relative_to(candidate):
        found.append("Candidate is an ancestor of the shared checkout")

    # buildenv.sh uses OUT_DIR=$SRC_DIR/out, and all FaceunlockFix trial tools
    # compute ROOT from their script location. Workdir env overrides are
    # NOT sufficient; all these paths must be physically independent.
    for relative in (
        "out", "out/target/star2lte", "out/target/star2lte/work_dir",
        "out/target/star2lte/apktool", AUDIT_SUBDIR,
        AUDIT_SUBDIR / "buildtools", AUDIT_SUBDIR / "noble2c_face",
        AUDIT_SUBDIR / "noble_framework_live_backup",
        "out/fw", "out/odin", "out/tools", "out/tools/bin",
    ):
        path = candidate / relative
        if path.is_symlink() and path.resolve().is_relative_to(shared):
            found.append(f"Build path symlinks into shared checkout: {relative}")
        if path.exists() and path.resolve().is_relative_to(shared):
            found.append(f"Build path resolves into shared checkout: {relative}")

    work = candidate / "out/target/star2lte/work_dir"
    if work.is_dir():
        if (work / ".build_in_progress").exists():
            found.append("Candidate work_dir has stale/incomplete .build_in_progress")
        if (work / ".faceunlockfix_build_variant").is_file():
            if (work / ".faceunlockfix_build_variant").read_text().strip() != "experimental":
                found.append("Candidate work_dir is not the experimental variant")
        elif any(work.iterdir()):
            found.append("Candidate work_dir is nonempty and not experimental")

    for relative in SNAPSHOT_SCRIPTS:
        if not (candidate / relative).exists():
            found.append(f"Missing snapshot source: {relative}")
    for relative in (*TOOL_INPUTS, *(AUDIT_SUBDIR / part for part in BACKUPS)):
        file = candidate / relative
        if not file.is_file():
            found.append(f"Missing offline build input: {relative}")
        elif file.resolve().is_relative_to(shared):
            found.append(f"Build input aliases shared checkout: {relative}")

    try:
        usage = shutil.disk_usage(candidate)
        # Deliberately conservative lower bound. Actual firmware/image tools
        # require more transient storage; 30 GiB is not a space guarantee.
        if usage.free < 30 * 1024**3:
            found.append(f"Less than 30 GiB free for isolated image assembly "
                         f"({usage.free // (1024**3)} GiB available)")
    except OSError as error:
        found.append(f"Cannot inspect candidate disk capacity: {error}")

    return found


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--candidate-root", type=Path, required=True,
                        help="A separate FULL source/tool/audit snapshot, not this checkout")
    args = parser.parse_args()
    reasons = blockers(args.candidate_root)
    if reasons:
        for reason in reasons:
            print("BLOCK full-ROM isolation:", reason)
        print("No files were modified; no build was started.")
        return 1
    print("PASS independent source/tool/audit/workdir paths and minimum free space")
    print("Review firmware availability, exact snapshot provenance and build logs")
    print("before starting an isolated full ROM build. No build was started.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
