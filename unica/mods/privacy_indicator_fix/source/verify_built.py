#!/usr/bin/env python3
import argparse,subprocess,tempfile,zipfile
from pathlib import Path
from patch_stop import METHOD,REL
ROOT=Path(__file__).resolve().parents[4]
def verify(apk):
    with tempfile.TemporaryDirectory(prefix='privacy-stop-verify-') as d:
        root=Path(d)
        with zipfile.ZipFile(apk) as z:
            for name in z.namelist():
                if name.startswith('classes') and name.endswith('.dex'):
                    data=z.read(name)
                    if b'Lcom/android/systemui/appops/AppOpsControllerImpl;' not in data:continue
                    dex=root/name;dex.write_bytes(data)
                    subprocess.run(['java','-cp',str(ROOT/'out/tools/bin/apktool.jar'),'com.android.tools.smali.baksmali.Main','disassemble','--sequential-labels','--api','34','--classes','Lcom/android/systemui/appops/AppOpsControllerImpl;',str(dex),'-o',str(root/'smali')],check=True)
                    p=root/'smali'/REL
                    if not p.is_file():continue
                    body=p.read_text().split(METHOD,1)[1].split('.end method',1)[0]
                    required='iget-object v6, p5, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;'
                    assert body.count(required)==1,'Missing/duplicate tracked attribution capture'
                    assert body.index('if-nez p6, :cond_8')<body.index(required)<body.index('->remove(Ljava/lang/Object;)Z'),'Attribution capture is outside inactive removal path'
                    print('PASS rebuilt SystemUI privacy stop attribution');return
        raise RuntimeError('AppOps callback class missing')
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('apk',type=Path);a=p.parse_args();verify(a.apk)
