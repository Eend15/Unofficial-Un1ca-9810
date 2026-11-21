#!/usr/bin/env python3
"""Offline tests for irisscannerfix. Firmware-backed checks run when out/fw is present."""
import hashlib
import importlib.util
import json
import re
import shutil
import subprocess
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

FIX = Path(__file__).resolve().parents[1]
ROOT = FIX.parents[4]
FW = ROOT / "out" / "fw"
TARGET_FWS = ["SM-G960F_PHN", "SM-G965F_PHN", "SM-N960F_PHN"]
APKTOOL = ROOT / "out" / "tools" / "bin" / "apktool.jar"
SHIM_SHA256 = "3200683a06109c0fa4af446e3db4e68dd9527fd633943dc699d68d96d8ecacd1"


def load(rel):
    spec = importlib.util.spec_from_file_location(Path(rel).stem, FIX / rel)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


bytepatch = load("native/apply_byte_patch.py")
sepolicy = load("sepolicy/patch_sepolicy.py")
systemui = load("systemui/patch_systemui_iris.py")
settings = load("settings/patch_secsettings_iris.py")
sis = load("secirisservice/patch_sec_iris_service.py")


def sha(data):
    return hashlib.sha256(data).hexdigest()


class BytePatchTest(unittest.TestCase):
    def spec(self, data, out):
        return {"name": "t", "input_sha256": sha(data), "output_sha256": sha(out),
                "ranges": [[1, data[1:3].hex(), out[1:3].hex()]]}

    def test_applies_verified_ranges(self):
        data, out = b"\x00\x11\x22\x33", b"\x00\xaa\xbb\x33"
        self.assertEqual(bytepatch.apply(self.spec(data, out), data), out)

    def test_rejects_other_input(self):
        data, out = b"\x00\x11\x22\x33", b"\x00\xaa\xbb\x33"
        with self.assertRaises(ValueError):
            bytepatch.apply(self.spec(data, out), b"\x01\x11\x22\x33")

    def test_specs_are_well_formed(self):
        for name in ("irisd", "libIrisService"):
            spec = json.loads((FIX / "native" / f"{name}.patch.json").read_text())
            end = -1
            for offset, old, new in spec["ranges"]:
                self.assertGreater(offset, end, f"{name}: ranges overlap or are unsorted")
                self.assertEqual(len(old), len(new))
                self.assertNotEqual(old, new)
                end = offset + len(old) // 2 - 1

    def test_shim_is_the_verified_build(self):
        self.assertEqual(sha((FIX / "native" / "libiris_a10_shim.so").read_bytes()), SHIM_SHA256)

    @unittest.skipUnless(all((FW / m).is_dir() for m in TARGET_FWS), "stock firmwares not extracted")
    def test_patches_apply_to_all_three_targets(self):
        for name, rel in (("irisd", "bin/irisd"), ("libIrisService", "lib64/libIrisService.so")):
            spec = json.loads((FIX / "native" / f"{name}.patch.json").read_text())
            for m in TARGET_FWS:
                data = (FW / m / "system" / "system" / rel).read_bytes()
                self.assertEqual(sha(bytepatch.apply(spec, data)), spec["output_sha256"], f"{m} {name}")


class SepolicyTest(unittest.TestCase):
    def tree(self, policy_types=True):
        d = Path(tempfile.mkdtemp())
        self.addCleanup(shutil.rmtree, d)
        (d / "mapping").mkdir()
        types = "(type irisd)\n(type irisd_service)\n(type sec_iris_service)\n" if policy_types else ""
        (d / "system_ext_sepolicy.cil").write_text(types)
        (d / "mapping" / "33.0.cil").write_text("(typeattributeset wsmd_33_0 (wsmd))\n")
        return d

    def test_adds_rules_once(self):
        d = self.tree()
        sepolicy.main(d)
        first = [(d / f).read_text() for f in ("system_ext_sepolicy.cil", "mapping/33.0.cil")]
        sepolicy.main(d)
        self.assertEqual(first, [(d / f).read_text() for f in ("system_ext_sepolicy.cil", "mapping/33.0.cil")])
        self.assertIn("(allow irisd vendor_file (dir (open read)))", first[0])
        self.assertIn("(typeattributeset sec_iris_service_33_0 (sec_iris_service))", first[1])

    def test_refuses_policy_without_iris_types(self):
        with self.assertRaises(ValueError):
            sepolicy.main(self.tree(policy_types=False))


