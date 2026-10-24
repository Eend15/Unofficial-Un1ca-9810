#!/usr/bin/env python3
"""Expose DS-ACK's existing wake backend through Samsung's AOT command."""
from pathlib import Path
import argparse

HANDLER = '''#ifdef CONFIG_WAKE_GESTURES
/* UN1CA_DT2W_AOT: use the same backend and suspend deferral as android_touch. */
static void aot_enable(void *device_data)
{
	struct sec_cmd_data *sec = device_data;
	char *result = "NG";

	sec_cmd_set_default_result(sec);
	if (sec->cmd_param[0] == 0 || sec->cmd_param[0] == 1) {
		dt2w_switch_temp = sec->cmd_param[0];
		if (!scr_suspended()) {
			dt2w_switch = dt2w_switch_temp;
			dt2w_switch_changed = false;
		} else {
			dt2w_switch_changed = true;
		}
		result = "OK";
		sec->cmd_state = SEC_CMD_STATUS_OK;
	} else {
		sec->cmd_state = SEC_CMD_STATUS_FAIL;
	}
	sec_cmd_set_cmd_result(sec, result, strlen(result));
	sec_cmd_set_cmd_exit(sec);
}
#endif

'''


def patched(text):
    if 'UN1CA_DT2W_AOT' in text:
        if not all(s in text for s in (HANDLER, '{SEC_CMD("aot_enable", aot_enable),}',
                                       'feature |= INPUT_FEATURE_ENABLE_SETTINGS_AOT;')):
            raise ValueError('Incomplete DT2W patch')
        return text
    anchors = ['#include "sec_ts.h"\n', 'static void aod_enable(void *device_data);',
               '\t{SEC_CMD("aod_enable", aod_enable),},', '\tu32 feature = 0;']
    if not all(text.count(s) == 1 for s in anchors):
        raise ValueError('Unexpected touchscreen source layout')
    text = text.replace(anchors[0], anchors[0] + '\n#ifdef CONFIG_WAKE_GESTURES\n#include <linux/wake_gestures.h>\n#endif\n', 1)
    text = text.replace(anchors[1], HANDLER + anchors[1], 1)
    text = text.replace(anchors[2], anchors[2] + '\n#ifdef CONFIG_WAKE_GESTURES\n\t{SEC_CMD("aot_enable", aot_enable),},\n#endif', 1)
    text = text.replace(anchors[3], anchors[3] + '\n\n#ifdef CONFIG_WAKE_GESTURES\n\tfeature |= INPUT_FEATURE_ENABLE_SETTINGS_AOT;\n#endif', 1)
    return text


def apply(root):
    paths = [root / 'drivers/input/touchscreen/sec_ts' / s
             for s in ('sec_ts_fn.c', 'y771/sec_ts_fn.c')]
    # Validate both inputs before changing either driver.
    outputs = [(p, patched(p.read_text())) for p in paths]
    for path, output in outputs:
        path.write_text(output)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('kernel', type=Path)
    apply(parser.parse_args().kernel)
