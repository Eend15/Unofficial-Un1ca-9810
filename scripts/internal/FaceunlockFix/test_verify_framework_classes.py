#!/usr/bin/env python3
"""Regression tests against the known-good and quarantined offline frameworks.

Tests inspect local audit backups only; no ADB, no patched ROM work_dir.
"""
from pathlib import Path

from verify_framework_classes import (
    CRITICAL,
    ROOT,
    WORKING,
    defined_classes,
    jar_classes,
    require_preserved_framework_classes,
)


def rejected(path: Path, detail: str) -> None:
    try:
        require_preserved_framework_classes(path)
    except RuntimeError as error:
        if detail not in str(error):
            raise AssertionError(f"Unexpected rejection of {path}: {error}") from error
    else:
        raise AssertionError("Known broken services.jar was accepted: " + str(path))


def main() -> None:
    require_preserved_framework_classes(WORKING)
    working = jar_classes(WORKING)
    assert CRITICAL.issubset(working), "Previously booting framework lacked required classes"

    bootloop = (ROOT / "out/target/star2lte/face-audit/buildtools"
                "/services_bootloop_20261013_readonly.jar")
    rejected(bootloop, "Quarantined Oct13 bootloop")

    # Prime is repairing this cached builder input. Before the repair it must
    # FAIL (missing both classes), and after the repair it must PASS. Never
    # hard-code a test that would fail simply because the bug was fixed.
    candidate = (ROOT / "out/target/star2lte/face-audit/buildtools"
                 "/services_faceunlockfix_probe_base.jar")
    if candidate.is_file():
        try:
            require_preserved_framework_classes(candidate)
        except RuntimeError as error:
            assert "lost" in str(error) or "quarantined" in str(error), str(error)

    # DEX reader checks the class_def table, not a plain descriptor string.
    try:
        defined_classes(b"not a DEX file containing Lcom/android/modules/utils/build/SdkLevel;")
    except RuntimeError:
        pass
    else:
        raise AssertionError("Plain class-descriptor strings masqueraded as DEX class definitions")

    print("PASS working original framework retains required defined classes")
    print("PASS known bootloop rejected and current probe-base guarded")
    print("PASS DEX parser does not mistake string-pool references for class definitions")


if __name__ == "__main__":
    main()
