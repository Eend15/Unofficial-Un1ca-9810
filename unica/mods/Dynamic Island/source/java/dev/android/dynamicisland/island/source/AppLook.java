package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import dev.android.dynamicisland.xposed.XLog;
import java.util.HashMap;
import java.util.Map;

/** Name and icon of an app, looked up once and cached; shared by the sources that show cards for other apps. Main thread only. */
final class AppLook {
    private final Context ctx;
    private final Map<String, String> labels = new HashMap<>();
    private final Map<String, Drawable.ConstantState> icons = new HashMap<>();

    AppLook(Context ctx) {
        this.ctx = ctx;
    }

    /** The launcher label of {@code pkg}; the package name itself when it cannot be resolved. */
    String label(String pkg) {
        String cached = labels.get(pkg);
        if (cached != null) {
            return cached;
        }
        String label = pkg;
        try {
            PackageManager pm = ctx.getPackageManager();
            label = String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable ignored) {
            // unknown package: its name is the best we have
        }
        labels.put(pkg, label);
        return label;
    }

    /** A fresh copy of the app icon, or null. */
    Drawable icon(String pkg) {
        try {
            Drawable.ConstantState cs = icons.get(pkg);
            if (cs != null) {
                return cs.newDrawable().mutate();
            }
            Drawable d = ctx.getPackageManager().getApplicationIcon(pkg);
            if (d.getConstantState() != null) {
                icons.put(pkg, d.getConstantState());
            }
            return d;
        } catch (Throwable t) {
            XLog.once("AppLook.icon", t);
            return null;
        }
    }
}
