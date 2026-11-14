#!/usr/bin/env python3
"""Accept natural double taps for double-tap-to-wake.

wake_gestures.c only paired two taps if their releases were < 500 ms apart and
< 150 units apart on each axis. The touch grid is 4096x4096 over a 68x140 mm
panel (~60 units/mm across, ~29 units/mm down), so 150 units was only 2.5 mm
sideways. Recorded S9+ screen-off sessions showed double taps 666/734 ms apart
and drifting up to 321 units sideways; with the screen on, Samsung's own
double tap accepted up to 535 units. Pair taps within 800 ms and ~1 cm on each
axis: 600 units across, 300 units down.
"""
from pathlib import Path
import sys

MARKER = "UN1CA_DT2W_TAP_WINDOW"
FILE = "drivers/input/touchscreen/wake_gestures.c"
OLD_DEFINES = """#define DT2W_FEATHER		150
#define DT2W_TIME 		500
"""
NEW_DEFINES = f"""/* {MARKER}: ~1 cm per axis on the 4096x4096 grid (68x140 mm), 800 ms. */
#define DT2W_FEATHER_X		600
#define DT2W_FEATHER_Y		300
#define DT2W_TIME 		800
"""
OLD_CHECK = """			if ((calc_feather(x, x_pre) < DT2W_FEATHER) &&
			    (calc_feather(y, y_pre) < DT2W_FEATHER) &&
"""
NEW_CHECK = """			if ((calc_feather(x, x_pre) < DT2W_FEATHER_X) &&
			    (calc_feather(y, y_pre) < DT2W_FEATHER_Y) &&
"""
# Kept for tests: the original window.
OLD = OLD_DEFINES
NEW = NEW_DEFINES


def transform(text):
    if MARKER in text:
        if text.count(NEW_DEFINES) != 1 or text.count(NEW_CHECK) != 1:
            raise ValueError("wake_gestures: tap window marker without the full fix")
        return text
    if text.count(OLD_DEFINES) != 1 or text.count(OLD_CHECK) != 1:
        raise ValueError("Unknown wake_gestures.c: DT2W_FEATHER/DT2W_TIME not found")
    return text.replace(OLD_DEFINES, NEW_DEFINES, 1).replace(OLD_CHECK, NEW_CHECK, 1)


def restore_original(text):
    """Undo transform(); used by the tests to compare with the old window."""
    return text.replace(NEW_DEFINES, OLD_DEFINES, 1).replace(NEW_CHECK, OLD_CHECK, 1)


if __name__ == "__main__":
    path = Path(sys.argv[1]) / FILE
    path.write_text(transform(path.read_text()))
    print("PASS double-tap-to-wake accepts natural tap spacing")
