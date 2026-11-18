from pathlib import Path
import shutil,subprocess,os,zipfile,sys
import tempfile
r=Path(__file__).resolve().parents[3];proof=Path(tempfile.mkdtemp(prefix='fresh-release-proof-',dir=r/'out'))
for rel in ['scripts/internal/FaceunlockFix','unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix']:
 shutil.copytree(r/rel,proof/rel,ignore=shutil.ignore_patterns('__pycache__'))
# A clean source-tree copy: no audit backups/compiler jars/donor APK cache.
w=r/'out/target/star2lte/work_dir';src=r/'out/target/star2lte/apktool/system/framework/services.jar/smali/com/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter.smali'
for target in ['starlte','star2lte','crownlte']:
 tw=proof/'out/target'/target/'work_dir';(tw/'system/system/framework').mkdir(parents=True);(tw/'configs').mkdir();(tw/'system/system/build.prop').write_text('ro.un1ca.faceunlockfix.builtin=1\n')
 shutil.copytree(w/'system/system/system_ext/etc/selinux',tw/'system/system/system_ext/etc/selinux')
 for rel in ['vendor/etc/init/init.samsungexynos9810.rc','vendor/etc/init/hw/init.samsungexynos9810.rc']:
  donor=r/'unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port'/rel;dest=tw/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(donor,dest)
 for name in ['fs_config-system','file_context-system']:shutil.copy2(w/'configs'/name,tw/'configs'/name)
 dest=proof/'out/target'/target/'apktool/system/framework/services.jar/smali/com/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter.smali';dest.parent.mkdir(parents=True);shutil.copy2(src,dest)
 jar=tw/'system/system/framework/services.jar'
 with zipfile.ZipFile(w/'system/system/framework/services.jar') as old,zipfile.ZipFile(jar,'w') as new:
  for item in old.infolist():
   if item.filename!='classes3.dex':new.writestr(item,old.read(item.filename))
 before=jar.read_bytes()
 env=os.environ.copy();env['EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD']='true';env['EXYNOS9810_FACEUNLOCKFIX_BUILTIN']='true'
 log=proof/f'{target}.log'
 with log.open('w') as out:
  for mode in ['--prepare','--apply']:
   subprocess.run([sys.executable,str(proof/'scripts/internal/FaceunlockFix/stage_verified_rom.py'),mode,'--target',target],cwd=proof,env=env,stdout=out,stderr=subprocess.STDOUT,check=True)
 with zipfile.ZipFile(jar) as final,zipfile.ZipFile(w/'system/system/framework/services.jar') as original:
  for name in ['classes.dex','classes2.dex']:assert final.read(name)==original.read(name)
  assert b'native-remove-all-verified-20261014' in final.read('classes3.dex')
 print('PASS clean-source release staging, original core DEX preserved:',target)
