from pathlib import Path
import re, subprocess, tempfile, unittest
from patch_dt2w_tap_coords import FILE, MARKER, NEW, OLD, transform
KERNEL = Path(__file__).resolve().parents[5].parent / 'exynos9810-kernel'
DRIVERS = ('drivers/input/touchscreen/sec_ts/sec_ts.c',
           'drivers/input/touchscreen/sec_ts/y771/sec_ts.c')

# The X handling of wg_input_event, compiled on its own: driver PRESS (raw X)
# and MOVE (X + 5000) reports must both end up as the real coordinate.
HARNESS = r'''
#include <stdio.h>
#define ABS_MT_POSITION_X 0x35
static int suspended = 1;
static int is_suspended(void) { return suspended; }
static int fix_x(unsigned int code, int value)
{
%s	return value;
}
int main(void)
{
	int press = fix_x(ABS_MT_POSITION_X, 700);
	int move = fix_x(ABS_MT_POSITION_X, 700 + 5000);
	suspended = 0;
	int awake = fix_x(ABS_MT_POSITION_X, 700);
	printf("%%d %%d %%d\n", press, move, awake);
	return !(press == 700 && move == 700 && awake == 700);
}
'''


class TapCoordTests(unittest.TestCase):
    def test_actual_wake_gestures(self):
        original = (KERNEL / FILE).read_text()
        fixed = transform(original)
        self.assertEqual(transform(fixed), fixed)
        self.assertEqual(fixed.count(MARKER), 1)
        self.assertNotIn(OLD, fixed)

    def test_drivers_offset_move_reports_only(self):
        # The premise of the fix: the +5000 sits in the MOVE branch, not PRESS.
        for rel in DRIVERS:
            with self.subTest(rel=rel):
                text = (KERNEL / rel).read_text()
                press = text.index('SEC_TS_COORDINATE_ACTION_PRESS) {')
                move = text.index('SEC_TS_COORDINATE_ACTION_MOVE) {')
                offset = text.index('ts->coord[t_id].x += 5000;')
                self.assertLess(press, move)
                self.assertGreater(offset, move)
                self.assertEqual(len(re.findall(r'x \+= 5000', text)), 1)

    def test_press_and_move_give_the_real_x(self):
        for body, ok in ((OLD, False), (NEW, True)):
            with self.subTest(fixed=ok), tempfile.TemporaryDirectory() as d:
                src = Path(d) / 't.c'
                src.write_text(HARNESS % body)
                subprocess.run(['cc', '-o', str(Path(d) / 't'), str(src)], check=True)
                run = subprocess.run([str(Path(d) / 't')], capture_output=True, text=True)
                self.assertEqual(run.returncode == 0, ok, run.stdout)

    def test_unknown_file_is_rejected(self):
        with self.assertRaises(ValueError):
            transform('static void wg_input_event(void) {}\n')


if __name__ == '__main__':
    unittest.main()
