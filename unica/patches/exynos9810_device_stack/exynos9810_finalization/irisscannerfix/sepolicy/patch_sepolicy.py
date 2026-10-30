#!/usr/bin/env python3
"""Add the SELinux pieces the Android 10 iris stack needs on One UI 8 (system_ext).

* mapping/33.0.cil: the vendor (Android 13 API) policy still names the iris service
  types; map them onto the system_ext types so irisd and SecIrisService can register.
* system_ext_sepolicy.cil:
  - irisd: libhidl lists /vendor/lib64/hw to find the passthrough gralloc mapper.
  - init: irisd.rc raises the cpufreq floor while the iris camera runs.
Usage: patch_sepolicy.py <system_ext/etc/selinux dir>
"""
import sys
from pathlib import Path

MAPPING = """;; UN1CA irisscannerfix: map the vendor iris service types onto the system_ext ones
(expandtypeattribute (irisd_service_33_0) true)
(typeattributeset irisd_service_33_0 (irisd_service))
(expandtypeattribute (sec_iris_service_33_0) true)
(typeattributeset sec_iris_service_33_0 (sec_iris_service))
"""
RULES = """;; UN1CA irisscannerfix: libhidl lists /vendor/lib64/hw to find the passthrough gralloc mapper
(allow irisd vendor_file (dir (open read)))
;; UN1CA irisscannerfix: irisd.rc raises the cpufreq floor while the iris camera runs
(allow init sysfs_devices_system_cpu (file (write open)))
"""
# Types the additions rely on; all are defined by the One UI 8 system_ext policy.
REQUIRED = {
    "system_ext_sepolicy.cil": ["(type irisd)", "(type irisd_service)", "(type sec_iris_service)"],
}


def add(path: Path, block: str):
    text = path.read_text()
    if block in text:
        return False
    for line in block.splitlines():
        if line.startswith("(") and line in text:
            raise ValueError(f"{path.name}: partial iris rules already present: {line}")
    path.write_text(text + ("" if text.endswith("\n") else "\n") + block)
    return True


def main(selinux: Path):
    policy = selinux / "system_ext_sepolicy.cil"
    mapping = selinux / "mapping" / "33.0.cil"
    text = policy.read_text()
    missing = [t for t in REQUIRED["system_ext_sepolicy.cil"] if t not in text]
    if missing:
        raise ValueError(f"system_ext policy lacks {missing}")
    changed = add(mapping, MAPPING) | add(policy, RULES)
    print("irisscannerfix SELinux: " + ("rules added" if changed else "already present"))


if __name__ == "__main__":
    main(Path(sys.argv[1]))
