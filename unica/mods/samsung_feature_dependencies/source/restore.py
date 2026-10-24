from pathlib import Path
import argparse,shutil,xml.etree.ElementTree as ET
FILES=('priv-app/SamsungCloudClient/SamsungCloudClient.apk','app/StickerCenter/StickerCenter.apk','etc/permissions/privapp-permissions-com.samsung.android.scloud.xml')
OVERRIDE='etc/sysconfig/unica_exynos9810_scloud_components.xml'
def restore(donor,work):
    for rel in FILES:
        if not (donor/rel).is_file():raise ValueError('Missing configured Samsung donor dependency: '+rel)
    permission=ET.fromstring((donor/FILES[2]).read_text())
    assert permission.find("privapp-permissions[@package='com.samsung.android.scloud']/permission[@name='android.permission.MANAGE_USERS']") is not None,'Cloud donor must declare its original MANAGE_USERS allowlist'
    system=work/'system/system'
    for rel in FILES:
        dst=system/rel;dst.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(donor/rel,dst);dst.chmod(0o644)
        assert dst.read_bytes()==(donor/rel).read_bytes()
    p=system/OVERRIDE
    root=ET.fromstring(p.read_text()) if p.exists() else ET.Element('config')
    for override in list(root):
        if override.tag=='component-override' and override.get('package')=='com.samsung.android.scpm':
            for component in list(override):
                if component.get('class')=='.app.ScpmReceiver':override.remove(component)
            if len(override)==0:root.remove(override)
    p.parent.mkdir(parents=True,exist_ok=True);ET.indent(root,space='    ');ET.ElementTree(root).write(p,encoding='utf-8',xml_declaration=True);p.chmod(0o644)
    print('PASS original Cloud shared-UID entitlement and StickerCenter restored without re-signing')
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--donor',type=Path,required=True);p.add_argument('--work-dir',type=Path,required=True);a=p.parse_args();restore(a.donor,a.work_dir)
