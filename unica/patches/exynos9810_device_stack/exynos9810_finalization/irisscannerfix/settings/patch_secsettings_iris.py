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


def main(root: Path, helper_smali_root: Path):
    frags = list(root.glob("smali*/" + FRAGMENT))
    if len(frags) != 1:
        raise ValueError(f"expected one ChooseLockGenericFragment, found {len(frags)}")
    out = patch(frags[0].read_text())
    if patch(out) != out:
        raise ValueError("not idempotent")
    frags[0].write_text(out)
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
          " (refreshed on resume)")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
