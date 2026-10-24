"""Prepare ksud in the main post-fs-data action before kernel-injected hooks."""
from pathlib import Path
import re
import sys

BLOCK = """
    # UN1CA_KSUNEXT_EARLY_DAEMON: after data/checkpoint setup, before injected ksud.
    mkdir /data/adb 0700 root root
    copy /system/bin/ksud /data/adb/ksud
    chmod 0755 /data/adb/ksud
    chown root root /data/adb/ksud

"""


def patch(text):
    actions = [match for match in re.finditer(
        r"^on post-fs-data\n(?:(?!^(?:on |service |import )).)*", text, re.M | re.S)
        if "checkpoint prepareCheckpoint" in match.group()]
    if len(actions) != 1:
        raise ValueError("Expected one unconditional checkpoint/data setup action")
    action = actions[0]
    body = action.group()
    if "checkpoint prepareCheckpoint" not in body:
        raise ValueError("Data checkpoint preparation missing from main action")
    marker = "UN1CA_KSUNEXT_EARLY_DAEMON"
    if marker in text:
        if text.count(marker) != 1 or BLOCK.strip() not in body:
            raise ValueError("Unexpected existing KernelSU bootstrap")
        return text
    return text[:action.end()] + BLOCK + text[action.end():]


if __name__ == "__main__":
    path = Path(sys.argv[1])
    text = path.read_text()
    result = patch(text)
    if "--verify" in sys.argv[2:]:
        if result != text:
            raise SystemExit("Early KernelSU daemon preparation is missing")
    else:
        path.write_text(result)
