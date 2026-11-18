package com.android.keyguard;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.PixelFormat;
import android.hardware.biometrics.BiometricSourceType;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.util.Size;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.samsung.android.camera.iris.SemIrisManager;
import java.lang.reflect.Field;

/**
 * Lock screen iris unlock and Intelligent Scan (combined Face + Iris) for One UI 8
 * on the Exynos 9810 devices.
 *
 * One UI 8 SystemUI no longer drives SecIrisService, but its keyguard still treats
 * BiometricSourceType.IRIS like a passive biometric. As on stock, the lock screen hands
 * SecIrisService a placeholder view at the top of the screen and the service draws its own
 * full-color RGB preview box (Camera 1) with the eye rings there while scanning irises on
 * IR Camera 90 (supported concurrently by libexynoscamera3 with lowered cam 90 cost).
 *
 * When both Face Unlock and Iris Unlock are enabled, Intelligent Scan is active and works
 * like stock: face and iris scan at the same time from one front camera.
 *  - Iris starts first and opens Camera 1 for its colour preview. Face is held off until
 *    then (shouldAllowFaceAuth), and is started FACE_JOIN_DELAY_MS after the iris scan.
 *    The face HAL then hands its ImageReader to SecIrisService, whose front session feeds
 *    both (Un1caIrisFaceShare / FaceunlockFixCamera2FrameSource), so nobody is evicted.
 *  - Face keeps running while Iris restarts its short attempts. When Iris has used all
 *    attempts or fails for good, face continues alone on its own camera.
 *  - Screen-on scanning defaults to ON for Intelligent Scan (un1ca_intelligent_scan_screen_on).
 *
 * A persistent BIND_IMPORTANT connection to SecIrisService keeps Android 16's lmkd from
 * killing the iris daemon host process under memory pressure.
 */
public final class Un1caIrisKeyguard extends KeyguardUpdateMonitorCallback {
    private static final String TAG = "UN1CA-IrisKeyguard";
    private static final String IRIS_PKG = "com.samsung.android.server.iris";
    private static final String IRIS_CLS = "com.samsung.android.server.iris.IrisService";
    private static final String KEY_UNLOCK = "un1ca_iris_unlock";
    private static final String KEY_SCREEN_ON = "un1ca_iris_unlock_screen_on";
    private static final String KEY_INTELLIGENT_SCREEN_ON = "un1ca_intelligent_scan_screen_on";
    private static final String KEY_STAY = "un1ca_iris_stay_on_lockscreen";
    private static final String KEY_FACE_STAY = "face_stay_on_lock_screen";
    // WindowManager.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY (hidden): stacks above the bouncer.
    private static final int TYPE_SECURE_SYSTEM_OVERLAY = 2015;

    private static Un1caIrisKeyguard sInstance;

    private final KeyguardUpdateMonitor mMonitor;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private Handler mAuthHandler;
    private final Runnable mFaceFallbackDoneRunnable = () -> onFaceFallbackTimeout();
    private SemIrisManager mIris;
    // SemIrisManager.hasEnrolledIrises() blocks in ensureServiceConnected()/waitForService()
    // (~1 s of Thread.sleep) while SecIrisService is not connected, e.g. after a reboot until
    // the user is unlocked. shouldListenForFace() runs on the main thread many times per
    // wake, so the lock screen froze for a second per call. Ask on the auth thread and cache.
    private static final long ENROLLED_CACHE_MS = 10_000;
    private volatile int mEnrolledUser = -10000;
    private volatile boolean mEnrolled;
    private volatile long mEnrolledAt;
    private volatile boolean mEnrolledRefreshing;
    private CancellationSignal mCancel;
    private boolean mServiceBound;
    private boolean mFaceFallbackActive;
    // Within one scan the iris engine's exposure drifts up while it searches and it rarely
    // recovers; a fresh scan starts at a good exposure and matches within 1-2 s. So use
    // short attempts and restart: at most ATTEMPTS x ATTEMPT_MS of IR per wake or swipe.
    private static final int ERROR_OPEN_IR_CAMERA_FAIL = 8;
    private static final int ERROR_EYE_SAFETY_TIMEOUT = 9;
    private static final int ERROR_EVICTED = 13;
    private static final int ERROR_WHILE_CAMERA_IN_USE = 19;
    private static final int ATTEMPTS = 3;
    private static final long ATTEMPT_MS = 3200;
    private static final long RESTART_DELAY_MS = 300;
    private static final long FACE_FALLBACK_MS = 1400;
    // Face joins the iris front stream shortly after authenticate() has reached SecIrisService
    // (which then accepts face for the scan being set up). The service opens Camera 1 ~300 ms
    // after authenticate(), so face's output goes into the first front session (no session
    // re-create, no preview hiccup) and face's native setup overlaps the camera open.
    private static final long FACE_JOIN_DELAY_MS = 10;
    private static final int TX_EXPECT_FACE = 0x00ff5503;
    private int mRetriesLeft;
    // Face is running on the iris front stream (Intelligent Scan), not on its own camera.
    private boolean mFaceShared;
    // Placeholder the iris service positions its preview window on.
    private View mPreviewAnchor;

