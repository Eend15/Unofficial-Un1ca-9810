from pathlib import Path
import re, unittest
from patch_touch_lpm_exit import FILES, MARKER, transform
KERNEL = Path(__file__).resolve().parents[5].parent / 'exynos9810-kernel'


def function(text, signature):
    start = text.index(signature + '\n{')
    return text[start:text.index('\n}\n', start)]


class LpmExitTests(unittest.TestCase):
    def test_actual_drivers(self):
        for rel in FILES:
            with self.subTest(rel=rel):
                original = (KERNEL / rel).read_text()
                self.assertNotIn(MARKER, original)
                fixed = transform(original)
                self.assertEqual(transform(fixed), fixed)
                opened = function(fixed, 'static int sec_ts_input_open(struct input_dev *dev)')
                lpm = opened[opened.index('if (ts->power_status == SEC_TS_STATE_LPM) {'):opened.index('} else {')]
                # Every non-reset-work path exits LPM; dt2w no longer skips it.
                self.assertIn('sec_ts_set_lowpowermode(ts, TO_TOUCH_MODE);', lpm)
                self.assertNotRegex(lpm, r'dt2w_switch\)\s*\n\s*disable_irq_wake')
                self.assertIn('if (un1ca_dt2w_irq_wake) {', opened)
                closed = function(fixed, 'static void sec_ts_input_close(struct input_dev *dev)')
                self.assertEqual(closed.count('enable_irq_wake(ts->client->irq);'), 1)
                self.assertIn('un1ca_dt2w_irq_wake = true;', closed)
                reset = function(fixed, 'static void sec_ts_reset_work(struct work_struct *work)')
                guard = reset.index('if (s2w_switch || dt2w_switch) {')
                self.assertLess(guard, reset.index('ret = sec_ts_set_lowpowermode(ts, TO_LOWPOWER_MODE);'))
                self.assertEqual(len(re.findall(MARKER, fixed)), 3)

    def test_unknown_driver_is_rejected(self):
        with self.assertRaises(ValueError):
            transform('static bool is_suspended;\n')


if __name__ == '__main__':
    unittest.main()
