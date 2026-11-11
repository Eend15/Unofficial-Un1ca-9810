package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.BlurSink;
import dev.android.dynamicisland.island.view.CardPainter;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * The real island renderer in an inert local host (no notifications, no System UI hooks), shown above the
 * settings. It plays a few sample cards one after another with the settings as they are saved right now, so
 * a choice can be seen before and after it is made. A tap moves on to the next sample.
 */
final class LivePreview extends FrameLayout {
    private static final int SAMPLE_MS = 3400;
    private static final int GAP_MS = 1100;

    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;
    private final IslandView island;
    private final List<IslandItem> samples = new ArrayList<>();
    private int next;
    private int shown;
    /** After a setting changed, the sample that shows it is replayed until the preview is tapped. */
    private boolean holding;
    private boolean running;
    private final Runnable cycle = new Runnable() {
        @Override public void run() {
            if (!running || !isAttachedToWindow()) return;
            shown = holding ? shown : next++ % samples.size();
            IslandItem sample = samples.get(shown);
            if (ModuleSettings.iMode()) {
                island.peek(sample, SAMPLE_MS);
            } else {
                island.setItems(Collections.singletonList(sample));
                island.peek(sample, SAMPLE_MS);
            }
            postDelayed(this, SAMPLE_MS + GAP_MS);
        }
    };

    LivePreview(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        super(activity);
        this.activity = activity;
        this.ui = ui;
        this.prefs = prefs;
        setClipChildren(true);
        setBackgroundColor(0xFF0B0B0D);
        Backdrops backdrops = new Backdrops();
        addView(backdrops, new FrameLayout.LayoutParams(-1, -1));
        island = new IslandView(activity, IslandHost.NONE);
        island.setHapticFeedbackEnabled(false);
        island.setBlurSink(backdrops);
        addView(island, new FrameLayout.LayoutParams(-1, -1));
        buildSamples();
    }

    private void buildSamples() {
        IslandItem ring = new IslandItem("preview:ring");
        ring.kind = IslandItem.Kind.EVENT;
        ring.eventLayout = IslandItem.EventLayout.STATUS;
        ring.title = activity.getString(R.string.island_ring);
        ring.subtitle = activity.getString(R.string.island_sound_mode);
        ring.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
        ring.accent = 0xFFFFC857;
        samples.add(ring);

        IslandItem charging = new IslandItem("preview:charging");
        charging.kind = IslandItem.Kind.EVENT;
        charging.eventLayout = IslandItem.EventLayout.BATTERY;
        charging.title = activity.getString(R.string.island_charging);
        charging.batteryPercent = 75;
        charging.batteryCharging = true;
        charging.accent = 0xFF30D158;
        charging.trailing = IslandItem.Trailing.TEXT;
        charging.trailingText = "75%";
        charging.icon = GlyphIcon.battery(0.75f, true);
        samples.add(charging);

        IslandItem music = new IslandItem("preview:music");
        music.kind = IslandItem.Kind.MEDIA;
        music.isMedia = true;
        music.playing = true;
        music.appName = activity.getString(R.string.app_name);
        music.title = "Midnight City";
        music.subtitle = "M83";
        music.art = albumArt();
        music.cardImage = new BitmapDrawable(activity.getResources(), music.art);
        music.cardImageIsImage = true;
        music.mediaPalette = ArtworkPalette.fromPixels(pixelsOf(music.art));
        music.accent = 0xFFE5558C;
        music.trailing = IslandItem.Trailing.WAVEFORM;
        music.mediaDuration = 243_000L;
        music.mediaPosition = 96_000L;
        music.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        music.mediaPlayPause = () -> { };
        music.mediaNext = () -> { };
        music.mediaPrev = () -> { };
        music.mediaSeek = value -> { };
        samples.add(music);

        IslandItem torch = new IslandItem("preview:torch");
        torch.kind = IslandItem.Kind.EVENT;
        torch.title = activity.getString(R.string.island_flashlight);
        torch.icon = GlyphIcon.of(GlyphIcon.Kind.TORCH);
        torch.accent = 0xFFFFD60A;
        torch.torchControls = true;
        torch.torchOn = true;
        torch.sliderValue = .6f;
        torch.sliderSteps = 5;
        torch.sliderChange = value -> { };
        torch.sliderTrailing = value -> Math.round(value * 100) + "%";
        torch.trailing = IslandItem.Trailing.TEXT;
        torch.trailingText = "60%";
        torch.actions.add(new IslandItem.Action(activity.getString(R.string.island_turn_off), null, null, () -> { }, false));
        samples.add(torch);
    }

    private static Bitmap albumArt() {
        Bitmap bitmap = Bitmap.createBitmap(160, 160, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        paint.setShader(new LinearGradient(0, 0, 160, 160, 0xFFE5558C, 0xFF3A2D8F, Shader.TileMode.CLAMP));
        new Canvas(bitmap).drawRect(0, 0, 160, 160, paint);
        return bitmap;
    }

    private static int[] pixelsOf(Bitmap bitmap) {
        int[] pixels = new int[16];
        for (int i = 0; i < pixels.length; i++) {
            pixels[i] = bitmap.getPixel(10 + (i % 4) * 40, 10 + (i / 4) * 40);
        }
        return pixels;
    }

    static final int RING = 0, CHARGING = 1, MUSIC = 2, TORCH = 3, KEEP = -1;

    /** Re-reads the saved settings and plays {@code sample} (or the current one for KEEP) again from the start. */
    void refresh(int sample) {
        if (sample >= 0 && sample < samples.size()) {
            shown = sample;
            holding = true;
        }
        ModuleSettings.configurePreview(prefs);
        island.collapse();
        island.setItems(ModuleSettings.iMode() ? new ArrayList<>(samples) : Collections.singletonList(samples.get(shown)));
        next = shown;
        removeCallbacks(cycle);
        if (running) postDelayed(cycle, 350);
    }

    void start() {
        running = true;
        holding = false;
        refresh(KEEP);
    }

    void stop() {
        running = false;
        removeCallbacks(cycle);
    }

    @Override protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        island.setGeometry(w, w / 2f, ui.dp(24), ui.dp(14), false);
        island.setHoleTextPadding(ModuleSettings.holeTextPaddingDp());
    }

    @Override protected void onDetachedFromWindow() {
        stop();
        super.onDetachedFromWindow();
    }

    @Override public boolean onInterceptTouchEvent(MotionEvent event) {
        if (event.getActionMasked() == MotionEvent.ACTION_UP && event.getEventTime() - event.getDownTime() < 180) {
            holding = false;
            removeCallbacks(cycle);
            post(cycle);
        }
        return false;
    }

    private final class Backdrops extends View implements BlurSink {
        private final List<Object> slots = new ArrayList<>();
        private CardPainter painter;
        Backdrops() { super(activity); }
        public boolean available() { return false; }
        public void beginFrame() { slots.clear(); }
        public void endFrame() { invalidate(); }
        public void place(Object key, RectF bounds, float radius, float alpha) { slots.add(key); }
        public void release(Object key) { slots.remove(key); }
        public void setPainter(CardPainter painter) { this.painter = painter; }
        @Override protected void onDraw(Canvas canvas) {
            if (painter != null) for (Object key : slots) painter.paintCard(key, canvas, 0, 0);
        }
    }
}
