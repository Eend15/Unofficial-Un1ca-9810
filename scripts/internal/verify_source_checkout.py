#!/usr/bin/env python3
"""Check release input closure before extraction; never use a local work_dir."""
import argparse,json,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
MANIFEST=Path(__file__).with_name('source-inputs.json')
def verify(root,check_index=False,submodules=True):
    manifest=json.loads((root/'scripts/internal/source-inputs.json').read_text())
    errors=[]
    for rel in manifest['files']:
        p=root/rel
        if not p.is_file() and not p.is_symlink():
            errors.append('Missing source input: '+rel);continue
        if not p.is_symlink():
            with p.open('rb') as f: prefix=f.read(128)
            if prefix.startswith(b'version https://git-lfs.github.com/spec/v1'):
                errors.append('Unhydrated Git LFS input: '+rel)
    if check_index:
        indexed=set(subprocess.check_output(['git','ls-files','-z'],cwd=root).decode().split('\0'))
        errors.extend('Input is not in Git index: '+p for p in manifest['files'] if p not in indexed)
    if submodules:
        for rel,expected in manifest['submodules'].items():
            try:
                actual=subprocess.check_output(['git','-C',str(root/rel),'rev-parse','HEAD'],stderr=subprocess.DEVNULL).decode().strip()
            except subprocess.CalledProcessError: actual='missing'
            if actual!=expected: errors.append('Submodule '+rel+': expected '+expected+', got '+actual)
    if errors: raise RuntimeError('\n'.join(errors)+'\nUse git submodule update --init --recursive and git lfs pull; no files were modified.')
    print('PASS source checkout:',len(manifest['files']),'repository inputs;',len(manifest['submodules']),'pinned submodules')
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--root',type=Path,default=ROOT);p.add_argument('--check-index',action='store_true');p.add_argument('--no-submodules',action='store_true');a=p.parse_args()
    try: verify(a.root,a.check_index,not a.no_submodules)
    except RuntimeError as e: p.exit(1,str(e)+'\n')
