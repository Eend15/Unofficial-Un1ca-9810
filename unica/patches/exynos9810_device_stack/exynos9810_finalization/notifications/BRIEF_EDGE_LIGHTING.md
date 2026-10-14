# One UI 8 Brief notifications / Edge Lighting — Exynos9810

## Scope and screenshot reference

Users reported hearing the sound of new notifications while the *Brief*
top-of-screen banner and selected *Edge Lighting* border effect never appear.
The *Detailed* notification style does still display. These are two related
but distinct routes: the standard SystemUI heads-up interruption and Samsung's
Edge Lighting notification service/effect renderer. A preview in Settings is
not evidence that real incoming notifications work.

Supported ROM targets: `starlte`, `star2lte`, `crownlte`. No full ROM build or
live device mutation was performed as part of this source-level audit.

## Confirmed existing source wiring

- The donor SystemUI manifest exports
  `com.android.systemui.edgelighting.EdgeLightingService` (separate
  `:edgelighting` process), the foreground service and effect style Activity.
- Android16 `services.jar`'s `EdgeLightingClientManager` starts that component
  by its exact package and class name.
- The finalizer sets
  `SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION=TRUE` in system
  **and** vendor feature XML and verifies this before packing. The existing
  star2lte workdir also has the frame-effect feature declaration in both.
- The actual One UI 8 `SettingsProvider` resource contains
  `def_heads_up_enabled=1`, and its database initialization/upgrade paths
  seed `heads_up_notifications_enabled` from that resource. Therefore the
  SystemUI observer's missing-setting default of 0 is a resilience defect,
  **not demonstrated to be the original failure on a clean installation**.

## Targeted resilience change

`patch_brief_heads_up.py` changes only the *missing-key fallback* of
`NotificationInterruptStateProviderImpl$1.onChange()` from 0 to 1. It leaves
the separate false accumulator and `if-eqz` decision unchanged, so an existing
explicit global setting of 0 continues to turn heads-up notifications off.
This patch is applied against decoded SystemUI only for Exynos9810 S9/S9+/Note9
before the existing Apktool rebuild and signing step. Unknown donor layouts
fail rather than receiving blind string replacements. This does **not** force
apps to pop up, override DND/channel settings, or fabricate Edge Lighting.

After the normal Apktool rebuild, `scripts/make_rom.sh` invokes
`verify_brief_rebuilt_artifacts.py` for all three Exynos9810 targets. It
inspects the **actual built SystemUI APK** and requires its signed archive to
contain the compiled observer (fallback `1`, unchanged stored-`0` branch)
and the compiled Samsung EdgeLightingService. This prevents an incremental
or resumed build from silently shipping an unpatched SystemUI binary.

### Offline test

```sh
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/notifications/test_brief_heads_up.py -v
```

The tests patch the real isolated Samsung SystemUI observer twice (idempotency),
assemble it with the actual smali tool into DEX, reject unknown donor source,
confirm target isolation, and check SettingsProvider's actual HUN default,
Samsung Edge Lighting manifest service and NotificationManager wiring. One
additional test builds and platform-signs an isolated two-class diagnostic APK:
the post-build verifier must reject the original HUN default and accept only
the new compiled class together with Samsung's real EdgeLightingService.
Neither diagnostic artifact is a flashable SystemUI replacement.

## Remaining real-device acceptance tests

On an **actual flashed build**, independently check:

1. Screen unlocked, brief style selected, app notifications on, individual
   notification channel allowed to pop up, Do Not Disturb off: receive messages
   in several apps and confirm visible top banner, tap and downward expansion.
2. Select each supported Edge Lighting effect and verify its screen-on preview
   **and** a real incoming notification render. Repeat with screen off/AOD
   if the effect style supports it.
3. Select detailed style and confirm detailed heads-up works without receiving
   duplicate Edge Lighting pop-ups.
4. Confirm explicit user disabling of pop-ups, blocked notification channel and
   DND still suppress only the appropriate interruptions.
5. For a failed live test, capture `dumpsys notification`,
   `settings get global heads_up_notifications_enabled`,
   `settings get system edge_lighting`, `settings get system edge_lighting_show_condition`
   and filtered logcat around the incoming notification containing the tags
   `EdgeLightingService`, `EdgeLightingClientManager`,
   `NotificationInterruptStateProvider`, and `EdgeLightingPolicyManager`.

No physical Exynos9810 notification event was tested in this audit. No claim
of working real brief pop-ups or animated effects can be made on that basis.
