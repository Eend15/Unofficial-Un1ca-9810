package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicInteger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowLooper;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class SettingsChangeNoticeTest {
    @Test
    public void writingASettingNotifiesTheChangeUri() {
        Robolectric.buildContentProvider(SettingsProvider.class).create(SettingsProvider.AUTHORITY);
        Context context = RuntimeEnvironment.getApplication();
        ContentResolver resolver = context.getContentResolver();
        AtomicInteger notices = new AtomicInteger();
        resolver.registerContentObserver(SettingsProvider.CHANGED_URI, false, new ContentObserver(new Handler(Looper.getMainLooper())) {
            @Override public void onChange(boolean selfChange) { notices.incrementAndGet(); }
        });
        SharedPreferences store = ModuleSettings.openStore(context);
        store.edit().putBoolean(ModuleSettings.KEY_CARD_HEADER, false).commit();
        ShadowLooper.idleMainLooper();
        assertTrue("a write sends a notice", notices.get() >= 1);
        int before = notices.get();
        store.edit().putInt(ModuleSettings.KEY_AUTO_COLLAPSE_S, 9).commit();
        ShadowLooper.idleMainLooper();
        assertEquals("every write sends one", before + 1, notices.get());
    }
}
