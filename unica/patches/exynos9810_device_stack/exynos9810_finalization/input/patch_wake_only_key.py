#!/usr/bin/env python3
"""Wake gestures must not toggle an already waking screen back off."""
from pathlib import Path
import sys
REPLACEMENTS={
'static void wake_presspwr(struct work_struct * wake_presspwr_work) {':'static void wake_presspwr(struct work_struct * wake_presspwr_work) {\n\tunsigned int keycode;',
'static DEFINE_MUTEX(pwrkeyworklock);':'static DEFINE_MUTEX(pwrkeyworklock);\nstatic unsigned int wake_keycode = KEY_POWER;',
'\tinput_event(wake_dev, EV_KEY, KEY_POWER, 1);':'\tkeycode = READ_ONCE(wake_keycode);\n\tinput_event(wake_dev, EV_KEY, keycode, 1);',
'\tinput_event(wake_dev, EV_KEY, KEY_POWER, 0);':'\tinput_event(wake_dev, EV_KEY, keycode, 0);',
'\tschedule_work(&wake_presspwr_work);':'\t/* Capture wake intent before asynchronous work; KEY_WAKEUP never sleeps. */\n\tWRITE_ONCE(wake_keycode, is_suspended() ? KEY_WAKEUP : KEY_POWER);\n\tschedule_work(&wake_presspwr_work);',
'\tinput_set_capability(wake_dev, EV_KEY, KEY_POWER);':'\tinput_set_capability(wake_dev, EV_KEY, KEY_POWER);\n\tinput_set_capability(wake_dev, EV_KEY, KEY_WAKEUP);'
}
def transform(text):
    if 'static unsigned int wake_keycode' in text:
        if not all(new in text for new in REPLACEMENTS.values()):raise ValueError('Incomplete wake-key patch')
        return text
    if not all(text.count(old)==1 for old in REPLACEMENTS):raise ValueError('Unknown wake gesture source')
    for old,new in REPLACEMENTS.items():text=text.replace(old,new,1)
    return text
if __name__=='__main__':
    p=Path(sys.argv[1])/'drivers/input/touchscreen/wake_gestures.c';p.write_text(transform(p.read_text()));print('PASS wake-only key for suspended gestures')
