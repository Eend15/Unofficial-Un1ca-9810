#!/usr/bin/env python3
"""Restore capability-gated Pro aperture controls in a decoded Camera 16 APK."""
from pathlib import Path
import argparse
import re
import shutil
import hashlib

HERE = Path(__file__).resolve().parent
MARKER = '    # UN1CA physical aperture control\n'
CALL = ('    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/IndicatorManager;'
        '->showApertureIndicator(F)V\n')
INSERT = ('\n' + MARKER +
          '    invoke-static {p0, v0, p1}, Lio/mesalabs/unica/camera/ApertureControl;->bind(Ljava/lang/Object;Ljava/lang/Object;F)Z\n'
          '    move-result v0\n'
          '    if-eqz v0, :unica_aperture_stock_hide\n'
          '    return-void\n'
          '    :unica_aperture_stock_hide\n')

def patched(text):
    pattern = r'(?ms)^\.method private showApertureIndicator\(F\)V\n.*?^\.end method'
    matches = list(re.finditer(pattern, text))
    if len(matches) != 1:
        raise ValueError('Expected one Pro showApertureIndicator(F) method')
    method = matches[0].group()
    if MARKER in method:
        if CALL + INSERT not in method:
            raise ValueError('Incomplete/stale aperture hook')
        # Migrate the initial Pro-indicator trial to the user's requested bar.
        return text[:matches[0].start()] + method.replace(CALL + INSERT, CALL) + text[matches[0].end():]
    if method.count(CALL) != 1:
        raise ValueError('Unexpected Samsung aperture indicator flow')
    return text

def hook(text, signature, call, returns=False):
    pattern = r'(?ms)^\.method ' + re.escape(signature) + r'\n.*?^\.end method'
    matches = list(re.finditer(pattern, text))
    if len(matches) != 1:
        raise ValueError('Missing/ambiguous quick aperture hook: ' + signature)
    method = matches[0].group()
    if returns and '# UN1CA quick bar saved receiver' in method:
        return text
    if not returns and call in method:
        return text
    if returns:
        method = method.replace(call, '')
        registers = re.search(r'^    \.(locals|registers) (\d+)\n', method, re.M)
        if not registers:
            raise ValueError('Unknown quick bar registers')
        kind, number = registers.group(1), int(registers.group(2))
        arguments = signature.split('(', 1)[1].split(')', 1)[0]
        parameters = 1 + sum(2 if token in ('J', 'D') else 1 for token in re.findall(r'\[*L[^;]+;|\[*[ZBCSIFJD]', arguments))
        local = number if kind == 'locals' else number - parameters
        saved = 'v' + str(local)
        replacement = f'    .{kind} {number + 1}\n\n    # UN1CA quick bar saved receiver\n    move-object {saved}, p0\n'
        method = method[:registers.start()] + replacement + method[registers.end():]
        if '    return-void\n' not in method:
            raise ValueError('Missing quick bar return')
        new = method.replace('    return-void\n', call.replace('{p0}', '{' + saved + '}').replace('{p0,', '{' + saved + ',') + '    return-void\n')
    else:
        new, count = re.subn(r'(^    \.(?:locals|registers) \d+\n)', lambda m: m.group() + '\n' + call, method, count=1, flags=re.M)
        if count != 1:
            raise ValueError('Unexpected quick bar register layout')
    return text[:matches[0].start()] + new + text[matches[0].end():]

