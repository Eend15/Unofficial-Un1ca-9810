"""Hook the UN1CA iris entry into One UI 8 Screen lock and biometrics (decoded SecSettings)."""
from pathlib import Path
import re
import shutil
import sys

FRAGMENT = "com/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment.smali"
UPDATE = re.compile(
    r"    invoke-virtual \{(v\d+), v\d+\}, Lcom/android/settings/password/ChooseLockGeneric\$ChooseLockGenericFragment;"
    r"->updateBiometricsMenuPreference\(Ljava/lang/String;\)V\n")
HOOK = "Lcom/samsung/android/settings/un1ca/IrisLockMenu;->update(Ljava/lang/Object;)V"
P0_WRITE = re.compile(
    r"^\s+(?:move|iget|sget|aget|const|new-instance|new-array|check-cast|instance-of|array-length"
    r"|neg|not|add|sub|mul|div|rem|and|or|xor|shl|shr|ushr|int-to|long-to|float-to|double-to)"
    r"[\w/-]* p0,", re.M)
RESUME_HOOK ="Lcom/samsung/android/settings/un1ca/IrisLockMenu;->onResume(Ljava/lang/Object;)V"
HELPER = "com/samsung/android/settings/un1ca/IrisLockMenu.smali"


def patch_update(text: str) -> str:
    if HOOK in text:
        return text
    start = text.index(".method public updatePreferencesOrFinish(Z)V")
    end = text.index("\n.end method", start)
    calls = list(UPDATE.finditer(text, start, end))
    # Face, fingerprint and the about entry are refreshed back to back; hook after the last.
    if len(calls) != 3 or len({m.group(1) for m in calls}) != 1:
        raise ValueError(f"expected 3 biometrics menu updates on one fragment register, found {len(calls)}")
    last = calls[-1]
    call = f"\n    invoke-static {{{last.group(1)}}}, {HOOK}\n"
    return text[:last.end()] + call + text[last.end():]


def patch_resume(text: str) -> str:
    # Stock refreshes the biometrics menus only in onCreate/onActivityResult; the iris
    # page is a plain startActivity, so refresh them when the lock page comes back.
    if RESUME_HOOK in text:
        return text
    start = text.index(".method public onResume()V")
    end = text.index("\n.end method", start)
    body = text[start:end]
    # p0 must still be the fragment at the exit: no instruction may write to it.
    if P0_WRITE.search(body):
        raise ValueError("onResume reassigns p0")
    tail = body.rindex("\n    :cond_")
    ret = body.index("\n    return-void", tail)
    if body[tail:ret].count("\n") != 1:
        raise ValueError("unexpected onResume exit block")
    pos = start + ret
    call = f"\n    invoke-static {{p0}}, {RESUME_HOOK}\n"
    return text[:pos] + call + text[pos:]


def patch(text: str) -> str:
    return patch_resume(patch_update(text))


CHOOSER = ("com/samsung/android/settings/biometrics/"
           "BiometricsChooseLockGeneric$BiometricsChooseLockGenericFragment.smali")
MENU = "Lcom/samsung/android/settings/un1ca/IrisLockMenu;"
KEEP_OPEN = f"{MENU}->isIrisChooser(Ljava/lang/Object;)Z"
CREATED = f"{MENU}->onChooserCreated(Ljava/lang/Object;)V"
VIEW_CREATED = f"{MENU}->onChooserViewCreated(Ljava/lang/Object;)V"
FP_CHECK = re.compile(
    r"(    iget-boolean (v\d+), p0, Lcom/android/settings/password/ChooseLockGeneric\$ChooseLockGenericFragment;"
    r"->mForFingerprint:Z\n\s*if-nez \2, (:cond_\w+)\n)"
    r"(\s*invoke-virtual \{p0\}, Lcom/android/settings/password/ChooseLockGeneric\$ChooseLockGenericFragment;->finish\(\)V\n)")
HEADER_TEXT = re.compile(r"\n    invoke-virtual \{(p\d|v\d+), (p\d|v\d+)\}, Landroid/widget/TextView;->setText\(I\)V\n")


def method_span(text: str, sig: str):
    start = text.index(sig)
    return start, text.index("\n.end method", start)


def patch_chooser(text: str) -> str:
    """One UI 8 'Set a secure screen lock first' chooser: keep it open for irises."""
    if KEEP_OPEN in text:
        return text
    start, end = method_span(text, ".method public final onCreate(Landroid/os/Bundle;)V")
    m = FP_CHECK.search(text, start, end)
    if not m:
        raise ValueError("chooser onCreate: face/fingerprint finish check not found")
    reg, label = m.group(2), m.group(3)
    keep = (f"    invoke-static {{p0}}, {KEEP_OPEN}\n    move-result {reg}\n"
            f"    if-nez {reg}, {label}\n")
    text = text[:m.end(1)] + keep + text[m.end(1):]
    start, end = method_span(text, ".method public final onCreate(Landroid/os/Bundle;)V")
    body = text[start:end]
    if P0_WRITE.search(body):
        raise ValueError("chooser onCreate reassigns p0")
    ret = body.rindex("\n    return-void")
    text = text[:start + ret] + f"\n    invoke-static {{p0}}, {CREATED}\n" + text[start + ret:]
    # onViewCreated reuses p0 later on: hook right after the header text, before that.
    start, end = method_span(text, ".method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V")
    calls = list(HEADER_TEXT.finditer(text, start, end))
    if len(calls) != 1:
        raise ValueError(f"chooser onViewCreated: expected 1 header setText, found {len(calls)}")
    if P0_WRITE.search(text, start, calls[0].start()):
        raise ValueError("chooser onViewCreated reassigns p0 before the header text")
    pos = calls[0].end()
    return text[:pos] + f"    invoke-static {{p0}}, {VIEW_CREATED}\n" + text[pos:]


