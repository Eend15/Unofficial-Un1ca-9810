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


class SystemUiTest(unittest.TestCase):
    def test_hooks_and_helper_dex(self):
        d = Path(tempfile.mkdtemp())
        self.addCleanup(shutil.rmtree, d)
        (d / "smali/com/android/keyguard").mkdir(parents=True)
        (d / "smali/com/android/systemui/appops").mkdir(parents=True)
        (d / "smali_classes4").mkdir()
        (d / "smali/com/android/keyguard/KeyguardUpdateMonitor.smali").write_text(KUM)
        (d / "smali/com/android/systemui/appops/AppOpsControllerImpl.smali").write_text(OPS)
        systemui.main(d, FIX / "systemui" / "smali")
        systemui.main(d, FIX / "systemui" / "smali")
        kum = (d / "smali/com/android/keyguard/KeyguardUpdateMonitor.smali").read_text()
        self.assertEqual(kum.count("Un1caIrisKeyguard;->onStartedWakingUp"), 1)
        self.assertLess(kum.index("onStartedWakingUp"), kum.index("return-void"))
        ops = (d / "smali/com/android/systemui/appops/AppOpsControllerImpl.smali").read_text()
        self.assertEqual(ops.count('"com.samsung.android.server.iris"'), 1)
        self.assertTrue((d / "smali_classes5/com/android/keyguard/Un1caIrisKeyguard.smali").is_file())


class PrebuiltSmaliTest(unittest.TestCase):
    def test_only_helper_classes_are_shipped(self):
        allowed = {"secirisservice": "com/samsung/android/server/iris/Un1caIrisGrace",
                   "systemui": "com/android/keyguard/Un1caIrisKeyguard",
                   "settings": "com/samsung/android/settings/un1ca/"}
        for part, prefix in allowed.items():
            for f in (FIX / part / "smali").rglob("*.smali"):
                rel = f.relative_to(FIX / part / "smali").as_posix()
                self.assertTrue(rel.startswith(prefix), f"{part}: unexpected class {rel} (stub leaked?)")


class StringsTest(unittest.TestCase):
    def test_every_used_key_has_an_english_default(self):
        default = ET.parse(FIX / "irissettings/res/values/strings.xml").getroot()
        keys = {e.get("name") for e in default}
        used = set()
        for src in ("settings/IrisSettingsFragment.java", "settings/IrisLockMenu.java"):
            used |= set(re.findall(r'"([a-z0-9_]+)", "', (FIX / src).read_text()))
        # Resources IrisLockMenu takes from One UI 8 SecSettings itself (menu summary style).
        settings_own = {"comma", "sec_lockscreen_biometrics_summary_color"}
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
                before = svc.read_text()
                sis.main(Path(tmp), FIX / "secirisservice" / "smali")
                self.assertEqual(before, svc.read_text(), f"{m}: not idempotent")
                self.assertNotIn("Landroid/security/KeyStore;", before)


if __name__ == "__main__":
    unittest.main()
