"""Copy Samsung's own iris strings (all locales) from Android 10 SecSettings into the app.

One UI 8 Settings still carries the English iris strings but dropped every
translation, so the iris screens ship the Android 10 translations themselves.
"""
import re
import sys
from pathlib import Path

KEYS = [
    "bio_iris_scanner_title", "my_irises", "register_irises", "iris_unlock", "iris_unlock_summary",
    "use_iris_first_lock", "use_iris_first_lock_summary",
    "sec_biometrics_common_option_title_stay_on_lock_screen", "iris_stay_on_lockscreen_summary",
    "tips_for_iris", "iris_delete_popup_title", "iris_delete_popup_message_with_related_func",
    "iris_register_summary", "iris_add_summary", "common_remove",
    "iris_failed_to_register", "iris_eye_safety_msg", "iris_proximity_restriction_popop_message",
    "iris_sensor_not_working_popup_title", "iris_sensor_not_working_msg", "iris_hw_problem_msg",
    "lockpattern_retry_button_text", "manage_irises", "iris_verification",
]
LINE = re.compile(r'^\s*<string name="([^"]+)"[^>]*>.*?</string>\s*$', re.M | re.S)
# Samsung never translated the iris section headings; the app hides a heading that has
# no translation for the phone's language instead of showing English.
EXTRA = {
    "values-nl": {"manage_irises": "Irissen beheren", "iris_verification": "Irisverificatie"},
}


def main(src_res: Path, out_res: Path):
    base = src_res / "values" / "strings.xml"
    found = {m.group(1) for m in LINE.finditer(base.read_text())}
    missing = [k for k in KEYS if k not in found]
    if missing:
        raise SystemExit(f"default locale lacks {missing}")
    locales = 0
    for d in sorted(src_res.glob("values*")):
        f = d / "strings.xml"
        if not f.is_file() or not re.fullmatch(r"values(-[a-zA-Z0-9+-]+)?", d.name):
            continue
        # skip non-locale qualifiers (night, sw600dp, v29 ...)
        q = d.name[len("values"):]
        if q and not re.fullmatch(r"-(?:[a-z]{2,3}(?:-r[A-Z]{2})?|b\+[A-Za-z0-9+]+)", q):
            continue
        entries = {m.group(1): m.group(0).strip() for m in LINE.finditer(f.read_text()) if m.group(1) in KEYS}
        for key, value in EXTRA.get(d.name, {}).items():
            entries.setdefault(key, f'<string name="{key}">{value}</string>')
        if not entries:
            continue
        out = out_res / d.name
        out.mkdir(parents=True, exist_ok=True)
        body = "\n".join("    " + entries[k] for k in KEYS if k in entries)
        (out / "strings.xml").write_text(
            '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n' + body + "\n</resources>\n")
        locales += 1
    print(f"iris strings: {len(KEYS)} keys, {locales} locale folders")


if __name__ == "__main__":
    main(Path(sys.argv[1]), Path(sys.argv[2]))
