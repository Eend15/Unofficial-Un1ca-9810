#!/usr/bin/env python3
"""Tests for patch_ime_click_tool_type.py on a minimal IMMS smali."""
from pathlib import Path
import importlib.util
import unittest

HERE = Path(__file__).resolve().parent
SPEC = importlib.util.spec_from_file_location(
    "patch_ime_click_tool_type", HERE / "patch_ime_click_tool_type.py"
)
mod = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(mod)

CLS = "Lcom/android/server/inputmethod/InputMethodManagerService;"

SAMPLE = f""".class public final {CLS}
.super Ljava/lang/Object;


# direct methods
{mod.SHOW_CURRENT}
    .locals 14

    const/4 v1, 0x0

    invoke-static {{v0}}, {mod.IS_STYLUS}

    move-result v8

    if-eqz v8, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    :cond_9
    const/16 v8, 0x1002

    :cond_a
    :goto_1
    invoke-virtual {{p0, v5}}, {CLS}->getUserData(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {{v0, v1}}, {mod.UPDATE_TOOL}

    :goto_2
    iget-object v8, v1, Ljava/lang/Object;->x:Ljava/lang/Object;

    return v1
.end method

{mod.SHOW_SOFT_INPUT}
    .locals 1

    const-wide/16 p4, 0x20

    return v0
.end method
"""


class PatchTest(unittest.TestCase):
    def test_patch_stores_and_prefers_click_tool_type(self):
        out = mod.patch(SAMPLE)
        self.assertIn(mod.FIELD_DECL, out)
        self.assertIn(f"iput p5, p0, {mod.FIELD}", out)
        # The store happens before p5 is overwritten.
        self.assertLess(out.index(f"iput p5, p0, {mod.FIELD}"),
                        out.index("const-wide/16 p4, 0x20"))
        # The override sits after the join label and before the IME call.
        override = out.index(f"iget v8, p0, {mod.FIELD}")
        self.assertLess(out.index("    :goto_1\n"), override)
        self.assertLess(override, out.index(mod.UPDATE_TOOL))
        self.assertIn("move v1, v8", out)

    def test_patch_is_idempotent(self):
        once = mod.patch(SAMPLE)
        self.assertEqual(once, mod.patch(once))

    def test_missing_block_fails(self):
        broken = SAMPLE.replace(mod.IS_STYLUS, "Lfoo;->bar()Z")
        with self.assertRaises(SystemExit):
            mod.patch(broken)


if __name__ == "__main__":
    unittest.main()
