package com.samsung.android.bio.face;

import android.hardware.biometrics.IBiometricSensorReceiver;
import android.os.Bundle;
import com.samsung.android.bio.face.IFaceServiceReceiver;
import com.samsung.android.bio.face.SemBioFace;

// Reconstructed from Samsung stock framework.jar, classes5.dex.
// Samsung service_manager name: "samsung.face". Preserve this 1..32 order.
interface IFaceService {
    void authenticate(in IBinder token, in IBinder windowToken, int x, int y, int width, int height,
        long operationId, int userId, in IFaceServiceReceiver receiver, int flags,
        String opPackageName, in Bundle attributes, in byte[] fidoRequest); // 1
    void cancelAuthentication(in IBinder token, String opPackageName); // 2
    void enroll(in IBinder token, in IBinder windowToken, int x, int y, int width, int height,
        in byte[] hat, int userId, in IFaceServiceReceiver receiver, int flags,
        String opPackageName, in Bundle attributes); // 3
    void cancelEnrollment(in IBinder token); // 4
    void remove(in IBinder token, int faceId, int groupId, int userId, in IFaceServiceReceiver receiver); // 5
    void rename(int faceId, int groupId, String name); // 6
    List<SemBioFace> getEnrolledFaces(int userId, String opPackageName); // 7
    boolean isHardwareDetected(long deviceId, String opPackageName); // 8
    long preEnroll(in IBinder token); // 9
    int postEnroll(in IBinder token); // 10
    boolean hasEnrolledFaces(int userId, String opPackageName); // 11
    boolean hasDisabledFaces(int userId, String opPackageName); // 12
    long getAuthenticatorId(String opPackageName); // 13
    boolean isEnrollSession(); // 14
    void resetTimeout(in byte[] hat); // 15
    void setActiveUser(int userId); // 16
    void requestSessionOpen(); // 17
    void requestSessionClose(); // 18
    boolean isSessionClosed(); // 19
    boolean updateSecureUserID(in byte[] token); // 20
    boolean updateSecureID(in byte[] token); // 21
    boolean resetAuthenticationTimeout(); // 22
    void requestEnrollPause(); // 23
    void requestEnrollResume(); // 24
    String getTrustAppVersion(); // 25
    void updateTrustApp(in IBinder token, String path, int userId,
        in IFaceServiceReceiver receiver, String opPackageName); // 26
    int getSecurityLevel(boolean keyguard); // 27
    void prepareForAuthentication(boolean requireConfirmation, in IBinder token,
        long operationId, int userId, in IBiometricSensorReceiver receiver,
        String opPackageName, int cookie, in Bundle attrs); // 28
    void startPreparedClient(int cookie); // 29
    void cancelAuthenticationFromService(in IBinder token, String opPackageName,
        boolean fromClient); // 30
    int getLockoutModeForUser(int userId); // 31
    int getRemainingLockoutTime(int userId); // 32
}
