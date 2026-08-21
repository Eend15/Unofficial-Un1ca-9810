# Exynos9810 NFC stack

This payload combines:

- The Android 16 `NfcNci` app, framework and generic NFC libraries from the
  UN1CA source firmware.
- The Samsung S3NRN82 HAL, configuration and device firmware from the
  tested Exynos9810 vendor stack.
- The Android 16 SLSI `libnfc_sec_jni.so` prebuilt from UN1GAGA's
  `r11sxxx` firmware prebuilts.

Do not replace the Android 16 `NfcNci.apk` with an Android 15
package. It does not implement the Android 16 `INfcAdapter` interface. The
Android 15 SEC JNI is incompatible as well because it registers methods that
are no longer present in Android 16's `NativeNfcManager`.

The shared HAL files live under `common/vendor`. Device-specific S3NRN82
firmware and RF calibration files live under each target directory.
