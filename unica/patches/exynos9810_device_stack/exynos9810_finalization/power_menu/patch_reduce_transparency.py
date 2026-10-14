"""Respect the accessibility preference in both Samsung power-menu blur paths."""
from pathlib import Path
import sys

MARKER = "# UN1CA: respect reduced transparency before constructing blur"

def patch(text: str, name: str) -> str:
    if MARKER in text:
        return text
    signature = ".method public final onInflateView(Landroid/view/View;)V\n    .locals 2\n"
    if text.count(signature) != 1:
        raise ValueError(f"Unexpected onInflateView in {name}")
    owner = f"Lcom/android/systemui/globalactions/features/{name};"
    guard = f"""
    {MARKER}
    invoke-virtual {{p1}}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual {{v0}}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    const-string v1, "accessibility_reduce_transparency"
"""
    # Keep p0 (this) intact; use v2 for the default setting value.
    guard += f"""    const/4 v2, 0x0
    invoke-static {{v0, v1, v2}}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    move-result v0
    if-eqz v0, :unica_original_blur
    const/4 v0, 0x0
    invoke-virtual {{p1, v0}}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V
    iget-object v0, p0, {owner}->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;
    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactions/util/SystemConditions;
    invoke-interface {{v0, v1}}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :unica_dark_background
    const/4 v0, -0x1
    goto :unica_opaque_background
    :unica_dark_background
    const v0, -0x1000000
    :unica_opaque_background
    invoke-virtual {{p1, v0}}, Landroid/view/View;->setBackgroundColor(I)V
    return-void
    :unica_original_blur
"""
    return text.replace(signature, signature.replace(".locals 2", ".locals 3") + guard, 1)

def main(root: Path):
    updates = []
    for name in ("SepBlurStrategy", "CapturedBlurStrategy"):
        files = list(root.glob(f"smali*/com/android/systemui/globalactions/features/{name}.smali"))
        if len(files) != 1:
            raise ValueError(f"Expected one {name}, found {len(files)}")
        text = files[0].read_text()
        result = patch(text, name)
        if patch(result, name) != result:
            raise ValueError("Patch is not idempotent")
        updates.append((files[0], result))
    for path, result in updates:
        path.write_text(result)
    print("Power menu: both blur paths respect reduced transparency")

if __name__ == "__main__":
    main(Path(sys.argv[1]))
