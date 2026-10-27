package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.*;
import java.util.ArrayList;
import java.util.List;

/** The production renderer runs in an inert local host; no notifications or System UI hooks are started. */
final class AnimationScreen {
    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;
    private Preview preview;
    AnimationScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity = activity; this.ui = ui; this.prefs = prefs;
    }
    void open() {
        activity.subPage(activity.getString(R.string.anim_title));
        ModuleSettings.configurePreview(prefs);
        LinearLayout card = ui.card(activity.page());
        preview = new Preview();
        card.addView(preview, new LinearLayout.LayoutParams(-1, ui.dp(280)));
        ui.actionRow(card, activity.getString(R.string.ui_replay), "", () -> preview.replay());
        LinearLayout choices = ui.card(activity.page());
        activity.choice(choices, R.string.anim_title, new int[]{R.string.anim_new, R.string.anim_legacy},
                prefs.getBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, false) ? 1 : 0,
                selected -> prefs.edit().putBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, selected == 1).apply());
        ui.note(activity.page(), activity.getString(R.string.ui_animation_preview));
    }
    void stop() { if (preview != null) preview.stop(); }

    private final class Preview extends FrameLayout {
        private final IslandView island;
        private final IslandItem item = new IslandItem("settings-preview");
        private boolean stopped;
        private final Runnable cycle = new Runnable() {
            @Override public void run() {
                if (stopped || !isAttachedToWindow()) return;
                island.peek(item, 1600);
                postDelayed(this, 4000);
            }
        };
        Preview() {
            super(activity);
            setClipChildren(true);
            Backdrops backdrops = new Backdrops();
            addView(backdrops, new FrameLayout.LayoutParams(-1, -1));
            island = new IslandView(activity, IslandHost.NONE);
            island.setHapticFeedbackEnabled(false);
            island.setBlurSink(backdrops);
            item.title = activity.getString(R.string.app_name);
            item.subtitle = activity.getString(R.string.ui_animation_sample);
            item.trailing = IslandItem.Trailing.TEXT;
            item.trailingText = "12:34";
            item.accent = ModuleSettings.DEFAULT_ACCENT;
            addView(island, new FrameLayout.LayoutParams(-1, -1));
        }
        @Override protected void onSizeChanged(int w, int h, int oldw, int oldh) {
            super.onSizeChanged(w, h, oldw, oldh);
            island.setGeometry(w, w / 2f, ui.dp(36), ui.dp(20), false);
            island.setHoleTextPadding(ModuleSettings.holeTextPaddingDp());
            island.setItems(java.util.Collections.singletonList(item));
        }
        @Override protected void onAttachedToWindow() { super.onAttachedToWindow(); stopped = false; postDelayed(cycle, 650); }
        @Override protected void onDetachedFromWindow() { stop(); super.onDetachedFromWindow(); }
        void stop() { stopped = true; removeCallbacks(cycle); }
        void replay() { removeCallbacks(cycle); island.collapse(); stopped = false; postDelayed(cycle, 650); }

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
}