    private final ServiceConnection mServiceConn = new ServiceConnection() {
        @Override public void onServiceConnected(ComponentName name, IBinder service) {
            mServiceBound = true;
        }

        @Override public void onServiceDisconnected(ComponentName name) {
            mServiceBound = false;
            mHandler.postDelayed(() -> ensureServiceBound(), 1000);
        }

        @Override public void onBindingDied(ComponentName name) {
            mServiceBound = false;
            try {
                mMonitor.mContext.unbindService(this);
            } catch (Throwable ignored) { }
            mHandler.postDelayed(() -> ensureServiceBound(), 1000);
        }
    };

    private Un1caIrisKeyguard(KeyguardUpdateMonitor monitor) {
        mMonitor = monitor;
    }

    private static Un1caIrisKeyguard getOrCreate(KeyguardUpdateMonitor monitor) {
        if (sInstance == null && monitor != null) {
            sInstance = new Un1caIrisKeyguard(monitor);
            monitor.registerCallback(sInstance);
        }
        return sInstance;
    }

    /**
     * Injected at the top of KeyguardSecUpdateMonitorImpl.shouldListenForFace().
     * Yields Camera 1 to SecIrisService (so its RGB color preview and IR scan run without
     * CAMERA_IN_USE contention) whenever Iris is running or configured to start on wake/bouncer,
     * and allows FaceService to run when Iris is off or yields to Face fallback.
     */
    public static boolean shouldAllowFaceAuth(KeyguardUpdateMonitor monitor) {
        try {
            Un1caIrisKeyguard inst = getOrCreate(monitor);
            if (inst == null) return true;
            return inst.allowFaceAuth();
        } catch (Throwable t) {
            return true;
        }
    }

    private boolean allowFaceAuth() {
        if (mFaceShared) return true;
        if (mCancel != null) return false;
        if (mFaceFallbackActive) return true;
        if (setting(KEY_UNLOCK, 1) != 1) return true;
        int user = KeyguardUpdateMonitor.getCurrentUser();
        if (!irisEnrolled(user)) return true;
        if (mMonitor.mPrimaryBouncerIsOrWillBeShowing) return false;
        boolean intelligent = isIntelligentScanActive();
        boolean screenOn = intelligent
                ? (setting(KEY_INTELLIGENT_SCREEN_ON, 1) == 1)
                : (setting(KEY_SCREEN_ON, 0) == 1);
        return !screenOn;
    }

    /** Injected at the end of KeyguardUpdateMonitor.handleStartedWakingUp (main thread). */
    public static void onStartedWakingUp(KeyguardUpdateMonitor monitor) {
        try {
            Un1caIrisKeyguard inst = getOrCreate(monitor);
            if (inst == null) return;
            inst.ensureServiceBound();
            inst.refreshEnrolled(KeyguardUpdateMonitor.getCurrentUser(), null);
            inst.mFaceFallbackActive = false;
            inst.mHandler.removeCallbacks(inst.mFaceFallbackDoneRunnable);
            boolean intelligent = inst.isIntelligentScanActive();
            boolean shouldStart = intelligent
                    ? (inst.setting(KEY_INTELLIGENT_SCREEN_ON, 1) == 1)
                    : (inst.setting(KEY_SCREEN_ON, 0) == 1);
            if (shouldStart) {
                inst.mRetriesLeft = ATTEMPTS - 1;
                inst.start("screen on");
            }
        } catch (Throwable t) {
            Log.e(TAG, "wake hook failed", t);
        }
    }

