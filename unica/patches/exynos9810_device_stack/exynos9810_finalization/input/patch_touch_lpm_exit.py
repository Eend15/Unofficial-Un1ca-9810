#!/usr/bin/env python3
"""Leave touchscreen LPM on screen-on even while double-tap wake is enabled.

With dt2w on, input_close keeps the panel scanning and only arms irq wake.
sec_ts_reset_work (ESD/i2c recovery) still dropped a closed panel into LPM
because the AOD/single-tap flags are set, and input_open then skipped
TO_TOUCH_MODE whenever dt2w was on: the screen woke with touch dead until a
hard reset. Always exit LPM on open, keep reset_work in the dt2w scan state,
and pair the dt2w irq wake enable/disable.
"""
from pathlib import Path
import sys

MARKER = "UN1CA_TOUCH_LPM_EXIT"
FILES = (
    "drivers/input/touchscreen/sec_ts/sec_ts.c",
    "drivers/input/touchscreen/sec_ts/y771/sec_ts.c",
)

STATE_OLD = """static bool is_suspended;
bool scr_suspended(void)
"""
STATE_NEW = """static bool is_suspended;
/* UN1CA_TOUCH_LPM_EXIT: irq wake armed by input_close for dt2w/s2w. */
static bool un1ca_dt2w_irq_wake;
bool scr_suspended(void)
"""

OPEN_OLD = """	if (ts->power_status == SEC_TS_STATE_LPM) {
#ifdef USE_RESET_EXIT_LPM
		schedule_delayed_work(&ts->reset_work, msecs_to_jiffies(TOUCH_RESET_DWORK_TIME));
#else
#ifdef CONFIG_WAKE_GESTURES
		if (s2w_switch || dt2w_switch)
			disable_irq_wake(ts->client->irq);
		else
#endif
		sec_ts_set_lowpowermode(ts, TO_TOUCH_MODE);
#endif
"""
OPEN_NEW = """#ifdef CONFIG_WAKE_GESTURES
	if (un1ca_dt2w_irq_wake) {
		disable_irq_wake(ts->client->irq);
		un1ca_dt2w_irq_wake = false;
	}
#endif

	if (ts->power_status == SEC_TS_STATE_LPM) {
#ifdef USE_RESET_EXIT_LPM
		schedule_delayed_work(&ts->reset_work, msecs_to_jiffies(TOUCH_RESET_DWORK_TIME));
#else
		/* UN1CA_TOUCH_LPM_EXIT: a reset while closed can leave LPM set with dt2w on. */
		sec_ts_set_lowpowermode(ts, TO_TOUCH_MODE);
#endif
"""

CLOSE_OLD = """#ifdef CONFIG_WAKE_GESTURES
		if (s2w_switch || dt2w_switch)
			enable_irq_wake(ts->client->irq);
		else
#endif
	if (ts->prox_power_off) {
"""
CLOSE_NEW = """#ifdef CONFIG_WAKE_GESTURES
		if (s2w_switch || dt2w_switch) {
			if (!un1ca_dt2w_irq_wake) {
				enable_irq_wake(ts->client->irq);
				un1ca_dt2w_irq_wake = true;
			}
		} else
#endif
	if (ts->prox_power_off) {
"""

RESET_OLD = """		input_err(true, &ts->client->dev, "%s: call input_close\\n", __func__);

		if (ts->lowpower_mode) {
"""
RESET_NEW = """		input_err(true, &ts->client->dev, "%s: call input_close\\n", __func__);

#ifdef CONFIG_WAKE_GESTURES
		/* UN1CA_TOUCH_LPM_EXIT: keep the dt2w scan state chosen by input_close. */
		if (s2w_switch || dt2w_switch) {
		} else
#endif
		if (ts->lowpower_mode) {
"""

EDITS = (
    ("scr_suspended state", STATE_OLD, STATE_NEW),
    ("input_open LPM exit", OPEN_OLD, OPEN_NEW),
    ("input_close irq wake", CLOSE_OLD, CLOSE_NEW),
    ("reset_work closed state", RESET_OLD, RESET_NEW),
)


def transform(text):
    if MARKER in text:
        return text
    for name, old, new in EDITS:
        if text.count(old) != 1:
            raise ValueError("Unknown sec_ts driver: " + name)
        text = text.replace(old, new, 1)
    return text


if __name__ == "__main__":
    root = Path(sys.argv[1])
    for rel in FILES:
        path = root / rel
        path.write_text(transform(path.read_text()))
    print("PASS sec_ts leaves LPM on open with dt2w enabled")
