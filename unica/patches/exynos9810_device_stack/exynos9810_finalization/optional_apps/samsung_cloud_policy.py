#!/usr/bin/env python3
"""Verify Samsung Cloud is absent from the image but remains an optional install."""
from pathlib import Path
import argparse,os,xml.etree.ElementTree as ET

CLOUD='com.samsung.android.scloud'
SCPM='com.samsung.android.scpm'
UID='android.uid.samsungcloud'
ALLOWED_NAMES={'privapp-permissions-com.samsung.android.scloud.xml',
               'unica_exynos9810_scloud_components.xml'}

def verify(work, target):
    if target not in ('starlte','star2lte','crownlte'):
        raise ValueError('Unsupported Samsung Cloud policy target')
    work=Path(work);system=work/'system/system'
    for root in (work/'system',work/'product'):
        if not root.exists():continue
        for parent,dirs,files in os.walk(root,followlinks=False):
            for name in dirs:
                if name.lower() in ('samsungcloud','samsungcloudclient'):
                    raise ValueError('Samsung Cloud must not be preinstalled: '+str(Path(parent)/name))
            for name in files:
                lower=name.lower()
                if ('scloud' in lower and name not in ALLOWED_NAMES) or (lower.endswith('.apk') and lower.startswith('samsungcloud')):
                    raise ValueError('Samsung Cloud payload remains: '+str(Path(parent)/name))
    anchor=system/'priv-app/SCPMAgent/SCPMAgent.apk'
    if not anchor.is_file() or anchor.stat().st_size==0:
        raise ValueError('Samsung Cloud shared-UID anchor APK is missing')
    permission=system/'etc/permissions/privapp-permissions-com.samsung.android.scloud.xml'
    doc=ET.parse(permission).getroot()
    if not any(x.get('package')==CLOUD for x in doc.findall('privapp-permissions')):
        raise ValueError('Samsung Cloud permission metadata must remain')
    allowlist=ET.parse(system/'etc/sysconfig/package-shareduid-allowlist.xml').getroot()
    for package in (CLOUD,SCPM):
        matches=[x for x in allowlist.findall('allow-package-shareduid') if x.get('package')==package and x.get('shareduid')==UID]
        if len(matches)!=1:
            raise ValueError('Missing or duplicated Samsung shared-UID allowlist entry: '+package)
    for name in ('removable_preload.txt','userdata_apks_count_list.txt'):
        path=system/'etc'/name
        if path.exists():
            text=path.read_text().lower()
            if 'samsungcloud' in text or 'scloud' in text:
                raise ValueError('Samsung Cloud automatic preload trigger remains: '+name)
    # SCPM's scoped receiver override is allowed. Never disable the optional
    # Cloud package or its components through a system component override.
    for path in (system/'etc/sysconfig').glob('*.xml'):
        data=path.read_text()
        if CLOUD not in data:continue
        doc=ET.fromstring(data)
        for override in doc.iter('component-override'):
            if override.get('package')==CLOUD:
                if any(x.get('enabled')=='false' for x in override.iter('component')):
                    raise ValueError('Optional Samsung Cloud component is disabled: '+str(path))
    print('PASS '+target+': no Samsung Cloud preload; shared-UID install contract retained')

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--work-dir',required=True,type=Path);p.add_argument('--target',required=True)
    a=p.parse_args()
    try:verify(a.work_dir,a.target)
    except (OSError,ValueError,ET.ParseError) as e:raise SystemExit(str(e))