def apply(root):
    root = Path(root)
    for row in (HERE / 'SHA256SUMS').read_text().splitlines():
        expected, name = row.split('  ', 1)
        file = HERE / name
        if hashlib.sha256(file.read_bytes()).hexdigest() != expected:
            raise ValueError('Aperture source/runtime hash mismatch: ' + name)
    changes = []
    for name in ('ProPresenter', 'ProVideoPresenter'):
        files = list(root.glob('smali*/com/sec/android/app/camera/shootingmode/pro/' + name + '.smali'))
        if len(files) != 1:
            raise ValueError('Missing/ambiguous Samsung ' + name)
        text = files[0].read_text()
        changes.append((files[0], text, patched(text)))
    quick = list(root.glob('smali*/com/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView.smali'))
    lens = list(root.glob('smali*/com/sec/android/app/camera/engine/core/callback/LensInfoCallback.smali'))
    if len(quick) != 1 or len(lens) != 1:
        raise ValueError('Missing quick bar or native lens-result callback')
    original = quick[0].read_text()
    updated = hook(original, 'public showMainList(Z)V', '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->show(Ljava/lang/Object;)V\n', True)
    updated = hook(updated, 'private showMainListWithGestureAnimation()V', '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->show(Ljava/lang/Object;)V\n', True)
    updated = hook(updated, 'private hideMainListWithGestureAnimation()V', '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->hide(Ljava/lang/Object;)V\n')
    for signature in ('public hideMainList(Z)V', 'public hideList(Z)Z'):
        updated = hook(updated, signature, '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->hide(Ljava/lang/Object;)V\n')
    changes.append((quick[0], original, updated))
    animation = quick[0].with_name('QuickSettingView$24.smali')
    original = animation.read_text()
    updated = hook(original, 'public onAnimationStart(Landroid/animation/Animator;)V', '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->show(Ljava/lang/Object;)V\n')
    changes.append((animation, original, updated))
    presenter = quick[0].with_name('QuickSettingPresenter.smali')
    original = presenter.read_text()
    original_started = hook(original, 'public start()V', '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->prepare(Ljava/lang/Object;)V\n', True)
    updated = hook(original_started, 'public stop()V', '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->stop(Ljava/lang/Object;)V\n')
    changes.append((presenter, original, updated))
    original = lens[0].read_text()
    signature = 'public onLensInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;Lcom/samsung/android/camera/core2/CamDevice;)V'
    updated = hook(original, signature, '    invoke-static {p2, p3}, Lio/mesalabs/unica/camera/QuickApertureControl;->onLensInfo(Ljava/lang/Object;Ljava/lang/Object;)V\n')
    changes.append((lens[0], original, updated))
    engines = list(root.glob('smali*/com/sec/android/app/camera/engine/CommonEngine.smali'))
    if len(engines) != 1:
        raise ValueError('Missing camera engine lifecycle hooks')
    original = engines[0].read_text()
    updated = original
    for signature in ('public switchCamera(Lcom/sec/android/app/camera/interfaces/CameraId;)V', 'public changeShootingMode(IZ)V', 'public stopEngine()V'):
        updated = hook(updated, signature, '    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->resetEngine(Ljava/lang/Object;)V\n')
    updated = hook(updated, 'public changeState(Lcom/sec/android/app/camera/engine/interfaces/Engine$State;)V', '    invoke-static {p0, p1}, Lio/mesalabs/unica/camera/QuickApertureControl;->onEngineState(Ljava/lang/Object;Ljava/lang/Object;)V\n', True)
    changes.append((engines[0], original, updated))
    payload = sorted((HERE / 'smali/io/mesalabs/unica/camera').glob('*.smali'))
    if not payload:
        raise ValueError('Missing repository-provided aperture runtime smali')
    # Preflight both methods and payload before changing either presenter.
    for file, original, updated in changes:
        if original != updated:
            file.write_text(updated)
    # Derive the actual dex root rather than assuming a classesN index.
    dexroot = next(parent for parent in changes[0][0].parents if parent.parent == root)
    destination = dexroot / 'io/mesalabs/unica/camera'
    destination.mkdir(parents=True, exist_ok=True)
    for file in payload:
        target = destination / file.name
        if not target.exists() or target.read_bytes() != file.read_bytes():
            shutil.copyfile(file, target)
    return len(changes)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('decoded', type=Path)
    args = parser.parse_args()
    apply(args.decoded)
    print('PASS capability-gated physical aperture control in native quick bar')
