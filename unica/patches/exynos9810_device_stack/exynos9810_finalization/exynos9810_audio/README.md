# Embedded Exynos9810 audio stack

This directory contains the target-matched vendor audio payload used by the
Exynos9810 devices. The build copies only the selected target directory and
never reads a developer's Downloads directory.

Expected layout:

    starlte/vendor/...
    star2lte/vendor/...
    crownlte/vendor/...

The S9 and S9+ use the 'ver900' SoundBooster library. Note9 uses the
device-matched 'ver950' library. Mixer XML, audio firmware and HAL files are
kept per target because they are not interchangeable.

The files are intentionally kept under source control as binary prebuilts
and are copied into the final vendor image by the final Exynos9810 cleanup
module.

## HDMI audio v2 integration (22 October 2026)

Audited user-supplied `hdmi_audio_fix_9810_v2.zip`, SHA256
`2ac22a873a08f0658bc633033e195887413492028cd3afffb780bc343a7b8af7`.
Its ELF32 ARM HAL has the same length, ELF headers, dependencies and all other
bytes as every current One UI 8 target's audio HAL. The only difference is
file offset `0xe871`: `30` becomes `10`, changing the Thumb instruction at
`0xe86e` from `lsls.w r0,r10,#14` to `lsls.w r0,r10,#6`. The existing BMI branch
therefore tests output flag bit 25 (`0x02000000`, Samsung MULTI_CH) instead of
bit 17. This is compatible with the pinned current HAL, not a general patch
for arbitrary Samsung audio libraries. It changes that flag selection, not
every possible HDMI routing or receiver negotiation failure.

`patch_hdmi_audio.py` applies this exact transformation after the finalizer
copies the device-matched audio stack. It accepts only the original SHA256
`e437fac3624ea03e9ab02c42fb5a8ca854f5221b81db4122b16bbd5c434f9048`
or the supplied patched SHA256
`0d21b60ac684b315c49ac1ce7bcfb03d939222155a471a8308225fa81c368bd0`.
Repeat application is safe; unexpected input aborts the build. The final boot
contract checks the resulting vendor HAL before image creation. The original
per-target binary prebuilts remain unchanged as the pinned patch baseline.

Do not install the module's boot hooks into the ROM. Direct vendor-image
integration needs neither bind mounts nor killing the audio service/audioserver.
Existing metadata remains root/root 0644, `vendor_file`. Physical HDMI audio
has not been tested in this integration session; the supplied module alone
does not establish device acceptance.

Validation: `python3 test_hdmi_audio.py -v` exercises the real restoration
function twice for all three targets on disposable copies, compares the exact
output hash/one-byte difference, verifies unchanged mixer/calibration payloads,
and checks rejection of unpatched verification and corrupted input.
