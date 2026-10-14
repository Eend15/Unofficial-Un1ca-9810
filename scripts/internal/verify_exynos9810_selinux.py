"""Compile the staged split SELinux policy before packaging an Exynos9810 ROM."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

work = Path(sys.argv[1])
compiler = shutil.which("secilc")
if not compiler:
    raise SystemExit("Exynos9810 policy check requires secilc (Ubuntu: apt install secilc)")
platform = work / "system/system/etc/selinux"
vendor = work / "vendor/etc/selinux"
version = (vendor / "plat_sepolicy_vers.txt").read_text().strip()
files = [platform / "plat_sepolicy.cil", platform / f"mapping/{version}.cil"]
compat = platform / f"mapping/{version}.compat.cil"
if compat.exists():
    files.append(compat)
for directory, prefix in ((work / "system/system/system_ext/etc/selinux", "system_ext"),
                          (work / "system/product/etc/selinux", "product")):
    for rel in (prefix + "_sepolicy.cil", f"mapping/{version}.cil", f"mapping/{version}.compat.cil"):
        if (directory / rel).exists():
            files.append(directory / rel)
files.extend((vendor / "plat_pub_versioned.cil", vendor / "vendor_sepolicy.cil"))
odm = work / "odm/etc/selinux/odm_sepolicy.cil"
if odm.exists():
    files.append(odm)
for path in files:
    if not path.is_file():
        raise SystemExit(f"Missing SELinux input: {path}")
with tempfile.TemporaryDirectory(prefix="exynos9810-policy-") as tmp:
    subprocess.run([compiler, "-m", "-M", "true", "-G", "-N", "-c", "30",
                    *map(str, files), "-o", str(Path(tmp) / "policy"),
                    "-f", str(Path(tmp) / "file_contexts")], check=True)
print("PASS Exynos9810 staged SELinux policy compilation")
