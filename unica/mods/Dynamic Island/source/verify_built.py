#!/usr/bin/env python3
from pathlib import Path
import argparse,zipfile,sys,re,struct,importlib.util
HERE=Path(__file__).resolve().parent
REPO=HERE.parents[3]
sys.path.insert(0,str(REPO/'scripts/internal/FaceunlockFix'))
from verify_framework_classes import jar_classes

def dex_bytes(apk):
    with zipfile.ZipFile(apk) as z:
        assert z.testzip() is None,apk
        result=[]
        for n in z.namelist():
            if not re.fullmatch(r'classes\d*\.dex',n):continue
            d=z.read(n)
            if d[:8] not in (b'dex\n039\0',b'dex\n040\0') or struct.unpack_from('<I',d,36)[0]!=112:
                raise RuntimeError(f'Incompatible DEX header: {apk}:{n}')
            result.append(d)
        if not result:raise RuntimeError(f'No DEX in {apk}')
        return b''.join(result)

def verify(work_dir,cert):
    system=work_dir/'system/system'
    ui=system/'system_ext/priv-app/SystemUI/SystemUI.apk'
    settings=system/'priv-app/SecSettings/SecSettings.apk'
    native=system/'app/UnicaDynamicIsland/UnicaDynamicIsland.apk'
    for apk,baseline in ((ui,'baseline-systemui-classes.txt'),(settings,'baseline-settings-classes.txt')):
        classes=jar_classes(apk,False)
        missing=set((HERE/baseline).read_text().splitlines())-classes
        if missing:raise RuntimeError(f'{apk} lost original classes: {sorted(missing)[:10]}')
        dex_bytes(apk)
    uidex=dex_bytes(ui)
    for token in set(re.findall(rb'unica_di_[0-9a-f]{16}',(HERE/'patches/system_ext/priv-app/SystemUI/SystemUI.apk/0001-built-in-dynamic-island.patch').read_bytes())):
        if token not in uidex:raise RuntimeError('Missing compiled callsite '+token.decode())
    if 'Lio/mesalabs/unica/settings/ui/DynamicIslandPreferenceController;' not in jar_classes(settings,False):
        raise RuntimeError('Missing Settings controller')
    with zipfile.ZipFile(settings) as z:
        xml=[z.read(n) for n in z.namelist() if n.endswith('.xml')]
        di=[x for x in xml if b'unica_dynamic_island_enabled' in x]
        if len(di)!=1 or b'LiveBlurPreferenceController' not in di[0]:raise RuntimeError('Dynamic Island must occur only in UN1CA UI settings')
        if any(b'unica_bixby_action' in x and b'unica_dynamic_island_enabled' in x for x in xml):raise RuntimeError('Duplicate Extra settings entry')
    dex_bytes(native)
    with zipfile.ZipFile(HERE.parent/'payload/UnicaDynamicIsland.apk') as expected,zipfile.ZipFile(native) as actual:
        expected_names={n for n in expected.namelist() if not n.startswith('META-INF/')}
        actual_names={n for n in actual.namelist() if not n.startswith('META-INF/')}
        if expected_names!=actual_names:raise RuntimeError('Unexpected native APK entries')
        for n in expected.namelist():
            if n.startswith('META-INF/'):continue
            if actual.read(n)!=expected.read(n):raise RuntimeError('Native payload changed: '+n)
    path=REPO/'unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/verify_note9_rebuilt_artifacts.py'
    spec=importlib.util.spec_from_file_location('di_signature_verifier',path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    module.verify_platform_signatures((ui,settings,native),cert)
    print('PASS built-in Dynamic Island 0.1.10: preserved original classes, compiled hooks, UI settings, exact native payload and platform signatures')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--work-dir',type=Path,required=True);p.add_argument('--platform-cert',type=Path,required=True)
    a=p.parse_args();verify(a.work_dir,a.platform_cert)
