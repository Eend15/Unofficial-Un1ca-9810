#!/usr/bin/env python3
"""Stage SmartCapture's app-local SPen engine with front-buffer rendering off.

Screen write bundles its own libSPenEngine.so; with FBR on the Exynos9810
display stack ink only appears on pen-up. Return false from the pinned JNI
FbrDrawPadGlue.isSupported so the SDK uses its existing normal drawing path,
the same fallback Notes uses (field-accepted 2026-10-27).
"""
from pathlib import Path
import argparse,hashlib,zipfile
APK_SHA='8f883b01ba86c42cfffd5a1f52b8ce99866bf64f7535d0dc05e4c4d313d35157'
ORIGINAL='5a7071c31d0df4f25f1668a9fe3d999dbbeeab2f89363adf0bee245fa7e263a2'
OFFSET=0x10e910 # _ZN4SPen14FbrDrawPadGlue11isSupportedEP7_JNIEnvP7_jclass; LOAD 0 maps file==VA
OLD=bytes.fromhex('fd7bbfa9fd030091')
NEW=bytes.fromhex('00008052c0035fd6') # mov w0,0; ret (JNI jboolean false)
sha=lambda b:hashlib.sha256(b).hexdigest()

def patch(data):
    if sha(data)!=ORIGINAL or data[OFFSET:OFFSET+8]!=OLD:
        raise ValueError('Unsupported SmartCapture engine; no offset patch applied')
    return data[:OFFSET]+NEW+data[OFFSET+8:]

def engine(apk):
    with Path(apk).open('rb') as f:
        if hashlib.file_digest(f,'sha256').hexdigest()!=APK_SHA:
            raise ValueError('Unexpected SmartCapture APK; refusing engine override')
    with zipfile.ZipFile(apk) as z:
        return patch(z.read('lib/arm64-v8a/libSPenEngine.so'))

def stage(apk,output,verify=False):
    output=Path(output);path=output/'libSPenEngine.so'
    if output.is_symlink() or output.parent.is_symlink() or path.is_symlink():
        raise ValueError('SmartCapture native destination is a symlink')
    data=engine(apk)
    if verify:
        if not path.is_file() or path.read_bytes()!=data:
            raise ValueError('Missing or mismatched SmartCapture engine')
    else:
        output.mkdir(parents=True,exist_ok=True)
        path.write_bytes(data);path.chmod(0o644)
    return sha(data)

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--apk',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--verify',action='store_true')
    args=p.parse_args()
    print('PASS SmartCapture engine:',stage(args.apk,args.output,args.verify))
