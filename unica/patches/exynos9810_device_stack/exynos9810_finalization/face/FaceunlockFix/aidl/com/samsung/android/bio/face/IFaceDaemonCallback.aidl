package com.samsung.android.bio.face;

// Decompiled from stock Samsung framework.jar. All callbacks are synchronous
// Binder transactions (transact(..., 0), not FLAG_ONEWAY).
interface IFaceDaemonCallback {
    void onEnrollResult(long deviceId, int faceId, int groupId, int remaining); // 1
    void onAcquired(long deviceId, int acquiredInfo); // 2
    void onAuthenticated(long deviceId, int faceId, int groupId, in byte[] hatData, in byte[] fidoResultData); // 3
    void onError(long deviceId, int error); // 4
    void onRemoved(long deviceId, int faceId, int groupId); // 5
    void onEnumerate(long deviceId, in int[] faceIds, in int[] groupIds); // 6
}
