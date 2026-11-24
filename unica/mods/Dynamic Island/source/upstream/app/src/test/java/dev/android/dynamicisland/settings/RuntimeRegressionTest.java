package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import de.robv.android.xposed.XSharedPreferences;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.source.HotspotSource;
import java.io.File;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.Implementation;
import org.robolectric.annotation.Implements;
import org.robolectric.shadows.ShadowBinder;
import org.robolectric.shadows.ShadowLooper;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35, shadows=RuntimeRegressionTest.EmptyXPrefs.class)
public class RuntimeRegressionTest {
    // Model the documented provider fallback: SystemUI cannot read the shared preference file.
    @Implements(value=XSharedPreferences.class, isInAndroidSdk=false)
    public static class EmptyXPrefs {
        static File path = new File("/nonexistent-audit/settings.xml");
        static boolean changed;
        @Implementation protected void __constructor__(String pkg,String file) { }
        @Implementation protected boolean makeWorldReadable() { return false; }
        @Implementation protected File getFile() { return path; }
        @Implementation protected boolean hasFileChanged() { return changed; }
        @Implementation protected void reload() { changed=false; }
        @Implementation protected Map<String,?> getAll() { return Map.of(); }
        @Implementation protected int getInt(String key,int fallback) { return fallback; }
        @Implementation protected long getLong(String key,long fallback) { return fallback; }
        @Implementation protected float getFloat(String key,float fallback) { return fallback; }
        @Implementation protected boolean getBoolean(String key,boolean fallback) { return fallback; }
        @Implementation protected String getString(String key,String fallback) { return fallback; }
        @Implementation protected java.util.Set<String> getStringSet(String key,java.util.Set<String> fallback) { return fallback; }
        @Implementation protected boolean contains(String key) { return false; }
    }

