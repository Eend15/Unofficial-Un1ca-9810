package com.samsung.android.bio.face;

import com.samsung.android.bio.face.SemBioFace;

// Samsung stock classes5.dex; all are synchronous Binder callback transactions.
interface IFaceServiceReceiver {
    void onEnrollResult(long deviceId, int faceId, int groupId, int remaining); // 1
    void onAcquired(long deviceId, int acquiredInfo, String message); // 2
    void onAuthenticationSucceeded(long deviceId, int userId, boolean strong,
        in SemBioFace face, in byte[] fidoResultData); // 3
    void onAuthenticationFailed(long deviceId); // 4
    void onError(long deviceId, int error, String message); // 5
    void onRemoved(long deviceId, int faceId, int groupId); // 6
    void onStatusUpdate(int status, String message); // 7
}
