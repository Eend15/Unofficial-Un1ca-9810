"""Restore stock Note9's SMPS enable property from the system partition."""
from pathlib import Path
import argparse
import re


def transform(system: str, vendor: str):
    pattern = r'(?m)^ro\.smps\.enable=[^\n]*(?:\n|$)'
    # Later finalizers append identity properties. A correct system-owned value
    # remains valid wherever it occurs; do not move it to EOF on verification.
    if re.findall(r'(?m)^ro\.smps\.enable=([^\n]*)$', system) == ['true'] and not re.search(pattern, vendor):
        return system, vendor
    system = re.sub(pattern, '', system)
    if system and not system.endswith('\n'):
        system += '\n'
    return system + 'ro.smps.enable=true\n', re.sub(pattern, '', vendor)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('work', type=Path)
    parser.add_argument('--verify', action='store_true')
    args = parser.parse_args()
    paths = (args.work / 'system/system/build.prop', args.work / 'vendor/build.prop')
    original = tuple(p.read_text() for p in paths)
    expected = transform(*original)
    if args.verify:
        if expected != original:
            raise SystemExit('Note9 SMPS property missing, duplicated or still vendor-owned')
    else:
        for path, before, after in zip(paths, original, expected):
            if before != after:
                path.write_text(after)
