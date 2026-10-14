#!/usr/bin/env python3
"""Check actual rebuilt Exynos9810 SystemUI Brief/Edge Lighting bytecode.

Fail closed if Apktool output lost the targeted HUN default or Samsung's
EdgeLightingService. This verifies packaged source, not runtime rendering.
"""
from __future__ import annotations

import argparse
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import zipfile


ROOT = Path(__file__).resolve().parents[5]
APKTOOL = ROOT / "out/tools/bin/apktool.jar"
OBSERVER = ("com/android/systemui/statusbar/notification/interruption/"
            "NotificationInterruptStateProviderImpl$1")
EDGE_SERVICE = "com/android/systemui/edgelighting/EdgeLightingService"


def _disassemble(apk: Path) -> dict[str, str]:
    if not apk.is_file() or apk.stat().st_size == 0:
        raise ValueError(f"rebuilt SystemUI APK missing: {apk}")
    if not APKTOOL.is_file():
        raise ValueError("missing Apktool/baksmali tool")
    with zipfile.ZipFile(apk) as bundle:
        if bundle.testzip() is not None:
            raise ValueError("corrupt rebuilt SystemUI APK")
        names = bundle.namelist()
        if not {"META-INF/CERT.SF", "META-INF/CERT.RSA"}.issubset(set(names)):
            raise ValueError("rebuilt SystemUI APK lacks SignApk signature files")
        dex_entries = [(name, bundle.read(name)) for name in names
                       if re.fullmatch(r"classes\d*\.dex", name)]
        if not dex_entries:
            raise ValueError("rebuilt SystemUI has no DEX")
    result: dict[str, str] = {}
    with tempfile.TemporaryDirectory(prefix="brief-systemui-dex-") as temporary:
        for index, (_, dex) in enumerate(dex_entries):
            source = Path(temporary) / f"classes-{index}.dex"
            destination = Path(temporary) / f"decoded-{index}"
            source.write_bytes(dex)
            cmd = ["java", "-cp", str(APKTOOL),
                   "com.android.tools.smali.baksmali.Main", "disassemble",
                   "--jobs", "1", "--classes",
                   f"L{OBSERVER};,L{EDGE_SERVICE};", "--output",
                   str(destination), str(source)]
            try:
                run = subprocess.run(cmd, capture_output=True, text=True,
                                     timeout=45, check=False)
            except (OSError, subprocess.TimeoutExpired) as exc:
                raise ValueError(f"SystemUI DEX inspection failed: {exc}") from exc
            if run.returncode:
                raise ValueError("cannot decode rebuilt SystemUI DEX: " + run.stderr[-600:])
            for cls in (OBSERVER, EDGE_SERVICE):
                decoded = destination / f"{cls}.smali"
                if decoded.is_file():
                    result[cls] = decoded.read_text(encoding="utf-8")
            if len(result) == 2:
                break
    if len(result) != 2:
        raise ValueError("SystemUI is missing compiled Brief observer or EdgeLightingService")
    return result


def verify(work_dir: Path) -> None:
    apk = work_dir / "system/system/system_ext/priv-app/SystemUI/SystemUI.apk"
    classes = _disassemble(apk)
    observer = classes[OBSERVER]
    method = re.search(r"(?ms)^\.method public final onChange\(Z\)V\n(.*?)^\.end method", observer)
    if not method:
        raise ValueError("compiled heads-up ContentObserver.onChange missing")
    body = method.group(1)
    default_enabled = re.search(
        r'(?s)const-string\s+(v\d+),\s+"heads_up_notifications_enabled"'
        r'\s+const/4\s+(v\d+),\s+0x0'
        r'\s+const/4\s+(v\d+),\s+0x1'
        r'\s+invoke-interface\s+\{p1,\s*\1,\s*\3\},\s*'
        r'Lcom/android/systemui/util/settings/SettingsProxy;->getInt\(Ljava/lang/String;I\)I',
        body)
    if not default_enabled:
        raise ValueError("rebuilt SystemUI lost unset-key heads-up fallback")
    if ("if-eqz p1" not in body or
            f"iput-boolean {default_enabled.group(2)}, " not in body):
        raise ValueError("rebuilt SystemUI no longer preserves explicit heads-up opt-out")
    edge = classes[EDGE_SERVICE]
    if not all(needle in edge for needle in (
            "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION",
            "checkEdgeLightingAvailable()Ljava/lang/String;",
            "mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;")):
        raise ValueError("rebuilt SystemUI Edge Lighting service unexpectedly changed")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--work-dir", required=True, type=Path)
    options = parser.parse_args()
    try:
        verify(options.work_dir)
    except (ValueError, OSError, zipfile.BadZipFile) as exc:
        print("FAIL Exynos9810 rebuilt Brief/Edge Lighting: " + str(exc), file=sys.stderr)
        raise SystemExit(1) from exc
    print("PASS actual rebuilt SystemUI Brief observer, opt-out and Edge Lighting service")


if __name__ == "__main__":
    main()
