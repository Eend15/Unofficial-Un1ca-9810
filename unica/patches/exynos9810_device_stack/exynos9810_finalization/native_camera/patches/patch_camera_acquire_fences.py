"""Route only the legacy HAL capture entry through the fence-ownership adapter."""
from pathlib import Path
import subprocess
import sys

ORIGINAL = b'_ZN7android12ExynosCamera21processCaptureRequestEP23camera3_capture_request\0'
ADAPTER = b'unica_exynos9810_process_capture_request\0'
LIBRARY = 'libexynos_camera_fence.so'

def patch(path: Path) -> None:
    data = path.read_bytes()
    if not data.startswith(b'\x7fELF') or data[4] not in (1, 2):
        raise ValueError(f'Not an ARM camera ELF: {path}')
    counts = data.count(ORIGINAL), data.count(ADAPTER)
    if counts == (1, 0):
        data = data.replace(ORIGINAL, ADAPTER + b'\0' * (len(ORIGINAL) - len(ADAPTER)), 1)
        path.write_bytes(data)
    elif counts != (0, 1):
        raise ValueError(f'Ambiguous capture entry in {path}: {counts}')
    needed = subprocess.check_output(['patchelf', '--print-needed', str(path)], text=True).splitlines()
    if LIBRARY not in needed:
        subprocess.run(['patchelf', '--add-needed', LIBRARY, str(path)], check=True)
    needed = subprocess.check_output(['patchelf', '--print-needed', str(path)], text=True).splitlines()
    if needed.count(LIBRARY) != 1 or path.read_bytes().count(ADAPTER) != 1:
        raise ValueError(f'Camera adapter verification failed: {path}')
    print(f'{path.name}: capture fence adapter present')

if __name__ == '__main__':
    for arg in sys.argv[1:]:
        patch(Path(arg))
