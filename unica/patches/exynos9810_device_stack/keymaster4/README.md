# Exynos9810 software Keymaster 4

This payload uses Android's software-backed Keymaster 4 HIDL implementation.
It is derived from the working UN1GAGA Android 16 Exynos8895 compatibility
stack and does not communicate with Samsung's incompatible `skeymaster4`
Trustonic trusted application.

The service publishes `android.hardware.keymaster@4.0::IKeymasterDevice/default`
at the `SOFTWARE` security level. The boot-tested Exynos9810 Keymaster 3
service remains available at the `TRUSTED_ENVIRONMENT` level. Android's
Keystore2 compatibility layer supports this combination: it retains the KM4
software backend and then discovers KM3 for TEE-backed keys.

This gives Android 16 and applications a consistent Keymaster 4 API while
preserving existing KM3-backed storage and avoiding the secure-world command
failures seen with the N770F Keymaster 4 service on Exynos9810.

Existing application ciphertext whose old hardware-backed key was already
lost cannot be recovered. A clean install creates new keys through this stack.
