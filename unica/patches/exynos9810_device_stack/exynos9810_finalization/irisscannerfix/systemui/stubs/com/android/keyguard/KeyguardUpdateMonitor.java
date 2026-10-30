package com.android.keyguard;

import android.app.trust.TrustManager;
import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;

/** Compile-time stub; only the members Un1caIrisKeyguard uses, matching One UI 8 SystemUI. */
public class KeyguardUpdateMonitor {
    public final ArrayList<?> mCallbacks = null;
    public final Context mContext = null;
    public boolean mDeviceInteractive;
    public boolean mKeyguardGoingAway;
    public boolean mKeyguardOccluded;
    public boolean mKeyguardShowing;
    public boolean mPrimaryBouncerIsOrWillBeShowing;
    public final TrustManager mTrustManager = null;
    SparseArray<BiometricAuthenticated> mUserFaceAuthenticated;

    public static synchronized int getCurrentUser() { throw new RuntimeException(); }
    public void registerCallback(KeyguardUpdateMonitorCallback callback) { throw new RuntimeException(); }
    public boolean isUnlockingWithBiometricAllowed(boolean isStrongBiometric) { throw new RuntimeException(); }
    public boolean getUserCanSkipBouncer(int userId) { throw new RuntimeException(); }

    static class BiometricAuthenticated {
        BiometricAuthenticated(boolean authenticated, boolean isStrongBiometric) { }
    }
}
