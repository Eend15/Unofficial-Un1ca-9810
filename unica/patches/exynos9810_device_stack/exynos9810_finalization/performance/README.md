# Exynos9810 performance source policy

`performance_policy.py` is used by the finalizer and the final release-defaults
checker, including cached/staged packaging. It manages RAM-cache budgets and
supported ART properties once in system/system/build.prop, removing conflicting
copies from donor property files. It does not change a connected phone.

All three targets retain the same display/rendering baseline and use their own
model-specific kernels. SystemUI explicitly uses ART's `speed` filter. Other
apps keep normal profile-guided installation/background optimization and fast
verify boot defaults. Background dexopt stays enabled. The compiler's process
concurrency and thread count are bounded separately; the product of both counts
matters to memory/CPU use. The S9 uses less compilation parallelism than the
six-GB models.

Only starlte gets stock G960F cached/empty limits (6/19 and8/24), keeping the
current port's whitelist and LMK scale. star2lte/crownlte retain their accepted
8/24 and8/32 cache budgets. No low-RAM feature cuts, governor/thermal changes,
heap caps or new zram policy are introduced.

Source inspection of Android16 Dexopter.adjustCompilerFilter confirms the
SystemUI property is applied specifically to SystemUI. This does not guarantee
successful compilation on every Samsung ART build: classloader problems can
still downgrade the filter, and profile-guided compilation needs matching
profiles. Check actual runtime Dexopt state and frame timings during acceptance.

Run `python3 scripts/tests/test_performance_policy.py` from the repository root.
The tests exercise the real finalizer twice for3targets×2filesystems, reject
duplicates/wrong-target cache budgets, and preserve unrelated properties.

See `docs/S9-4GB-PERFORMANCE-PLAN.md` for the separate four-GB acceptance plan.
Source settings are implemented; equal physical smoothness is not yet certified.

The 26 October S9+ scan found 0.60% Home and 2.68% SystemUI janky
HWUI-frame deltas. The SurfaceFlinger trace flagged Buffer Stuffing, **not**
an equivalent number of dropped app frames. The Android 16 SurfaceFlinger
binary examined from the staged S22 base does not contain the legacy
`debug.sf.disable_backpressure` property name; this unverified override
is now removed rather than replaced with another speculative flag.
The existing buffer limit and latch policy are unchanged pending A/B tests.

Dynamic Island's notification duplicate filter formerly queued a fresh
2.5-second grace-expiry rebuild on *every* filter evaluation. It now
coalesces grace-expiry requests into one scheduled main-thread callback,
rescheduling only for an earlier expiry and cancelling when no hidden
notification keys remain. This removes duplicate list-invalidation work in
source without suppressing notification features. Real frame-time impact has
not been measured.

Media album-art grace handling also now keeps only one pending expiry per
player, cancelling it when the artwork arrives, the pending track changes,
or that player leaves the active-session set. Previously every metadata
refresh during the grace interval queued another anonymous rebuild. The
same 1.5-second artwork retention behavior is preserved.

Verification: `python3 scripts/tests/test_performance_policy.py` and
`python3 'unica/mods/Dynamic Island/source/verify_source.py'`. Re-run
the same shade/Recents/scroll A/B workload on an installed candidate,
with Dynamic Island separately enabled/disabled, before claiming any
improvement.

References:
- https://source.android.com/docs/core/runtime/configure/art-service
- https://android.googlesource.com/platform/art/+/refs/heads/android16-release/libartservice/service/java/com/android/server/art/Dexopter.java
