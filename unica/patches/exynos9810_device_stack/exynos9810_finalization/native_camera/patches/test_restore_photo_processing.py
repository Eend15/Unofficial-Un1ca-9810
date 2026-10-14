import unittest
from restore_photo_processing import (
    ASSIGN, PHOTO, QR, SHUTTER_HOOK, DUPLICATE_PHOTO_SHUTTER,
    QR_REPEATING_ORIGINAL, QR_REPEATING_PATCHED, restore
)

class PhotoRoutingTests(unittest.TestCase):
    def test_migrates_bypass_and_removes_duplicate_shutter_hook(self):
        original = 'before\n' + QR + PHOTO + ASSIGN + 'after\n'
        photo_raw = 'before\n' + SHUTTER_HOOK + 'after\n'
        header = '.method private synthetic lambda$getSupportedRepeatingKeyExecutorMap$47(Ljava/lang/Object;)Ljava/lang/Integer;\n    .locals 1\n\n    '
        beauty_raw = header + QR_REPEATING_ORIGINAL + '\n.end method\n'
        maker, photo, beauty = restore(original, photo_raw, beauty_raw)
        self.assertEqual(maker, 'before\n' + QR + ASSIGN + 'after\n')
        self.assertNotIn('exynos9810_shutter_done', photo)
        self.assertEqual(beauty, header + QR_REPEATING_PATCHED + '\n.end method\n')
        # Idempotence
        self.assertEqual(restore(maker, photo, beauty), (maker, photo, beauty))

    def test_stock_samsung_assignment_preserved(self):
        maker, photo, _ = restore(ASSIGN + 'TRUE\n', 'already clean\n')
        self.assertEqual(maker, QR + ASSIGN + 'TRUE\n')
        self.assertEqual(photo, 'already clean\n')

    def test_photo_capture_available_does_not_send_second_shutter(self):
        # The real camera already receives its first shutter from Camera2
        # onCaptureStarted before the 4032x3024 JPEG arrives.
        method = ('.method public sendCaptureAvailable(ILjava/lang/Long;)V\n'
                  '    .locals 3\n\n' + DUPLICATE_PHOTO_SHUTTER +
                  '    invoke-static {v0, v1, p1, p2, p0}, '
                  'Lcom/samsung/android/camera/core2/callback/helper/'
                  'CallbackHelper$PictureCallbackHelper;->a'
                  '(Ljava/lang/String;Lcom/samsung/android/camera/core2/callback/'
                  'PictureCallback;ILjava/lang/Long;'
                  'Lcom/samsung/android/camera/core2/CamDevice;)V\n'
                  '.end method\n')
        _, patched, _ = restore(ASSIGN, method)
        self.assertNotIn('PictureCallbackHelper;->g', patched)
        self.assertIn('PictureCallbackHelper;->a', patched)
        self.assertNotIn(':cond_0', patched)
        self.assertEqual(restore(QR + ASSIGN, patched)[1], patched)

        # Unknown layouts should fail closed instead of shipping a duplicate.
        unexpected = method.replace('instance-of v0, p0', 'instance-of v1, p0')
        with self.assertRaises(ValueError):
            restore(ASSIGN, unexpected)

    def test_unexpected_layout_rejected(self):
        for maker in ('', ASSIGN * 2, QR + PHOTO * 2 + ASSIGN):
            with self.assertRaises(ValueError):
                restore(maker, '')
        with self.assertRaises(ValueError):
            restore(ASSIGN, '# Exynos9810 legacy HAL does not publish Samsung shutter metadata.')
        with self.assertRaises(ValueError):
            restore(ASSIGN, '', 'unknown QR implementation')

if __name__ == '__main__':
    unittest.main()
