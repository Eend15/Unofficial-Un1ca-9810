#!/usr/bin/env python3
"""Build a targeted crownlte EXT4 test patch from verified source payloads."""
from pathlib import Path
import argparse
import hashlib
import json
import subprocess
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[5]
SPEN = Path(__file__).resolve().parent
NOTES_SHA = 'daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667'

def sha(path):
    with path.open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--aircommand', type=Path, required=True,
                        help='Actual rebuilt, platform-signed crownlte AirCommand APK')
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    from verify_note9_rebuilt_artifacts import verify_aircommand_methods, verify_platform_signatures
    notes = SPEN / 'notes/SamsungNotes-4.4.45.37.apk'
    if sha(notes) != NOTES_SHA:
        raise SystemExit('Samsung Notes input checksum mismatch')
    # Check the real donor DEX, not the file name or the presence of a marker.
    verify_aircommand_methods(args.aircommand)
    verify_platform_signatures((args.aircommand,), ROOT / 'security/aosp_platform.x509.pem')
    with zipfile.ZipFile(notes) as apk:
        if apk.testzip() is not None:
            raise SystemExit('Notes ZIP integrity failure')
    result = subprocess.run(['jarsigner', '-verify', str(notes)], capture_output=True, text=True)
    if result.returncode or 'jar verified.' not in result.stdout:
        raise SystemExit('Original Samsung Notes JAR signature did not verify')
    # This is the existing supported native recovery updater, not the ROM's
    # destructive installer script. Our own updater-script only runs our patch.
    updater = ROOT / 'target/crownlte/installer/update-binary'
    if updater.read_bytes()[:4] != b'\x7fELF':
        raise SystemExit('Recovery updater missing or still an LFS pointer')
    args.out.mkdir(parents=True, exist_ok=True)
    prefix = 'UN1CA-Note9-SPen-EXT4-testfix-v2-20261025'
    outputs = []
    for restore in (False, True):
        output = args.out / (prefix + ('-restore.zip' if restore else '.zip'))
        if output.exists():
            raise SystemExit(f'Refusing to overwrite existing artifact: {output}')
        mode = ' restore' if restore else ''
        edify = '''ui_print("UN1CA Note9 S Pen EXT4 test patch");
package_extract_dir("spen", "/tmp/unica-note9-spen-20261025");
run_program("/sbin/sh", "/tmp/unica-note9-spen-20261025/install.sh"MODE) == 0 ||
    abort("S Pen patch stopped. Read recovery log; do not wipe data.");
ui_print("Done. Reboot System; DO NOT Format Data.");
'''.replace('"MODE)', '", "restore")' if restore else '")')
        with zipfile.ZipFile(output, 'x', compression=zipfile.ZIP_DEFLATED, compresslevel=6) as z:
            z.write(updater, 'META-INF/com/google/android/update-binary')
            z.writestr('META-INF/com/google/android/updater-script', edify)
            z.write(SPEN / 'recovery/install.sh', 'spen/install.sh')
            if not restore:
                z.write(notes, 'spen/Notes33.apk')
                z.write(args.aircommand, 'spen/AirCommand.apk')
                z.writestr('spen/payload.sha256',
                           f'{NOTES_SHA}  Notes33.apk\n{sha(args.aircommand)}  AirCommand.apk\n')
                z.write(SPEN / 'notes/SamsungNotes-4.4.45.37.json', 'spen/provenance.json')
        with zipfile.ZipFile(output) as z:
            if z.testzip() is not None:
                raise SystemExit('Generated ZIP failed CRC check')
        outputs.append(output)
    (args.out / 'SHA256SUMS').write_text(''.join(f'{sha(p)}  {p.name}\n' for p in outputs))
    (args.out / 'build.json').write_text(json.dumps({
        'notes_sha256': NOTES_SHA, 'aircommand_sha256': sha(args.aircommand),
        'native_updater_sha256': sha(updater), 'physical_note9_test': 'pending',
        'system_patch_only': True, 'kernel_flash': False, 'userdata_format': False,
        'artifacts': {p.name: sha(p) for p in outputs},
    }, indent=2)+'\n')
    print((args.out / 'SHA256SUMS').read_text())

if __name__ == '__main__':
    main()
