#!/usr/bin/env python3
"""Regenerate the checked-in aperture runtime; not required by ROM builds."""
from pathlib import Path
import argparse
import subprocess
import hashlib

HERE = Path(__file__).resolve().parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--android-jar', required=True, type=Path)
parser.add_argument('--build-tools', required=True, type=Path)
parser.add_argument('--apktool-jar', required=True, type=Path)
parser.add_argument('--output', required=True, type=Path)
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=False)
classes = args.output / 'classes'
classes.mkdir()
def run(*command):
    subprocess.run([str(part) for part in command], check=True)
run('javac', '-source', '17', '-target', '17', '-classpath', args.android_jar,
    '-d', classes, *sorted(HERE.glob('*.java')))
run('jar', 'cf', args.output / 'runtime.jar', '-C', classes, '.')
dex = args.output / 'dex'
dex.mkdir()
run(args.build_tools / 'd8', '--release', '--min-api', '36', '--lib',
    args.android_jar, '--output', dex, args.output / 'runtime.jar')
run('java', '-cp', args.apktool_jar, 'com.android.tools.smali.baksmali.Main',
    'd', dex / 'classes.dex', '-o', HERE / 'smali')
files = [*sorted(HERE.glob('*.java')), *sorted((HERE / 'smali').rglob('*.smali'))]
(HERE / 'SHA256SUMS').write_text(''.join(hashlib.sha256(f.read_bytes()).hexdigest()
    + '  ' + f.relative_to(HERE).as_posix() + '\n' for f in files))
print('PASS regenerated aperture runtime and source/payload hashes')