SUW = "com/samsung/android/settings/biometrics/SuwBiometricsSetupActivity.smali"
SUW_HOOK = f"{MENU}->onSetupBiometrics(Ljava/lang/Object;)V"
SUW_CONTENT = re.compile(
    r"\n    invoke-virtual \{p0, (p\d|v\d+)\}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;"
    r"->setContentView\(I\)V\n")


def patch_setup_biometrics(text: str) -> str:
    """First setup's "Set up biometrics" list: add Irises right after its layout is set."""
    if SUW_HOOK in text:
        return text
    start, end = method_span(text, ".method public final onCreate(Landroid/os/Bundle;)V")
    calls = list(SUW_CONTENT.finditer(text, start, end))
    if len(calls) != 1:
        raise ValueError(f"setup biometrics onCreate: expected 1 setContentView, found {len(calls)}")
    if P0_WRITE.search(text, start, calls[0].start()):
        raise ValueError("setup biometrics onCreate reassigns p0 before setContentView")
    pos = calls[0].end()
    return text[:pos] + f"    invoke-static {{p0}}, {SUW_HOOK}\n" + text[pos:]


SETUP_LOCK = "com/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment.smali"
SETUP_LOCK_HOOK = f"{MENU}->onSetupLockPicker(Ljava/lang/Object;)V"
SETUP_LOCK_LOAD = re.compile(
    r"\n    invoke-virtual \{p0, (p\d|v\d+)\}, Lcom/android/settings/SettingsPreferenceFragment;"
    r"->addPreferencesFromResource\(I\)V\n")


def patch_setup_lock(text: str) -> str:
    """First setup's "Protect your phone" list: add Irises once its XML list is loaded."""
    if SETUP_LOCK_HOOK in text:
        return text
    start, end = method_span(text, ".method public final addPreferences$2()V")
    calls = list(SETUP_LOCK_LOAD.finditer(text, start, end))
    if len(calls) != 1:
        raise ValueError(f"setup lock addPreferences: expected 1 addPreferencesFromResource, found {len(calls)}")
    if P0_WRITE.search(text, start, calls[0].start()):
        raise ValueError("setup lock addPreferences reassigns p0")
    pos = calls[0].end()
    return text[:pos] + f"    invoke-static {{p0}}, {SETUP_LOCK_HOOK}\n" + text[pos:]


def main(root: Path, helper_smali_root: Path):
    frags = list(root.glob("smali*/" + FRAGMENT))
    if len(frags) != 1:
        raise ValueError(f"expected one ChooseLockGenericFragment, found {len(frags)}")
    out = patch(frags[0].read_text())
    if patch(out) != out:
        raise ValueError("not idempotent")
    frags[0].write_text(out)
    choosers = list(root.glob("smali*/" + CHOOSER))
    if len(choosers) != 1:
        raise ValueError(f"expected one BiometricsChooseLockGenericFragment, found {len(choosers)}")
    out = patch_chooser(choosers[0].read_text())
    if patch_chooser(out) != out:
        raise ValueError("chooser patch not idempotent")
    choosers[0].write_text(out)
    suw = list(root.glob("smali*/" + SUW))
    if len(suw) != 1:
        raise ValueError(f"expected one SuwBiometricsSetupActivity, found {len(suw)}")
    out = patch_setup_biometrics(suw[0].read_text())
    if patch_setup_biometrics(out) != out:
        raise ValueError("setup biometrics patch not idempotent")
    suw[0].write_text(out)
    lock = list(root.glob("smali*/" + SETUP_LOCK))
    if len(lock) != 1:
        raise ValueError(f"expected one SetupChooseLockGenericFragment, found {len(lock)}")
    out = patch_setup_lock(lock[0].read_text())
    if patch_setup_lock(out) != out:
        raise ValueError("setup lock patch not idempotent")
    lock[0].write_text(out)
    # The helper gets its own dex so no existing dex grows past the method limit.
    pkg = Path(HELPER).parent
    found_helper = list(root.glob("smali*/" + HELPER))
    if found_helper:
        dst_pkg = found_helper[0].parent
        shutil.rmtree(dst_pkg)
        shutil.copytree(helper_smali_root / pkg, dst_pkg)
    else:
        existing = sorted(p.name for p in root.glob("smali_classes*"))
        n = max([1] + [int(p[len("smali_classes"):]) for p in existing]) + 1
        # Copy the whole package: D8 emits synthetic lambda classes next to the helper.
        shutil.copytree(helper_smali_root / pkg, root / f"smali_classes{n}" / pkg)
    print("SecSettings: Intelligent Scan and Irises entries hooked into Screen lock and biometrics"
          " (refreshed on resume); secure lock chooser kept open for irises; Irises offered in first setup")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
