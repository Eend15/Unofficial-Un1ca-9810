package com.android.keyguard;

import android.graphics.PixelFormat;
import android.hardware.biometrics.BiometricSourceType;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.util.Size;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.samsung.android.camera.iris.SemIrisManager;

/**
 * Lock screen iris unlock for One UI 8 on the Exynos 9810 devices.
 *
 * One UI 8 SystemUI no longer drives SecIrisService, but its keyguard still treats
 * BiometricSourceType.IRIS like a passive biometric. As on stock, the lock screen hands
 * SecIrisService a placeholder view at the top of the screen and the service draws its own
 * preview box with the eye rings there. A TEE-verified match is reported through the same
 * keyguard state and callbacks face unlock uses. Iris counts as a weak biometric, so
 * Android's strong-auth rules (PIN after reboot, idle timeout, lockout) still apply.
 *
 * Settings (written by the iris menu):
 *  un1ca_iris_unlock            iris unlock on/off (default on)
 *  un1ca_iris_unlock_screen_on  scan at screen on, else after swiping (default off)
 *  un1ca_iris_stay_on_lockscreen stay on the lock screen after a match until swipe (default off)
 */
public final class Un1caIrisKeyguard extends KeyguardUpdateMonitorCallback {
    private static final String TAG = "UN1CA-IrisKeyguard";
    private static final String KEY_UNLOCK = "un1ca_iris_unlock";
    private static final String KEY_SCREEN_ON = "un1ca_iris_unlock_screen_on";
    private static final String KEY_STAY = "un1ca_iris_stay_on_lockscreen";
    // WindowManager.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY (hidden): stacks above the bouncer.
    private static final int TYPE_SECURE_SYSTEM_OVERLAY = 2015;

    private static Un1caIrisKeyguard sInstance;

    private final KeyguardUpdateMonitor mMonitor;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private SemIrisManager mIris;
    private CancellationSignal mCancel;
    // Within one scan the iris engine's exposure drifts up while it searches and it rarely
    // recovers; a fresh scan starts at a good exposure and matches within 1-2 s. So use
    // short attempts and restart: at most ATTEMPTS x ATTEMPT_MS of IR per wake or swipe.
    private static final int ERROR_EYE_SAFETY_TIMEOUT = 9;
    private static final int ATTEMPTS = 3;
    private static final long ATTEMPT_MS = 3500;
    private static final long RESTART_DELAY_MS = 300;
    private int mRetriesLeft;
    // Placeholder the iris service positions its preview window on.
    private View mPreviewAnchor;

    private Un1caIrisKeyguard(KeyguardUpdateMonitor monitor) {
        mMonitor = monitor;
    }

    /** Injected at the end of KeyguardUpdateMonitor.handleStartedWakingUp (main thread). */
    public static void onStartedWakingUp(KeyguardUpdateMonitor monitor) {
        try {
            if (sInstance == null) {
                sInstance = new Un1caIrisKeyguard(monitor);
                monitor.registerCallback(sInstance);
            }
            if (sInstance.setting(KEY_SCREEN_ON, 0) == 1) {
                sInstance.mRetriesLeft = ATTEMPTS - 1;
                sInstance.start("screen on");
            }
        } catch (Throwable t) {
            Log.e(TAG, "wake hook failed", t);
        }
    }

    @Override public void onPrimaryBouncerVisibilityChanged(boolean visible) {
        if (visible && mCancel == null) {
            mRetriesLeft = ATTEMPTS - 1;
            start("bouncer");
        }
    }

    @Override public void onStartedGoingToSleep(int why) { stop("going to sleep"); }
    @Override public void onKeyguardGoingAway() { stop("keyguard going away"); }
    @Override public void onUserSwitching(int userId) { stop("user switching"); }

    @Override public void onKeyguardVisibilityChanged(boolean visible) {
        if (!visible) stop("keyguard hidden");
    }

    @Override public void onBiometricAuthenticated(int userId, BiometricSourceType type, boolean strong) {
        if (type != BiometricSourceType.IRIS) stop("unlocked by " + type);
    }

    private int setting(String key, int def) {
        return Settings.Secure.getInt(mMonitor.mContext.getContentResolver(), key, def);
    }

    private SemIrisManager iris() {
        if (mIris == null) mIris = SemIrisManager.getSemIrisManager(mMonitor.mContext);
        return mIris;
    }

    private void start(String why) {
        if (mCancel != null) return;
        int user = KeyguardUpdateMonitor.getCurrentUser();
        if (setting(KEY_UNLOCK, 1) != 1) return;
        if (!mMonitor.mKeyguardShowing || mMonitor.mKeyguardOccluded
                || mMonitor.mKeyguardGoingAway || !mMonitor.mDeviceInteractive) return;
        if (!mMonitor.isUnlockingWithBiometricAllowed(false) || mMonitor.getUserCanSkipBouncer(user)) return;
        try {
            SemIrisManager iris = iris();
            if (iris == null || !iris.hasEnrolledIrises(user)) return;
            CancellationSignal cancel = new CancellationSignal();
            mCancel = cancel;
            Log.i(TAG, "start (" + why + ") user " + user);
            View anchor = showPreviewAnchor(iris);
            // The service needs the anchor's window token and size, so wait for its first layout.
            anchor.post(() -> {
                if (mCancel != cancel) return;
                try {
                    iris.authenticate(null, cancel, SemIrisManager.IRIS_AUTH_TYPE_UI_WITH_PREVIEW,
                            new Callback(cancel, user), mHandler, user, null, anchor);
                    mHandler.postDelayed(() -> nextAttempt(cancel), ATTEMPT_MS);
                } catch (Throwable t) {
                    Log.e(TAG, "cannot start iris", t);
                    finish(cancel);
                }
            });
        } catch (Throwable t) {
            Log.e(TAG, "cannot start iris", t);
            finish(mCancel);
        }
    }

