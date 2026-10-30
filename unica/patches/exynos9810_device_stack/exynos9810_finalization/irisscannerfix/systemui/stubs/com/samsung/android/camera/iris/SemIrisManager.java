package com.samsung.android.camera.iris;

import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.view.View;

/** Compile-time stub of the hidden One UI 8 framework class. */
public class SemIrisManager {
    public static final int IRIS_AUTH_TYPE_NONE = 0;
    public static final int IRIS_AUTH_TYPE_UI_WITH_PREVIEW = 2;

    public static SemIrisManager getSemIrisManager(Context context) { throw new RuntimeException(); }
    public android.util.Size getMinimumIrisViewSize() { throw new RuntimeException(); }
    public boolean hasEnrolledIrises(int userId) { throw new RuntimeException(); }
    public void authenticate(CryptoObject crypto, CancellationSignal cancel, int flags,
            AuthenticationCallback callback, Handler handler, int userId, Bundle attr, View view) {
        throw new RuntimeException();
    }

    public static class CryptoObject { }

    public static class AuthenticationResult { }

    public static abstract class AuthenticationCallback {
        public void onAuthenticationAcquired(int acquireInfo) { }
        public void onAuthenticationError(int errorCode, CharSequence errString) { }
        public void onAuthenticationFailed() { }
        public void onAuthenticationHelp(int helpCode, CharSequence helpString) { }
        public void onAuthenticationSucceeded(AuthenticationResult result) { }
    }
}
