# Three-target release audit — 2026-10-14

Targets: starlte (S9), star2lte (S9+), crownlte (Note9).

Verified clean-source face release staging and native runtime/policy staging independently for every target. Original Android framework core DEX entries remain preserved. Shared finalization and Infinity modules select all three targets. Native camera fixes select target-specific byte patterns and native audio/HAL overlays retain model-specific routing. S Pen BLE/sysfs code is restricted to crownlte.

Passed existing regression checks: UI audio calibration, GMS data repair, stock S9 LED resources, Samsung photo-processing routing, Brief/heads-up notifications, IMS transport, Note9 charging, Note9 installation/rebuilt-artifact validation, actual AirCommand BLE patch integration and Android16 S Pen sysfs bridge assembly/idempotence. The Brief negative fixture now explicitly removes the patch in its temporary copy, so a previously patched real donor cannot invalidate the negative test.

The S9+ compiled release passed source-matched face, KernelSU, Blue Infinity default, Bixby selector and PIF guards; built SystemUI passed Brief/Edge Lighting verification. make_rom applies shared release-default guards to all three targets and final compiled S Pen validation to Note9.

Limits: no complete S9 or Note9 ROM build or physical hardware test was performed in this audit. Native runtime staging tests use isolated target fixtures. Physical face/USB prompt/removal and persistent KernelSU reboot checks were performed on S9+ earlier in this release. The S9+ EROFS ZIP remains in packaging at audit time. These checks do not claim that every hardware feature is physically proven on every model.
