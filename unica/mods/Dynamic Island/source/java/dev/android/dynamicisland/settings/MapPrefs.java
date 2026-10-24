package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/** Read-only {@link SharedPreferences} over a map: the settings as System UI received them from {@link SettingsProvider}. */
final class MapPrefs implements SharedPreferences {
    private final Map<String, Object> values;

    MapPrefs(Map<String, Object> values) {
        this.values = values;
    }

    @Override
    public Map<String, ?> getAll() {
        return new HashMap<>(values);
    }

    @Override
    public String getString(String key, String def) {
        Object v = values.get(key);
        return v instanceof String ? (String) v : def;
    }

    @Override
    @SuppressWarnings("unchecked")
    public Set<String> getStringSet(String key, Set<String> def) {
        Object v = values.get(key);
        return v instanceof Set ? new HashSet<>((Set<String>) v) : def;
    }

    @Override
    public int getInt(String key, int def) {
        Object v = values.get(key);
        return v instanceof Integer ? (Integer) v : def;
    }

    @Override
    public long getLong(String key, long def) {
        Object v = values.get(key);
        return v instanceof Long ? (Long) v : def;
    }

    @Override
    public float getFloat(String key, float def) {
        Object v = values.get(key);
        return v instanceof Float ? (Float) v : def;
    }

    @Override
    public boolean getBoolean(String key, boolean def) {
        Object v = values.get(key);
        return v instanceof Boolean ? (Boolean) v : def;
    }

    @Override
    public boolean contains(String key) {
        return values.containsKey(key);
    }

    @Override
    public Editor edit() {
        throw new UnsupportedOperationException("read-only");
    }

    @Override
    public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
    }

    @Override
    public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
    }
}
