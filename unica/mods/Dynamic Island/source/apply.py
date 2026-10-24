#!/usr/bin/env python3
"""Apply audited source patches without replacing unrelated ROM code."""
from pathlib import Path
import argparse,subprocess,shutil,xml.etree.ElementTree as ET
HERE=Path(__file__).resolve().parent
TARGETS=('starlte','star2lte','crownlte')
ANDROID='http://schemas.android.com/apk/res/android'
SETTINGS='http://schemas.android.com/apk/res-auto'
ET.register_namespace('android',ANDROID);ET.register_namespace('settings',SETTINGS)
KEYS={'unica_dynamic_island_enabled','unica_dynamic_island_settings','unica_dynamic_island_category'}
PATCH=HERE/'patches/system_ext/priv-app/SystemUI/SystemUI.apk/0001-built-in-dynamic-island.patch'

def settings_xml(text,include):
    root=ET.fromstring(text)
    for parent in root.iter():
        for child in list(parent):
            if child.get('{'+ANDROID+'}key') in KEYS:parent.remove(child)
    if include:
        ET.SubElement(root,'com.samsung.android.settings.widget.SecInsetCategoryPreference',{'{'+ANDROID+'}key':'unica_dynamic_island_category'})
        ET.SubElement(root,'SecSwitchPreference',{
            '{'+ANDROID+'}title':'Dynamic Island',
            '{'+ANDROID+'}summary':'Show Dynamic Island instead of the status bar capsule',
            '{'+ANDROID+'}key':'unica_dynamic_island_enabled',
            '{'+SETTINGS+'}controller':'io.mesalabs.unica.settings.ui.DynamicIslandPreferenceController'})
        pref=ET.SubElement(root,'Preference',{'{'+ANDROID+'}title':'Dynamic Island settings','{'+ANDROID+'}key':'unica_dynamic_island_settings'})
        ET.SubElement(pref,'intent',{'{'+ANDROID+'}action':'android.intent.action.MAIN','{'+ANDROID+'}targetPackage':'io.mesalabs.unica.dynamicisland','{'+ANDROID+'}targetClass':'dev.android.dynamicisland.settings.SettingsActivity'})
    ET.indent(root,space='    ')
    return '<?xml version="1.0" encoding="utf-8"?>\n'+ET.tostring(root,encoding='unicode')+'\n'

def git_apply(tree,*flags):
    return subprocess.run(['git','apply','--directory='+str(tree.resolve()),'--unsafe-paths',*flags,str(PATCH)],cwd=HERE.parents[3],capture_output=True,text=True)

def apply(apktool,target):
    if target not in TARGETS:raise ValueError('Unsupported target '+target)
    systemui=apktool/'system_ext/priv-app/SystemUI/SystemUI.apk'
    settings=apktool/'system/priv-app/SecSettings/SecSettings.apk'
    if not systemui.is_dir() or not settings.is_dir():raise RuntimeError('Decode both target APKs before applying')
    xmls={settings/'res/xml/unica_extra_settings.xml':False,settings/'res/xml/unica_ui_settings.xml':True}
    prepared={p:settings_xml(p.read_text(),include) for p,include in xmls.items()}
    controller_rel=Path('io/mesalabs/unica/settings/ui/DynamicIslandPreferenceController.smali')
    controller=(HERE/'settings-smali'/controller_rel).read_bytes()
    existing=list(settings.glob('smali*/'+str(controller_rel)))
    if len(existing)>1 or (existing and existing[0].read_bytes()!=controller):
        raise RuntimeError('Refusing an unknown/duplicate Dynamic Island Settings controller')
    check=git_apply(systemui,'--check')
    already=False
    if check.returncode:
        reverse=git_apply(systemui,'--reverse','--check')
        if reverse.returncode:raise RuntimeError('Incompatible SystemUI; no changes applied:\n'+check.stderr)
        already=True
    if not already:
        result=git_apply(systemui)
        if result.returncode:raise RuntimeError(result.stderr)
    for p,text in prepared.items():p.write_text(text)
    dest=existing[0] if existing else settings/'smali_classes5'/controller_rel
    dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(controller)
    print('PASS Dynamic Island source integration:',target,'already applied' if already else 'patched')

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apktool-dir',type=Path,required=True)
    parser.add_argument('--target',choices=TARGETS,required=True)
    args=parser.parse_args();apply(args.apktool_dir,args.target)
