"""Finish Crown charging compatibility after the base One UI 8 protocol patch."""
from pathlib import Path
import sys


def patch(driver: str, continuous: str) -> tuple[str, str]:
    marker = "UN1CA_CROWN_MODULE_SETTLE"
    if marker not in driver:
        signature = ".method public final declared-synchronized h(Ljava/lang/String;)V"
        start = driver.index(signature)
        end = driver.index(".end method", start)
        method = driver[start:end]
        old = "    const-wide/16 v3, 0x14\n\n    sub-long v1, v3, v1"
        new = '''    # UN1CA_CROWN_MODULE_SETTLE: stock turnOn/reset are separate 200ms transactions.
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :unica_crown_module_interval

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :unica_crown_module_interval

    const-wide/16 v3, 0x14

    goto :unica_crown_interval_ready

    :unica_crown_module_interval
    const-wide/16 v3, 0xc8

    :unica_crown_interval_ready
    const-string v0, "writeBleSpenCommand : "

    sub-long v1, v3, v1'''
        if method.count(old) != 1:
            raise ValueError("Crown command interval pattern mismatch")
        driver = driver[:start] + method.replace(old, new, 1) + driver[end:]

    marker = "UN1CA_CROWN_BUILTIN_CHARGE"
    if marker not in continuous:
        old = '''    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "8"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V'''
        new = '''    # UN1CA_CROWN_BUILTIN_CHARGE: Crown has no mode 8; stock falls back to fast charge.
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V'''
        if continuous.count(old) != 1:
            raise ValueError("Crown built-in continuous charge pattern mismatch")
        continuous = continuous.replace(old, new, 1)
    return driver, continuous


if __name__ == "__main__":
    paths = [Path(p) for p in sys.argv[1:]]
    if len(paths) != 2:
        raise SystemExit("usage: patch_crown_charge.py WACOM_DRIVER CONTINUOUS")
    result = patch(*(p.read_text() for p in paths))
    for path, contents in zip(paths, result):
        path.write_text(contents)
