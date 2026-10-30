"""Hook One UI 8 SystemUI for lock screen iris unlock (decoded SystemUI.apk).

* KeyguardUpdateMonitor.handleStartedWakingUp hands the monitor to Un1caIrisKeyguard,
  which registers a keyguard callback and drives SecIrisService with Samsung's own
  preview window.
* AppOpsControllerImpl.isUserVisible exempts the platform-signed iris service from
  the privacy dot, like Samsung's own sead/sightcare sensor services.
Usage: patch_systemui_iris.py <decoded SystemUI.apk> <helper smali root>
"""
from pathlib import Path
import re
import shutil
import sys

MARKER = "# UN1CA: lock screen iris unlock"
HOOK = ("    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;"
        "->onStartedWakingUp(Lcom/android/keyguard/KeyguardUpdateMonitor;)V\n")
METHOD = re.compile(r"(\.method public handleStartedWakingUp\(I\)V\n.*?)(\n    return-void\n)(\.end method)", re.S)


def patch(text: str) -> str:
    if MARKER in text:
        return text
    found = METHOD.findall(text)
    if len(found) != 1 or found[0][0].count("return-void") != 0:
        raise ValueError("handleStartedWakingUp does not have the single trailing return-void expected")
    return METHOD.sub(lambda m: f"{m[1]}\n    {MARKER}\n{HOOK}{m[2]}{m[3]}", text, count=1)


PRIVACY_MARKER = "# UN1CA: system iris service camera use is not a privacy item"
PRIVACY_HEAD = """.method public final isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
"""
# Same rule Samsung applies to its own platform-signed sensor services (sead, sightcare)
# right below: only the real, platform-signed iris service is exempt.
PRIVACY_HOOK = f"""
    {PRIVACY_MARKER}
    const-string v0, "com.samsung.android.server.iris"

    invoke-virtual {{v0, p1}}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :un1ca_not_iris

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {{v1}}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {{v1, v2, v0}}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :un1ca_not_iris

    const/4 v1, 0x0

    return v1

    :un1ca_not_iris
"""


def patch_privacy(text: str) -> str:
    if PRIVACY_MARKER in text:
        return text
    if text.count(PRIVACY_HEAD) != 1 or '"com.samsung.sightcare"' not in text:
        raise ValueError("AppOpsControllerImpl.isUserVisible does not match One UI 8")
    return text.replace(PRIVACY_HEAD, PRIVACY_HEAD + PRIVACY_HOOK, 1)


HELPER_PKG = "com/android/keyguard"
HELPER = HELPER_PKG + "/Un1caIrisKeyguard.smali"


def one(root: Path, rel: str) -> Path:
    found = list(root.glob("smali*/" + rel))
    if len(found) != 1:
        raise ValueError(f"expected one {rel}, found {len(found)}")
    return found[0]


def main(root: Path, helper_smali_root: Path):
    """root: decoded SystemUI.apk; helper_smali_root: prebuilt Un1caIrisKeyguard smali."""
    kum = one(root, "com/android/keyguard/KeyguardUpdateMonitor.smali")
    out = patch(kum.read_text())
    if patch(out) != out:
        raise ValueError("not idempotent")
    kum.write_text(out)
    ops = one(root, "com/android/systemui/appops/AppOpsControllerImpl.smali")
    out = patch_privacy(ops.read_text())
    if patch_privacy(out) != out:
        raise ValueError("not idempotent")
    ops.write_text(out)
    # The helper gets its own dex so no existing dex grows past the method limit.
    if not list(root.glob("smali*/" + HELPER)):
        existing = [p.name for p in root.glob("smali_classes*")]
        n = max([1] + [int(p[len("smali_classes"):]) for p in existing]) + 1
        dst = root / f"smali_classes{n}" / HELPER_PKG
        dst.mkdir(parents=True)
        # Copy only the helper and its synthetic classes; the package itself is SystemUI's.
        for f in (helper_smali_root / HELPER_PKG).glob("Un1caIrisKeyguard*.smali"):
            shutil.copyfile(f, dst / f.name)
    print("SystemUI: KeyguardUpdateMonitor wake hook added for iris unlock, iris service exempt from privacy dot")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
