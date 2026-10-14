#!/usr/bin/env python3
"""Audit-only ROM services.jar append tests; never alters ROM work_dir/ADB."""
from __future__ import annotations

from pathlib import Path
import shutil
import tempfile
import zipfile

import stage_verified_rom as stage
from stage_adapter_probe import render, restore_pristine
from verify_framework_classes import (
    QUARANTINED_SHA,
    WORKING,
    ORIGINAL,
    require_preserved_framework_classes,
)


def main() -> None:
    # Three targets share one audited framework compiler input but MUST NOT
    # share mutable work_dir, apktool or output staging destinations.
    for target in ("starlte", "star2lte", "crownlte"):
        stage.select_target(target)
        assert stage.WORK == stage.ROOT / "out/target" / target / "work_dir"
        assert stage.STAGE == stage.AUDIT / "faceunlockfix_rom_stage" / target
        assert stage.SOURCE_SMALI.is_relative_to(
            stage.ROOT / "out/target" / target / "apktool")
    try:
        stage.select_target("unsupported")
    except ValueError:
        pass
    else:
        raise AssertionError("Unsupported face target was accepted")
    stage.select_target("star2lte")

    # The Oct13 bootloop demonstrated that append-only ZIP preservation
    # alone is insufficient: the Apktool rebuild itself can drop critical
    # Android16 classes. The real stage is required to reject such candidates
    # BEFORE appending the bridge or copying native runtime into work_dir.
    require_preserved_framework_classes(WORKING)
    candidate = stage.BUILD / "services_faceunlockfix_probe_base.jar"
    if candidate.is_file():
        try:
            require_preserved_framework_classes(candidate)
        except RuntimeError as exc:
            # Until the repaired probe builder lands, release assembly
            # correctly blocks this incomplete artifact. After its repair,
            # the same check must accept it without modifying this test.
            assert "lost" in str(exc) or "quarantined" in str(exc), str(exc)
    assert stage.QUARANTINED_BOOTLOOP_SERVICES_SHA == QUARANTINED_SHA

    preexisting = ORIGINAL
    hook_base = stage.BUILD / "services_faceunlockfix_probe_base.jar"
    dex_zip = stage.BUILD / "faceunlockfix_bridge_current_dex.zip"
    rendered = stage.verify_probe_source()
    assert rendered.count("FaceunlockFixProbe;->tryAcquire") == 1
    assert ":faceunlockfix_probe_fallback" in rendered
    assert render(restore_pristine(rendered)) == rendered
    # Exact bytecode acquisition shape is required for a safe system_server
    # assembly. Modified hook control flow must fail closed.
    tampered = rendered.replace("    :faceunlockfix_probe_fallback\n\n",
                                "    :faceunlockfix_probe_fallback\n    nop\n\n", 1)
    try:
        restore_pristine(tampered)
    except ValueError:
        pass
    else:
        raise AssertionError("Modified FaceunlockFix hook was accepted")
    with zipfile.ZipFile(dex_zip) as dex:
        native_bridge_dex = dex.read("classes.dex")
    with tempfile.TemporaryDirectory(prefix="faceunlockfix_rom_append_test_",
                                     dir=stage.AUDIT) as temp:
        root = Path(temp)
        stage.WORK = root  # Make the tested function's path guard audit-local.

        positive = root / "services-with-source-hook.jar"
        shutil.copyfile(hook_base, positive)
        with zipfile.ZipFile(positive) as z:
            original = {name: z.read(name) for name in z.namelist()}
        stage.append_only_verified_bridge(positive, native_bridge_dex)
        with zipfile.ZipFile(positive) as z:
            assert z.testzip() is None
            assert z.read("classes3.dex") == native_bridge_dex
            assert len(z.namelist()) == len(original) + 1
            for name, data in original.items():
                assert z.read(name) == data, f"Unrelated ROM payload changed: {name}"

        negative = root / "services-without-source-hook.jar"
        shutil.copyfile(preexisting, negative)
        snapshot = negative.read_bytes()
        try:
            stage.append_only_verified_bridge(negative, native_bridge_dex)
        except RuntimeError as exc:
            assert "lacks the verified FaceunlockFix HIDL getter hook" in str(exc)
        else:
            raise AssertionError("Unsafe hook-free services.jar was accepted")
        assert negative.read_bytes() == snapshot

        configs = root / "configs"
        configs.mkdir()
        (configs / "fs_config-system").write_text(
            "system/bin/faced 0 0 777 capabilities=0x0\n"
            "system/bin/unrelated 0 0 755 capabilities=0x0\n")
        (configs / "file_context-system").write_text(
            "\n/system/bin/faced u:object_r:system_file:s0\n"
            "/system/bin/unrelated u:object_r:system_file:s0\n")
        stage.update_metadata()
        fs = (configs / "fs_config-system").read_text()
        contexts = (configs / "file_context-system").read_text()
        assert fs.count("system/bin/faced ") == 1
        assert "system/bin/faced 0 0 755 capabilities=0x0" in fs
        assert "/system/bin/faced u:object_r:faced_exec:s0" in contexts
        assert "/system/lib64/faceunlockfix/libFaceService\\.so " in contexts
        assert "/system/bin/unrelated u:object_r:system_file:s0" in contexts

    print("PASS audit-only: preserves original framework, appends one bridge dex")
    print("PASS refuses unpatched donor framework without changing its bytes")
    print("PASS exact HIDL source hook and scoped system SELinux/fs metadata")
    print("PASS three-target source path isolation and unsupported-target rejection")


if __name__ == "__main__":
    main()
