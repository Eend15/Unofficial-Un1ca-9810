#!/usr/bin/env python3
"""Release the Samsung queued command on malformed numeric input."""
from pathlib import Path
import sys
OLD='''				if (kstrtoint(buff, 10, data->cmd_param + param_cnt) < 0)
					return;'''
NEW='''				if (kstrtoint(buff, 10, data->cmd_param + param_cnt) < 0) {
					/* UN1CA: reject malformed input without wedging AOT/AOD behind it. */
					sec_cmd_set_default_result(data);
					data->cmd_state = SEC_CMD_STATUS_FAIL;
					sec_cmd_set_cmd_result(data, "NG", 2);
					sec_cmd_set_cmd_exit(data);
					return;
				}'''
def transform(text):
    if NEW in text:return text
    if text.count(OLD)!=1:raise ValueError('Unknown queued Samsung command parser')
    return text.replace(OLD,NEW,1)
if __name__=='__main__':
    p=Path(sys.argv[1])/'drivers/input/sec_cmd.c';p.write_text(transform(p.read_text()));print('PASS malformed touch command releases queue')
