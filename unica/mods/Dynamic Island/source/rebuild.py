from pathlib import Path
import re,shutil,subprocess,zipfile,json
R=Path(__file__).resolve().parent
import argparse
parser=argparse.ArgumentParser(description="Rebuild the source-matched built-in companion APK")
parser.add_argument('--repo',type=Path,default=R.parents[3])
parser.add_argument('--android-jar',type=Path,required=True)
parser.add_argument('--build-tools',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--update-payload',action='store_true')
args=parser.parse_args()
REPO=args.repo.resolve()
TOOLS=args.build_tools.resolve()
ANDROID=args.android_jar.resolve()
B=args.output.resolve();B.mkdir(parents=True,exist_ok=True)
UP=R/'upstream'
def run(*args):subprocess.run([str(a) for a in args],check=True,cwd=R)
ic=R/'java/dev/android/dynamicisland/island/IslandController.java'
ict=ic.read_text()
if 'io.mesalabs.unica.dynamicisland' not in ict:
 ict=ict.replace('if (!ModuleSettings.PACKAGE.equals(getSentFromPackage())) {','String sender = getSentFromPackage();\n                    if (!ModuleSettings.PACKAGE.equals(sender) && !"io.mesalabs.unica.dynamicisland".equals(sender)) {')
 ic.write_text(ict)
sa=R/'java/dev/android/dynamicisland/settings/SettingsActivity.java'
sat=sa.read_text()
if 'SystemUiRestarter.restart(this)' not in sat:
 sat=sat.replace('SystemUiRestarter.restart()','SystemUiRestarter.restart(this)')
 sa.write_text(sat)
manifest=(UP/'app/src/main/AndroidManifest.xml').read_text()
manifest=manifest.replace('<manifest xmlns:android="http://schemas.android.com/apk/res/android">','<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="io.mesalabs.unica.dynamicisland" android:versionCode="2" android:versionName="0.1.10-unica-native1">\n<uses-sdk android:minSdkVersion="36" android:targetSdkVersion="36"/>')
manifest=re.sub(r'\s*<provider\s+android:name=".settings.SettingsProvider"[^>]+/>','',manifest)
manifest=manifest.replace('<application','<application android:forceQueryable="true"',1)
manifest=manifest.replace('android:name=".settings.SettingsActivity"','android:name="dev.android.dynamicisland.settings.SettingsActivity"')
manifest=re.sub(r'\s*<intent-filter>\s*<action android:name="android.intent.action.MAIN" />\s*<category android:name="android.intent.category.LAUNCHER" />\s*</intent-filter>','',manifest)
manifest=re.sub(r'\s*<meta-data\s+android:name="xposed[^>]+/>','',manifest)
manifest=manifest.replace('</application>','<provider android:name="dev.android.dynamicisland.settings.NativeSettingsProvider" android:authorities="io.mesalabs.unica.dynamicisland.settings" android:exported="true" /></application>')
(B/'AndroidManifest.xml').write_text(manifest)
generated=B/'generated';generated.mkdir(exist_ok=True)
native_res=B/'native-res'
shutil.rmtree(native_res,ignore_errors=True)
shutil.copytree(UP/'app/src/main/res',native_res)
strings=native_res/'values/strings.xml'
st=strings.read_text()
for key,value in {
 'settings_hint':'Built into UN1CA. Enable or disable Dynamic Island in UI settings. Changes apply within a few seconds.',
 'restart_systemui_failed':'Could not restart System UI. Try again or restart the phone.',
 'status_waiting_detail':'Enable Dynamic Island in UN1CA UI settings.',
}.items():
 st=re.sub(r'(<string name="'+key+r'">).*?(</string>)',lambda m:m.group(1)+value+m.group(2),st)
strings.write_text(st)
run(TOOLS/'aapt2','compile','--dir',native_res,'-o',B/'resources.zip')
run(TOOLS/'aapt2','link','-o',B/'resources.apk','--manifest',B/'AndroidManifest.xml','-I',ANDROID,'--java',generated,'--custom-package','dev.android.dynamicisland','--auto-add-overlay',B/'resources.zip')
sources=list((R/'java').rglob('*.java'))+list(generated.rglob('*.java'))
classes=B/'classes';shutil.rmtree(classes,ignore_errors=True);classes.mkdir(exist_ok=True)
(B/'sources.txt').write_text('\n'.join(json.dumps(str(p)) for p in sources))
run('javac','-source','17','-target','17','-classpath',ANDROID,'-d',classes,'@'+str(B/'sources.txt'))
run('jar','cf',B/'classes.jar','-C',classes,'.')
dex=B/'dex';shutil.rmtree(dex,ignore_errors=True);dex.mkdir(exist_ok=True)
run(TOOLS/'d8','--release','--min-api','34','--lib',ANDROID,'--output',dex,B/'classes.jar')
with zipfile.ZipFile(B/'resources.apk') as resources,zipfile.ZipFile(B/'native-unsigned.apk','w',zipfile.ZIP_DEFLATED) as out:
 for info in resources.infolist():
  data=resources.read(info.filename)
  zi=zipfile.ZipInfo(info.filename)
  zi.compress_type=zipfile.ZIP_STORED if info.filename=='resources.arsc' else zipfile.ZIP_DEFLATED
  out.writestr(zi,data)
 for p in dex.glob('*.dex'):out.write(p,p.name)
 for p in (UP/'app/src/main/assets').rglob('*'):
  if p.is_file() and p.name!='xposed_init':out.write(p,'assets/'+str(p.relative_to(UP/'app/src/main/assets')))
 for p in (UP/'app/src/main/resources').rglob('*'):
  if p.is_file():out.write(p,str(p.relative_to(UP/'app/src/main/resources')))
run(REPO/'out/tools/bin/zipalign','-p','-f','4',B/'native-unsigned.apk',B/'native-aligned.apk')
run(REPO/'out/tools/bin/signapk',REPO/'security/aosp_platform.x509.pem',REPO/'security/aosp_platform.pk8',B/'native-aligned.apk',B/'UnicaDynamicIsland.apk')
print('BUILT',B/'UnicaDynamicIsland.apk')

if args.update_payload:
 import hashlib
 module=R.parent
 shutil.copy2(B/'UnicaDynamicIsland.apk',module/'payload/UnicaDynamicIsland.apk')
 digest=hashlib.sha256((module/'payload/UnicaDynamicIsland.apk').read_bytes()).hexdigest()
 (module/'SHA256SUMS').write_text(digest+'  payload/UnicaDynamicIsland.apk\n')
 import verify_source
 verify_source.record()
 print('Updated module payload and source fingerprint')
