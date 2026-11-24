package dev.android.dynamicisland.island.source;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.app.Application;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import java.lang.reflect.Proxy;
import java.time.Duration;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;
@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class MediaTimingTest {
    private final Application app=RuntimeEnvironment.getApplication();
    private MediaSource source() { return new MediaSource(app,new Handler(Looper.getMainLooper()),()->{}); }
    private MediaController controller(int state,long position,float speed) throws Exception {
        Class<?> api=Class.forName("android.media.session.ISessionController");Binder binder=new Binder();
        Object remote=Proxy.newProxyInstance(api.getClassLoader(),new Class<?>[]{api},(p,m,args)->{
            if(m.getName().equals("asBinder"))return binder;
            if(m.getName().equals("getPackageName"))return "example.music";
            if(m.getReturnType()==boolean.class)return false;
            if(m.getReturnType()==int.class)return 0;
            if(m.getReturnType()==long.class)return 0L;
            return null;
        });
        MediaSession.Token token=ReflectionHelpers.newInstance(MediaSession.Token.class);
        ReflectionHelpers.setField(token,"mUid",10200);ReflectionHelpers.setField(token,"mBinder",remote);
        MediaController controller=new MediaController(app,token);shadowOf(controller).setPackageName("example.music");
        shadowOf(controller).setMetadata(new MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_TITLE,"Song")
                .putLong(MediaMetadata.METADATA_KEY_DURATION,120000).build());
        shadowOf(controller).setPlaybackState(new PlaybackState.Builder().setState(state,position,speed,SystemClock.elapsedRealtime()).build());
        return controller;
    }
    @Test public void zeroSpeedWhileBufferingDoesNotAdvanceThePlaybackClock() throws Exception {
        var source=source();var controller=controller(PlaybackState.STATE_BUFFERING,30000,0);
        source.sync(List.of(controller));var card=source.itemForSession(controller.getSessionToken());
        ShadowSystemClock.advanceBy(Duration.ofSeconds(10));assertEquals(30000,card.currentMediaPosition(SystemClock.elapsedRealtime()));
    }
    @Test public void retiringAPlayingSessionFreezesItsCurrentPositionInsteadOfJumpingBack() throws Exception {
        var source=source();var controller=controller(PlaybackState.STATE_PLAYING,10000,1);
        source.sync(List.of(controller));var card=source.itemForSession(controller.getSessionToken());
        ShadowSystemClock.advanceBy(Duration.ofSeconds(60));assertEquals(70000,card.currentMediaPosition(SystemClock.elapsedRealtime()));
        source.sync(List.of());var retired=source.itemForSession(controller.getSessionToken());assertNotNull(retired);
        assertFalse(retired.playing);assertEquals(70000,retired.currentMediaPosition(SystemClock.elapsedRealtime()));
        ShadowSystemClock.advanceBy(Duration.ofSeconds(5));assertEquals(70000,retired.currentMediaPosition(SystemClock.elapsedRealtime()));
    }
    @Test public void aCachedMusicCardStillRefreshesOutputBatteryAndClearsADisconnectedRoute() throws Exception {
        var source=source();var controller=controller(PlaybackState.STATE_PLAYING,10000,1);
        OutputSource.Output[] output={new OutputSource.Output("Headphones",GlyphIcon.Kind.HEADPHONES,80)};
        OutputSource outputs=new OutputSource(app,new Handler(Looper.getMainLooper()),()->{},()->output[0]);
        ReflectionHelpers.setField(source,"output",outputs);source.sync(List.of(controller));
        var first=source.itemForSession(controller.getSessionToken());assertEquals(80,first.mediaOutputBattery);
        dev.android.dynamicisland.settings.ModuleSettings.configurePreview(
                dev.android.dynamicisland.settings.ModuleSettings.openStore(app));
        var renderer=new dev.android.dynamicisland.island.view.IslandView(app,null);
        renderer.shadeCardHeight(first,360);
        Object shade=ReflectionHelpers.getField(renderer,"shadeCards");
        Object firstBody=ReflectionHelpers.getField(shade,"body");
        android.text.StaticLayout firstOutput=ReflectionHelpers.getField(firstBody,"output");
        assertTrue(firstOutput.getText().toString().contains("80%"));
        assertSame("unchanged output does not rebuild the cached card",first,source.itemForSession(controller.getSessionToken()));
        output[0]=new OutputSource.Output("Headphones",GlyphIcon.Kind.HEADPHONES,45);
        ShadowSystemClock.advanceBy(Duration.ofSeconds(11));
        var updated=source.itemForSession(controller.getSessionToken());assertEquals(45,updated.mediaOutputBattery);
        assertNotSame("shade layout caches must receive a new snapshot",first,updated);assertEquals(80,first.mediaOutputBattery);
        renderer.shadeCardHeight(updated,360);
        Object updatedBody=ReflectionHelpers.getField(shade,"body");
        android.text.StaticLayout updatedOutput=ReflectionHelpers.getField(updatedBody,"output");
        assertTrue("the visible output line is updated too",updatedOutput.getText().toString().contains("45%"));
        output[0]=new OutputSource.Output("Headphones",GlyphIcon.Kind.HEADPHONES,20);
        ReflectionHelpers.callInstanceMethod(outputs,"invalidate");
        assertEquals(20,source.itemForSession(controller.getSessionToken()).mediaOutputBattery);
        output[0]=null;ShadowSystemClock.advanceBy(Duration.ofSeconds(11));
        var card=source.itemForSession(controller.getSessionToken());assertNull(card.mediaOutput);assertEquals(-1,card.mediaOutputBattery);
    }
    @Test public void aRemoteSessionDoesNotBorrowThePhonesHeadphoneRoute() throws Exception {
        var source = source();var controller = controller(PlaybackState.STATE_PLAYING, 10000, 1);
        OutputSource outputs = new OutputSource(app,new Handler(Looper.getMainLooper()),()->{},
                ()->new OutputSource.Output("Phone Buds",GlyphIcon.Kind.HEADPHONES,80));
        ReflectionHelpers.setField(source,"output",outputs);
        var remote = ReflectionHelpers.callConstructor(MediaController.PlaybackInfo.class,
                ReflectionHelpers.ClassParameter.from(int.class,MediaController.PlaybackInfo.PLAYBACK_TYPE_REMOTE),
                ReflectionHelpers.ClassParameter.from(int.class,2),ReflectionHelpers.ClassParameter.from(int.class,15),
                ReflectionHelpers.ClassParameter.from(int.class,5),
                ReflectionHelpers.ClassParameter.from(android.media.AudioAttributes.class,new android.media.AudioAttributes.Builder().build()),
                ReflectionHelpers.ClassParameter.from(String.class,"tv"));
        shadowOf(controller).setPlaybackInfo(remote);
        source.sync(List.of(controller));var card = source.itemForSession(controller.getSessionToken());
        assertNull(card.mediaOutput);assertEquals(-1,card.mediaOutputBattery);assertNull(card.mediaOutputIcon);
    }

    @Test public void sessionsOfTheSameAppDoNotBorrowOneAnothersArtwork() throws Exception {
        var source=source();var a=controller(PlaybackState.STATE_PLAYING,0,1);var b=controller(PlaybackState.STATE_PLAYING,0,1);
        var art=android.graphics.Bitmap.createBitmap(8,8,android.graphics.Bitmap.Config.ARGB_8888);art.eraseColor(0xffff0000);
        shadowOf(a).setMetadata(new MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_TITLE,"Same title")
                .putBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART,art).build());
        shadowOf(b).setMetadata(new MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_TITLE,"Same title").build());
        source.sync(List.of(a,b));assertSame(art,source.itemForSession(a.getSessionToken()).art);
        assertNull(source.itemForSession(b.getSessionToken()).art);
        ShadowSystemClock.advanceBy(Duration.ofSeconds(50));assertNull(source.itemForSession(b.getSessionToken()).art);
    }

    @Test public void changingOutputPlaybackTypeRefreshesTheCardWithoutPollingTheService() throws Exception {
        var source=source();var controller=controller(PlaybackState.STATE_PLAYING,0,1);
        OutputSource outputs=new OutputSource(app,new Handler(Looper.getMainLooper()),()->{},
                ()->new OutputSource.Output("Local Buds",GlyphIcon.Kind.HEADPHONES,80));
        ReflectionHelpers.setField(source,"output",outputs);source.sync(List.of(controller));
        assertEquals("Local Buds",source.itemForSession(controller.getSessionToken()).mediaOutput);
        var info=ReflectionHelpers.callConstructor(MediaController.PlaybackInfo.class,
                ReflectionHelpers.ClassParameter.from(int.class,MediaController.PlaybackInfo.PLAYBACK_TYPE_REMOTE),
                ReflectionHelpers.ClassParameter.from(int.class,2),ReflectionHelpers.ClassParameter.from(int.class,15),
                ReflectionHelpers.ClassParameter.from(int.class,5),
                ReflectionHelpers.ClassParameter.from(android.media.AudioAttributes.class,new android.media.AudioAttributes.Builder().build()),
                ReflectionHelpers.ClassParameter.from(String.class,"tv"));
        java.util.Map<?,?> sessions=ReflectionHelpers.getField(source,"sessions");
        ((MediaController.Callback)sessions.get(controller.getSessionToken())).onAudioInfoChanged(info);
        assertNull(source.itemForSession(controller.getSessionToken()).mediaOutput);
    }

}
