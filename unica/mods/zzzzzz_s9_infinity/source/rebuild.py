#!/usr/bin/env python3
from pathlib import Path
import subprocess, shutil, tempfile
root=Path(__file__).resolve().parents[4]
module=Path(__file__).resolve().parents[1]
tools=root/'out/tools/bin'
keys=root/'external/android-tools/vendor/build/target/product/security'
def run(*args): subprocess.run([str(x) for x in args],check=True)
with tempfile.TemporaryDirectory(prefix='s9-infinity-') as tmp:
 tmp=Path(tmp)
 for app in ['SpriteWallpaper','AODService_v80']:
  apk=module/f'payload/system/priv-app/{app}/{app}.apk'
  decoded=tmp/app
  run('java','-jar',tools/'apktool.jar','d','-f',apk,'-o',decoded)
  if app=='SpriteWallpaper': shutil.copytree(module/'source/sprite-smali',decoded/'smali',dirs_exist_ok=True)
  else:
   dest=decoded/'smali/com/samsung/android/app/aodservice/plugin'
   for source in (module/'source/aod').glob('*.smali'): shutil.copy2(source,dest/source.name)
  run('java','-jar',tools/'apktool.jar','b',decoded,'-o',tmp/'unsigned.apk')
  run(tools/'zipalign','-f','-p','4',tmp/'unsigned.apk',tmp/'aligned.apk')
  run('java','-jar',tools/'signapk.jar',keys/'platform.x509.pem',keys/'platform.pk8',tmp/'aligned.apk',apk)
 import zipfile, copy
 apk=module/'payload/system/priv-app/wallpaper-res/wallpaper-res.apk'
 with zipfile.ZipFile(apk) as source, zipfile.ZipFile(tmp/'catalog-unsigned.apk','w',allowZip64=True) as output:
  for entry in source.infolist():
   if entry.filename.startswith('META-INF/'): continue
   data=(module/'source/resources_info.json').read_bytes() if entry.filename=='res/raw/resources_info.json' else source.read(entry.filename)
   output.writestr(copy.copy(entry),data)
 run(tools/'zipalign','-f','-p','4',tmp/'catalog-unsigned.apk',tmp/'catalog-aligned.apk')
 run('java','-jar',tools/'signapk.jar',keys/'platform.x509.pem',keys/'platform.pk8',tmp/'catalog-aligned.apk',apk)
 run('java','-cp',tools/'apktool.jar','com.android.tools.smali.smali.Main','assemble',module/'source/aod-policy','-o',module/'payload/system/framework/S9AodWallpaperPolicy.dex')
 files=sorted(p for p in (module/'payload').rglob('*') if p.is_file())
 import hashlib
 (module/'SHA256SUMS').write_text(''.join(f'{hashlib.sha256(p.read_bytes()).hexdigest()}  {p.relative_to(module/"payload")}\n' for p in files))
