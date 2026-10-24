package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * App labels and icons for the media cards. Players push a new playback state every second or so,
 * so each lookup goes to the package manager once and later calls are served from memory.
 */
final class AppAssets {
    private final Context ctx;
    private final Map<String, String> labels = new HashMap<>();
    private final Map<String, Drawable.ConstantState> appIcons = new HashMap<>();
    /** Custom-action icons, keyed {@code package/resourceId}. */
    private final Map<String, Drawable.ConstantState> actionIcons = new HashMap<>();

    AppAssets(Context ctx) {
        this.ctx = ctx;
    }

    /** Display name of the app, null when the package is unknown. */
    String label(String pkg) {
        if (!labels.containsKey(pkg)) {
            String label = null;
            try {
                PackageManager pm = ctx.getPackageManager();
                label = pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)).toString();
            } catch (Throwable t) {
                // unknown package
            }
            labels.put(pkg, label);
        }
        return labels.get(pkg);
    }

    Drawable icon(String pkg) {
        try {
            Drawable.ConstantState known = appIcons.get(pkg);
            if (known != null) {
                return known.newDrawable().mutate();
            }
            Drawable icon = ctx.getPackageManager().getApplicationIcon(pkg);
            if (icon.getConstantState() != null) {
                appIcons.put(pkg, icon.getConstantState());
            }
            return icon;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Icon of a player's custom action; resources belong to the player's package. */
    Drawable actionIcon(String pkg, int resId) {
        String key = pkg + "/" + resId;
        Drawable.ConstantState known = actionIcons.get(key);
        if (known != null) {
            return known.newDrawable().mutate();
        }
        Drawable icon = Icon.createWithResource(pkg, resId).loadDrawable(ctx);
        if (icon != null && icon.getConstantState() != null) {
            actionIcons.put(key, icon.getConstantState());
        }
        return icon;
    }

    /** Drops the action icons of players that are gone. */
    void retainActionIconsOf(Set<String> livePackages) {
        actionIcons.keySet().removeIf(key -> !livePackages.contains(key.substring(0, key.indexOf('/'))));
    }
}
