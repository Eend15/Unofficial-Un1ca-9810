#!/usr/bin/env python3
"""Install app-local ARM64 libraries for the pinned preinstalled Samsung Notes."""
from pathlib import Path
import argparse,hashlib,re,struct,zipfile
APK_SHA='daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667'

def libraries(apk):
    with Path(apk).open('rb') as f:
        if hashlib.file_digest(f,'sha256').hexdigest()!=APK_SHA:
            raise ValueError('Unexpected Notes APK; refusing mixed native libraries')
    result={}
    with zipfile.ZipFile(apk) as z:
        for entry in z.infolist():
            if not entry.filename.startswith('lib/arm64-v8a/'): continue
            name=entry.filename.removeprefix('lib/arm64-v8a/')
            if not re.fullmatch(r'lib[A-Za-z0-9_+.\-]+\.so',name):
                raise ValueError('Unexpected native entry: '+entry.filename)
            data=z.read(entry)
            if not (data[:6]==b'\x7fELF\x02\x01' and struct.unpack_from('<H',data,18)[0]==183):
                raise ValueError('Not an AArch64 ELF: '+name)
            if name in result: raise ValueError('Duplicate native entry')
            result[name]=data
    if len(result)!=107 or 'libc++_shared.so' not in result or 'libSPenComposer.so' not in result:
        raise ValueError('Incomplete Notes native payload')
    return result

def stage(apk,output,verify=False):
    output=Path(output)
    if output.is_symlink() or output.parent.is_symlink(): raise ValueError('Native library destination is a symlink')
    from recognizer_diagnostics import patch
    # FBR ink only reached the panel on pen-up on Exynos9810 (screen-off memo);
    # the normal renderer fallback was field-accepted on 2026-10-27.
    from build_notes_ink_v7 import patch as normal_renderer
    payload=libraries(apk)
    payload['libSPenRecognizer.so']=patch(payload['libSPenRecognizer.so'])
    payload['libSPenEngine.so']=normal_renderer(payload['libSPenEngine.so'])
    for name,data in payload.items():
        path=output/name
        if path.is_symlink(): raise ValueError('Native library is a symlink: '+name)
        if verify:
            if not path.is_file() or path.read_bytes()!=data:
                raise ValueError('Missing or mismatched Notes library: '+name)
        else:
            output.mkdir(parents=True,exist_ok=True)
            path.write_bytes(data);path.chmod(0o644)
    return 107

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--apk',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--verify',action='store_true')
    args=p.parse_args()
    print('PASS Notes ARM64 libraries:',stage(args.apk,args.output,args.verify))
