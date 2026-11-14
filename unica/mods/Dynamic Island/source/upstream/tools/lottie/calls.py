#!/usr/bin/env python3
"""Generate rounded call controls in the existing 72 px / 60 fps Lottie style.

The receiver ends widen into a single closed cubic outline, without overlapping
strokes. Playback is a brief entrance rather than a continuous loop.
"""
import json
from pathlib import Path
import mk


class Outline:
    def __init__(self, x, y):
        self.points = [[[x, y], [0, 0], [0, 0]]]

    def curve(self, x1, y1, x2, y2, x, y):
        previous = self.points[-1]
        previous[2] = [x1 - previous[0][0], y1 - previous[0][1]]
        self.points.append([[x, y], [x2 - x, y2 - y], [0, 0]])
        return self

    def line(self, x, y):
        self.points.append([[x, y], [0, 0], [0, 0]])
        return self

    def shape(self):
        return mk.bez(self.points)


def answer():
    return (Outline(16, 8).curve(12, 8, 9, 11, 9, 15)
            .curve(10, 40, 32, 62, 57, 63).curve(61, 63, 64, 60, 64, 56)
            .line(64, 49).curve(64, 46, 62.5, 44.5, 60, 44)
            .line(51, 42).curve(49, 41.5, 47.5, 42.2, 46, 43.8)
            .line(42, 48).curve(33.5, 44.3, 27.7, 38.5, 24, 30)
            .line(28.2, 26).curve(29.8, 24.5, 30.5, 23, 30, 21)
            .line(28, 12).curve(27.5, 9.5, 26, 8, 23, 8).shape())


def end():
    return (Outline(6, 37).curve(6, 33, 9, 30, 13, 27)
            .curve(26, 17, 46, 17, 59, 27).curve(63, 30, 66, 33, 66, 37)
            .line(66, 44).curve(66, 48, 64, 50, 60, 50)
            .line(54, 50).curve(51, 50, 49, 48, 49, 45)
            .line(49, 37).curve(41, 33, 31, 33, 23, 37)
            .line(23, 45).curve(23, 48, 21, 50, 18, 50)
            .line(12, 50).curve(8, 50, 6, 48, 6, 44).shape())


def build():
    white = [1, 1, 1, 1]
    definitions = {
        "call_answer": mk.layer("handset", [mk.F("receiver", [answer()], white)],
            r={"f": [(0, -7), (7, 5), (15, -3), (23, 1.2), (32, 0)]},
            s={"f": [(0, [94, 94, 100]), (10, [103, 103, 100]), (24, [100, 100, 100])]}),
        "call_end": mk.layer("handset", [mk.F("receiver", [end()], white)],
            p={"f": [(0, [36, 34.5, 0]), (10, [36, 37, 0]), (26, [36, 36, 0])]},
            r={"f": [(0, 3), (10, -2), (24, 0)]},
            s={"f": [(0, [96, 96, 100]), (10, [102, 102, 100]), (26, [100, 100, 100])]}),
    }
    folder = Path(__file__).resolve().parent / "json"
    for name, layer in definitions.items():
        (folder / (name + ".json")).write_text(json.dumps(mk.anim([layer], name, 36), separators=(",", ":")))


if __name__ == "__main__":
    build()
