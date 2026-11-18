#!/usr/bin/env python3
"""Check release input closure before extraction; never use a local work_dir."""
import argparse
import hashlib
import json
import re
import subprocess
import zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
MANIFEST=Path(__file__).with_name('source-inputs.json')

KERNEL_MODELS = ('G960F', 'G960N', 'G965F', 'G965N', 'N960F', 'N960N')


def check_default_kernels(root):
    """Check both immutable kernel defaults before firmware extraction starts."""
    installer = root / 'platform/exynos9810/installer/customize.sh'
    if not installer.is_file():
        return ['Missing kernel installer: platform/exynos9810/installer/customize.sh']
    source = installer.read_text()
    errors = []
    for fs in ('EROFS', 'EXT4'):
        path_match = re.search(
            rf'^DS_ACK_{fs}_PREBUILT_ZIP="\$SRC_DIR/([^"]+)"$', source, re.M
        )
        hash_match = re.search(
            rf'^DS_ACK_{fs}_PREBUILT_SHA256="([a-f0-9]{{64}})"$', source, re.M
        )
        if not path_match or not hash_match:
            errors.append(f'Missing immutable {fs} kernel ZIP/SHA256 configuration')
            continue
        rel = path_match.group(1)
        path = root / rel
        if not path.is_file():
            errors.append(f'Missing {fs} kernel package: {rel}')
            continue
        with path.open('rb') as file:
            if file.read(80).startswith(b'version https://git-lfs.github.com/spec/v1'):
                errors.append(f'Unhydrated Git LFS {fs} kernel: {rel}')
                continue
            file.seek(0)
            digest = hashlib.file_digest(file, 'sha256').hexdigest()
        if digest != hash_match.group(1):
            errors.append(f'{fs} kernel SHA256 mismatch: {rel}')
            continue
        try:
            with zipfile.ZipFile(path) as archive:
                names = set(archive.namelist())
                required = {
                    f'floyd/{model}-{kind}'
                    for model in KERNEL_MODELS
                    for kind in ('kernel', 'dtb')
                }
                required.add('META-INF/com/google/android/update-binary')
                missing = required - names
                if missing:
                    errors.append(f'{fs} kernel archive missing {sorted(missing)}: {rel}')
        except (OSError, zipfile.BadZipFile) as exc:
            errors.append(f'Invalid {fs} kernel archive {rel}: {exc}')
    return errors


def verify(root,check_index=False,submodules=True):
    manifest=json.loads((root/'scripts/internal/source-inputs.json').read_text())
    errors=[]
    for rel in manifest['files']:
        p=root/rel
        # Android partition symlinks (for example /vendor/lib/libGLES_mali.so
        # -> /vendor/lib/egl/libGLES_mali.so) are deliberately unresolved on
        # the host. They become valid inside the assembled filesystem image.
        if p.is_symlink():
            link = str(p.readlink())
            if link.startswith(('/home/', '/mnt/', '/root/')):
                errors.append('Host-specific source symlink: '+rel+' -> '+link)
            continue
        if not p.is_file():
            errors.append('Missing source input: '+rel);continue
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
    errors.extend(check_default_kernels(root))
    if errors: raise RuntimeError('\n'.join(errors)+'\nUse git submodule update --init --recursive and git lfs pull; no files were modified.')
    print('PASS source checkout:',len(manifest['files']),'repository inputs;',len(manifest['submodules']),'pinned submodules')
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--root',type=Path,default=ROOT);p.add_argument('--check-index',action='store_true');p.add_argument('--no-submodules',action='store_true');a=p.parse_args()
    try: verify(a.root,a.check_index,not a.no_submodules)
    except RuntimeError as e: p.exit(1,str(e)+'\n')