    private void ensureServiceBound() {
        if (mServiceBound) return;
        try {
            Intent intent = new Intent().setClassName(IRIS_PKG, IRIS_CLS);
            int flags = Context.BIND_AUTO_CREATE | Context.BIND_IMPORTANT;
            try {
                UserHandle systemUser = (UserHandle) UserHandle.class.getField("SYSTEM").get(null);
                mServiceBound = (Boolean) Context.class
                        .getMethod("bindServiceAsUser", Intent.class, ServiceConnection.class, int.class, UserHandle.class)
                        .invoke(mMonitor.mContext, intent, mServiceConn, flags, systemUser);
            } catch (Throwable inner) {
                mServiceBound = mMonitor.mContext.bindService(intent, mServiceConn, flags);
            }
        } catch (Throwable t) {
            Log.w(TAG, "cannot bind iris service", t);
        }
    }

    private boolean isFaceActive() {
        try {
            return mMonitor.isFaceEnabledAndEnrolled();
        } catch (Throwable t) {
            return false;
        }
    }

    private boolean isIntelligentScanActive() {
        return setting(KEY_UNLOCK, 1) == 1 && isFaceActive();
    }

    @Override public void onPrimaryBouncerVisibilityChanged(boolean visible) {
        if (visible && mCancel == null) {
            mFaceFallbackActive = false;
            mHandler.removeCallbacks(mFaceFallbackDoneRunnable);
            mRetriesLeft = ATTEMPTS - 1;
            start("bouncer");
        }
    }

    @Override public void onBiometricAuthFailed(BiometricSourceType type) {
        if (type == BiometricSourceType.FACE && mFaceFallbackActive && mCancel == null && isIntelligentScanActive()) {
            mHandler.removeCallbacks(mFaceFallbackDoneRunnable);
            mFaceFallbackActive = false;
            stopFaceAuth();
            if (mRetriesLeft > 0) {
                mRetriesLeft--;
                mHandler.postDelayed(() -> start("after face failed"), 150);
            }
        }
    }

