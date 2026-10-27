# Remote Note9 results 2026-10-27

Input UN1CA-SPen-v5-20261027-073443.tar.gz; full native dumpstate exported successfully.
Human confirmed only AirActions-scan-TEST-v6 ZIP was installed, not the separate SPen-v6 Notes ZIP.

Installed recognizer remains v5 SHA2561eb4c190ee27192f12541022f15eff160c41205fc21974c7ae070ec97c0bf8dd. Expected v6 is54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9. Current native crash again Text::SPenRecognizerResultText::PrintResult(bool)+424 (PC0x74bcc). Thus this collection does NOT test the Notes v6 crash repair. Ask tester to install the existing verified SPen-v6 ZIP without wiping and return its installation log if it fails.

AirCommand hashcd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea matches the scanner candidate. Runtime scans use mode2, but address and Crown UUID discovery still time out. Raw btsnoop contains795 connectable Crown advertisements. Changing the Samsung scan mode was insufficient; do not promote this candidate into default ROM source or claim pairing repaired. Next investigation boundary remains controller report to app delivery/filtering. Preserve pairing/BT data and permission enforcement.

This collection DOES include successful ScreenOffActivity start at07:44:25. It enables FBR for both main composer/EWP and uses DrawLoopHwBuffer (not the earlier hypothesized Texture-only path); FBR reports supported and framebuffer fetch supported. Tester reports pen-up-only ink in Notes/screen-off, live ink in Quick notes. This contradicts treating Texture vs HwBuffer alone as the proven root cause. A rendering fix is still unverified; do not ship a guessed native renderer offset or globally disable acceleration. Compare stroke submission/presentation between the window modes next.

No new device flash, kernel/ROM build, or source push performed for this analysis. Existing v6 package and rollback hashes remain unchanged.
