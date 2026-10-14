# Speaker audit and matched stock blobs

The connected S9+ already uses stock 32-bit vendor speaker effects and stock
system legacy SoundBooster 900 (hashes match SM-G965F firmware). The 64-bit
vendor effect instead requested SoundBooster 1050 while target tuning is 900.
The final target restore now supplies the stock effect for both architectures,
plus its paired system legacy effect/algorithm. S9/S9+ use 900; Note9 uses 950.
Stereo mixer routing and Dolby remain unchanged. No single-speaker hardware
configuration is substituted for the S9+ stereo speakers.

Live S9+ test uses a reversible bind mount of the stock 64-bit vendor effect.
Original is backed up at /data/local/tmp/s9-audio-repair/original-booster64.so.
Undo: umount /vendor/lib64/soundfx/libsamsungSoundbooster_plus.so; restart
audioserver. Bind mount expires on reboot. Source fix is permanent in subsequent
ROM builds, but no new ROM was built here.

Intermittent crackling could not be reproduced by the owner. Dependency checks
and service stability do not prove the audible issue is resolved. Remaining
acceptance test: real speaker playback during the reported intermittent event,
with correlated HAL/AudioFlinger/kernel logs.
