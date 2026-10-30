package com.android.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceScreen;

/** Compile-time stub: only the members the iris page uses, as found in One UI 8 SecSettings. */
public abstract class SettingsPreferenceFragment {
    public abstract int getMetricsCategory();
    public void onCreate(Bundle savedInstanceState) { }
    public abstract void onCreatePreferences(Bundle savedInstanceState, String rootKey);
    public void onResume() { }
    public void onDestroy() { }
    public void startActivity(Intent intent) { }
    public void onActivityResult(int requestCode, int resultCode, Intent data) { }
    public final FragmentActivity getActivity() { throw new RuntimeException(); }
    public Context getContext() { throw new RuntimeException(); }
    public final Bundle getArguments() { throw new RuntimeException(); }
    public final boolean isAdded() { throw new RuntimeException(); }
    public void startActivityForResult(Intent intent, int requestCode) { }
    public PreferenceManager getPreferenceManager() { throw new RuntimeException(); }
    public PreferenceScreen getPreferenceScreen() { throw new RuntimeException(); }
    public void setPreferenceScreen(PreferenceScreen screen) { }
}
