# Reduced transparency and power menu

Reported on Note9: short interruption when opening power menu with reduced
transparency/blur enabled. On the connected S9+, SystemUI PID 8632 remained
alive and the crash buffer was empty. The exact Note9 failure is not reproduced.

The real preference is Settings.Global.accessibility_reduce_transparency.
Both SepBlurStrategy and CapturedBlurStrategy unconditionally constructed
SemBlurInfo; live logs confirmed radius-400 blur even with the setting enabled.
The new guard reads the preference at inflation time, clears any blur, and sets
an opaque white/black background following IS_WHITE_THEME. With the preference
off, the original blur code is unchanged. No accessibility option is disabled.
The captured path also avoids an unnecessary screenshot when reduction is on.

Build integration covers starlte, star2lte and crownlte. The transformation
validates both expected methods before writing, is idempotent, and errors on
unexpected donor layouts. Patched SystemUI was assembled with apktool. A live
patched SystemUI installation and Note9 reproduction remain to be tested; this
is not proof that the user's crash is resolved. The S9+ test preference was
restored to its original absent state.
