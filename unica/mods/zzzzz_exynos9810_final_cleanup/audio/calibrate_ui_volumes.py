"""Calibrate Samsung speaker UI feedback from the immutable device baseline."""
import math
import sys
import xml.etree.ElementTree as ET

UI_TYPES = {
    "stv_keyboard", "stv_key_tone", "stv_touch_tone",
    "stv_lock_screen", "stv_unlock_screen", "stv_charger_connection",
}
SPEAKER = "AUDIO_DEVICE_OUT_SPEAKER"


def speaker_entries(tree):
    entries = {}
    for situation in tree.findall("./situations/situation"):
        name = situation.get("type")
        if name not in UI_TYPES:
            continue
        volumes = situation.findall(f"volume[@device='{SPEAKER}']")
        if name in entries or len(volumes) != 1:
            raise ValueError(f"ambiguous speaker UI curve: {name}")
        if situation.get("stream") != "AUDIO_STREAM_SYSTEM":
            raise ValueError(f"unexpected UI stream: {name}")
        entries[name] = volumes[0]
    if set(entries) != UI_TYPES:
        raise ValueError(f"missing UI curves: {sorted(UI_TYPES - set(entries))}")
    return entries


def calibrate(baseline_path, output_path):
    baseline = speaker_entries(ET.parse(baseline_path))
    tree = ET.parse(output_path)
    target = speaker_entries(tree)
    for name, node in baseline.items():
        values = [int(value.strip()) for value in node.text.split(",")]
        if len(values) != 16 or min(values) < 0 or values != sorted(values):
            raise ValueError(f"invalid baseline UI curve: {name}")
        # Samsung situation tables contain linear gains, not millibels.
        gains = [math.floor(value * 10 ** (-6 / 20) + 0.5) for value in values]
        target[name].text = "\n                " + ", ".join(map(str, gains)) + "\n            "
    tree.write(output_path, encoding="UTF-8", xml_declaration=True)


if __name__ == "__main__":
    calibrate(*sys.argv[1:])