KUM = """.method public handleStartedWakingUp(I)V
    .locals 5
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    return-void
.end method
"""
OPS = """.method public final isUserVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.samsung.sightcare"

    return v2
.end method
"""
BUC = """.method public final startWakeAndUnlock(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V
    .locals 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string p1, "MODE_UNLOCK_COLLAPSING"

    :cond_8
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_a

    :cond_9
    invoke-interface {p1, v8}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    :cond_a
    return-void
.end method
"""


class SystemUiTest(unittest.TestCase):
    def test_hooks_and_helper_dex(self):
        d = Path(tempfile.mkdtemp())
        self.addCleanup(shutil.rmtree, d)
        (d / "smali/com/android/keyguard").mkdir(parents=True)
        (d / "smali/com/android/systemui/appops").mkdir(parents=True)
        (d / "smali_classes4").mkdir()
        (d / "smali/com/android/keyguard/KeyguardUpdateMonitor.smali").write_text(KUM)
        (d / "smali/com/android/systemui/appops/AppOpsControllerImpl.smali").write_text(OPS)
        (d / "smali/com/android/systemui/statusbar/phone").mkdir(parents=True)
        (d / "smali/com/android/systemui/statusbar/phone/BiometricUnlockController.smali").write_text(BUC)
        (d / "smali/com/android/systemui/camera").mkdir(parents=True)
        (d / "smali/com/android/systemui/camera/CameraGestureHelper.smali").write_text(
            ".method public final launchCamera(I)V\n    .locals 4\n\n    return-void\n.end method\n")
        (d / "smali/com/android/systemui/statusbar/KeyguardSecAffordanceView.smali").write_text(
            ".method public final launchShortcut(FF)V\n    .locals 9\n\n    return-void\n.end method\n")
        systemui.main(d, FIX / "systemui" / "smali")
        systemui.main(d, FIX / "systemui" / "smali")
        buc = (d / "smali/com/android/systemui/statusbar/phone/BiometricUnlockController.smali").read_text()
        self.assertEqual(buc.count("BiometricSourceType;->IRIS"), 1)
        self.assertLess(buc.index("BiometricSourceType;->IRIS"), buc.index("BiometricSourceType;->FACE"))
        self.assertIn("if-eqz p1, :cond_a", buc)
        self.assertIn("goto :cond_a", buc)
        for rel in ("camera/CameraGestureHelper.smali", "statusbar/KeyguardSecAffordanceView.smali"):
            src = (d / "smali/com/android/systemui" / rel).read_text()
            self.assertEqual(src.count("Un1caIrisKeyguard;->onLaunchFromLockscreen()V"), 1, rel)
            self.assertLess(src.index(".locals"), src.index("onLaunchFromLockscreen"), rel)
        kum = (d / "smali/com/android/keyguard/KeyguardUpdateMonitor.smali").read_text()
        self.assertEqual(kum.count("Un1caIrisKeyguard;->onStartedWakingUp"), 1)
        self.assertLess(kum.index("onStartedWakingUp"), kum.index("return-void"))
        ops = (d / "smali/com/android/systemui/appops/AppOpsControllerImpl.smali").read_text()
        self.assertEqual(ops.count('"com.samsung.android.server.iris"'), 1)
        self.assertTrue((d / "smali_classes5/com/android/keyguard/Un1caIrisKeyguard.smali").is_file())


CLG = """.method public onResume()V
    .locals 3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V
    iget-object v0, p0, Lx;->mLockTypePolicy:Lx;
    if-nez v0, :cond_2
    :cond_1
    return-void
    :cond_2
    return-void
.end method
.method public updatePreferencesOrFinish(Z)V
    .locals 2
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsMenuPreference(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsMenuPreference(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsMenuPreference(Ljava/lang/String;)V
    return-void
.end method
"""


