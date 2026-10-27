#!/usr/bin/env python3
"""Build A/B Dynamic Island companion APKs without modifying the ROM tree.

The snapshots use exactly the same sources, rendering policy, package, resources,
platform signing key and build tools. A replaces only two coalesced callback
schedule sites with the original repeated-post behavior; B uses DeadlineGate.
Both retain the separately audited media-art lifetime cap and cleanup policy.

Requires an Android 36 android.jar and matching Android SDK build-tools; the
standard UN1CA rebuild.py currently also uses the repo's signing/zipalign tools.
Does not flash, install, compile an entire ROM, stage or commit anything.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import subprocess
import sys
import zipfile
from pathlib import Path

THIS = Path(__file__).resolve()
SOURCE_REL = Path('unica/mods/Dynamic Island/source')
HIDE = Path('java/dev/android/dynamicisland/xposed/hooks/HideDuplicated.java')
MEDIA = Path('java/dev/android/dynamicisland/island/source/MediaSource.java')
ALLOWED_JAVA_DIFFS = {HIDE.as_posix(), MEDIA.as_posix()}


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def checked_replace(path: Path, old: str, new: str):
    body = path.read_text(encoding='utf-8')
    if body.count(old) != 1:
        raise RuntimeError(f'Expected exactly one old callback site in {path}: {body.count(old)}')
    path.write_text(body.replace(old, new), encoding='utf-8')


def record_source(source: Path):
    subprocess.run(
        [sys.executable, '-c',
         'import verify_source; verify_source.record(); verify_source.verify()'],
        cwd=source, check=True,
    )


def snapshot(source: Path) -> dict[str, str]:
    return {str(p.relative_to(source)): digest(p) for p in source.rglob('*.java')}


def run(*args, cwd=None) -> str:
    done = subprocess.run([str(a) for a in args], cwd=cwd, check=True,
                          capture_output=True, text=True)
    if done.stdout:
        print(done.stdout.strip())
    if done.stderr:
        print(done.stderr.strip(), file=sys.stderr)
    return done.stdout


def unsigned_payload(apk: Path) -> dict[str, str]:
    with zipfile.ZipFile(apk) as z:
        assert z.testzip() is None
        return {n: hashlib.sha256(z.read(n)).hexdigest()
                for n in z.namelist()
                if not n.startswith('META-INF/') and not re.fullmatch(r'classes\d*\.dex', n)}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--repo', type=Path, default=THIS.parents[4])
    parser.add_argument('--android-jar', required=True, type=Path)
    parser.add_argument('--build-tools', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    repo = args.repo.resolve()
    source = repo / SOURCE_REL
    output = args.output.resolve()
    if source != THIS.parent or source.is_relative_to(output) or output.is_relative_to(source):
        raise SystemExit('Use canonical ROM source and a distinct output directory')
    if not args.android_jar.is_file():
        raise SystemExit('Supply an installed Android 36 android.jar')
    if not (args.build_tools / 'aapt2').is_file() or not (args.build_tools / 'd8').is_file():
        raise SystemExit('Android 36 build-tools are required')
    if output.exists() and any(output.iterdir()):
        raise SystemExit('Output directory must be empty. Existing artifacts are never overwritten')
    output.mkdir(parents=True, exist_ok=True)
    work = output / 'sources'
    apks = {}
    sources = {}
    for variant in ('A', 'B'):
        dest = work / variant / 'source'
        shutil.copytree(source, dest, ignore=shutil.ignore_patterns('__pycache__', '*.pyc'))
        if variant == 'A':
            # Restore the old independent posts at ONLY these two callback
            # sites. All other source classes and rendering settings stay B.
            checked_replace(dest / HIDE,
                            'GRACE_REBUILD.scheduleEarliest(deadline);',
                            'MAIN.postDelayed(HideDuplicated::rebuild, GRACE_MS - sinceHidden + REBUILD_SLACK_MS);')
            checked_replace(dest / MEDIA,
                            'cover.expiry.scheduleLatest(deadline + 20);',
                            'main.postDelayed(() -> rebuildCards(pkg), 20 + left);')
        record_source(dest)
        sources[variant] = snapshot(dest)
    different = {p for p in set(sources['A']) | set(sources['B'])
                 if sources['A'].get(p) != sources['B'].get(p)}
    if different != ALLOWED_JAVA_DIFFS:
        raise RuntimeError(f'Builds differ in unexpected Java sources: {sorted(different)}')

    for variant in ('A', 'B'):
        dest = work / variant / 'source'
        print(f'Compiling only the Dynamic Island companion variant {variant}...')
        before = snapshot(dest)
        builddir = output / f'build-{variant}'
        run(sys.executable, dest / 'rebuild.py',
            '--repo', repo, '--android-jar', args.android_jar,
            '--build-tools', args.build_tools, '--output', builddir)
        after = snapshot(dest)
        if before != after:
            raise RuntimeError(f'Rebuild mutated {variant} Java sources')
        apk = builddir / 'UnicaDynamicIsland.apk'
        out_apk = output / f'UnicaDynamicIsland-{variant}-callbacks.apk'
        shutil.copy2(apk, out_apk)
        apks[variant] = out_apk

    if unsigned_payload(apks['A']) != unsigned_payload(apks['B']):
        raise RuntimeError('A/B resources, manifest or included assets unexpectedly differ')
    sdk_aapt = args.build_tools / 'aapt2'
    badges = {v: run(sdk_aapt, 'dump', 'badging', p).splitlines()[0]
              for v, p in apks.items()}
    if badges['A'] != badges['B'] or "name='io.mesalabs.unica.dynamicisland'" not in badges['A']:
        raise RuntimeError(f'A/B package or version differs: {badges}')

    certificate = repo / 'security/aosp_platform.x509.pem'
    signer = {}
    for variant, apk in apks.items():
        result = run(args.build_tools / 'apksigner', 'verify', '--print-certs',
                     '--verbose', apk)
        found = re.search(r'Signer #1 certificate SHA-256 digest: ([0-9a-f]{64})', result)
        if not found or 'Verified using v3 scheme (APK Signature Scheme v3): true' not in result:
            raise RuntimeError(f'APK {variant} signature was not verified as v3')
        signer[variant] = found.group(1)
    if signer['A'] != signer['B']:
        raise RuntimeError('A and B are signed by DIFFERENT certificates')
    # Same A/B signer is proven here. Match against the installed handset
    # certificate cannot be verified unless that handset is actually online.
    manifest = {
        'git_HEAD': run('git', '-C', repo, 'rev-parse', 'HEAD').strip(),
        'source': str(SOURCE_REL),
        'source_capture': 'actual working tree at this build; includes uncommitted edits',
        'variant_A': 'original per-pass duplicate filter rebuild and per-update album-art callback',
        'variant_B': 'one earliest duplicate-filter expiry and one latest capped album-art expiry',
        'shared_media_art_hard_cap_ms': 3000,
        'allowed_java_differences': sorted(different),
        'application_badging': badges['A'],
        'platform_certificate_sha256': digest(certificate),
        'apk_signer_certificate_sha256': signer['A'],
        'apk_v3_signature_verified': True,
        'installed_app_signer_compatible': 'UNVERIFIED — handset offline; STOP before adb install',
        'android_jar_sha256': digest(args.android_jar),
        'aapt2_sha256': digest(args.build_tools / 'aapt2'),
        'd8_sha256': digest(args.build_tools / 'd8'),
        'apks': {v: {'filename': apks[v].name, 'sha256': digest(apks[v]),
                     'java_source_tree_sha256': hashlib.sha256(
                         json.dumps(sources[v], sort_keys=True).encode()).hexdigest()}
                 for v in ('A', 'B')},
        'note': 'A/B signing equality does not prove compatibility with the installed app. Verify on the phone before installation.',
    }
    (output / 'AB-MANIFEST.json').write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
    (output / 'SHA256SUMS').write_text(
        ''.join(f'{digest(apks[v])}  {apks[v].name}\n' for v in ('A', 'B')))
    print('AB BUILD VERIFIED:')
    for v in ('A', 'B'):
        print(f' {v}: {apks[v]} : {digest(apks[v])}')
    print('Package/version and all non-DEX APK payload entries are identical.')


if __name__ == '__main__':
    main()
