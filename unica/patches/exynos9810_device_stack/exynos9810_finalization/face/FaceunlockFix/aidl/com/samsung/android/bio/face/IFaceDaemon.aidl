package com.samsung.android.bio.face;

import com.samsung.android.bio.face.IFaceDaemonCallback;

// Recovered from stock Samsung framework.jar (classes5.dex).
// The declaration order deliberately matches Binder transaction codes 1..21.
// This is a legacy, unstable Samsung Binder interface; DO NOT reorder methods.
interface IFaceDaemon {
    int authenticate(long sessionId, int groupId, int secureLevel, in byte[] fidoRequestData); // 1
    int cancelAuthentication(); // 2
    int enroll(in byte[] token, int groupId, int timeout, int flags); // 3
    int cancelEnrollment(); // 4
    long preEnroll(); // 5
    int remove(int faceId, int groupId); // 6
    long getAuthenticatorId(); // 7
    int setActiveGroup(int groupId, in byte[] path); // 8
    long openHal(); // 9
    int closeHal(); // 10
    void init(in IFaceDaemonCallback callback); // 11
    int postEnroll(); // 12
    int request(int command, in byte[] input, out byte[] output, int inParam); // 13
    int enumerate(); // 14
    int cancelEnumeration(); // 15
    int processFrontImage(in byte[] data, int width, int height, int rotation, int imageType); // 16
    int setPreviewTarget(in IBinder surfaceBinder, int width, int height); // 17
    IBinder createInputSurface(int type, int width, int height); // 18
    int release(int type); // 19
    int releasePreviewSurface(); // 20
    // This raw FileDescriptor is essential: Parcel.writeRawFileDescriptor, not a Parcelable.
    // Do not substitute ParcelFileDescriptor: that would alter transaction 21 wire format.
    int installTA(in FileDescriptor fd, long size); // 21
}
