#!/usr/bin/env python3
"""Read-only ELF dependency/symbol audit for the Noble 2C face stack.

This checks whether direct ELF dependencies can resolve imported symbols
against the assembled Android 16 system plus the staged Noble components.
It cannot prove that an old Binder C++ ABI is behaviorally compatible, nor
can it substitute for Android linker-namespace or SELinux checks.
"""

from __future__ import annotations

import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
NOBLE = ROOT / "out/target/star2lte/face-audit/noble2c_face/system"
WORK = ROOT / "out/target/star2lte/work_dir"

MODULES = (
    NOBLE / "bin/faced",
    NOBLE / "lib64/hw/face.default.so",
    NOBLE / "lib64/libFaceService.so",
    NOBLE / "lib64/libsecfr_engine.so",
)

SEARCH_PATHS = (
    NOBLE / "lib64",
    NOBLE / "lib64/hw",
    WORK / "system/system/lib64",
    WORK / "system/system/lib64/hw",
    WORK / "system_ext/lib64",
    WORK / "product/lib64",
    WORK / "vendor/lib64",
    WORK / "vendor/lib64/hw",
    WORK / "odm/lib64",
)


BOOTSTRAP = WORK / "system/system/lib64/bootstrap"

def readelf(path: Path, *args: str) -> str:
    proc = subprocess.run(
        ("readelf", "-W", *args, str(path)),
        check=True,
        capture_output=True,
        text=True,
    )
    return proc.stdout


def needed(path: Path) -> list[str]:
    return re.findall(r"Shared library: \[(.+?)\]", readelf(path, "-d"))


def symbols(path: Path) -> tuple[set[str], set[str]]:
    defined: set[str] = set()
    required: set[str] = set()
    for line in readelf(path, "--dyn-syms").splitlines():
        parts = line.split()
        if len(parts) < 8 or not parts[0].rstrip(":").isdigit():
            continue
        # AArch64 Bionic IFUNCs are printed as "<OS specific>: 10";
        # this splits the ELF type into three fields, unlike FUNC.
        # Some GNU symbol-version entries additionally end with "(2)".
        name = parts[-2] if re.fullmatch(r"\(\d+\)", parts[-1]) else parts[-1]
        name = name.split("@", 1)[0]
        if not name:
            continue
        if "UND" in parts and "WEAK" not in parts:
            required.add(name)
        elif "UND" not in parts:
            defined.add(name)
    return defined, required


def library(name: str) -> Path | None:
    for directory in SEARCH_PATHS:
        path = directory / name
        if path.is_file():
            return path
        if path.is_symlink() and path.readlink().is_absolute():
            # Staged APEX absolute symlinks are broken on WSL; use Bionic's
            # staged bootstrap variant for a conservative symbol inventory.
            fallback = BOOTSTRAP / name
            if fallback.is_file():
                return fallback
    return None


def audit_module(path: Path) -> int:
    exports, imports = symbols(path)
    dependencies = needed(path)
    available = set(exports)
    absent: list[str] = []
    for name in dependencies:
        lib_path = library(name)
        if lib_path is None:
            absent.append(name)
        else:
            lib_exports, _ = symbols(lib_path)
            available.update(lib_exports)
    unresolved = sorted(imports - available)
    print(f"\n{path.relative_to(ROOT)}")
    print(f"  Needed: {', '.join(dependencies)}")
    if absent:
        print(f"  MISSING DIRECT LIBRARIES: {', '.join(absent)}")
    print(f"  Unresolved *direct-dependency* symbols: {len(unresolved)}")
    for name in unresolved[:18]:
        print(f"    {name}")
    if len(unresolved) > 18:
        print(f"    (+{len(unresolved) - 18} more)")
    return int(bool(absent or unresolved))


def main() -> int:
    failures = 0
    for path in MODULES:
        if not path.is_file():
            print(f"Missing staged file: {path}")
            failures += 1
        else:
            failures += audit_module(path)
    print("\nNote: this is a conservative diagnostic, not a runnability guarantee.")
    return int(bool(failures))


if __name__ == "__main__":
    raise SystemExit(main())
