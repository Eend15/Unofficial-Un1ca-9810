package dev.android.dynamicisland.island.window;

import android.graphics.Rect;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Tells the launcher where the island sits, so that app-close animations can shrink into it the same
 * way they do for Samsung's own ongoing-activity chip.
 *
 * <p>SystemUI's {@code OngoingActivityController} holds a binder to the launcher
 * ({@code IOnGoingChipListener}). We reuse that binder and send the same "chip info changed"
 * transaction by hand, because the AIDL classes are not available at compile time. Main thread only.
 */
public final class ExitAnimationBridge {
    private static final String LISTENER_DESCRIPTOR = "com.android.systemui.shared.launcher.IOnGoingChipListener";
    private static final String CHIP_INFO_CLASS = "com.android.systemui.shared.launcher.OnGoingChipInfo";
    private static final int TRANSACTION_ON_CHIP_INFO_CHANGED = 2;

    private final ClassLoader systemUiLoader;
    private Object controller;
    private Constructor<?> chipInfoCtor;
    /** Describes the last state that reached the launcher, to skip identical pushes. */
    private String lastSent;

    public ExitAnimationBridge(ClassLoader classLoader) {
        this.systemUiLoader = classLoader;
    }

    /** Sets (or clears) SystemUI's ongoing-activity controller whose launcher binder is used. */
    public void setOngoingActivityController(Object controller) {
        this.controller = controller;
        lastSent = null;
    }

    /**
     * Sends the island bounds for each package to the launcher.
     *
     * @param force send even when nothing changed since the last successful push
     */
    public void push(Collection<String> packages, Rect portrait, Rect landscape, boolean force) {
        if (controller == null) {
            return;
        }
        String state = packages + "|" + portrait + "|" + landscape;
        boolean changed = !state.equals(lastSent);
        if (!changed && !force) {
            return;
        }
        IBinder launcher = launcherBinder();
        if (launcher == null) {
            return;
        }
        try {
            transact(launcher, chipInfos(packages, portrait, landscape));
            lastSent = state;
            if (changed) {
                XLog.d("exit targets -> " + packages + " " + portrait + " / " + landscape);
            }
        } catch (Throwable t) {
            XLog.e("exit target push failed", t);
        }
    }

    /** The launcher's end of the chip-listener connection, or null while it is not connected. */
    private IBinder launcherBinder() {
        Object listener = Refl.get(controller, "mChipInfoListener");
        Object remote = listener == null ? null : Refl.get(listener, "mRemote");
        return remote instanceof IBinder ? (IBinder) remote : null;
    }

    private List<Parcelable> chipInfos(Collection<String> packages, Rect portrait, Rect landscape) throws ReflectiveOperationException {
        if (chipInfoCtor == null) {
            Class<?> infoClass = Class.forName(CHIP_INFO_CLASS, false, systemUiLoader);
            chipInfoCtor = infoClass.getConstructor(String.class, Rect.class, Rect.class);
        }
        List<Parcelable> infos = new ArrayList<>(packages.size());
        for (String pkg : packages) {
            infos.add((Parcelable) chipInfoCtor.newInstance(pkg, new Rect(portrait), new Rect(landscape)));
        }
        return infos;
    }

    private static void transact(IBinder launcher, List<Parcelable> infos) throws Exception {
        Parcel data = Parcel.obtain();
        try {
            data.writeInterfaceToken(LISTENER_DESCRIPTOR);
            data.writeTypedList(infos, 0);
            launcher.transact(TRANSACTION_ON_CHIP_INFO_CHANGED, data, null, IBinder.FLAG_ONEWAY);
        } finally {
            data.recycle();
        }
    }
}
