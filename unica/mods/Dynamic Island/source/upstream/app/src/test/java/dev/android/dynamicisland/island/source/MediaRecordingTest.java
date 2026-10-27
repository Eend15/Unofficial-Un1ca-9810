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
import dev.android.dynamicisland.island.model.IslandItem;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class MediaRecordingTest {
    private final Application app = RuntimeEnvironment.getApplication();
    private final AtomicBoolean recording = new AtomicBoolean();

    private MediaSource source() {
        MediaSource source = new MediaSource(app, new Handler(Looper.getMainLooper()), () -> { });
        source.setRecordingFilter((pkg, user) -> recording.get() && VoiceRecordingTest.RECORDER.equals(pkg) && user == 0);
        return source;
    }

    private PlaybackState playing(int state) {
        return new PlaybackState.Builder().setState(state, 4000, 1).build();
    }

    private static MediaMetadata metadata(String title) {
        return new MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_TITLE, title).build();
    }

    private MediaController controller(String pkg, int user, String title) throws Exception {
        return controller(app, pkg, user, title);
    }

    /** Session fixture shared with shade-hook tests; only the Binder transport is stubbed. */
    public static MediaController controller(Application app, String pkg, int user, String title) throws Exception {
        Class<?> api = Class.forName("android.media.session.ISessionController");
        Binder binder = new Binder();
        Object remote = Proxy.newProxyInstance(MediaRecordingTest.class.getClassLoader(), new Class<?>[]{api}, (p, m, args) -> {
            if (m.getName().equals("asBinder")) return binder;
            if (m.getName().equals("getPackageName")) return pkg;
            if (m.getReturnType() == boolean.class) return false;
            if (m.getReturnType() == int.class) return 0;
            if (m.getReturnType() == long.class) return 0L;
            return null;
        });
        MediaSession.Token token = ReflectionHelpers.newInstance(MediaSession.Token.class);
        ReflectionHelpers.setField(token, "mUid", user * 100_000 + 10200);
        ReflectionHelpers.setField(token, "mBinder", remote);
        MediaController controller = new MediaController(app, token);
        shadowOf(controller).setPackageName(pkg);
        shadowOf(controller).setMetadata(metadata(title));
        shadowOf(controller).setPlaybackState(new PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 4000, 1).build());
        return controller;
    }

    private List<IslandItem> collect(MediaSource source) {
        List<IslandItem> out = new ArrayList<>();
        source.collect(out, null, new HashSet<>(), new HashSet<>());
        return out;
    }

    @Test
    public void recordingIsSkippedBeforeChoosingTheMusicPlayer() throws Exception {
        MediaSource source = source();
        MediaController recorder = controller(VoiceRecordingTest.RECORDER, 0, "");
        MediaController music = controller("com.music", 0, "Song");
        source.sync(Arrays.asList(recorder, music));
        recording.set(true);
        List<IslandItem> cards = collect(source);
        assertEquals(1, cards.size());
        assertEquals("com.music", cards.get(0).packageName);
        assertNull(source.itemForSession(recorder.getSessionToken()));
        assertTrue(source.isRecordingSession(recorder.getSessionToken()));
        assertNotNull(source.itemForSession(music.getSessionToken()));
        assertEquals("com.music",source.glowSession().packageName);
    }

    @Test
    public void pausedRecordingStaysExcludedAndFreshFilePlaybackReturns() throws Exception {
        MediaSource source = source();
        MediaController recorder = controller(VoiceRecordingTest.RECORDER, 0, "");
        source.sync(Collections.singletonList(recorder));
        recording.set(true);
        assertTrue(collect(source).isEmpty());
        shadowOf(recorder).executeOnPlaybackStateChanged(playing(PlaybackState.STATE_PAUSED));
        shadowOf(Looper.getMainLooper()).idle();
        assertTrue(source.isRecordingSession(recorder.getSessionToken()));
        recording.set(false);
        assertNull(source.itemForSession(recorder.getSessionToken())); // no stale paused recorder
        shadowOf(recorder).executeOnMetadataChanged(metadata("Saved recording"));
        shadowOf(recorder).executeOnPlaybackStateChanged(playing(PlaybackState.STATE_PLAYING));
        shadowOf(Looper.getMainLooper()).idle();
        assertFalse(source.isRecordingSession(recorder.getSessionToken()));
        assertEquals("Saved recording", source.itemForSession(recorder.getSessionToken()).title);
    }

}
