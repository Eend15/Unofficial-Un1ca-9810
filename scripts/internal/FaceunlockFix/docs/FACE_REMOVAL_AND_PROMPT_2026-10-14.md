# Face removal and credential prompt repair (2026-10-14)

Shared source applies to starlte, star2lte and crownlte. Physical checks use SM-G965F only.

## Observed failures
- Framework metadata reported one face but the selected native store was empty. Asynchronous native enumerate produced no completion; the 30-second cleanup timeout blocked pending prompt preparation.
- Native remove on an empty store sent error 1004. Android16 FaceRemovalClient is a RemovalConsumer, not an ErrorConsumer; ordinary onError left its scheduler busy.
- Removing an actual enrolled face deleted `1tmpl.dat` and `sid`, then emitted native onRemoved with ID 0 (remove-all). Forwarding an empty ID list made Android complete with failure, leaving metadata behind.
- Stock faced caches its authenticator ID after removal; nonzero cached ID is not proof of a persisted template.

## Changes
- Strict native request(11) decoding retained. A zero result is accepted as empty ONLY when the derived per-user native directory exists, is readable and its listing is empty. Native errors, malformed output and missing/unreadable storage fail closed.
- Genuine native remove-all completion is verified outside the synchronous native Binder callback, then reconciles the current FaceRemovalClient using actual registered framework IDs. ID 0 expands to existing registrations, never a made-up face.
- A 5-second bounded removal failure uses Android's existing removal failure route so the scheduler cannot remain permanently occupied. No error is converted into success unless native absence is verified.
- Existing services.jar core DEX files remain byte-for-byte unchanged; only the compiled bridge DEX is replaced. Defined-class preservation and on-device ART checks run before deployment.
- Biometric strength stays WEAK. PIN fallback, real secure-engine matching and genuine HAT policy are retained.

## Validation
Source compilation, original Binder ABI audit, readable/missing/nonempty/error store regression cases and ART bridge method resolution pass.
Face+PIN without fingerprints: actual USB BiometricPrompt opened, native authentication succeeded, and user confirmed file transfer worked.
Live remove-all via Settings confirmed native template + sid deletion, Android enrolled count zero, successful FaceRemovalClient completion, empty scheduler and registration button restored (16:33:46).
Re-enrollment succeeded. The final compiled services.jar (SHA256 a7d417da546905c72906b899afea5923df61a315c7d4f7d2bd175828aa4b4e91) retained that registration after reboot. Fingerprint count remained zero, and the user confirmed USB authentication/file transfer worked again.
Other models have shared source/runtime packaging checks only, not physical testing.

Previous cancelled signed ROM zip/checksum and its stale generated target-files were withdrawn. Previous staging preserved at out/target/star2lte/work_dir-before-face-removal-20261014; separate replacement staging at out/target/star2lte/work_dir. Replacement EROFS build log: out/target/star2lte/face-removal-20261014-build.log.

Final source-shipped bridge uses the same verified logic plus the native-remove-all build contract marker; exact live and staged services.jar SHA256 is 910790a8338bba18663ee5ebe382ceb1ad10d43dadb7092a8dc3ee96e0ef4fe3. Real face authentication after the final reboot was counted as accepted, and USB MTP was enabled.