BCLG = """.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onCreate(Landroid/os/Bundle;)V
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z
    if-nez v0, :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z
    if-nez v0, :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    return-void
    :cond_0
    move-result-object p1
    return-void
.end method
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    const p2, 0x7f142918
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
    move-result-object p0
    return-void
.end method
"""


def write_secsettings(d: Path):
    frag = d / "smali" / settings.FRAGMENT
    frag.parent.mkdir(parents=True)
    frag.write_text(CLG)
    chooser = d / "smali_classes2" / settings.CHOOSER
    chooser.parent.mkdir(parents=True)
    chooser.write_text(BCLG)
    return frag, chooser


class SecSettingsTest(unittest.TestCase):
    def test_chooser_hooks(self):
        d = Path(tempfile.mkdtemp())
        self.addCleanup(shutil.rmtree, d)
        _, chooser = write_secsettings(d)
        settings.main(d, FIX / "settings" / "smali")
        settings.main(d, FIX / "settings" / "smali")
        out = chooser.read_text()
        for hook in (settings.KEEP_OPEN, settings.CREATED, settings.VIEW_CREATED):
            self.assertEqual(out.count(hook), 1, hook)
        create = out[:out.index(".end method")]
        # Iris check sits between the fingerprint check and the stock finish().
        self.assertLess(create.index("mForFingerprint"), create.index(settings.KEEP_OPEN))
        self.assertLess(create.index(settings.KEEP_OPEN), create.index("->finish()V"))
        self.assertLess(create.rindex(settings.CREATED), create.rindex("return-void"))
        view = out[out.index(".method public final onViewCreated"):]
        # Header hook before onViewCreated reassigns p0.
        self.assertLess(view.index(settings.VIEW_CREATED), view.index("move-result-object p0"))

    def test_update_and_resume_hooks(self):
        d = Path(tempfile.mkdtemp())
        self.addCleanup(shutil.rmtree, d)
        frag, _ = write_secsettings(d)
        settings.main(d, FIX / "settings" / "smali")
        settings.main(d, FIX / "settings" / "smali")
        out = frag.read_text()
        self.assertEqual(out.count("IrisLockMenu;->update(Ljava/lang/Object;)V"), 1)
        self.assertEqual(out.count("IrisLockMenu;->onResume(Ljava/lang/Object;)V"), 1)
        resume = out[out.index(".method public onResume"):out.index(".end method")]
        # At the normal exit (last :cond_ block), with p0 still the fragment.
        self.assertIn(":cond_2\n    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->onResume",
                      resume)
        self.assertTrue((d / "smali_classes3/com/samsung/android/settings/un1ca/IrisLockMenu.smali").is_file())

    def test_refuses_resume_that_reassigns_p0(self):
        bad = CLG.replace("iget-object v0, p0, Lx;->mLockTypePolicy:Lx;",
                          "iget-object p0, p0, Lx;->mLockTypePolicy:Lx;")
        with self.assertRaises(ValueError):
            settings.patch_resume(bad)


class PrebuiltSmaliTest(unittest.TestCase):
    def test_only_helper_classes_are_shipped(self):
        allowed = {"secirisservice": ("com/samsung/android/server/iris/Un1caIrisGrace",
                                      "com/samsung/android/server/iris/Un1caIrisFaceShare"),
                   "systemui": ("com/android/keyguard/Un1caIrisKeyguard",),
                   "settings": ("com/samsung/android/settings/un1ca/",)}
        for part, prefixes in allowed.items():
            for f in (FIX / part / "smali").rglob("*.smali"):
                rel = f.relative_to(FIX / part / "smali").as_posix()
                self.assertTrue(rel.startswith(prefixes), f"{part}: unexpected class {rel} (stub leaked?)")

    def test_face_share_hooks(self):
        """SecIrisService: binder hook on the wrapper, face output in startFrontPreview."""
        share = (FIX / "secirisservice" / "smali/com/samsung/android/server/iris/Un1caIrisFaceShare.smali").read_text()
        for sig in ("onTransact(Ljava/lang/Object;ILandroid/os/Parcel;Landroid/os/Parcel;)Z",
                    "onFrontSession(Ljava/lang/Object;Ljava/util/List;)V",
                    "onAuthenticateStart()V"):
            self.assertIn(sig, share)
        self.assertNotIn("debug.un1ca", share)


