package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/** Binder receiver matching Samsung's genuine IFaceDaemonCallback transactions.
 * Do not synthesize matches or hardware authentication tokens in this adapter.
 */
public final class NativeFaceCallback extends Binder implements IInterface {
    private static final String DESCRIPTOR =
            "com.samsung.android.bio.face.IFaceDaemonCallback";

    public interface Listener {
        void onEnrollResult(long deviceId, int faceId, int groupId, int remaining);
        void onAcquired(long deviceId, int acquiredInfo);
        void onAuthenticated(long deviceId, int faceId, int groupId,
                             byte[] realHardwareToken, byte[] fidoResultData);
        void onError(long deviceId, int error);
        void onRemoved(long deviceId, int faceId, int groupId);
        void onEnumerate(long deviceId, int[] faceIds, int[] groupIds);
    }

    private final Listener listener;

    public NativeFaceCallback(Listener listener) {
        if (listener == null) throw new IllegalArgumentException("Listener required");
        this.listener = listener;
        attachInterface(this, DESCRIPTOR);
    }

    @Override public IBinder asBinder() { return this; }

    @Override protected boolean onTransact(int code, Parcel data,
            Parcel reply, int flags) throws RemoteException {
        if (code == INTERFACE_TRANSACTION) {
            if (reply != null) reply.writeString(DESCRIPTOR);
            return true;
        }
        if (code < FIRST_CALL_TRANSACTION || code > 6) {
            return super.onTransact(code, data, reply, flags);
        }
        data.enforceInterface(DESCRIPTOR);
        switch (code) {
            case 1:
                listener.onEnrollResult(data.readLong(), data.readInt(),
                                        data.readInt(), data.readInt());
                break;
            case 2:
                listener.onAcquired(data.readLong(), data.readInt());
                break;
            case 3:
                listener.onAuthenticated(data.readLong(), data.readInt(),
                        data.readInt(), data.createByteArray(), data.createByteArray());
                break;
            case 4:
                listener.onError(data.readLong(), data.readInt());
                break;
            case 5:
                listener.onRemoved(data.readLong(), data.readInt(), data.readInt());
                break;
            case 6:
                listener.onEnumerate(data.readLong(), data.createIntArray(),
                                     data.createIntArray());
                break;
            default:
                return super.onTransact(code, data, reply, flags);
        }
        if (reply != null) reply.writeNoException();
        return true;
    }
}
