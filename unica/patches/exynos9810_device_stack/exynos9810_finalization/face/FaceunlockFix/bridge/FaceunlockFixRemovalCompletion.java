package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.hardware.face.Face;
import com.android.server.biometrics.sensors.BaseClientMonitor;
import com.android.server.biometrics.sensors.face.aidl.AidlResponseHandler;
import com.android.server.biometrics.sensors.face.aidl.FaceRemovalClient;
import com.android.server.biometrics.sensors.face.hidl.HidlToAidlCallbackConverter;
import vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFaceClientCallback;

/** Terminal removal reconciliation after verified native absence, or failure.
 * Android16's RemovalClient is not an ErrorConsumer; HAL errors otherwise
 * leave its scheduler permanently busy. Never touches authentication tokens.
 */
public final class FaceunlockFixRemovalCompletion {
    public static final String BUILD_CONTRACT = "native-remove-all-verified-20261014";
    private FaceunlockFixRemovalCompletion() { }
    public static boolean complete(ISehBiometricsFaceClientCallback cb,
            int user, boolean verifiedEmpty) {
        if (!(cb instanceof HidlToAidlCallbackConverter)) return false;
        AidlResponseHandler response =
                ((HidlToAidlCallbackConverter) cb).mAidlResponseHandler;
        if (response == null || response.mUserId != user) return false;
        return response.mScheduler.mHandler.post(() -> {
            BaseClientMonitor client = response.mScheduler.getCurrentClient();
            if (!(client instanceof FaceRemovalClient)
                    || client.mTargetUserId != user || client.mAlreadyDone) return;
            FaceRemovalClient removal = (FaceRemovalClient) client;
            if (!verifiedEmpty) {
                removal.onRemoved(null, 0); // existing framework failure route
                return;
            }
            int[] ids = removal.mBiometricIds;
            if (ids.length == 1 && ids[0] == 0) {
                java.util.List<? extends android.hardware.biometrics.BiometricAuthenticator.Identifier> stored =
                        removal.mBiometricUtils.getBiometricsForUser(removal.mContext, user);
                ids = new int[stored.size()];
                for (int i = 0; i < ids.length; i++) ids[i] = stored.get(i).getBiometricId();
            }
            if (ids.length == 0) {
                removal.onRemoved(new Face("", 0, response.mSensorId), 0);
                return;
            }
            for (int i = 0; i < ids.length; i++) {
                removal.onRemoved(new Face("", ids[i], response.mSensorId),
                        ids.length - i - 1);
            }
        });
    }
}