    @Test public void resetMustReachTheSystemUiReaderAfterItLoadedProviderSettings() throws Exception {
        Context app=RuntimeEnvironment.getApplication();
        Robolectric.buildContentProvider(SettingsProvider.class).create(SettingsProvider.AUTHORITY);
        SharedPreferences store=ModuleSettings.openStore(app);
        store.edit().clear().putBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,true).commit();
        ReflectionHelpers.setStaticField(ModuleSettings.class,"started",true);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"prefs",null);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"loaded",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"viaProvider",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"lastRemote",null);
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        assertTrue("precondition: the real SystemUI reader loaded the custom setting",ModuleSettings.lowPerformance());
        assertEquals(Boolean.TRUE,ReflectionHelpers.getStaticField(ModuleSettings.class,"viaProvider"));
        ShadowBinder.setCallingUid(23123);
        try {
            ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
            assertTrue("a failed provider read must preserve the last good settings",ModuleSettings.lowPerformance());
            File file=File.createTempFile("readable-empty-preferences", ".xml");
            try {
                EmptyXPrefs.path=file;EmptyXPrefs.changed=true;
                ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
                assertFalse("a readable empty changed file also restores defaults without a provider",ModuleSettings.lowPerformance());
            } finally { file.delete();EmptyXPrefs.path=new File("/nonexistent-audit/settings.xml"); }
        } finally { ShadowBinder.reset(); }
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        assertTrue("provider recovery applies its current snapshot again",ModuleSettings.lowPerformance());
        store.edit().clear().commit(); // Same store operation used by resetAllSettings, without the app-only preview.
        Bundle empty=app.getContentResolver().call(SettingsProvider.CHANGED_URI,SettingsProvider.METHOD_ALL,null,null);
        assertNotNull(empty);assertTrue("the provider reports the reset successfully",empty.isEmpty());
        for(int i=0;i<3;i++) ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        assertFalse("a successful empty settings snapshot must restore defaults in SystemUI",ModuleSettings.lowPerformance());
    }

    @Test public void anUntrustedUidMustNotReadPrivateRulesAndAppLists() {
        Context app=RuntimeEnvironment.getApplication();
        Robolectric.buildContentProvider(SettingsProvider.class).create(SettingsProvider.AUTHORITY);
        ProviderInfo info=app.getPackageManager().resolveContentProvider(SettingsProvider.AUTHORITY,0);
        assertNotNull(info);assertTrue(info.exported);assertNull(info.readPermission);assertNull(info.writePermission);
        ModuleSettings.openStore(app).edit().clear()
                .putString(ModuleSettings.KEY_RULES_CUSTOM,"audit-only-private-rules")
                .putStringSet(ModuleSettings.KEY_APPS_LISTED,java.util.Set.of("example.audit.privateapp")).commit();
        Bundle own=app.getContentResolver().call(SettingsProvider.CHANGED_URI,SettingsProvider.METHOD_ALL,null,null);
        assertEquals("audit-only-private-rules",own.getString(ModuleSettings.KEY_RULES_CUSTOM));
        android.content.pm.PackageInfo sysui=new android.content.pm.PackageInfo();sysui.packageName="com.android.systemui";
        sysui.applicationInfo=new android.content.pm.ApplicationInfo();sysui.applicationInfo.packageName=sysui.packageName;
        sysui.applicationInfo.uid=1000;
        org.robolectric.Shadows.shadowOf(app.getPackageManager()).installPackage(sysui);
        ShadowBinder.setCallingUid(1000);
        try {
            Bundle trusted=app.getContentResolver().call(SettingsProvider.CHANGED_URI,SettingsProvider.METHOD_ALL,null,null);
            assertEquals("audit-only-private-rules",trusted.getString(ModuleSettings.KEY_RULES_CUSTOM));
        } finally { ShadowBinder.reset(); }
        ShadowBinder.setCallingUid(23123);ShadowBinder.setCallingPid(98765);
        assertEquals(23123,Binder.getCallingUid());
        Bundle read=null;
        try { read=app.getContentResolver().call(SettingsProvider.CHANGED_URI,SettingsProvider.METHOD_ALL,null,null); }
        catch(SecurityException expected) { return; }
        finally { ShadowBinder.reset(); }
        assertTrue("an unrelated calling UID must not receive private rules",read==null || !read.containsKey(ModuleSettings.KEY_RULES_CUSTOM));
    }

    @Test public void hotspotDurationMustIncludeDeepSleep() {
        Context app=RuntimeEnvironment.getApplication();
        SharedPreferences store=ModuleSettings.openStore(app);
        store.edit().clear().putBoolean(ModuleSettings.KEY_HOTSPOT_CARD,true).commit();
        ModuleSettings.configurePreview(store);
        HotspotSource source=ReflectionHelpers.callConstructor(HotspotSource.class,
                ReflectionHelpers.ClassParameter.from(Context.class,app),
                ReflectionHelpers.ClassParameter.from(Handler.class,new Handler(Looper.getMainLooper())),
                ReflectionHelpers.ClassParameter.from(Runnable.class,(Runnable)()->{}),
                ReflectionHelpers.ClassParameter.from(java.util.function.Supplier.class,(java.util.function.Supplier<java.util.Set<String>>)()->java.util.Set.of("swlan0")));
        source.syncSettings();
        app.sendBroadcast(new Intent("android.net.wifi.WIFI_AP_STATE_CHANGED").putExtra("wifi_state",13));
        ShadowLooper.idleMainLooper();
        long beforeUptime=SystemClock.uptimeMillis(), beforeElapsed=SystemClock.elapsedRealtime();
        ShadowSystemClock.simulateDeepSleep(Duration.ofMinutes(1));
        assertEquals(0,SystemClock.uptimeMillis()-beforeUptime);
        assertEquals(60_000,SystemClock.elapsedRealtime()-beforeElapsed);
        ArrayList<IslandItem> items=new ArrayList<>();source.collect(items);assertEquals(1,items.size());
        String expected=IslandText.get(app,"island_charge_minutes",1L,0L);
        assertTrue("hotspot duration should include the minute spent asleep",items.get(0).subtitle.toString().endsWith(expected));
    }
    @Test public void frequentUpdatesMustNotPostponeProgressAndRuleRefreshForever() {
        Context app=RuntimeEnvironment.getApplication();
        ModuleSettings.configurePreview(ModuleSettings.openStore(app));
        Handler main=new Handler(Looper.getMainLooper());
        for(boolean rules:new boolean[]{false,true}) {
            java.util.concurrent.atomic.AtomicInteger changes=new java.util.concurrent.atomic.AtomicInteger();
            Object source=rules ? new dev.android.dynamicisland.island.source.RuleSource(app,main,changes::incrementAndGet)
                    : new dev.android.dynamicisland.island.source.ProgressSource(app,main,changes::incrementAndGet);
            ShadowSystemClock.advanceBy(Duration.ofSeconds(1));
            ReflectionHelpers.callInstanceMethod(source,"notifyChanged");
            assertEquals(1,changes.get());
            for(int n=0;n<20;n++) {
                org.robolectric.Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(100));
                ReflectionHelpers.callInstanceMethod(source,"notifyChanged");
            }
            assertTrue("refreshes keep arriving during continuous updates: "+source.getClass().getSimpleName(),changes.get()>=4);
            int before=changes.get();
            org.robolectric.Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500));
            assertTrue("the final update is delivered within 500ms",changes.get()>before);
            before=changes.get();
            org.robolectric.Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1));
            assertEquals("there is no duplicate or endless timer after settling",before,changes.get());
        }
    }

    @Test public void changingOnlyTheDownloadActionMustReplaceTheCachedAction() throws Exception {
        Context app=RuntimeEnvironment.getApplication();
        SharedPreferences prefs=ModuleSettings.openStore(app);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        dev.android.dynamicisland.island.source.ProgressSource source=
                new dev.android.dynamicisland.island.source.ProgressSource(app,new Handler(Looper.getMainLooper()),()->{});
        source.update(java.util.List.of(download(app,"Pause")));
        Map<String,IslandItem> before=ReflectionHelpers.getField(source,"items");
        assertEquals(1,before.size());
        assertEquals("Pause",before.values().iterator().next().actions.get(0).title);
        source.update(java.util.List.of(download(app,"Resume")));
        Map<String,IslandItem> after=ReflectionHelpers.getField(source,"items");
        IslandItem cached=after.values().iterator().next();
        assertEquals("a button-only update must reach the card","Resume",cached.actions.get(0).title);
    }

    private android.service.notification.StatusBarNotification download(Context app,String button) throws Exception {
        android.app.PendingIntent action=android.app.PendingIntent.getBroadcast(app,0,
                new Intent("audit."+button),android.app.PendingIntent.FLAG_IMMUTABLE);
        android.app.Notification n=new android.app.Notification.Builder(app,"audit")
                .setSmallIcon(android.R.drawable.stat_sys_download).setContentTitle("Downloading")
                .setContentText("50 of 100").setProgress(100,50,false).setOngoing(true)
                .addAction(new android.app.Notification.Action.Builder(null,button,action).build()).build();
        return android.service.notification.StatusBarNotification.class.getConstructor(String.class,String.class,
                int.class,String.class,int.class,int.class,android.app.Notification.class,android.os.UserHandle.class,
                String.class,long.class).newInstance("example.audit.download","example.audit.download",1,null,10100,1,n,
                android.os.Process.myUserHandle(),null,1000L);
    }

    @Test public void changingRuleLabelsWithEqualHashesMustStillReloadRules() {
        Context app=RuntimeEnvironment.getApplication();
        Robolectric.buildContentProvider(SettingsProvider.class).create(SettingsProvider.AUTHORITY);
        SharedPreferences store=ModuleSettings.openStore(app);
        String aa="{\"status_labels\":{\"food\":{\"en\":{\"1\":\"Aa\"}}}}";
        String bb=aa.replace("Aa","BB"),bc=aa.replace("Aa","BC");
        assertNotEquals(aa,bb);assertEquals(aa.hashCode(),bb.hashCode());
        store.edit().clear().putString(ModuleSettings.KEY_RULES_CUSTOM,aa).commit();
        ReflectionHelpers.setStaticField(ModuleSettings.class,"started",true);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"prefs",null);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"loaded",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"viaProvider",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"lastRemote",null);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"rulesConfig",dev.android.dynamicisland.island.rules.RuleConfig.DEFAULT);
        ReflectionHelpers.callStaticMethod(dev.android.dynamicisland.island.rules.RuleStore.class,"reset");
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        assertEquals("Aa",dev.android.dynamicisland.island.rules.RuleStore.current().statusText("food",1,java.util.Locale.ENGLISH));
        store.edit().putString(ModuleSettings.KEY_RULES_CUSTOM,bb).commit();
        for(int n=0;n<3;n++) ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        Map<String,Object> remote=ReflectionHelpers.getStaticField(ModuleSettings.class,"lastRemote");
        assertEquals("precondition: the actual settings reader has received the new content",bb,remote.get(ModuleSettings.KEY_RULES_CUSTOM));
        String collision=dev.android.dynamicisland.island.rules.RuleStore.current().statusText("food",1,java.util.Locale.ENGLISH);
        store.edit().putString(ModuleSettings.KEY_RULES_CUSTOM,bc).commit();
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        String control=dev.android.dynamicisland.island.rules.RuleStore.current().statusText("food",1,java.util.Locale.ENGLISH);
        assertEquals("precondition: an ordinary update still works","BC",control);
        assertEquals("different rule content must not be ignored because its hash collides","BB",collision);
    }

    @Test public void replacingAFilterEntryWithTheSameCountRefreshesCardsExactlyOnce() {
        Context app=RuntimeEnvironment.getApplication();
        Robolectric.buildContentProvider(SettingsProvider.class).create(SettingsProvider.AUTHORITY);
        SharedPreferences store=ModuleSettings.openStore(app);
        store.edit().clear().putStringSet(ModuleSettings.KEY_APPS_LISTED,java.util.Set.of("example.a")).commit();
        ReflectionHelpers.setStaticField(ModuleSettings.class,"started",true);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"prefs",null);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"loaded",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"viaProvider",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"lastRemote",null);
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        assertFalse(ModuleSettings.appAllowed("example.a"));assertTrue(ModuleSettings.appAllowed("example.b"));
        java.util.concurrent.atomic.AtomicInteger changes=new java.util.concurrent.atomic.AtomicInteger();
        ModuleSettings.setOnSwitchesChanged(changes::incrementAndGet);
        store.edit().putStringSet(ModuleSettings.KEY_APPS_LISTED,java.util.Set.of("example.b")).commit();
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");
        assertEquals("a changed package list must refresh the source cards even when the count is unchanged",1,changes.get());
        assertTrue(ModuleSettings.appAllowed("example.a"));assertFalse(ModuleSettings.appAllowed("example.b"));
        ReflectionHelpers.callStaticMethod(ModuleSettings.class,"refresh");assertEquals(1,changes.get());
    }

}
