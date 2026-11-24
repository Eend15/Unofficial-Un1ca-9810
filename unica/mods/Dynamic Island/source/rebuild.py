from pathlib import Path
import re,shutil,subprocess,zipfile,json,xml.etree.ElementTree as ET
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
def android_text(source):
 text=source[1:-1] if len(source)>=2 and source.startswith('"') and source.endswith('"') else source
 out=[];i=0
 while i<len(text):
  c=text[i]
  if c=='\\' and i+1<len(text):
   i+=1;n=text[i]
   if n=='n':out.append('\n')
   elif n=='t':out.append('\t')
   elif n=='r':out.append('\r')
   elif n=='u' and i+4<len(text):
    out.append(chr(int(text[i+1:i+5],16)));i+=4
   else:out.append(n)
  else:out.append(c)
  i+=1
 return ''.join(out)
def properties_value(value):
 return value.replace('\\','\\\\').replace('\n','\\n').replace('\r','\\r').replace('\t','\\t').replace(' ','\\ ')
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
manifest=manifest.replace('<manifest xmlns:android="http://schemas.android.com/apk/res/android">','<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="io.mesalabs.unica.dynamicisland" android:versionCode="7" android:versionName="0.1.17-unica-native1">\n<uses-sdk android:minSdkVersion="36" android:targetSdkVersion="36"/>')
manifest=re.sub(r'\s*<provider\s+android:name=".settings.SettingsProvider"[^>]+/>','',manifest)
manifest=manifest.replace('<application','<application android:forceQueryable="true"',1)
manifest=manifest.replace('android:name=".settings.SettingsActivity"','android:name="dev.android.dynamicisland.settings.SettingsActivity"')
manifest=re.sub(r'\s*<intent-filter>\s*<action android:name="android.intent.action.MAIN" />\s*<category android:name="android.intent.category.LAUNCHER" />\s*</intent-filter>','',manifest)
manifest=re.sub(r'\s*<meta-data\s+android:name="xposed[^>]+/>','',manifest)
manifest=manifest.replace('</application>','<provider android:name="dev.android.dynamicisland.settings.NativeSettingsProvider" android:authorities="io.mesalabs.unica.dynamicisland.settings" android:exported="true" /></application>')
(B/'AndroidManifest.xml').write_text(manifest)
generated=B/'generated';shutil.rmtree(generated,ignore_errors=True);generated.mkdir(exist_ok=True)
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
# Match upstream generateLocalizationCatalog + generateEmbeddedResources.
catalog_dir=B/'catalog-resources';shutil.rmtree(catalog_dir,ignore_errors=True);catalog_dir.mkdir(parents=True,exist_ok=True)
ANDROID_NS='{http://schemas.android.com/apk/res/android}'
languages=[n.attrib[ANDROID_NS+'name'] for n in ET.parse(native_res/'xml/locales_config.xml').getroot().findall('locale')]
labels={}
for lang in languages:
 qualifier='values' if lang=='en' else 'values-'+re.sub(r'-([A-Z]{2})$',r'-r\1',lang)
 sfile=native_res/qualifier/'strings.xml'
 entries={}
 if sfile.exists():
  for node in ET.parse(sfile).getroot().findall('string'):
   k=node.attrib['name']
   if k.startswith('island_') or k.startswith('stage_label_'):
    entries[k]=android_text(''.join(node.itertext()))
 target=catalog_dir/'dev/android/dynamicisland/i18n'/(lang+'.properties')
 target.parent.mkdir(parents=True,exist_ok=True)
 target.write_text('\n'.join(f'{k}={properties_value(entries[k])}' for k in sorted(entries))+'\n',encoding='utf-8')
 for k,v in entries.items():
  if k.startswith('stage_label_'):
   ident=k[len('stage_label_'):]
   kind,stage=ident.rsplit('_',1)
   labels.setdefault(kind,{}).setdefault(lang,{})[stage]=v
