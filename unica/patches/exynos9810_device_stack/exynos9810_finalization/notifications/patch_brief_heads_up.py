#!/usr/bin/env python3
"""Restore the default One UI heads-up/brief notification decision.

Only changes the default used when Settings.Global has no value. An explicit
heads_up_notifications_enabled=0 remains respected. This runs on decoded
SystemUI before the ordinary ROM APK signing/rebuild step.
"""

from pathlib import Path
import sys


CLASS = ("smali_classes3/com/android/systemui/statusbar/notification/"
         "interruption/NotificationInterruptStateProviderImpl$1.smali")
OLD = '''    const-string v1, "heads_up_notifications_enabled"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I'''
NEW = '''    const-string v1, "heads_up_notifications_enabled"

    const/4 v2, 0x0

    # Use 1 only for an unset global preference. Keep v2=0 so a stored 0
    # continues to disable HUN via the unchanged if-eqz decision below.
    const/4 v3, 0x1

    invoke-interface {p1, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I'''


def patch(path: Path) -> None:
    if not path.is_file():
        raise ValueError(f"missing SystemUI HUN observer: {path}")
    source = path.read_text(encoding="utf-8")
    marker = ".method public final onChange(Z)V"
    if source.count(marker) != 1:
        raise ValueError("unknown SystemUI observer method revision")
    start = source.index(marker)
    end = source.find(".end method", start)
    if end == -1:
        raise ValueError("unterminated SystemUI heads-up observer")
    old_body = source[start:end]
    if NEW in old_body:
        return
    if old_body.count(OLD) != 1:
        raise ValueError("unexpected SystemUI heads-up global default; refusing blind patch")
    new_body = old_body.replace(OLD, NEW, 1)
    if "if-eqz p1, :cond_0" not in new_body or "iput-boolean v2" not in new_body:
        raise ValueError("heads-up preference off-path changed unexpectedly")
    path.write_text(source[:start] + new_body + source[end:], encoding="utf-8")


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("usage: patch_brief_heads_up.py DECODED_SYSTEMUI_APK_DIR")
    try:
        patch(Path(sys.argv[1]) / CLASS)
    except ValueError as exc:
        raise SystemExit(str(exc)) from exc
    print("PASS SystemUI heads-up default enabled; user choice preserved")


if __name__ == "__main__":
    main()
