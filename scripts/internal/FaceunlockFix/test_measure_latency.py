#!/usr/bin/env python3
"""Offline, synthetic LOG-LINE parser tests; NEVER fake biometric results."""
from measure_latency import parse, stats


def main() -> None:
    log = "\n".join([
        "10-13 12:01:00.100 123 456 I FaceunlockFixCamera: "
        "First real FaceunlockFix camera frame queued: imageType=2, "
        "payloadBytes=614398, cameraToFrameMs=315",
        "10-13 12:01:01.100 123 456 I FaceunlockFixHidl: "
        "Genuine native face authentication latencyMs=1840",
        "10-13 12:01:03.100 123 456 E FaceunlockFixHidl: Native authentication rejected",
        "10-13 12:01:04.100 123 456 I FaceunlockFixHidl: "
        "Genuine native face authentication latencyMs=2300",
        "10-13 12:01:04.200 123 456 I OtherService: "
        "Genuine native face authentication latencyMs=1",
        "10-13 12:01:05.300 123 456 I FaceunlockFixCamera: "
        "First real FaceunlockFix camera frame queued: cameraToFrameMs=125",
        "10-13 12:01:07.800 123 456 I FaceunlockFixHidl: "
        "Genuine native face authentication latencyMs=14000",  # preserve slow outliers
    ])
    sample = parse(log)
    assert sample.successes_ms == (1840, 2300, 14000), sample
    assert sample.first_frames_ms == (315, 125), sample
    assert stats(sample.successes_ms) == "n=3, median=2300ms, p90=14000ms, range=1840–14000ms"
    assert stats(()) == "no qualifying samples"
    assert parse("invalid logs").successes_ms == ()
    print("PASS FaceunlockFix latency parser counts only actual authenticated native successes")
    print("PASS distinct first-frame and end-to-end/Keyguard timing semantics")


if __name__ == "__main__":
    main()
