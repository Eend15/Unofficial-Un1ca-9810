# Samsung feature dependencies

Restore configured donor APKs after the Exynos9810 final debloat, without changing
their signatures. SamsungCloudClient requests MANAGE_USERS and shares the Samsung
Cloud UID with SCPMAgent. Removing it leaves SCPM's SamsungAccountReceiver without
that entitlement; adding a permission allowlist only to SCPM cannot grant a
permission that neither installed shared-UID package requests. Restore the real
Cloud app and its original privileged allowlist, then remove only the earlier
ScpmReceiver-disable override. No user/account databases are cleared.

Gallery declares access to StickerCenter, but the port's debloat removed that
provider. Restore the original donor StickerCenter. This addresses the missing
component; every AI cutout/animated GIF workflow still needs device acceptance.
The optional AR-avatar packages are a separate feature and are not claimed fixed.

Neither dependency restoration proves account tokens survive reboot, repairs a
hardware-backed keymaster failure, guarantees Now Brief content, or certifies
Wearable pairing without the affected accessory.