class StringsTest(unittest.TestCase):
    def test_every_used_key_has_an_english_default(self):
        default = ET.parse(FIX / "irissettings/res/values/strings.xml").getroot()
        keys = {e.get("name") for e in default}
        used = set()
        for src in ("settings/IrisSettingsFragment.java", "settings/IrisLockMenu.java"):
            used |= set(re.findall(r'"([a-z0-9_]+)", "', (FIX / src).read_text()))
        # Resources and keys IrisLockMenu takes from One UI 8 SecSettings itself (menu
        # summary style, the lock chooser's stock suffix, header view and lock types).
        settings_own = {"comma", "sec_lockscreen_biometrics_summary_color", "biometrics",
                        "bio_face_recognition_title", "description_text",
                        "unlock_set_pin", "unlock_set_password", "unlock_set_pattern"}
        missing = {k for k in used if k not in keys and k not in settings_own
                   and not k.startswith(("un1ca_", "gk_", "sys."))}
        self.assertFalse(missing, f"strings missing from irissettings: {sorted(missing)}")

    def test_all_locales_parse(self):
        dirs = list((FIX / "irissettings/res").glob("values*"))
        self.assertGreater(len(dirs), 80)
        for d in dirs:
            ET.parse(d / "strings.xml")


@unittest.skipUnless(APKTOOL.is_file() and all((FW / m).is_dir() for m in TARGET_FWS),
                     "apktool or stock firmwares missing")
class SecIrisServiceFirmwareTest(unittest.TestCase):
    def test_patches_every_target_apk(self):
        for m in TARGET_FWS:
            with tempfile.TemporaryDirectory() as tmp:
                apk = FW / m / "system/system/priv-app/SecIrisService/SecIrisService.apk"
                subprocess.run(["java", "-jar", str(APKTOOL), "d", "-q", "-r", "-f", str(apk), "-o", tmp],
                               check=True)
                sis.main(Path(tmp), FIX / "secirisservice" / "smali")
                svc = Path(tmp) / "smali/com/samsung/android/server/iris/IrisService.smali"
                wrapper = Path(tmp) / "smali/com/samsung/android/server/iris/IrisService$IrisServiceWrapper.smali"
                before = svc.read_text()
                before_wrapper = wrapper.read_text()
                sis.main(Path(tmp), FIX / "secirisservice" / "smali")
                self.assertEqual(before, svc.read_text(), f"{m}: not idempotent")
                self.assertEqual(before_wrapper, wrapper.read_text(), f"{m} wrapper: not idempotent")
                self.assertNotIn("Landroid/security/KeyStore;", before)
                self.assertNotIn("Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V", before)
                self.assertEqual(before.count("Un1caIrisGrace;->setAutoBrightnessLimit"), 2)
                self.assertNotIn("getBiometricLockscreen(II)I", before_wrapper)
                self.assertEqual(before_wrapper.count("LockPatternUtils;->getBiometricState(II)I"), 2)
                grace = (Path(tmp) / "smali/com/samsung/android/server/iris/Un1caIrisGrace.smali").read_text()
                # Called from the ui sub-package: class and method must be public (else IllegalAccessError).
                self.assertIn(".class public final Lcom/samsung/android/server/iris/Un1caIrisGrace;", grace)
                self.assertIn(".method public static applyPreviewSetting(", grace)
                ivm = (Path(tmp) / "smali/com/samsung/android/server/iris/ui/IrisViewManager.smali").read_text()
                hook = ivm.index("Un1caIrisGrace;->applyPreviewSetting")
                self.assertEqual(ivm.count("Un1caIrisGrace;->applyPreviewSetting"), 1, m)
                self.assertLess(hook, ivm.index("invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView",
                                                hook), m)


if __name__ == "__main__":
    unittest.main()
