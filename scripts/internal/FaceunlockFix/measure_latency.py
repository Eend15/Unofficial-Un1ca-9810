#!/usr/bin/env python3
"""Summarize *genuine* face-auth timings from previously collected logcat text.

Run with `adb logcat -v threadtime -s FaceunlockFixHidl:I FaceunlockFixCamera:I
*:S > faceunlockfix.log` while manually performing several real unlocks,
then pass that log to this OFFLINE parser. It never connects to ADB and does
not consume frames, HATs, face identifiers or enrollment data.

The HAL timing here runs from FaceunlockFix's AUTHENTICATE transition to its
genuine successful native callback. It is NOT the Android Keyguard/UI elapsed
time and must not be numerically compared with an end-to-end dumpsys baseline.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
import re
from statistics import median


AUTH = re.compile(r"\bGenuine native face authentication latencyMs=(\d+)\b")
FIRST_FRAME = re.compile(r"\bFirst real FaceunlockFix camera frame queued:.*?\bcameraToFrameMs=(\d+)\b")


@dataclass(frozen=True)
class Summary:
    successes_ms: tuple[int, ...]
    first_frames_ms: tuple[int, ...]


def parse(text: str) -> Summary:
    """Only recognized, positive native success timings are counted as unlocks."""
    successes: list[int] = []
    first_frames: list[int] = []
    for line in text.splitlines():
        if "FaceunlockFixHidl" in line:
            match = AUTH.search(line)
            if match:
                duration = int(match.group(1))
                # Never suppress slow successful auth outliers to make a
                # candidate look faster. The watchdog is a *nominal* limit;
                # callbacks and scheduler dispatch may still be delayed.
                successes.append(duration)
        elif "FaceunlockFixCamera" in line:
            match = FIRST_FRAME.search(line)
            if match:
                duration = int(match.group(1))
                first_frames.append(duration)
    return Summary(tuple(successes), tuple(first_frames))


def stats(samples: tuple[int, ...]) -> str:
    if not samples:
        return "no qualifying samples"
    ordered = sorted(samples)
    p90 = ordered[(9 * len(ordered) + 9) // 10 - 1]
    return (f"n={len(ordered)}, median={median(ordered):g}ms, "
            f"p90={p90}ms, range={ordered[0]}–{ordered[-1]}ms")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("candidate", type=Path, help="logcat text from experimental ROM")
    parser.add_argument("--baseline", type=Path,
                        help="logcat text from same instrumented HAL, if available")
    args = parser.parse_args()
    candidate = parse(args.candidate.read_text(encoding="utf-8", errors="replace"))
    print(f"Candidate real native success (HAL only): {stats(candidate.successes_ms)}")
    print(f"Candidate first captured+copied frame: {stats(candidate.first_frames_ms)}")
    if len(candidate.successes_ms) < 5:
        print("WARNING: under five genuine successes; insufficient repeated-unlock sample")
    if args.baseline:
        baseline = parse(args.baseline.read_text(encoding="utf-8", errors="replace"))
        print(f"Baseline real native success (same metric): {stats(baseline.successes_ms)}")
        print(f"Baseline first captured+copied frame: {stats(baseline.first_frames_ms)}")
        if len(baseline.successes_ms) >= 5 and len(candidate.successes_ms) >= 5:
            before, after = median(baseline.successes_ms), median(candidate.successes_ms)
            if before > 0:
                print(f"HAL median change: {(before - after) / before * 100:+.1f}% faster "
                      "(positive means lower latency)")
        else:
            print("No percentage claim: minimum five real successes per run required")
    print("NOTE: HAL times exclude Android Keyguard/UI; use dumpsys face for end-to-end timing")
    return 0 if candidate.successes_ms else 2


if __name__ == "__main__":
    raise SystemExit(main())
