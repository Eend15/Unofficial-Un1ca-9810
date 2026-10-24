# Privacy stop attribution

On the tested One UI 8 source, active AppOps are tracked by operation/UID/package,
not by attribution. A biometric camera operation can start with attribution
`Biometrics_FaceService` and finish with null after an overlapping Camera2 client.
The active list correctly becomes empty, but the stop notification is filtered
using that null attribution; PrivacyItemController retains its prior camera item.

Preserve the removed item's original attribution for the stop notification. Start
events, real camera closure, privacy visibility rules and noted-operation holding
remain unchanged. No privacy indicator is disabled or hidden while in use.

Live evidence: camera disconnected at 14:54:22, AppOps active/noted lists empty,
but PrivacyItemController still held the `android` camera item created at
14:46:51. The original tagged start was logged without a corresponding stop.
Applies to the audited Android 16 SystemUI on all three Exynos9810 targets.

Verification: the actual original AppOps class in ART removed the active item
but delivered zero stop callbacks in the mixed-attribution test. The patched
class delivered exactly one. All 50,604 SystemUI class definitions survived.
Source fixture/idempotence/mismatch tests pass for all three target layouts.
After live installation on S9+, the user confirmed the icon clears; camera
clients and PrivacyItemController items were empty following repeated unlocks.
S9/Note9 physical acceptance is not claimed. Normal builds verify the compiled
SystemUI stop path before packaging.