    @Override public void onBiometricError(int msgId, String errString, BiometricSourceType type) {
        if (type == BiometricSourceType.FACE && mFaceFallbackActive && mCancel == null && isIntelligentScanActive()) {
            mHandler.removeCallbacks(mFaceFallbackDoneRunnable);
            mFaceFallbackActive = false;
            stopFaceAuth();
            if (mRetriesLeft > 0) {
                mRetriesLeft--;
                mHandler.postDelayed(() -> start("after face error"), 150);
            }
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

    private Handler authHandler() {
        if (mAuthHandler == null) {
            HandlerThread t = new HandlerThread("UN1CA-IrisAuth");
            t.start();
            mAuthHandler = new Handler(t.getLooper());
        }
        return mAuthHandler;
    }

    /** Cached, never blocks: true only if the auth thread saw enrolled irises for this user. */
    private boolean irisEnrolled(int user) {
        if (mEnrolledUser != user
                || android.os.SystemClock.elapsedRealtime() - mEnrolledAt > ENROLLED_CACHE_MS) {
            refreshEnrolled(user, null);
        }
        return mEnrolledUser == user && mEnrolled;
    }

    /**
     * Asks SecIrisService on the auth thread. Before the user is unlocked after a reboot the
     * service is not available and iris may not unlock anyway (strong auth), so skip it.
     * {@code then} runs on the main thread when irises turned out to be enrolled.
     */
    private void refreshEnrolled(int user, Runnable then) {
        if (!isUserUnlocked(user)) {
            mEnrolledUser = user;
            mEnrolled = false;
            mEnrolledAt = android.os.SystemClock.elapsedRealtime();
            return;
        }
        if (mEnrolledRefreshing) return;
        mEnrolledRefreshing = true;
        authHandler().post(() -> {
            boolean enrolled = false;
            try {
                SemIrisManager iris = iris();
                enrolled = iris != null && iris.hasEnrolledIrises(user);
            } catch (Throwable t) {
                Log.w(TAG, "iris enrollment query failed", t);
            }
            mEnrolled = enrolled;
            mEnrolledUser = user;
            mEnrolledAt = android.os.SystemClock.elapsedRealtime();
            mEnrolledRefreshing = false;
            if (enrolled && then != null) mHandler.post(then);
        });
    }

    private boolean isUserUnlocked(int user) {
        try {
            android.os.UserManager um = mMonitor.mContext.getSystemService(android.os.UserManager.class);
            if (um == null) return true;
            // UserHandle.of(int) is not in the public SDK the helper compiles against.
            UserHandle handle = (UserHandle) UserHandle.class.getMethod("of", int.class).invoke(null, user);
            return um.isUserUnlocked(handle);
        } catch (Throwable t) {
            return true;
        }
    }

    private SemIrisManager iris() {
        if (mIris == null) mIris = SemIrisManager.getSemIrisManager(mMonitor.mContext);
        return mIris;
    }

    private void start(String why) {
        if (mCancel != null) return;
        ensureServiceBound();
        int user = KeyguardUpdateMonitor.getCurrentUser();
        if (setting(KEY_UNLOCK, 1) != 1) return;
        if (!mMonitor.mKeyguardShowing || mMonitor.mKeyguardOccluded
                || mMonitor.mKeyguardGoingAway || !mMonitor.mDeviceInteractive) return;
        if (!mMonitor.isUnlockingWithBiometricAllowed(false) || mMonitor.getUserCanSkipBouncer(user)) return;
        if (mEnrolledUser != user) {
            // Not known yet: ask off the main thread and start once the answer is in.
            refreshEnrolled(user, () -> start(why));
            return;
        }
        if (!irisEnrolled(user)) return;
        try {
            SemIrisManager iris = iris();
            if (iris == null) return;
            mFaceFallbackActive = false;
            mHandler.removeCallbacks(mFaceFallbackDoneRunnable);
            // Face on the shared iris stream keeps running across iris attempts; face on its
            // own camera has to give Camera 1 back first.
            boolean faceWasRunning = !mFaceShared && stopFaceAuth();
            CancellationSignal cancel = new CancellationSignal();
            mCancel = cancel;
            Log.i(TAG, "start (" + why + ") user " + user);
            if (!mFaceShared && isIntelligentScanActive()) {
                // Tell SecIrisService face is coming, then start face straight away: its
                // native setup overlaps the anchor layout and the iris camera open, and its
                // output goes into the first front session (no session re-create).
                authHandler().post(() -> {
                    boolean announced = announceFace();
                    mHandler.postDelayed(() -> {
                        if (announced) joinFace(cancel);
                    }, FACE_JOIN_DELAY_MS);
                });
            }
            View anchor = showPreviewAnchor(iris);
            long openDelay = faceWasRunning ? 120L : 0L;
            // The service needs the anchor's window token and size, so wait for its first layout.
            anchor.post(() -> {
                if (mCancel != cancel) return;
                Runnable doAuth = () -> {
                    if (mCancel != cancel) return;
                    // authenticate() blocks until SecIrisService has opened its cameras
                    // (~0.4 s), so run it off the main thread; face then starts while iris
                    // is still opening Camera 1 and lands in the first front session.
                    authHandler().post(() -> {
                        if (mCancel != cancel || cancel.isCanceled()) return;
                        try {
                            iris.authenticate(null, cancel, SemIrisManager.IRIS_AUTH_TYPE_UI_WITH_PREVIEW,
                                    new Callback(cancel, user), mHandler, user, null, anchor);
                        } catch (Throwable t) {
                            Log.e(TAG, "cannot start iris", t);
                            mHandler.post(() -> {
                                if (mCancel != cancel) return;
                                finish(cancel);
                                // Face may already wait on the iris stream that never came.
                                if (isIntelligentScanActive()) startFaceFallback();
                            });
                        }
                    });
                    mHandler.postDelayed(() -> nextAttempt(cancel), ATTEMPT_MS);
                };
                if (openDelay > 0) {
                    mHandler.postDelayed(doAuth, openDelay);
                } else {
                    doAuth.run();
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

    /** SecIrisService accepts face's camera output for the iris scan that starts now. */
    private boolean announceFace() {
        android.os.Parcel data = android.os.Parcel.obtain();
        android.os.Parcel reply = android.os.Parcel.obtain();
        try {
            IBinder b = (IBinder) Class.forName("android.os.ServiceManager")
                    .getMethod("checkService", String.class).invoke(null, "samsung.iris");
            if (b == null) return false;
            data.writeInterfaceToken("com.samsung.android.camera.iris.IIrisService");
            if (!b.transact(TX_EXPECT_FACE, data, reply, 0)) return false;
            reply.readException();
            return reply.readInt() == 1;
        } catch (Throwable t) {
            Log.w(TAG, "iris service did not take the face announce", t);
            return false;
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    /** Starts face unlock on the iris front stream while this iris scan runs. */
    private void joinFace(CancellationSignal session) {
        if (mCancel != session || mFaceShared) return;
        mFaceShared = true;
        Log.i(TAG, "intelligent scan: face joins the iris camera");
        triggerFaceAuth();
    }

    /** Ends an attempt that has not matched in time and restarts Iris or hands over to Face. */
    private void nextAttempt(CancellationSignal session) {
        if (mCancel != session) return;
        mCancel = null;
        session.cancel();
        if (isIntelligentScanActive() && (!mFaceShared || mRetriesLeft <= 0)) {
            hidePreviewAnchor();
            startFaceFallback();
            return;
        }
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

    private void startFaceFallback() {
        if (mFaceShared) {
            // The iris stream is gone: restart face on its own camera.
            mFaceShared = false;
            stopFaceAuth();
        }
        if (!mMonitor.mKeyguardShowing || mMonitor.mKeyguardGoingAway || !mMonitor.mDeviceInteractive) return;
        mFaceFallbackActive = true;
        mHandler.removeCallbacks(mFaceFallbackDoneRunnable);
        mHandler.postDelayed(() -> {
            if (!mFaceFallbackActive || mCancel != null) return;
            triggerFaceAuth();
            if (mRetriesLeft > 0) {
                mHandler.postDelayed(mFaceFallbackDoneRunnable, FACE_FALLBACK_MS);
            }
        }, 180);
    }

    private void onFaceFallbackTimeout() {
        if (!mFaceFallbackActive || mCancel != null) return;
        mFaceFallbackActive = false;
        stopFaceAuth();
        if (mRetriesLeft > 0) {
            mRetriesLeft--;
            mHandler.postDelayed(() -> start("next attempt after face fallback"), 180);
        }
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private void triggerFaceAuth() {
        try {
            Class<?> evtCls = Class.forName("com.android.systemui.deviceentry.shared.FaceAuthUiEvent");
            Object evt = Enum.valueOf((Class<Enum>) evtCls, "FACE_AUTH_UPDATED_STARTED_WAKING_UP");
            mMonitor.getClass().getMethod("updateFaceListeningState", int.class, evtCls)
                    .invoke(mMonitor, 2, evt);
        } catch (Throwable t) {
            Log.w(TAG, "could not trigger face fallback", t);
        }
    }

    private void stop(String why) {
        mHandler.removeCallbacks(mFaceFallbackDoneRunnable);
        mFaceFallbackActive = false;
        mFaceShared = false;
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

    /** Stops any running Face Unlock session so Camera 1 is released for Iris RGB preview. */
    private boolean stopFaceAuth() {
        boolean wasRunning = false;
        try {
            for (Class<?> c = mMonitor.getClass(); c != null; c = c.getSuperclass()) {
                try {
                    Field f = c.getDeclaredField("mSemFaceCancelSignal");
                    f.setAccessible(true);
                    CancellationSignal faceCancel = (CancellationSignal) f.get(mMonitor);
                    if (faceCancel != null) {
                        wasRunning = true;
                        faceCancel.cancel();
                        f.set(mMonitor, null);
                        mMonitor.setFaceRunningState(0);
                    }
                    break;
                } catch (NoSuchFieldException ignored) { }
            }
        } catch (Throwable t) {
            Log.w(TAG, "could not stop face auth", t);
        }
        return wasRunning;
    }

    private void onMatched(int user) {
        stopFaceAuth();
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
        boolean stay = setting(KEY_STAY, 0) == 1
                || (isIntelligentScanActive()
                    && Settings.System.getInt(mMonitor.mContext.getContentResolver(), KEY_FACE_STAY, 0) == 1);
        if (stay && !mMonitor.mPrimaryBouncerIsOrWillBeShowing) {
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

    private static boolean isRetryableError(int code) {
        return code == ERROR_EYE_SAFETY_TIMEOUT
                || code == ERROR_OPEN_IR_CAMERA_FAIL
                || code == ERROR_EVICTED
                || code == ERROR_WHILE_CAMERA_IN_USE;
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
            if (isRetryableError(code) && mRetriesLeft > 0) {
                mRetriesLeft--;
                long delay = (code == ERROR_EYE_SAFETY_TIMEOUT) ? 500 : 250;
                mHandler.postDelayed(() -> start("retry after error " + code), delay);
            } else if (isIntelligentScanActive()) {
                startFaceFallback();
            }
        }

        @Override public void onAuthenticationFailed() {
            Log.i(TAG, "iris not recognised");
        }
    }
}
