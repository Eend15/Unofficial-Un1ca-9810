package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ServiceManager;

/** Transport for the genuine Exynos9810 Samsung faced Binder protocol.
 *  This is not a face matcher, token provider or replacement HAL.
 *  All biometric decisions remain inside Samsung's original native engine.
 */
public final class NativeFaceTransport {
    public static final String NAME = "com.samsung.android.bio.face.IFaceDaemon";
    private final IBinder remote;

    private interface Write { void apply(Parcel p); }
    private interface Read<T> { T apply(Parcel p); }

    private NativeFaceTransport(IBinder binder) { remote = binder; }

    public static NativeFaceTransport connect() {
        IBinder binder = ServiceManager.checkService(NAME);
        return binder == null ? null : new NativeFaceTransport(binder);
    }

    public IBinder binder() { return remote; }

    private <T> T call(int transaction, Write write, Read<T> read) throws RemoteException {
        Parcel data = Parcel.obtain(remote);
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(NAME);
            if (write != null) write.apply(data);
            if (!remote.transact(transaction, data, reply, 0)) {
                throw new RemoteException("FaceunlockFix native faced transaction unavailable: " + transaction);
            }
            reply.readException();
            return read == null ? null : read.apply(reply);
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    private int integer(int code, Write write) throws RemoteException {
        return call(code, write, Parcel::readInt);
    }

    private long number(int code, Write write) throws RemoteException {
        return call(code, write, Parcel::readLong);
    }

    public long openHal() throws RemoteException { return number(9, null); }
    public int closeHal() throws RemoteException { return integer(10, null); }
    public long preEnroll() throws RemoteException { return number(5, null); }
    public int postEnroll() throws RemoteException { return integer(12, null); }
    public long authenticatorId() throws RemoteException { return number(7, null); }
    public int cancelAuthentication() throws RemoteException { return integer(2, null); }
    public int cancelEnrollment() throws RemoteException { return integer(4, null); }
    public int enumerate() throws RemoteException { return integer(14, null); }
    public int cancelEnumeration() throws RemoteException { return integer(15, null); }

    public void init(IBinder nativeCallback) throws RemoteException {
        if (nativeCallback == null) throw new IllegalArgumentException("Missing callback");
        call(11, p -> p.writeStrongBinder(nativeCallback), null);
    }

    public int authenticate(long operation, int group, int level, byte[] request)
            throws RemoteException {
        return integer(1, p -> {
            p.writeLong(operation);
            p.writeInt(group);
            p.writeInt(level);
            p.writeByteArray(request);
        });
    }

    public int enroll(byte[] gatekeeperToken, int group, int timeout, int flags)
            throws RemoteException {
        if (gatekeeperToken == null || gatekeeperToken.length == 0) {
            throw new IllegalArgumentException("Real Gatekeeper enrollment token required");
        }
        return integer(3, p -> {
            p.writeByteArray(gatekeeperToken);
            p.writeInt(group);
            p.writeInt(timeout);
            p.writeInt(flags);
        });
    }

    public int remove(int faceId, int group) throws RemoteException {
        return integer(6, p -> { p.writeInt(faceId); p.writeInt(group); });
    }

    public int setActiveGroup(int group, byte[] storagePath) throws RemoteException {
        return integer(8, p -> { p.writeInt(group); p.writeByteArray(storagePath); });
    }

    public int processFrontImage(byte[] actualCameraFrame, int width, int height,
            int rotation, int format) throws RemoteException {
        if (actualCameraFrame == null || width <= 0 || height <= 0) {
            throw new IllegalArgumentException("Actual camera frame required");
        }
        return integer(16, p -> {
            p.writeByteArray(actualCameraFrame);
            p.writeInt(width);
            p.writeInt(height);
            p.writeInt(rotation);
            p.writeInt(format);
        });
    }

    public IBinder createInputSurface(int type, int width, int height)
            throws RemoteException {
        return call(18, p -> {
            p.writeInt(type); p.writeInt(width); p.writeInt(height);
        }, Parcel::readStrongBinder);
    }

    public int setPreviewTarget(IBinder surface, int width, int height)
            throws RemoteException {
        return integer(17, p -> {
            p.writeStrongBinder(surface); p.writeInt(width); p.writeInt(height);
        });
    }

    public int release(int type) throws RemoteException {
        return integer(19, p -> p.writeInt(type));
    }

    public int releasePreviewSurface() throws RemoteException {
        return integer(20, null);
    }
}
