from pathlib import Path
import re, subprocess, tempfile, unittest
from patch_dt2w_tap_window import FILE, MARKER, NEW, OLD, restore_original, transform
KERNEL = Path(__file__).resolve().parents[5].parent / 'exynos9810-kernel'

# Screen-off taps recorded on an S9+ (release time ms, x, y), one list per
# screen-off period, i.e. one wake attempt each.
# Recording 1: the old window needed an extra tap twice (666/734 ms gaps).
RECORDING_1 = [
    [(0, 1801, 2627), (193, 1778, 2647)],
    [(0, 1880, 2650), (666, 1794, 2718), (859, 1758, 2724)],
    [(0, 1831, 2637), (446, 1934, 2610)],
    [(0, 1952, 2537), (193, 1939, 2529)],
    [(0, 1565, 2457), (734, 1583, 2522), (919, 1497, 2521)],
    [(0, 2012, 2324), (194, 1903, 2321)],
    [(0, 1609, 2493), (244, 1544, 2523)],
    [(0, 1637, 2414), (210, 1622, 2388)],
    [(0, 2018, 2502), (210, 1933, 2479)],
]
# Recording 2: a 210 ms double tap drifted 321 units sideways (~5 mm).
# Attempt 5 starts with a stray tap 870 ms before the real double tap.
RECORDING_2 = [
    [(0, 2060, 2156), (202, 1900, 2017)],
    [(0, 1947, 2125), (193, 2121, 2143)],
    [(0, 2071, 1765), (185, 1937, 1851)],
    [(0, 1507, 2345), (185, 1393, 2392)],
    [(0, 1693, 2279), (870, 1746, 2511), (1080, 1425, 2648), (1274, 1510, 2625)],
    [(0, 2173, 2422), (184, 2272, 2434)],
    [(0, 2377, 2517), (201, 2358, 2554)],
    [(0, 2446, 1816), (185, 2437, 1799)],
]

# detect_doubletap2wake() copied out of the real wake_gestures.c, compiled with
# the real DT2W_* defines and fed the recorded taps.
HARNESS = r'''
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
%(defines)s
static int sweep_x_limit = SWEEP_X_LIMIT, sweep_y_limit = SWEEP_Y_LIMIT;
static int dt2w_switch = 1, dt2w_custom_tap = 2, gestures_switch = 0;
static bool exec_count = true, touch_cnt = true;
static int touch_nr = 0, x_pre = 0, y_pre = 0;
static unsigned long long tap_time_pre = 0, now_ms = 0;
static int woke = 0;
#define ktime_get() 0
#define ktime_to_ms(t) (now_ms)
static void report_gesture(int g) { (void)g; }
static void wake_pwrtrigger(void) { woke++; }
%(body)s
int main(int argc, char **argv)
{
	int i, taps_to_wake = 0;
	for (i = 1; i + 2 < argc; i += 3) {
		now_ms = 100000 + strtoull(argv[i], 0, 10);
		touch_cnt = true;
		detect_doubletap2wake(atoi(argv[i + 1]), atoi(argv[i + 2]), true);
		if (woke && !taps_to_wake)
			taps_to_wake = (i + 2) / 3;
	}
	printf("%%d\n", taps_to_wake);
	return 0;
}
'''


def harness_source(text):
    defines = '\n'.join(l for l in text.splitlines()
                        if re.match(r'#define (SWEEP_|DT2W_|WAKE_GESTURES_ENABLED)', l))
    start = text.index('static void doubletap2wake_reset(void)')
    end = text.index('/* Sweep2wake/Sweep2sleep */')
    return HARNESS % {'defines': defines, 'body': text[start:end]}


class Harness:
    def __init__(self, text):
        self.dir = tempfile.TemporaryDirectory()
        src = Path(self.dir.name) / 't.c'
        src.write_text(harness_source(text))
        self.exe = str(Path(self.dir.name) / 't')
        subprocess.run(['cc', '-w', '-o', self.exe, str(src)], check=True)

    def taps_needed(self, session):
        args = [str(v) for tap in session for v in tap]
        return int(subprocess.run([self.exe] + args, capture_output=True,
                                  text=True, check=True).stdout)


class TapWindowTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.fixed = transform((KERNEL / FILE).read_text())
        cls.old = restore_original(cls.fixed)
        cls.new_h = Harness(cls.fixed)
        cls.old_h = Harness(cls.old)

    def test_actual_wake_gestures(self):
        self.assertEqual(transform(self.fixed), self.fixed)
        self.assertEqual(self.fixed.count(MARKER), 1)
        self.assertNotIn(OLD, self.fixed)
        self.assertIn(OLD, self.old)
        self.assertEqual(transform(self.old), self.fixed)

    def test_recording_1(self):
        self.assertEqual([self.old_h.taps_needed(s) for s in RECORDING_1],
                         [2, 3, 2, 2, 3, 2, 2, 2, 2])
        self.assertEqual([self.new_h.taps_needed(s) for s in RECORDING_1],
                         [2] * len(RECORDING_1))

    def test_recording_2(self):
        self.assertEqual([self.old_h.taps_needed(s) for s in RECORDING_2],
                         [0, 0, 2, 2, 4, 2, 2, 2])
        # Attempt 5 wakes on the second tap of the real double tap.
        self.assertEqual([self.new_h.taps_needed(s) for s in RECORDING_2],
                         [2, 2, 2, 2, 3, 2, 2, 2])

    def test_slow_or_distant_taps_still_rejected(self):
        for session in ([(0, 1500, 2500), (900, 1500, 2500)],
                        [(0, 1500, 2500), (200, 2150, 2500)],
                        [(0, 1500, 2500), (200, 1500, 2850)]):
            with self.subTest(session=session):
                self.assertEqual(self.new_h.taps_needed(session), 0)

    def test_unknown_file_is_rejected(self):
        with self.assertRaises(ValueError):
            transform('#define DT2W_TIME 300\n')


if __name__ == '__main__':
    unittest.main()
