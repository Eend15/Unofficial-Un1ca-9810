package com.android.keyguard;

import android.hardware.biometrics.BiometricSourceType;

/** Compile-time stub of the One UI 8 SystemUI callback base class. */
public class KeyguardUpdateMonitorCallback {
    public void onBiometricAuthenticated(int userId, BiometricSourceType type, boolean isStrongBiometric) { }
    public void onStartedGoingToSleep(int why) { }
    public void onKeyguardVisibilityChanged(boolean visible) { }
    public void onKeyguardGoingAway() { }
    public void onPrimaryBouncerVisibilityChanged(boolean visible) { }
    public void onUserSwitching(int userId) { }
}
