# Source checkout readiness — 2026-10-24

The current build inputs and fixes are staged in Git, including the October23
enforcing KernelSU EROFS/EXT4 kernel packages, Dynamic Island source/payload and
new finalization scripts. No remote publication or push was performed.

Normal builds require the host packages documented in README, initialized pinned
submodules, hydrated Git LFS payloads and the configured Samsung firmware. They
must not require the maintainer's Windows Downloads folder, live-device backups,
private SDK cache, existing work_dir or separate kernel checkout. Optional APK
source-development rebuild commands have their own SDK inputs; their already
built companion payload is included for normal ROM builds.

Changes:

- Added a source-input inventory and early preflight for missing repository
  files, LFS pointer stubs and mismatched/uninitialized submodules.
- Replaced Apktool's destructive reset/apply bootstrap with an idempotent
  source patch application. Existing unrelated submodule files are retained.
- Corrected Dynamic Island source fingerprints to the LF representation stored
  by Git. Previously the local CRLF fingerprints would fail after checkout.
- Recognized the two explicit kernel source-input diffs separately from APK
  patches in the static layout validator; their diff headers remain checked.
- Documented clone/LFS, host packages, firmware layout and separate EXT4 commands.

Evidence:

- Repository preflight with Git-index membership: 11,775 files, six pinned
  submodules passed.
- An independent, hydrated `git checkout-index` export (6.7 GiB, without the
  existing out tree) passed all 11,773 inputs present at export time and Dynamic
  Island's 337-input source fingerprint. Two later regression test files were
  separately added and index-checked; they are not runtime build inputs.
- That export successfully generated starlte, star2lte and crownlte configuration
  for both EROFS and EXT4. It did not use extracted firmware or existing workdirs.
- Clean Apktool patch application and repeat application passed in an isolated
  fixture made from the pinned submodule's original files; an unrelated local
  file survived. The actual already-patched submodule was accepted as well.
- Missing-source and LFS-pointer negative tests passed (three preflight tests).
- Static patch layout: 156 unified patches passed. Changed build scripts passed
  Bash syntax and focused whitespace checks.

Limits: this audit does not constitute six complete fresh ROM compilations.
Firmware versions, available disk/RAM, host packages and network availability for
tool bootstrap remain external conditions. Current working source includes
unpublished changes; an existing remote clone will not receive them until a
reviewed commit and Git/LFS publication occurs. Existing source/kernel/workdirs
and exported ROM ZIPs were not cleaned, rebuilt, flashed or modified by this audit.