    private View showPreviewAnchor(SemIrisManager iris) {
        if (mPreviewAnchor != null) return mPreviewAnchor;
        Size min = iris.getMinimumIrisViewSize();
        int height = min != null ? min.getHeight() : 0;
        if (height <= 0) height = mMonitor.mContext.getResources().getDisplayMetrics().widthPixels * 9 / 16;
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT, height,
                TYPE_SECURE_SYSTEM_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                        | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                PixelFormat.TRANSLUCENT);
        lp.gravity = Gravity.TOP;
        lp.setTitle("IrisPreviewAnchor");
        View anchor = new FrameLayout(mMonitor.mContext);
        mMonitor.mContext.getSystemService(WindowManager.class).addView(anchor, lp);
        mPreviewAnchor = anchor;
        return anchor;
    }

    private void hidePreviewAnchor() {
        View anchor = mPreviewAnchor;
        if (anchor == null) return;
        mPreviewAnchor = null;
        try {
            mMonitor.mContext.getSystemService(WindowManager.class).removeViewImmediate(anchor);
        } catch (Throwable t) {
            Log.w(TAG, "preview anchor already gone", t);
        }
    }

    /** Ends the given session if it is still the current one. */
    private void finish(CancellationSignal session) {
        if (session == null || mCancel != session) return;
        mCancel = null;
        hidePreviewAnchor();
    }

    /** Ends an attempt that has not matched in time and starts a fresh one, keeping the anchor. */
    private void nextAttempt(CancellationSignal session) {
        if (mCancel != session) return;
        mCancel = null;
        session.cancel();
        if (mRetriesLeft <= 0) {
            Log.i(TAG, "no match after " + ATTEMPTS + " attempts");
            hidePreviewAnchor();
            return;
        }
        mRetriesLeft--;
        // Give the service a moment to close the cameras of the cancelled attempt.
        mHandler.postDelayed(() -> {
            if (mCancel != null || mPreviewAnchor == null) return;
            start("next attempt");
            if (mCancel == null) hidePreviewAnchor();
        }, RESTART_DELAY_MS);
    }

    private void stop(String why) {
        mRetriesLeft = 0;
        CancellationSignal cancel = mCancel;
        if (cancel == null) {
            hidePreviewAnchor();
            return;
        }
        Log.i(TAG, "stop (" + why + ")");
        finish(cancel);
        cancel.cancel();
    }

    private void onMatched(int user) {
        // Same state face unlock records, so "can skip bouncer" and the passive-auth
        // unlock path in BiometricUnlockController apply to iris as well.
        mMonitor.mUserFaceAuthenticated.put(user, new KeyguardUpdateMonitor.BiometricAuthenticated(true, false));
        if (mMonitor.getUserCanSkipBouncer(user)) {
            try {
                mMonitor.mTrustManager.getClass()
                        .getMethod("unlockedByBiometricForUser", int.class, BiometricSourceType.class)
                        .invoke(mMonitor.mTrustManager, user, BiometricSourceType.IRIS);
            } catch (Throwable t) {
                Log.w(TAG, "TrustManager not notified", t);
            }
        }
        // "Stay on Lock screen": like Samsung's face lock-stay, show the lock screen as
        // unlocked and let the next swipe open the phone without the PIN. When the PIN
        // screen is already up the user has swiped, so finish the unlock.
        if (setting(KEY_STAY, 0) == 1 && !mMonitor.mPrimaryBouncerIsOrWillBeShowing) {
            try {
                mMonitor.getClass().getMethod("sendBiometricUnlockState", BiometricSourceType.class)
                        .invoke(mMonitor, BiometricSourceType.IRIS);
            } catch (Throwable t) {
                Log.w(TAG, "lock screen not marked unlocked", t);
            }
            Log.i(TAG, "staying on lock screen until swipe");
            return;
        }
        for (Object ref : mMonitor.mCallbacks) {
            Object cb = ((java.lang.ref.WeakReference<?>) ref).get();
            if (cb instanceof KeyguardUpdateMonitorCallback)
                ((KeyguardUpdateMonitorCallback) cb).onBiometricAuthenticated(user, BiometricSourceType.IRIS, false);
        }
    }

    private final class Callback extends SemIrisManager.AuthenticationCallback {
        private final CancellationSignal mSession;
        private final int mUser;

        Callback(CancellationSignal session, int user) {
            mSession = session;
            mUser = user;
        }

        @Override public void onAuthenticationSucceeded(SemIrisManager.AuthenticationResult result) {
            if (mCancel != mSession) return;
            finish(mSession);
            Log.i(TAG, "iris matched");
            onMatched(mUser);
        }

        @Override public void onAuthenticationError(int code, CharSequence msg) {
            if (mCancel != mSession) return;
            finish(mSession);
            Log.i(TAG, "error " + code + ": " + msg);
            if (code == ERROR_EYE_SAFETY_TIMEOUT && mRetriesLeft > 0) {
                mRetriesLeft--;
                mHandler.postDelayed(() -> start("retry"), 500);
            }
        }

        @Override public void onAuthenticationFailed() {
            Log.i(TAG, "iris not recognised");
        }
    }
}
