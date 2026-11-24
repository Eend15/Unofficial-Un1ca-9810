#!/usr/bin/env python3
"""Generate rounded call controls in the existing 72 px / 60 fps Lottie style.

The receiver outlines are converted directly from the SF-style SVG sources in
tools/lottie/svg/ with independent uniform optical scale factors, preserving
their native aspect ratios and Bézier curves. Playback is a brief entrance
rather than a continuous loop.
"""
import json
from pathlib import Path
import re
import mk

SVG_DIR = Path(__file__).resolve().parent / "svg"

ANSWER_SCALE = 1.08
DECLINE_SCALE = 0.98


class Outline:
    def __init__(self, x, y):
        self.points = [[[x, y], [0, 0], [0, 0]]]

    def curve(self, x1, y1, x2, y2, x, y):
        previous = self.points[-1]
        previous[2] = [round(x1 - previous[0][0], 2), round(y1 - previous[0][1], 2)]
        start = self.points[0][0]
        if [x, y] == start:
            self.points[0][1] = [round(x2 - start[0], 2), round(y2 - start[1], 2)]
        else:
            self.points.append([[x, y], [round(x2 - x, 2), round(y2 - y, 2)], [0, 0]])
        return self

    def line(self, x, y):
        if [x, y] != self.points[0][0]:
            self.points.append([[x, y], [0, 0], [0, 0]])
        return self

    def shape(self):
        return mk.bez(self.points)


def svg_contours(filename, scale, center=(36.0, 36.0)):
    text = (SVG_DIR / filename).read_text(encoding="utf-8")
    w = float(re.search(r"width='([0-9.]+)px'", text).group(1))
    h = float(re.search(r"height='([0-9.]+)px'", text).group(1))
    d = re.search(r"\bd='([^']+)'", text).group(1)
    cx_src, cy_src = w / 2.0, h / 2.0
    cx_dst, cy_dst = center

    def tx(x_raw, y_raw):
        x_svg = float(x_raw)
        y_svg = h - float(y_raw)
        return (
            round(cx_dst + (x_svg - cx_src) * scale, 2),
            round(cy_dst + (y_svg - cy_src) * scale, 2),
        )

    tokens = re.findall(r"[MQLZ]|-?\d+(?:\.\d+)?", d)
    i = 0
    outlines = []
    current = None
    cur_pt = (0.0, 0.0)
    while i < len(tokens):
        cmd = tokens[i]
        i += 1
        if cmd == "M":
            cur_pt = tx(tokens[i], tokens[i + 1])
            i += 2
            current = Outline(cur_pt[0], cur_pt[1])
        elif cmd == "L":
            nxt = tx(tokens[i], tokens[i + 1])
            i += 2
            current.line(nxt[0], nxt[1])
            cur_pt = nxt
        elif cmd == "Q":
            qx = float(tokens[i])
            qy = h - float(tokens[i + 1])
            ex = float(tokens[i + 2])
            ey = h - float(tokens[i + 3])
            i += 4
            qx_t = cx_dst + (qx - cx_src) * scale
            qy_t = cy_dst + (qy - cy_src) * scale
            ex_t = cx_dst + (ex - cx_src) * scale
            ey_t = cy_dst + (ey - cy_src) * scale
            p0x, p0y = cur_pt
            c1x = round(p0x + (2.0 / 3.0) * (qx_t - p0x), 2)
            c1y = round(p0y + (2.0 / 3.0) * (qy_t - p0y), 2)
            c2x = round(ex_t + (2.0 / 3.0) * (qx_t - ex_t), 2)
            c2y = round(ey_t + (2.0 / 3.0) * (qy_t - ey_t), 2)
            end_pt = (round(ex_t, 2), round(ey_t, 2))
            current.curve(c1x, c1y, c2x, c2y, end_pt[0], end_pt[1])
            cur_pt = end_pt
        elif cmd == "Z":
            if current is not None:
                outlines.append(current.shape())
                current = None
    return outlines


def answer():
    return svg_contours("phone.fill.svg", ANSWER_SCALE)[0]


def end():
    return svg_contours("phone.down.fill.svg", DECLINE_SCALE)[0]


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
