# Platform identity after resource rebuilding

Rebuilding framework-res signs it with the configured ROM key. Android 16 uses
that android package as the platform identity. If its effective identity changes,
unchanged Samsung apps sharing android.uid.system fail reconciliation (including
FusedLocation), and rebuilt SystemUI loses platform SELinux classification.

preserve_platform_identity.py normalizes only the android package, only after
matching the configured custom key, to the existing platform signer from
plat_mac_permissions.xml. The existing custom-signature patch then normalizes
rebuilt apps to that platform identity. Arbitrary signatures are still rejected.
The APK bytes retain their valid ROM-key signature; no global verification bypass
is added. Applies to all targets using the signature module.

Regression: inspect a clean boot for shared-user signature mismatches and verify
FusedLocation registration, SystemUI platform_app domain, and completed boot.
Live verification is pending; do not mark the ROM fixed based on compilation.
