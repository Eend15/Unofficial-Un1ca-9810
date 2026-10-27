#!/usr/bin/env python3
"""Shared Exynos9810 ART baseline and model-specific cached-process budgets."""
from pathlib import Path
import argparse

TARGETS = ('starlte', 'star2lte', 'crownlte')
PROP_FILES = ('system/system/build.prop', 'vendor/build.prop',
              'system/product/etc/build.prop', 'system/system/product/etc/build.prop')
RETIRED = (
    'persist.sys.fw.trim_enable_memory',
    'ro.sys.fw.use_trim_settings',
    # Not present as a named property in the Exynos9810 Android 16
    # SurfaceFlinger binary; do not carry the legacy toggle forward.
    'debug.sf.disable_backpressure',
)
UNSAFE_FILES = (
    'system/system/etc/init/ram_tweaks.rc', 'system/system/bin/ram_tweaks.sh',
    'system/system_ext/etc/init/ram_tweaks.rc', 'system/system_ext/bin/ram_tweaks.sh',
    'system/vendor/etc/init/ram_tweaks.rc', 'system/vendor/bin/ram_tweaks.sh',
    'vendor/etc/init/ram_tweaks.rc', 'vendor/bin/ram_tweaks.sh')

def expected(target):
    if target not in TARGETS:
        raise ValueError('Unsupported performance target: ' + target)
    s9 = target == 'starlte'
    return {
        'ro.sys.fw.bg_apps_limit': '20',
        'ro.sys.fw.bg_cached_ratio': '0.50',
        # G960F stock vendor: cached min/max 6/19 and empty min/max 8/24.
        # Keep the accepted six-GB profile on S9+/Note9; cap only S9 caches.
        'ro.config.dha_cached_max': '19' if s9 else '24',
        'ro.config.dha_cached_min': '6' if s9 else '8',
        'ro.config.dha_empty_max': '24' if s9 else '32',
        'ro.config.dha_empty_min': '8',
        'ro.config.dha_lmk_scale': '0.545',
        'ro.config.dha_pwhitelist_enable': '1',
        # ART applies this specifically to SystemUI, including boot dexopt.
        # Avoid compiling every app with speed or repeatedly running boot jobs.
        'dalvik.vm.systemuicompilerfilter': 'speed',
        'pm.dexopt.first-boot': 'verify',
        'pm.dexopt.boot-after-ota': 'verify',
        'pm.dexopt.boot-after-mainline-update': 'verify',
        'pm.dexopt.install': 'speed-profile',
        'pm.dexopt.bg-dexopt': 'speed-profile',
        'pm.dexopt.shared': 'speed',
        'pm.dexopt.disable_bg_dexopt': 'false',
        # Limit compiler *processes*, distinct from threads per process.
        'pm.dexopt.first-boot.concurrency': '1' if s9 else '2',
        'pm.dexopt.boot-after-ota.concurrency': '1' if s9 else '2',
        'pm.dexopt.boot-after-mainline-update.concurrency': '1' if s9 else '2',
        'pm.dexopt.bg-dexopt.concurrency': '1',
        'dalvik.vm.boot-dex2oat-threads': '2' if s9 else '4',
        'dalvik.vm.background-dex2oat-threads': '2' if s9 else '4',
    }

def key(line):
    text = line.strip()
    if not text or text.startswith('#') or '=' not in text:
        return None
    return text.split('=', 1)[0].strip()

def existing_props(work):
    for rel in PROP_FILES:
        path = work / rel
        if path.is_symlink():
            raise ValueError('Property file is a symlink: ' + rel)
        if path.is_file():
            yield rel, path

def apply(work, target):
    work = Path(work)
    policy = expected(target)  # Reject unknown targets before any writes.
    system = work / PROP_FILES[0]
    files = list(existing_props(work))
    if not system.is_file():
        raise ValueError('System build.prop missing')
    managed = policy.keys() | set(RETIRED)
    for rel, path in files:
        original = path.read_text()
        lines = [line for line in original.splitlines() if key(line) not in managed]
        if rel == PROP_FILES[0]:
            lines.extend(name + '=' + value for name, value in sorted(policy.items()))
        updated = '\n'.join(lines) + '\n'
        # Avoid needless rewrites (mtime/incremental build invalidation)
        # when finalizing a resumed or already-canonical source tree.
        if updated != original:
            path.write_text(updated)
    return policy

def verify(work, target):
    work = Path(work)
    policy = expected(target)
    seen = {name: [] for name in policy}
    for rel, path in existing_props(work):
        for line in path.read_text().splitlines():
            name = key(line)
            if name in RETIRED:
                raise ValueError('Retired reclaim override remains in ' + rel + ': ' + name)
            if name in seen:
                seen[name].append((rel, line.strip().split('=', 1)[1]))
            if name == 'ro.config.low_ram' and line.split('=', 1)[1].strip() == 'true':
                raise ValueError('Android low-RAM feature-reduction mode is not this profile')
    for name, value in policy.items():
        if seen[name] != [(PROP_FILES[0], value)]:
            raise ValueError(f'{target}: missing, stale or duplicated performance property {name}: {seen[name]}')
    for rel in UNSAFE_FILES:
        if (work / rel).exists() or (work / rel).is_symlink():
            raise ValueError('Retired VM/IO/GPU reclaim script remains: ' + rel)
    return policy

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--work-dir', required=True, type=Path)
    p.add_argument('--target', required=True, choices=TARGETS)
    p.add_argument('--apply', action='store_true')
    a = p.parse_args()
    if a.apply:
        apply(a.work_dir, a.target)
    verify(a.work_dir, a.target)
    print(f'PASS {a.target}: shared ART policy; ' + ('4GB stock cache bounds' if a.target == 'starlte' else '6GB balanced cache bounds'))

if __name__ == '__main__':
    try:
        main()
    except (OSError, ValueError) as e:
        raise SystemExit(str(e))