(catalog_dir/'dev/android/dynamicisland/i18n/languages.properties').write_text('supported='+','.join(languages)+'\n',encoding='utf-8')
rules_trans=catalog_dir/'dev/android/dynamicisland/rules/builtin-translations.json'
rules_trans.parent.mkdir(parents=True,exist_ok=True)
rules_trans.write_text(json.dumps({'status_labels':labels},ensure_ascii=False,indent=4)+'\n',encoding='utf-8')
embedded_map={}
for p in catalog_dir.rglob('*'):
 if p.is_file() and p.suffix in ('.properties','.json'):
  embedded_map['/'+p.relative_to(catalog_dir).as_posix()]=p.read_text(encoding='utf-8')
for p in (UP/'app/src/main/resources/dev/android/dynamicisland/rules').glob('builtin-*.json'):
 embedded_map['/dev/android/dynamicisland/rules/'+p.name]=p.read_text(encoding='utf-8')
sorted_embedded=sorted(embedded_map.items())
emb_lines=[
 'package dev.android.dynamicisland.island;',
 '/** Generated runtime data for class-only module loaders; edit the original resources. */',
 'public final class EmbeddedResources {',
 '    private EmbeddedResources() {}',
 '    public static String get(String path) {',
 '        if (path == null) return null;',
 '        switch (path) {',
]
for idx,(path,_) in enumerate(sorted_embedded):
 emb_lines.append(f'            case {json.dumps(path)}: return data{idx}();')
emb_lines.extend([
 '            default: return null;',
 '        }',
 '    }',
])
for idx,(_,val) in enumerate(sorted_embedded):
 emb_lines.append(f'    private static String data{idx}() {{')
 emb_lines.append('        return new StringBuilder()')
 for off in range(0,len(val),4000):
  emb_lines.append(f'                .append({json.dumps(val[off:off+4000],ensure_ascii=False)})')
 emb_lines.append('                .toString();\n    }')
emb_lines.append('}\n')
emb_java=generated/'dev/android/dynamicisland/island/EmbeddedResources.java'
emb_java.parent.mkdir(parents=True,exist_ok=True)
emb_java.write_text('\n'.join(emb_lines),encoding='utf-8')
# Match upstream generateMaterialShader: compile exact AGSL resource into DEX.
shader=generated/'dev/android/dynamicisland/island/material/FrostedShaderSource.java'
shader.parent.mkdir(parents=True,exist_ok=True)
shader.write_text('package dev.android.dynamicisland.island.material;\nfinal class FrostedShaderSource {\n static final String CODE = '+json.dumps((UP/'app/src/main/resources/dev/android/dynamicisland/material/frosted.agsl').read_text())+';\n private FrostedShaderSource() {}\n}\n')
sources=list((R/'java').rglob('*.java'))+list(generated.rglob('*.java'))
classes=B/'classes';shutil.rmtree(classes,ignore_errors=True);classes.mkdir(exist_ok=True)
(B/'sources.txt').write_text('\n'.join(json.dumps(str(p)) for p in sources))
stubs=B/'compile-only-stubs';stubs.mkdir(exist_ok=True)
run('javac','-source','17','-target','17','-classpath',ANDROID,'-d',stubs,UP/'tools/framework-stubs/android/view/CompositionSamplingListener.java')
run('jar','cf',B/'compile-only-stubs.jar','-C',stubs,'.')
run('javac','-source','17','-target','17','-classpath',str(ANDROID)+':'+str(B/'compile-only-stubs.jar'),'-d',classes,'@'+str(B/'sources.txt'))
run('jar','cf',B/'classes.jar','-C',classes,'.')
dex=B/'dex';shutil.rmtree(dex,ignore_errors=True);dex.mkdir(exist_ok=True)
run(TOOLS/'d8','--release','--min-api','34','--lib',ANDROID,'--classpath',B/'compile-only-stubs.jar','--output',dex,B/'classes.jar')
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
 for p in catalog_dir.rglob('*'):
  if p.is_file():out.write(p,str(p.relative_to(catalog_dir)))
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
