package androidx.preference;

import android.content.Context;

/** Compile-time stub of SecSettings' (sesl) androidx.preference.Preference. */
public class Preference {
    public interface OnPreferenceClickListener { boolean onPreferenceClick(Preference preference); }
    public interface OnPreferenceChangeListener { boolean onPreferenceChange(Preference preference, Object newValue); }

    public Preference(Context context) { }
    public final Context getContext() { throw new RuntimeException(); }
    public final PreferenceGroup getParent() { throw new RuntimeException(); }
    public void setEnabled(boolean enabled) { }
    public final void setKey(String key) { }
    public void setOnPreferenceChangeListener(OnPreferenceChangeListener l) { }
    public void setOnPreferenceClickListener(OnPreferenceClickListener l) { }
    public void setOrder(int order) { }
    public final void setPersistent(boolean persistent) { }
    public void setSummary(CharSequence summary) { }
    public void setTitle(CharSequence title) { }
    public final void setVisible(boolean visible) { }
}
