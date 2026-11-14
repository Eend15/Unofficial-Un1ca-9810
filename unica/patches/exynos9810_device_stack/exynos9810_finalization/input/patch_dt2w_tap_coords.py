#!/usr/bin/env python3
"""Count clean double taps for double-tap-to-wake.

While the screen is off, sec_ts (and the Note9 y771 copy) add 5000 to X only
for MOVE reports, so Android ignores them. PRESS reports carry the real X.
wake_gestures.c subtracted 5000 from every X while suspended, so a clean tap
(PRESS then RELEASE, no MOVE) ended up with a negative X, failed the edge
check and was silently dropped. Only taps that wiggled into a MOVE report
counted, which is why users needed several taps. Undo the offset only where
the driver added it.
"""
from pathlib import Path
import sys

MARKER = "UN1CA_DT2W_TAP_COORDS"
FILE = "drivers/input/touchscreen/wake_gestures.c"
OLD = """	if (is_suspended() && code == ABS_MT_POSITION_X) {
		value -= 5000;
	}
"""
NEW = f"""	/* {MARKER}: sec_ts adds the 5000 offset to MOVE reports only;
	 * PRESS reports carry the real X. Undo it only where it was added. */
	if (is_suspended() && code == ABS_MT_POSITION_X && value >= 5000) {{
		value -= 5000;
	}}
"""


def transform(text):
    if MARKER in text:
        if text.count(NEW) != 1:
            raise ValueError("wake_gestures: tap coordinate marker without the full fix")
        return text
    if text.count(OLD) != 1:
        raise ValueError("Unknown wake_gestures.c: suspended X offset not found")
    return text.replace(OLD, NEW, 1)


if __name__ == "__main__":
    path = Path(sys.argv[1]) / FILE
    path.write_text(transform(path.read_text()))
    print("PASS double-tap-to-wake counts PRESS-only taps")
