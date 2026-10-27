"""Keep ConnectivityService off the uid-frozen callback on the 4.9 kernel.

Android 15+ ConnectivityService unconditionally destroys the TCP sockets of
frozen uids (SOCK_DESTROY over sock_diag) once the device goes idle. On the
Exynos9810 4.9 kernel with Samsung's cgroup-v1 Freecess freezer, tcp_abort()
can block forever in lock_sock() while holding sock_diag_mutex; system_server
then hangs and the watchdog reboots the locked, sleeping phone. The module is a
Google-signed, Mainline-updated APEX, so the registration is filtered in
framework.jar instead. Other listeners (AlarmManagerService) keep working.
"""
from pathlib import Path
import sys

MARKER = "# UN1CA: no frozen-socket destroy on the 4.9 kernel"
CS_PREFIX = "android.net.connectivity.com.android.server.ConnectivityService"
METHOD = (".method public blacklist registerUidFrozenStateChangedCallback("
          "Ljava/util/concurrent/Executor;"
          "Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V\n")
ANCHOR = """    const-string v1, "callback cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
"""
# v0 holds a string used by the duplicate-registration path, so only v1/v2
# (both reloaded right after this point) are clobbered.
GUARD = f"""
    {MARKER}
    invoke-virtual {{p2}}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual {{v1}}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "{CS_PREFIX}"
    invoke-virtual {{v1, v2}}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :unica_frozen_callback_allowed
    const-string v1, "UN1CA"
    const-string v2, "Skipping ConnectivityService frozen-uid socket destroy (4.9 kernel)"
    invoke-static {{v1, v2}}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
    :unica_frozen_callback_allowed
"""


def patch(text: str) -> str:
    if MARKER in text:
        return text
    start = text.find(METHOD)
    if start < 0 or text.count(METHOD) != 1:
        raise ValueError("registerUidFrozenStateChangedCallback not found exactly once")
    end = text.index("\n.end method", start)
    body = text[start:end]
    if body.count(ANCHOR) != 1 or ".locals 3\n" not in body:
        raise ValueError("Unexpected registerUidFrozenStateChangedCallback body")
    body = body.replace(ANCHOR, ANCHOR + GUARD, 1)
    return text[:start] + body + text[end:]


def main(root: Path):
    files = list(root.glob("smali*/android/app/ActivityManager.smali"))
    if len(files) != 1:
        raise ValueError(f"Expected one ActivityManager.smali, found {len(files)}")
    text = files[0].read_text()
    result = patch(text)
    if patch(result) != result or result.count(MARKER) != 1:
        raise ValueError("Patch is not idempotent")
    files[0].write_text(result)
    print("ActivityManager: ConnectivityService frozen-uid callback filtered")


if __name__ == "__main__":
    main(Path(sys.argv[1]))
