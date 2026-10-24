#!/usr/bin/env python3
"""Checks which of the System UI symbols the module touches exist in a given System UI build.

usage: scripts/check_systemui.py <SystemUI.apk | classes.dex ...> [--sdk /path/to/android-sdk]

The module reaches into System UI by name (classes it hooks, methods it hooks or calls, fields it reads, view ids it
looks up). The names are collected from the Java sources, then looked up in the dex files of the build you give it
(an APK, or loose .dex files, e.g. pulled out of /system_ext/priv-app/SystemUI/ with baksmali or `unzip`). Use it to
see what a new One UI version changes before touching any code: a missing class or method is a hook that will not
attach on that build. Methods and fields are matched by name only (any class), so a hit is a hint, not a proof.
"""
import glob
import os
import re
import subprocess
import sys
import tempfile
import zipfile

SRC = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'app', 'src', 'main', 'java')
CLASS_RE = re.compile(r'"((?:(?:com\.android\.systemui|com\.samsung\.[a-z.]+)\.(?:[a-z0-9_]+\.)*[A-Z][A-Za-z0-9_$]*\|?)+)"')
METHOD_RE = re.compile(r'Refl\.(?:hookAll|call|callStatic|method)\((?:[^,()]+,\s*){1,2}"([A-Za-z0-9_$|]+)"')
FIELD_RE = re.compile(r'Refl\.(?:get|set|getInt|getObjectInt|getBool|getStatic|field)\((?:[^,()]+,\s*)"([A-Za-z0-9_$|]+)"')
ID_RE = re.compile(r'getIdentifier\("([A-Za-z0-9_]+)"')
ARRAY_RE = re.compile(r'\{((?:\s*"[A-Za-z0-9_$]+",?)+)\s*\}')


def sources():
    for root, _, files in os.walk(SRC):
        for f in files:
            if f.endswith('.java'):
                path = os.path.join(root, f)
                with open(path, encoding='utf-8') as fh:
                    yield os.path.relpath(path, SRC), fh.read()


def wanted():
    classes, methods, fields, ids = {}, {}, {}, {}
    for name, text in sources():
        for m in CLASS_RE.finditer(text):
            if m.group(1).endswith('.'):
                continue
            classes.setdefault(m.group(1), set()).add(name)
        for m in METHOD_RE.finditer(text):
            if '$' in m.group(1):
                continue  # generated accessors
            methods.setdefault(m.group(1), set()).add(name)
        for m in FIELD_RE.finditer(text):
            fields.setdefault(m.group(1), set()).add(name)
        for m in ID_RE.finditer(text):
            ids.setdefault(m.group(1), set()).add(name)
        for m in ARRAY_RE.finditer(text):  # arrays of method names such as OA_DATA_HELPER_CHANGES
            for word in re.findall(r'"([A-Za-z0-9_$]+)"', m.group(1)):
                if word[0].islower() and any(c.isupper() for c in word):
                    methods.setdefault(word, set()).add(name)
    return classes, methods, fields, ids


def dexdump(sdk):
    candidates = glob.glob(os.path.join(sdk or '', 'build-tools', '*', 'dexdump')) if sdk else []
    candidates += glob.glob('/opt/android-sdk/build-tools/*/dexdump')
    return sorted(candidates)[-1] if candidates else 'dexdump'


def dex_files(inputs, tmp):
    out = []
    for path in inputs:
        if zipfile.is_zipfile(path):
            with zipfile.ZipFile(path) as z:
                for n in z.namelist():
                    if re.fullmatch(r'classes\d*\.dex', n):
                        out.append(z.extract(n, os.path.join(tmp, os.path.basename(path) + '_x')))
        else:
            out.append(path)
    return out


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    sdk = None
    if '--sdk' in sys.argv:
        sdk = sys.argv[sys.argv.index('--sdk') + 1]
        args.remove(sdk)
    if not args:
        print(__doc__)
        return 2
    classes, methods, fields, ids = wanted()
    have_classes, have_names = set(), set()
    with tempfile.TemporaryDirectory() as tmp:
        tool = dexdump(sdk)
        for dex in dex_files(args, tmp):
            dump = subprocess.run([tool, '-f', dex], capture_output=True, text=True, errors='replace').stdout
            for m in re.finditer(r"Class descriptor\s*:\s*'L([^;]+);'", dump):
                have_classes.add(m.group(1).replace('/', '.'))
            for m in re.finditer(r"name\s*:\s*'([^']+)'", dump):
                have_names.add(m.group(1))
    if not have_classes:
        print('no classes read: is dexdump available and is the input a System UI APK / dex?')
        return 2
    print(f'{len(have_classes)} classes in the given build\n')
    # a name written "new|old" is fine when any alternative exists; the newest alternative being absent is worth noting
    def absent(names, have):
        return not any(n in have for n in names.split('|'))

    def older_only(names, have):
        first = names.split('|')[0]
        return '|' in names and first not in have and not absent(names, have)

    missing_classes = {c: f for c, f in classes.items() if absent(c, have_classes)}
    missing_methods = {m: f for m, f in methods.items() if absent(m, have_names)}
    missing_fields = {m: f for m, f in fields.items() if absent(m, have_names)}
    for title, group, have in (('classes', classes, have_classes), ('methods', methods, have_names),
                               ('fields', fields, have_names)):
        used = sorted(n for n in group if older_only(n, have))
        if used:
            print(f'## {title} found only under an older alternative: {len(used)}')
            for n in used:
                print(f'- {n}')
            print()
    for title, found, total in (('classes', missing_classes, classes), ('methods', missing_methods, methods),
                                ('fields', missing_fields, fields)):
        print(f'## missing {title}: {len(found)} of {len(total)}')
        for name in sorted(found):
            print(f'- {name}   ({", ".join(sorted(found[name]))})')
        print()
    print(f'## view ids looked up ({len(ids)}); check them with: aapt2 dump resources <apk> | grep -E "' +
          '|'.join(sorted(ids)) + '"')
    return 1 if missing_classes else 0


if __name__ == '__main__':
    sys.exit(main())
