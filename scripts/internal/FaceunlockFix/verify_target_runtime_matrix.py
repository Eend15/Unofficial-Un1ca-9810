from pathlib import Path
import sys,shutil,contextlib
r=Path(__file__).resolve().parents[3];sys.path.insert(0,str(Path(__file__).resolve().parent));import stage_runtime as m
base=r/'out/target/star2lte/face-audit/runtime-matrix';base.mkdir(exist_ok=True)
# All three targets use this same One UI 8 system_ext policy. Fixtures keep
# source-only checks separate from real build workdirs and the live device.
common=r/'out/target/star2lte/work_dir/system/system/system_ext/etc/selinux'
for target in ['starlte','star2lte','crownlte']:
 fixture=base/'fixtures'/target;policy=fixture/'system/system/system_ext/etc/selinux';policy.mkdir(parents=True,exist_ok=True)
 for name in ['system_ext_file_contexts','system_ext_service_contexts','system_ext_sepolicy.cil']:shutil.copy2(common/name,policy/name)
 for rel in m.VENDOR_RC_FILES:
  src=r/'unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port'/rel;dst=fixture/rel;dst.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src,dst)
 m.WORK=fixture;m.OUTPUT=base/'staged'/target
 with (base/f'{target}.log').open('w') as f,contextlib.redirect_stdout(f):m.stage()
 print(f'PASS {target}: common policy, verified native runtime, isolated staging; physical unlock untested except S9+')
