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
HELPER = "com/samsung/android/settings/un1ca/IrisLockMenu.smali"


def patch(text: str) -> str:
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


def main(root: Path, helper_smali_root: Path):
    frags = list(root.glob("smali*/" + FRAGMENT))
    if len(frags) != 1:
        raise ValueError(f"expected one ChooseLockGenericFragment, found {len(frags)}")
    out = patch(frags[0].read_text())
    if patch(out) != out:
        raise ValueError("not idempotent")
    frags[0].write_text(out)
    # The helper gets its own dex so no existing dex grows past the method limit.
    existing = sorted(p.name for p in root.glob("smali_classes*"))
    n = max([1] + [int(p[len("smali_classes"):]) for p in existing]) + 1
    if not list(root.glob("smali*/" + HELPER)):
        # Copy the whole package: D8 emits synthetic lambda classes next to the helper.
        pkg = Path(HELPER).parent
        shutil.copytree(helper_smali_root / pkg, root / f"smali_classes{n}" / pkg)
    print("SecSettings: Irises entry hooked into Screen lock and biometrics")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
