import unittest

import patch_frozen_socket_destroy as p

METHOD = p.METHOD + """    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-string v0, "Callback already registered: "

    .line 410
    const-string v1, "executor cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
""" + p.ANCHOR + """
    .line 412
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    return-void
.end method
"""
OTHER = """.method public blacklist unregisterUidFrozenStateChangedCallback(Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V
    .locals 2
""" + p.ANCHOR.replace("p2", "p1") + """    return-void
.end method
"""
SMALI = ".class public Landroid/app/ActivityManager;\n\n" + METHOD + "\n" + OTHER


class FrozenSocketDestroyTest(unittest.TestCase):
    def test_guard_follows_null_check_in_register_only(self):
        out = p.patch(SMALI)
        reg = out[out.index(p.METHOD):out.index(".end method")]
        self.assertLess(reg.index("checkNotNull"), reg.index(p.MARKER))
        self.assertLess(reg.rindex("checkNotNull"), reg.index(p.MARKER))
        self.assertIn(f'const-string v2, "{p.CS_PREFIX}"', reg)
        self.assertTrue(out.endswith(OTHER))
        self.assertEqual(out.count(p.MARKER), 1)

    def test_guard_keeps_v0_and_skips_with_return(self):
        guard = p.GUARD
        self.assertNotIn(" v0", guard)
        self.assertIn("return-void\n    :unica_frozen_callback_allowed", guard)

    def test_idempotent(self):
        once = p.patch(SMALI)
        self.assertEqual(p.patch(once), once)

    def test_rejects_changed_body(self):
        with self.assertRaises(ValueError):
            p.patch(SMALI.replace(".locals 3", ".locals 2"))
        with self.assertRaises(ValueError):
            p.patch(SMALI.replace(p.METHOD, p.METHOD.replace("blacklist ", "")))


if __name__ == "__main__":
    unittest.main()
