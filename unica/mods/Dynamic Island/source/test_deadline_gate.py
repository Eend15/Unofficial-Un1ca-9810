#!/usr/bin/env python3
"""Compile/run real no-Android DeadlineGate Java with deterministic fake looper."""
from pathlib import Path
import subprocess
import tempfile

root = Path(__file__).resolve().parent
java = root / 'java/dev/android/dynamicisland/island/DeadlineGate.java'
test = root / 'DeadlineGateTest.java'
# The behavioral test exercises the very scheduler wired into these runtime
# callsites, not an unrelated Python model of its behavior.
hook = (root / 'java/dev/android/dynamicisland/xposed/hooks/HideDuplicated.java').read_text()
media = (root / 'java/dev/android/dynamicisland/island/source/MediaSource.java').read_text()
controller = (root / 'java/dev/android/dynamicisland/island/IslandController.java').read_text()
runtime = (root / 'java/dev/android/dynamicisland/nativebridge/NativeRuntime.java').read_text()
assert 'GRACE_REBUILD.scheduleEarliest(deadline)' in hook
assert 'GRACE_REBUILD.cancel()' in hook
assert 'cover.expiry.scheduleLatest(deadline + 20)' in media
assert 'cover.missingSince + MAX_MISSING_ART_MS' in media
assert 'cover.art = null;' in media
assert 'entry.getValue().cancelExpiry()' in media
assert 'main.removeCallbacks(tick)' in media
assert 'sources.media.cancelPending()' in controller
assert 'HideDuplicated.cancelPending()' in controller
assert 'island.onDisabled()' in runtime
# Upstream is preserved verbatim at the pinned release; native-only scheduler
# guards are intentionally tested above and by the actual Java implementation.
with tempfile.TemporaryDirectory(prefix='unica-deadline-test-') as directory:
    subprocess.run(['javac', '-encoding', 'UTF-8', '-d', directory,
                    str(java), str(test)], check=True)
    subprocess.run(['java', '-cp', directory, 'DeadlineGateTest'], check=True)
