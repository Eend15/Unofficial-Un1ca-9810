"""Restore stock S9 notification LED defaults without changing channel choices."""
from pathlib import Path
import re
import sys

VALUES = {
    'colors.xml': ('color', 'config_defaultNotificationColor', '#ff0000ff'),
    'integers.xml': ('integer', 'config_defaultNotificationLedOff', '5000'),
}

def restore(root: Path):
    edits = []
    for filename, (kind, name, value) in VALUES.items():
        p = root / 'res/values' / filename
        text = p.read_text()
        pattern = re.compile(r'(<'+kind+r' name="'+name+r'">)[^<]*(</'+kind+r'>)')
        if len(pattern.findall(text)) != 1:
            raise ValueError(f'Expected one {name} resource')
        edits.append((p, pattern.sub(lambda m: m[1]+value+m[2], text)))
    for p, text in edits:
        p.write_text(text)

if __name__ == '__main__':
    restore(Path(sys.argv[1]))
