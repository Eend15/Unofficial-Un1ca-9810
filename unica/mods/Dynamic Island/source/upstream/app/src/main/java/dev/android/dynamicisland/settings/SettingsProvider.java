package dev.android.dynamicisland.settings;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Binder;
import android.os.Process;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

/**
 * Hands the settings to System UI when the preference file itself is out of its reach (module scope or file mode not
 * applied by the framework). Read-only: {@code call("all")} returns every stored value with its type.
 */
public final class SettingsProvider extends ContentProvider {
    public static final String AUTHORITY = "dev.android.dynamicisland.settings";
    public static final String METHOD_ALL = "all";
    /** Notified whenever a setting is written, so that System UI reads the settings then and not on a timer. */
    public static final Uri CHANGED_URI = Uri.parse("content://" + AUTHORITY + "/changed");

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public Bundle call(String method, String arg, Bundle extras) {
        if (!METHOD_ALL.equals(method) || getContext() == null) {
            return null;
        }
        int caller = Binder.getCallingUid();
        boolean trusted = caller == Process.myUid();
        if (!trusted) {
            String[] packages = getContext().getPackageManager().getPackagesForUid(caller);
            if (packages != null) for (String pkg : packages) {
                if ("com.android.systemui".equals(pkg)) { trusted = true; break; }
            }
        }
        if (!trusted) throw new SecurityException("Settings are only available to the module and SystemUI");
        Bundle out = new Bundle();
        for (Map.Entry<String, ?> entry : ModuleSettings.openStore(getContext()).getAll().entrySet()) {
            Object value = entry.getValue();
            String key = entry.getKey();
            if (value instanceof Boolean) {
                out.putBoolean(key, (Boolean) value);
            } else if (value instanceof Integer) {
                out.putInt(key, (Integer) value);
            } else if (value instanceof Long) {
                out.putLong(key, (Long) value);
            } else if (value instanceof Float) {
                out.putFloat(key, (Float) value);
            } else if (value instanceof String) {
                out.putString(key, (String) value);
            } else if (value instanceof Set) {
                ArrayList<String> items = new ArrayList<>();
                for (Object item : (Set<?>) value) {
                    items.add(String.valueOf(item));
                }
                out.putStringArrayList(key, items);
            }
        }
        return out;
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        return null;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
