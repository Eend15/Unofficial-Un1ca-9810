#!/usr/bin/env python3
"""Source-only regression: the 2026-10-13 bootloop path cannot run again.

Do not import ADB or copy framework files as part of this test. Both old CLI
entry points must refuse the action before trying to query or touch a device.
"""

from live_framework_test import apply, upgrade_callbacksafe


def check_blocked(label: str, action) -> None:
    try:
        action()
    except RuntimeError as error:
        if "BLOCKED" not in str(error) or "ROM" not in str(error):
            raise AssertionError(f"{label} error must explain ROM-only fallback") from error
    else:
        raise AssertionError(f"{label} must never permit direct services.jar replacement")
    print(f"PASS {label} refuses standalone framework replacement without ADB")


check_blocked("original --apply", lambda: apply(retry=False))
check_blocked("original --retry", lambda: apply(retry=True))
check_blocked("old --upgrade-callbacksafe", upgrade_callbacksafe)
