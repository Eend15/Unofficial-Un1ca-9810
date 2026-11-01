package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import dev.android.dynamicisland.island.feedback.RecorderInput;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.lang.reflect.Proxy;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.Robolectric;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "mdpi")
public class RecordingWaveformTest {
    @Test public void inputHistoryRendersInPillAndCardAndPauseSettlesToQuietBaseline() throws Exception {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = context.getSharedPreferences("recording-wave-test", 0);
        prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE, ModuleSettings.MATERIAL_CLASSIC).commit();
        ModuleSettings.configurePreview(prefs);
        assertFalse(ModuleSettings.concurrentRecordingInput());
        prefs.edit().putBoolean(ModuleSettings.KEY_CONCURRENT_RECORDING_INPUT,true).commit();
        ModuleSettings.configurePreview(prefs);
        RecorderInput input = new RecorderInput(context, () -> { });
        IslandHost host = (IslandHost) Proxy.newProxyInstance(getClass().getClassLoader(), new Class<?>[]{IslandHost.class},
                (proxy, method, args) -> method.getName().equals("recordingAudio") ? input : method.invoke(IslandHost.NONE, args));
        IslandItem item = new IslandItem("voice:test");
        item.kind = IslandItem.Kind.RECORDING;
        item.voiceRecording = true;
        item.packageName = "com.sec.android.app.voicenote";
        item.title = "Recording";
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = "0:18";
        for (int i = 0; i < 3; i++) {
            IslandItem.Action action = new IslandItem.Action(i == 0 ? "Cancel" : i == 1 ? "Pause" : "Stop", null, null, () -> { }, i != 1);
            action.recordingControl = i == 1 ? 1 : i == 2 ? 3 : 0;
            action.glyph = i == 1 ? 2 : 6;
            item.actions.add(action);
        }
        input.envelope.reset(item.key);
        long start = SystemClock.elapsedRealtime() - 23 * 120L;
        float[] speech = {0,.04f,.12f,.43f,.66f,.52f,.25f,.07f,0,0,.08f,.23f,.56f,.8f,.69f,.45f,.25f,.16f,.37f,.61f,.43f,.18f,.05f,0};
        for (int i = 0; i < 24; i++) input.envelope.add(item.key, speech[i], start + i * 120L);
        IslandView view = new IslandView(context, host);
        view.setGeometry(360, 180, 40, 24, false);
        CompactContent compact = new CompactContent(view, item);
        float width = compact.desiredWidth();
        assertTrue(width <= 360 && width > 100);
        BodyFactory factory = new BodyFactory(view, new RemoteCards(view, new Shapes(new Metrics(1), new Scene(new Springs())), new Scene(new Springs())));
        // Use the actual factory (including the voice-before-RemoteViews branch).
        assertTrue(factory.create(item, 360, false) instanceof dev.android.dynamicisland.island.view.card.RecordingBody);
        Bitmap sheet = Bitmap.createBitmap(800, 460, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(sheet);
        canvas.drawColor(0xFF171719);
        for (int col = 0; col < 2; col++) {
            prefs.edit().putBoolean(ModuleSettings.KEY_CUSTOM_CARD_ROUNDNESS, col == 1)
                    .putInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP,40).commit();
            ModuleSettings.configurePreview(prefs);
            Paint title = new Paint(Paint.ANTI_ALIAS_FLAG);
            title.setColor(0xFFD8D8DF); title.setTextSize(14);
            float left = 20 + col * 400;
            canvas.drawText(col == 0 ? "Classic · shared 28dp corners" : "Custom corner radius · 40dp", left, 24, title);
            compact.draw(canvas, new RectF(left, 38, left + width, 68), 1, 1000);
            dev.android.dynamicisland.island.view.card.CardBody recordingBody = factory.create(item,360,false);
            float expectedRadius = col == 0 ? 28 : 40;
            assertEquals(expectedRadius,recordingBody.cornerRadius(28,recordingBody.h),.001f);
            card(canvas, recordingBody,left,84);
            IslandItem timer = new IslandItem("timer:shape");
            timer.kind = IslandItem.Kind.TIMER; timer.title = "Stopwatch";
            timer.trailing = IslandItem.Trailing.TEXT; timer.trailingText = "0:27.45";
            timer.accent = 0xFF9A82EE;
            timer.icon = dev.android.dynamicisland.island.graphics.GlyphIcon.of(dev.android.dynamicisland.island.graphics.GlyphIcon.Kind.BELL);
            for (int i = 0; i < 2; i++) {
                IslandItem.Action action = new IslandItem.Action(i == 0 ? "Reset" : "Pause",
                        i == 0 ? context.getDrawable(android.R.drawable.ic_menu_revert) : null,null,()->{},false);
                action.glyph = i == 0 ? 0 : 2; timer.actions.add(action);
            }
            dev.android.dynamicisland.island.view.card.CardBody timerBody = factory.create(timer,360,false);
            assertEquals(expectedRadius,timerBody.cornerRadius(28,timerBody.h),.001f);
            card(canvas,timerBody,left,184);
            IslandItem privacy = new IslandItem("privacy:shape");
            privacy.kind = IslandItem.Kind.LIVE; privacy.title = "Microphone in use"; privacy.subtitle = "Voice Recorder";
            dev.android.dynamicisland.island.view.card.CardBody privacyBody = factory.create(privacy,360,false);
            assertEquals(Math.min(expectedRadius,privacyBody.h/2),privacyBody.cornerRadius(28,privacyBody.h),.001f);
            card(canvas,privacyBody,left,286);
        }
        assertTrue(colourPixels(sheet, 0xFFFF3B30) > 1000);
        assertTrue(colourPixels(sheet, 0xFF3A3A3C) > 1000);
        RecordingWaveform waveform = new RecordingWaveform(input);
        Bitmap active = Bitmap.createBitmap(100, 40, Bitmap.Config.ARGB_8888);
        waveform.draw(new Canvas(active), item, 0, 20, 100, 34, 1);
        item.voiceRecordingPaused = true;
        Bitmap paused = Bitmap.createBitmap(100, 40, Bitmap.Config.ARGB_8888);
        waveform.draw(new Canvas(paused), item, 0, 20, 100, 34, 1);
        assertTrue(pixels(active) > pixels(paused) * 2);
        canvas.drawBitmap(active, 20, 394, null);
        canvas.drawBitmap(paused, 160, 394, null);
        RenderCapture.write(sheet, new File("build/render/recording-concurrent-input.png"));
        // A real phone accumulates deep-sleep time: elapsedRealtime and uptime diverge.
        // Consecutive display frames must still move, without a fresh microphone read.
        ShadowSystemClock.simulateDeepSleep(java.time.Duration.ofHours(1));
        item.voiceRecordingPaused = false;
        item.userId = android.os.Process.myUid() / 100_000;
        input.envelope.reset(item.key);
        start = SystemClock.elapsedRealtime() - 23 * 120L;
        for (int i = 0; i < 24; i++) input.envelope.add(item.key, speech[i], start + i * 120L);
        Bitmap previous = Bitmap.createBitmap(100,40,Bitmap.Config.ARGB_8888);
        waveform.draw(new Canvas(previous),item,0,20,100,34,1);
        for (int frame = 0; frame < 2; frame++) {
            ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
            Bitmap next = Bitmap.createBitmap(100,40,Bitmap.Config.ARGB_8888);
            waveform.draw(new Canvas(next),item,0,20,100,34,1);
            assertFalse("waveform must move between 40 ms audio reads, even after deep sleep", previous.sameAs(next));
            previous = next;
        }
        android.app.Activity activity = Robolectric.buildActivity(android.app.Activity.class).setup().get();
        activity.setContentView(view);
        view.layout(0,0,360,600);view.setItems(java.util.List.of(item));
        for (int frame = 0; frame < 180; frame++) {
            ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
            view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        }
        input.envelope.add(item.key,.8f,SystemClock.elapsedRealtime());
        view.onRecordingAudioFrame();view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        assertTrue("fresh visible input must keep vsync running", (boolean)ReflectionHelpers.getField(view,"frameScheduled"));
        ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
        view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        assertTrue((boolean)ReflectionHelpers.getField(view,"frameScheduled"));
        item.voiceRecordingPaused = true;
        ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
        view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        assertFalse("paused recording must not keep rendering", (boolean)ReflectionHelpers.getField(view,"frameScheduled"));
        prefs.edit().putBoolean(ModuleSettings.KEY_CONCURRENT_RECORDING_INPUT, false).commit();
        ModuleSettings.configurePreview(prefs);
        assertFalse(view.hasRecordingWaveform(item));
        prefs.edit().clear().commit();
        ModuleSettings.configurePreview(prefs);
    }
    private void card(Canvas canvas, dev.android.dynamicisland.island.view.card.CardBody body, float x, float y) {
        Paint background = new Paint(Paint.ANTI_ALIAS_FLAG);
        background.setColor(0xFF080808);
        float radius = body.cornerRadius(28, body.h);
        canvas.drawRoundRect(x,y,x+body.w,y+body.h,radius,radius,background);
        background.setColor(0xFF39393E); background.setStyle(Paint.Style.STROKE); background.setStrokeWidth(1);
        canvas.drawRoundRect(x,y,x+body.w,y+body.h,radius,radius,background);
        body.draw(canvas,x,y,1,1000);
    }
    private int pixels(Bitmap bitmap) {
        int n = 0;
        for (int y = 0; y < bitmap.getHeight(); y++) for (int x = 0; x < bitmap.getWidth(); x++) if (Color.alpha(bitmap.getPixel(x, y)) > 0) n++;
        return n;
    }
    private int colourPixels(Bitmap bitmap, int colour) {
        int n = 0;
        for (int y = 0; y < bitmap.getHeight(); y++) for (int x = 0; x < bitmap.getWidth(); x++) if (bitmap.getPixel(x, y) == colour) n++;
        return n;
    }
}
