package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.content.Context;
import android.hardware.biometrics.face.V1_0.IBiometricsFace;
import android.os.Build;
import android.os.IBinder;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.util.Slog;
import vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFace;

/**
 * Source-only opt-in connection point for HidlToAidlSensorAdapter.
 *
 * This path is disabled by default and requires a ROM-owned read-only
 * built-in flag, or a debuggable ROM plus an explicit persist.sys property. If opted
 * in, the genuine FaceunlockFixHidl is constructed only after native Binder
 * identity is verified; any failure falls back to existing vendor discovery.
 *
 * Never replace the existing TestHal branch, cached HIDL daemon, or Samsung
 * vendor ISehBiometricsFace discovery. No fake token or authentication path.
 */
public final class FaceunlockFixProbe {
    private static final String TAG = "FaceunlockFixProbe";
    // Canonical ROM-source opt-in. Native init and ROM staging checks must
    // use this exact key; there is no old-key fallback. The debuggable-build
    // guard remains mandatory for debug opt-in; built-in activation is owned
    // by the ROM. Supported-Exynos9810 and genuine Binder guards always apply.
    private static final String OPT_IN =
            "persist.sys.un1ca.faceunlockfix.experimental";
    private static final String BUILTIN = "ro.un1ca.faceunlockfix.builtin";
    private static final String NATIVE_SERVICE =
            "com.samsung.android.bio.face.IFaceDaemon";

    /**
     * Android16's Samsung session adapter casts its HAL to the V2 extension
     * unconditionally for operations such as sehResumeEnrollment. Merely
     * implementing the Android V1 face interface will crash those paths.
     * Never relax this return type to base IBiometricsFace.
     */
    public interface Factory {
        ISehBiometricsFace create(Context context, IBinder genuineNativeDaemon)
                throws RemoteException;
    }

    private static volatile Factory factory;

    private FaceunlockFixProbe() {}

    /** Source integration only. Do not register a mock or test HAL factory. */
    public static synchronized void registerFactory(Factory implementation) {
        if (implementation == null || factory != null) {
            throw new IllegalStateException(
                    "FaceunlockFix factory must be installed exactly once");
        }
        factory = implementation;
    }

    /**
     * Returns a genuine live HIDL adapter or null; caller must continue
     * original vendor HAL discovery on null.
     */
    public static IBiometricsFace tryAcquire(Context context) {
        // Two static system properties gate this path. Neither can be
        // toggled by an ordinary user app or an app-facing Settings switch.
        final boolean trustedRomIntegration = SystemProperties.getBoolean(BUILTIN, false);
        final boolean debugOptIn = Build.IS_DEBUGGABLE &&
                SystemProperties.getBoolean(OPT_IN, false);
        if (context == null || (!trustedRomIntegration && !debugOptIn)) {
            return null;
        }
        String soc = SystemProperties.get("ro.board.platform", "");
        if (!"exynos9810".equals(soc) && !"universal9810".equals(soc)) {
            Slog.w(TAG, "FaceunlockFix bridge denied on unrecognized SoC");
            return null;
        }
        // Non-sensitive startup trace: distinguishes a real bridge selection
        // from silently falling back to the existing vendor HAL at boot.
        Slog.i(TAG, "FaceunlockFix opt-in active; probing native face daemon");
        Factory active = factory;
        try {
            IBinder nativeBinder = ServiceManager.checkService(NATIVE_SERVICE);
            if (nativeBinder == null || !nativeBinder.isBinderAlive() ||
                    !NATIVE_SERVICE.equals(nativeBinder.getInterfaceDescriptor())) {
                Slog.w(TAG, "Genuine Samsung IFaceDaemon is unavailable");
                return null;
            }
            ISehBiometricsFace candidate = active != null
                    ? active.create(context, nativeBinder)
                    : new FaceunlockFixHidl(context);
            if (candidate == null) {
                Slog.w(TAG, "FaceunlockFix factory refused or native init failed");
                return null;
            }
            IHwBinder hidlBinder = candidate.asBinder();
            if (hidlBinder == null) {
                Slog.e(TAG, "FaceunlockFix bridge has no HIDL Binder");
                return null;
            }
            Slog.i(TAG, "Genuine FaceunlockFix V2 HIDL bridge selected for FaceProvider");
            return candidate; // Framework adapter handles HIDL death/callback.
        } catch (RemoteException | RuntimeException | LinkageError failure) {
            Slog.e(TAG, "Experimental FaceunlockFix HAL probe rejected", failure);
            return null;
        }
    }
}
