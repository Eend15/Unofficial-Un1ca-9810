"""Exercise actual target camera staging and LLS safeguards in temporary workdirs.

Run from any directory. This validates source integration, not hardware behavior.
"""
import hashlib
from pathlib import Path
import re
import shlex
import subprocess
import tempfile
import zipfile

def main():
    mod = Path(__file__).resolve().parents[2]
    repo = mod.parents[2]
    source = (mod / 'customize.sh').read_text()
    legacy = repo / 'unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port'
    names = ('_EXYNOS9810_FINAL_RESTORE_TARGET_CAMERA_STACK', '_EXYNOS9810_FINAL_PATCH_CAMERA_LLS_SINGLE_FRAME')
    functions = []
    for name in names:
        match = re.search(r'(?ms)^' + name + r'\(\)\n\{\n.*?^\}\n', source)
        if not match:
            raise RuntimeError(f'Missing build helper {name}')
        functions.append(match.group())
    apk = mod / 'native_camera/SamsungCamera.apk'
    digest = hashlib.sha256(apk.read_bytes()).hexdigest()
    if digest not in source:
        raise RuntimeError('Shipped APK does not match build checksum')
    with zipfile.ZipFile(apk) as z:
        if z.testzip():
            raise RuntimeError('Corrupt APK entry')
    for target in ('starlte', 'star2lte', 'crownlte'):
        config = (repo / f'target/{target}/config.sh').read_text()
        if f'TARGET_CODENAME="{target}"' not in config or 'TARGET_PLATFORM="exynos9810"' not in config:
            raise RuntimeError(f'Unexpected target config: {target}')
        with tempfile.TemporaryDirectory(prefix=f'camera-{target}-') as tmp:
            script = 'set -e\nLOG() { :; }\nLOGE() { echo "$@" >&2; }\n_EXYNOS9810_FINAL_SET_METADATA() { :; }\n'
            script += f'EXYNOS9810_LEGACY_PORT_DIR={shlex.quote(str(legacy))}\n'
            script += f'WORK_DIR={shlex.quote(tmp)}\nTARGET_CODENAME={target}\n'
            script += '\n'.join(functions) + '\n' + names[0] + '\n'
            subprocess.run(['bash', '-c', script], check=True)
            for rel in ('lib/hw/camera.exynos9810.so', 'lib/libexynoscamera3.so', 'lib64/hw/camera.exynos9810.so', 'lib64/libexynoscamera3.so'):
                staged = Path(tmp) / 'vendor' / rel
                expected = legacy / 'device_port/device' / target / 'vendor' / rel
                if staged.read_bytes() != expected.read_bytes():
                    raise RuntimeError(f'{target}: wrong staged {rel}')
            # Repeat the real safeguard twice to catch bad target encodings
            # and incremental-build/idempotence failures.
            script = script[:script.rfind(names[0] + '\n')] + names[1] + '\n' + names[1] + '\n'
            subprocess.run(['bash', '-c', script], check=True)
            print(f'{target}: correct 32/64-bit HALs, LLS safeguard and repeat invocation PASS')
    print(f'Common One UI 8 APK checksum PASS: {digest}')

if __name__ == '__main__':
    main()
