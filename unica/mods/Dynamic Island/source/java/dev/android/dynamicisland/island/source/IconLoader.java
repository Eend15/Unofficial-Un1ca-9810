package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.LruCache;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Loads the drawables the ongoing-activity cards need: notification {@link Icon}s (resource icons
 * are cached, and the ones that fail are remembered), launcher icons and the work-profile badge.
 * The data is refreshed every time System UI updates, so loads must be cheap on repeat.
 */
final class IconLoader {
    private static final int CACHE_SIZE = 64;
    /** Minimum time between two scans of the launcher apps for the label-to-package lookup. */
    private static final long LABEL_SCAN_GAP_MS = 60_000;
    private static final String KAKAO_NAVI = "com.locnall.KimGiSa";
    private static final String BRIDGE_CHANNEL_PREFIX = "livebridge_";

    private final Context ctx;
    private final LruCache<String, Drawable.ConstantState> resourceIcons = new LruCache<>(CACHE_SIZE);
    private final Set<String> failedResources = new HashSet<>();
    private final Map<String, String> packageByLabel = new HashMap<>();
    private long labelsScannedAt = -1;

    IconLoader(Context ctx) {
        this.ctx = ctx;
    }

    Drawable load(Icon icon) {
        return load(icon, null);
    }

    /**
     * Drawable of a notification icon; {@code ownerPackage} resolves resource icons that carry no package
     * of their own. Null when the icon is missing or cannot be loaded.
     */
    Drawable load(Icon icon, String ownerPackage) {
        if (icon == null) {
            return null;
        }
        String resourceKey = null;
        try {
            if (icon.getType() == Icon.TYPE_RESOURCE) {
                String resPackage = icon.getResPackage();
                if (resPackage == null || resPackage.isEmpty()) {
                    if (ownerPackage == null) {
                        return null;
                    }
                    icon = Icon.createWithResource(ownerPackage, icon.getResId());
                    resPackage = ownerPackage;
                }
                resourceKey = resPackage + "/" + icon.getResId();
                if (failedResources.contains(resourceKey)) {
                    return null;
                }
                Drawable.ConstantState known = resourceIcons.get(resourceKey);
                if (known != null) {
                    return known.newDrawable().mutate();
                }
            }
            Drawable drawable = icon.loadDrawable(ctx);
            if (drawable == null) {
                markFailed(resourceKey);
                return null;
            }
            if (resourceKey != null && drawable.getConstantState() != null) {
                resourceIcons.put(resourceKey, drawable.getConstantState());
            }
            return drawable.mutate();
        } catch (Throwable t) {
            // an icon that throws would otherwise throw again on every refresh
            markFailed(resourceKey);
            return null;
        }
    }

    private void markFailed(String resourceKey) {
        if (resourceKey != null) {
            failedResources.add(resourceKey);
        }
    }

    Drawable appIcon(String pkg) {
        if (pkg == null) {
            return null;
        }
        try {
            return ctx.getPackageManager().getApplicationIcon(pkg);
        } catch (Throwable t) {
            return null;
        }
    }

    /** Work / private profile badge, as the stock notification card shows it; null for the main user. */
    Drawable profileBadge(int userId) {
        if (userId == 0) {
            return null;
        }
        try {
            UserManager users = ctx.getSystemService(UserManager.class);
            // hidden APIs, the same checks System UI makes
            boolean profile = Boolean.TRUE.equals(Refl.call(users, "isManagedProfile", userId))
                    || Boolean.TRUE.equals(Refl.call(users, "isPrivateProfile"));
            if (!profile) {
                return null;
            }
            Object handle = Refl.callStatic(UserHandle.class, "of", userId);
            Object badge = Refl.call(ctx.getPackageManager(), "getUserBadgeForDensityNoBackground", handle, 0);
            return badge instanceof Drawable ? ((Drawable) badge).mutate() : null;
        } catch (Throwable t) {
            return null; // hidden API missing on this build
        }
    }

    /**
     * Kakao Navi's "livebridge_" notifications put the label of the app they mirror in the sub text;
     * the icon of that app is returned, or null for any other notification.
     */
    Drawable mirroredAppIcon(String pkg, Notification n) {
        if (n == null || !KAKAO_NAVI.equals(pkg)) {
            return null;
        }
        String channel = n.getChannelId();
        CharSequence subText = n.extras.getCharSequence("android.subText");
        if (channel == null || !channel.startsWith(BRIDGE_CHANNEL_PREFIX) || subText == null || subText.length() == 0) {
            return null;
        }
        String target = packageForLabel(subText.toString());
        return target == null ? null : appIcon(target);
    }

    private String packageForLabel(String label) {
        String known = packageByLabel.get(label);
        if (known != null) {
            return known;
        }
        long now = SystemClock.uptimeMillis();
        if (labelsScannedAt >= 0 && now - labelsScannedAt <= LABEL_SCAN_GAP_MS) {
            return null;
        }
        labelsScannedAt = now;
        packageByLabel.clear();
        try {
            PackageManager pm = ctx.getPackageManager();
            Intent launcher = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
            for (ResolveInfo app : pm.queryIntentActivities(launcher, 0)) {
                String appLabel = String.valueOf(app.activityInfo.applicationInfo.loadLabel(pm));
                packageByLabel.putIfAbsent(appLabel, app.activityInfo.packageName);
            }
        } catch (Throwable t) {
            XLog.e("app labels failed", t);
        }
        return packageByLabel.get(label);
    }
}
