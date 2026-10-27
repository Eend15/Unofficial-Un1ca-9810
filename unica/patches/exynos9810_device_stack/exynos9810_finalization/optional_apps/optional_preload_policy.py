#!/usr/bin/env python3
"""Remove optional-app preload requests without disabling account or Store services."""
from pathlib import Path
import argparse,os,re

TARGETS=('starlte','star2lte','crownlte')
SMART_APPS={'smartswitch','smartswitchmobile','smartswitchagent','smartswitchassistant',
            'smartswitchstub','easymover','easymoveragent'}
PACKAGE_RE=re.compile(r'\b(?:com\.sec\.android\.easymover(?:\.agent)?|com\.samsung\.android\.smartswitchassistant|com\.samsung\.android\.scloud)\b',re.I)
NAME_RE=re.compile(r'\b(?:smartswitch(?:mobile|agent|assistant|stub)?|easymover(?:agent)?|samsungcloud(?:client)?|scloud|kidshome)\b',re.I)
CATALOG_DIRS=('system/system/etc','system/product/etc','system/system/product/etc','product/etc','vendor/etc')

def catalogs(work):
    for directory in CATALOG_DIRS:
        for name in ('removable_preload.txt','userdata_apks_count_list.txt'):
            p=work/directory/name
            if p.is_symlink():raise ValueError('Unexpected preload catalog symlink: '+str(p))
            if p.is_file():yield p

def optional(text):
    return bool(PACKAGE_RE.search(text) or NAME_RE.search(text))

def filter_catalog(text):
    # Match complete INI sections, including CRLF and localized/renamed labels.
    parts=re.split(r'(?m)(?=^\[[^\]\r\n]+\][ \t]*\r?$)',text)
    def selected(part):
        if not part.startswith('['):return False
        label=part.split(']',1)[0][1:]
        names=re.findall(r'(?im)^\s*(?:name|package)\s*=\s*[\'\"]?([^\'\"\r\n]+)',part)
        return bool(NAME_RE.search(label) or any(PACKAGE_RE.search(name) for name in names))
    return ''.join(part for part in parts if not selected(part))

def verify(work,target):
    if target not in TARGETS:raise ValueError('Unsupported optional preload target')
    work=Path(work)
    for path in catalogs(work):
        text=path.read_text()
        forbidden=filter_catalog(text)!=text if path.name=='removable_preload.txt' else optional(text)
        if forbidden:
            raise ValueError('Optional Smart Switch/Cloud/Kids automatic-install request remains: '+str(path))
    for root in (work/'system',work/'product'):
        if not root.exists():continue
        for parent,dirs,files in os.walk(root,followlinks=False):
            if any(name.lower() in SMART_APPS for name in dirs):
                raise ValueError('Smart Switch preload/installer directory remains: '+parent)
            for name in files:
                if name.lower().endswith('.apk') and name[:-4].lower() in SMART_APPS:
                    raise ValueError('Smart Switch installer APK remains: '+str(Path(parent)/name))
    return True

def apply(work,target):
    if target not in TARGETS:raise ValueError('Unsupported optional preload target')
    work=Path(work);paths=list(catalogs(work))
    for path in paths:
        text=path.read_text()
        if path.name=='removable_preload.txt':text=filter_catalog(text)
        else:text=''.join(line for line in text.splitlines(keepends=True) if not optional(line))
        path.write_text(text)

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--work-dir',type=Path,required=True)
    p.add_argument('--target',required=True);p.add_argument('--apply',action='store_true');a=p.parse_args()
    try:
        if a.apply:apply(a.work_dir,a.target)
        verify(a.work_dir,a.target)
        print('PASS '+a.target+': optional-app auto-preload requests absent')
    except (OSError,ValueError) as e:raise SystemExit(str(e))
