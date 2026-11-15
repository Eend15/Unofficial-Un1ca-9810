#!/usr/bin/env python3
"""Report the real click tool type to the keyboard on the Note9.

One UI 8 InputMethodManagerService no longer uses the tool type of the click
that focused the text field. showCurrentInputLocked() asks InputReader for the
last used input device and reports TOOL_TYPE_STYLUS whenever that device
supports stylus input. The Note9 Wacom digitizer is such a device, so a finger
tap can be reported to the keyboard as an S Pen tap. With "S Pen to text"
enabled, Samsung Keyboard then skips its keyboard for every finger tap
(onEvaluateInputViewShown: false, canSkipShowKeyboard=true).

The app still sends the tool type of the actual click to showSoftInput().
Store it and prefer it over the last-device guess. A real S Pen tap still
reports TOOL_TYPE_STYLUS, so pen-to-text keeps working. If the click tool type
is unknown (0), the original device-based value is kept.

Usage: patch_ime_click_tool_type.py <InputMethodManagerService.smali>
"""
from pathlib import Path
import re
import sys

CLS = "Lcom/android/server/inputmethod/InputMethodManagerService;"
FIELD_NAME = "un1caLastClickToolType"
FIELD = f"{CLS}->{FIELD_NAME}:I"
FIELD_DECL = f".field public {FIELD_NAME}:I\n"
MARKER = "# UN1CA: prefer the real click tool type"

SHOW_SOFT_INPUT = (
    ".method public final showSoftInput(Lcom/android/internal/inputmethod/"
    "IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/"
    "ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z"
)
SHOW_CURRENT = (
    ".method public final showCurrentInputLocked(Landroid/os/IBinder;"
    "Landroid/view/inputmethod/ImeTracker$Token;III)Z"
)
IS_STYLUS = f"{CLS}->isStylusDevice(Landroid/view/InputDevice;)Z"
UPDATE_TOOL = "Lcom/android/internal/inputmethod/IInputMethod;->updateEditorToolType(I)V"


def method_span(text: str, header: str) -> tuple[int, int]:
    start = text.find(header + "\n")
    if start < 0 or text.find(header + "\n", start + 1) >= 0:
        raise SystemExit(f"method not found exactly once: {header}")
    end = text.find("\n.end method", start)
    if end < 0:
        raise SystemExit(f"method end not found: {header}")
    return start, end


def locals_count(body: str) -> int:
    match = re.search(r"^    \.locals (\d+)$", body, re.MULTILINE)
    if not match:
        raise SystemExit("method has no .locals")
    return int(match.group(1))


def patch(text: str) -> str:
    if FIELD_DECL in text:
        return text

    # 1. Remember the click tool type the app passed to showSoftInput().
    #    Parameters: p1 client, p2 window token, p3 stats token, p4 flags,
    #    p5 lastClickToolType. The original code overwrites p5 right away.
    start, end = method_span(text, SHOW_SOFT_INPUT)
    body = text[start:end]
    n = locals_count(body)
    if n + 5 > 15:
        raise SystemExit("showSoftInput registers do not fit iput")
    anchor = re.search(r"^    \.locals \d+\n", body, re.MULTILINE)
    store = (
        f"\n    {MARKER}\n"
        f"    iput p5, p0, {FIELD}\n"
    )
    body = body[: anchor.end()] + store + body[anchor.end():]
    text = text[:start] + body + text[end:]

    # 2. In showCurrentInputLocked(), after the device-based tool type is in
    #    the register passed to updateEditorToolType(), replace it with the
    #    stored click tool type when that is known.
    start, end = method_span(text, SHOW_CURRENT)
    body = text[start:end]
    if locals_count(body) > 15:
        raise SystemExit("showCurrentInputLocked p0 does not fit iget")
    stylus = body.find(IS_STYLUS)
    update = body.find(UPDATE_TOOL)
    if stylus < 0 or update < 0 or update < stylus:
        raise SystemExit("device tool type block not found in showCurrentInputLocked")
    call = re.search(
        r"invoke-interface \{v\d+, (v\d+)\}, " + re.escape(UPDATE_TOOL), body
    )
    if not call:
        raise SystemExit("updateEditorToolType call not found")
    tool_reg = call.group(1)
    labels = list(re.finditer(r"^    (:goto_\d+)\n", body[stylus:update], re.MULTILINE))
    if not labels:
        raise SystemExit("join label before updateEditorToolType not found")
    join = stylus + labels[-1].end()
    # The scratch register is written by the original code after this block
    # before any read, so it is free here. Check that it is not tool_reg.
    scratch = "v8"
    if scratch == tool_reg:
        raise SystemExit("scratch register collides with tool type register")
    between = body[join:update]
    if re.search(rf"\b{scratch}\b", between):
        raise SystemExit(f"{scratch} is used before updateEditorToolType")
    override = (
        f"    {MARKER}\n"
        f"    iget {scratch}, p0, {FIELD}\n\n"
        f"    if-eqz {scratch}, :un1ca_device_tool_type\n\n"
        f"    move {tool_reg}, {scratch}\n\n"
        f"    :un1ca_device_tool_type\n"
    )
    body = body[:join] + override + body[join:]
    text = text[:start] + body + text[end:]

    # 3. Declare the instance field.
    first_method = text.find("\n.method ")
    if first_method < 0:
        raise SystemExit("no methods in class")
    text = text[: first_method + 1] + FIELD_DECL + "\n" + text[first_method + 1:]
    return text


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit(__doc__)
    path = Path(sys.argv[1])
    original = path.read_text()
    patched = patch(original)
    if patched == original:
        print("already patched")
        return
    path.write_text(patched)
    print("patched IME click tool type")


if __name__ == "__main__":
    main()
