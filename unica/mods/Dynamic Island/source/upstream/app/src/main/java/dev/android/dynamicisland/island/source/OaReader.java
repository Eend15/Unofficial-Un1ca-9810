package dev.android.dynamicisland.island.source;

import android.content.ComponentName;
import dev.android.dynamicisland.xposed.Refl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Reflective view of System UI's {@code OngoingActivityDataHelper}, the process-wide store the
 * Now Bar reads. Field names are Samsung's and must match exactly; when the class is missing
 * (not One UI, or renamed) every query answers empty.
 */
final class OaReader {
    static final String HELPER = "com.android.systemui.statusbar.phone.ongoingactivity.OngoingActivityDataHelper";
    private static final String SHOWING = "mOngoingActivityLists";
    private static final String HIDDEN = "hiddenOngoingActivityDataList";

    private final Class<?> helper;

    OaReader(ClassLoader cl) {
        helper = Refl.findClass(HELPER, cl);
    }

    boolean available() {
        return helper != null;
    }

    /** Package of the app on screen, or null when System UI does not say. */
    String foregroundPackage() {
        Object component = Refl.getStatic(helper, "baseActivityComponentName");
        return component instanceof ComponentName ? ((ComponentName) component).getPackageName() : null;
    }

    /** Packages that currently have a picture-in-picture window. */
    Set<String> pipPackages() {
        Set<String> packages = new HashSet<>();
        Object components = Refl.getStatic(helper, "pipEnabledComponentNameList");
        if (components instanceof Collection) {
            for (Object c : (Collection<?>) components) {
                if (c instanceof ComponentName) {
                    packages.add(((ComponentName) c).getPackageName());
                }
            }
        }
        return packages;
    }

    /** All ongoing-activity data objects: the ones in the status bar first, then the hidden ones. */
    List<Object> activities() {
        List<Object> all = new ArrayList<>();
        for (String field : new String[]{SHOWING, HIDDEN}) {
            Object list = Refl.getStatic(helper, field);
            if (list instanceof List) {
                all.addAll((List<?>) list);
            }
        }
        return all;
    }

    /** The data object of the notification with this key, or null. */
    Object findByNotificationKey(String notificationKey) {
        for (Object data : activities()) {
            if (data != null && notificationKey.equals(Refl.get(data, "mNotiID"))) {
                return data;
            }
        }
        return null;
    }

    /** Data of a Now Bar card that exists only there (no status bar chip), by notification key. */
    Object nowBarOnly(String notificationKey) {
        Object map = Refl.getStatic(helper, "onlyShownNowbarItemMap");
        if (map instanceof Map) {
            return ((Map<?, ?>) map).get(notificationKey);
        }
        return findByNotificationKey(notificationKey); // One UI 7 keeps no separate map: its card data is in the lists
    }
}
