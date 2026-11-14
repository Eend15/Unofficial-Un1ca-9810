# Exynos9810 Bluetooth compatibility

Keep the Android 16 Bluetooth application and JNI library together. The final
cleanup enables `bluetooth.profile.opp.enabled=true` after restoring the donor
baseline. The donor's false value otherwise leaves the share-sheet launcher
present but disables Object Push, including its provider and receive UI.

The native patch includes the BP2A.250605.031.A3 command layout. Its legacy
controller does not answer Samsung DBFW debug commands (opcode 0xFDF1), which
otherwise cause an HCI timeout and repeated adapter restarts. The matching
vendor-debug sends are skipped; standard Bluetooth file transfer, pairing and
audio profiles remain enabled. Instruction signatures are exact and do not
patch unrelated HCI commands.

On the connected S9+, enabling OPP starts BluetoothOppService, its RFCOMM
listener and SDP record. Updating the JNI library eliminated the observed
approximately 15-second restart cycle with SELinux enforcing. End-to-end
send/receive still requires a second paired device. Shared final cleanup and
JNI patching apply to starlte, star2lte and crownlte; the latter two other
hardware variants have not been physically tested in this session.

VaultKeeper: the legacy VaultKeeper vendor services are disabled on Exynos9810,
so an unpatched stack cannot read back its stored config checksum and forgets
every bonded device after a reboot. The patcher applies the same
BP2A.250605.031.A3 branch patch as official UN1CA (28f7773948050037 to
28f777392a000014) to the /system/lib64 copy that this port loads. It accepts an
already patched lib, and the build fails if the branch is missing or any
unpatched copy remains, so a ROM can no longer ship without it.
