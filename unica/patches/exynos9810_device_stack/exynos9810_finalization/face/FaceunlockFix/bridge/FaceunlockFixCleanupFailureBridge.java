package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.util.Slog;

import com.android.server.biometrics.sensors.BaseClientMonitor;
import com.android.server.biometrics.sensors.BiometricScheduler;
import com.android.server.biometrics.sensors.ClientMonitorCallback;
import com.android.server.biometrics.sensors.HalClientMonitor;
import com.android.server.biometrics.sensors.InternalCleanupClient;
import com.android.server.biometrics.sensors.InternalEnumerateClient;
import com.android.server.biometrics.sensors.face.aidl.AidlResponseHandler;
import com.android.server.biometrics.sensors.face.hidl.HidlToAidlCallbackConverter;

import vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFaceClientCallback;

/**
 * Android16-only negative completion for a stuck legacy native enumerate.
 *
 * AidlResponseHandler.onError only targets ErrorConsumer. Its current
 * InternalCleanupClient is an EnumerateConsumer, so forwarding the real
 * hardware-unavailable error through that callback silently leaves every
 * subsequent enrollment queued forever.
 *
 * The framework's own FaceInternalEnumerateClient.startHalOperation catches
 * a RemoteException by calling its mCallback.onClientFinished(this, false).
 * This invokes that EXACT existing failure route, never onEnumerate(empty)
 * and never any template cleanup, enrollment or authentication success.
 *
 * Only the in-process verified FaceunlockFix callback may use this route; it
 * fails closed if the scheduler/user/current cleanup subtask differs.
 */
public final class FaceunlockFixCleanupFailureBridge {
    private static final String TAG = "FaceunlockFixCleanup";

    private FaceunlockFixCleanupFailureBridge() { }

    public static boolean completeFailedEnumeration(
            ISehBiometricsFaceClientCallback callback, int expectedUser) {
        if (!(callback instanceof HidlToAidlCallbackConverter)) return false;
        AidlResponseHandler response =
                ((HidlToAidlCallbackConverter) callback).mAidlResponseHandler;
        if (response == null || response.mUserId != expectedUser) return false;
        BiometricScheduler scheduler = response.mScheduler;
        if (scheduler == null || scheduler.mHandler == null) return false;

        // Always invoke a client callback on its own biometric scheduler
        // handler, never on system_server's main or native Binder threads.
        return scheduler.mHandler.post(() -> {
            BaseClientMonitor active = scheduler.getCurrentClient();
            if (!(active instanceof InternalCleanupClient)
                    || active.mTargetUserId != expectedUser) {
                Slog.w(TAG, "Timed-out enumeration no longer owns cleanup client");
                return;
            }
            InternalCleanupClient cleanup = (InternalCleanupClient) active;
            HalClientMonitor task = cleanup.mCurrentTask;
            if (!(task instanceof InternalEnumerateClient)
                    || task.mCallback == null
                    || task.mCallback != cleanup.mEnumerateCallback
                    || task.mAlreadyDone
                    || !cleanup.mUnknownHALTemplates.isEmpty()) {
                Slog.w(TAG, "Cleanup task changed; refusing artificial completion");
                return;
            }
            ClientMonitorCallback completion = task.mCallback;
            Slog.w(TAG, "Genuine native enumerate timed out; completing cleanup with FAILURE");
            completion.onClientFinished(task, false);
        });
    }
}
