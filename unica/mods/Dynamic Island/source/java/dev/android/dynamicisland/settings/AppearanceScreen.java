package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.graphics.Colors;
import java.util.Locale;

/** Presets for quick choices, a real card preview, and a cancellable custom-colour editor. */
final class AppearanceScreen {
    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;

    AppearanceScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity = activity;
        this.ui = ui;
        this.prefs = prefs;
    }

    private int selected() { return prefs.getInt(ModuleSettings.KEY_ACCENT_COLOR, ModuleSettings.DEFAULT_ACCENT); }

    void open() {
        LinearLayout page = activity.page();
        activity.subPage(activity.getString(R.string.accent_page));
        LinearLayout mode = ui.card(page);
        boolean enabled = prefs.getBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, false);
        activity.choice(mode, R.string.accent_enabled, new int[]{R.string.ui_default, R.string.ui_custom}, enabled ? 1 : 0,
                selected -> prefs.edit().putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, selected == 1).apply());
        if (enabled) {
            ui.category(page, activity.getString(R.string.accent_presets));
            LinearLayout choices = ui.card(page);
            LinearLayout palette = new LinearLayout(activity);
            palette.setOrientation(LinearLayout.VERTICAL);
            choices.addView(palette);
            LinearLayout swatches = null;

            int[] colours = {0xFF3E91FF, 0xFF34C759, 0xFFFF9F0A, 0xFFFF6482, 0xFFBF75FF, 0xFF48C9BB};
            int[] names = {R.string.accent_blue, R.string.accent_green, R.string.accent_orange,
                    R.string.accent_pink, R.string.accent_purple, R.string.accent_teal};
            for (int i = 0; i < colours.length; i++) {
                if (i % 3 == 0) {
                    swatches = new LinearLayout(activity);
                    swatches.setGravity(Gravity.CENTER);
                    swatches.setPadding(ui.dp(16), ui.dp(10), ui.dp(16), ui.dp(10));
                    palette.addView(swatches, new LinearLayout.LayoutParams(-1, -2));
                }
                int colour = colours[i];
                TextView swatch = ui.text(selected() == colour ? "✓" : "", 22, Color.BLACK);
                swatch.setGravity(Gravity.CENTER);
                swatch.setContentDescription(activity.getString(names[i]));
                swatch.setBackground(ui.round(colour, ui.dp(24)));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ui.dp(48), 1);
                lp.setMargins(ui.dp(3), 0, ui.dp(3), 0);
                swatches.addView(swatch, lp);
                swatch.setOnClickListener(v -> save(colour));
            }
            ui.valueRow(choices, activity.getString(R.string.accent_custom), hex(selected()), this::edit);
        }
        LinearLayout example = ui.card(page);
        example.addView(new Preview(enabled ? selected() : ModuleSettings.DEFAULT_ACCENT), new LinearLayout.LayoutParams(-1, ui.dp(164)));
        ui.note(page, activity.getString(R.string.accent_note));
        LinearLayout reset = ui.card(page);
        ui.actionRow(reset, activity.getString(R.string.accent_reset), activity.getString(R.string.accent_reset_desc), () -> {
            prefs.edit().putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, false)
                    .remove(ModuleSettings.KEY_ACCENT_COLOR).apply();
            activity.refresh();
        });
    }

    private void save(int colour) {
        prefs.edit().putInt(ModuleSettings.KEY_ACCENT_COLOR, colour).apply();
        activity.refresh();
    }

    static Integer parse(String text) {
        String value = text == null ? "" : text.trim();
        if (value.startsWith("#")) value = value.substring(1);
        if (!value.matches("[0-9a-fA-F]{6}")) return null;
        return (int) (Long.parseLong(value, 16) | 0xFF000000L);
    }

    private static String hex(int colour) { return String.format(Locale.ROOT, "#%06X", colour & 0xFFFFFF); }

    private void edit() {
        Preview preview = new Preview(selected());
        ColourEditor.show(activity, ui, selected(), preview, colour -> {
            preview.colour = colour;
            preview.invalidate();
        }, this::save);
    }

    private final class Preview extends View {
        int colour;
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF rect = new RectF();
        Preview(int colour) {
            super(activity);
            this.colour = colour;
            setContentDescription(activity.getString(R.string.accent_preview_title));
        }
        @Override protected void onDraw(Canvas canvas) {
            float d = getResources().getDisplayMetrics().density;
            canvas.save();
            canvas.scale(d, d);
            float w = getWidth() / d;
            paint.setColor(Colors.CARD_SOLID);
            rect.set(12, 8, w - 12, getHeight() / d - 8);
            canvas.drawRoundRect(rect, 24, 24, paint);
            paint.setColor(Color.WHITE);
            paint.setTextSize(16);
            canvas.drawText(activity.getString(R.string.accent_preview_title) + " · 65%", 28, 40, paint);
            paint.setColor(Colors.TRACK);
            rect.set(28, 58, w - 28, 64);
            canvas.drawRoundRect(rect, 3, 3, paint);
            int visible = Colors.readableOnBlack(colour);
            paint.setColor(visible);
            rect.right = 28 + (w - 56) * 0.65f;
            canvas.drawRoundRect(rect, 3, 3, paint);
            paint.setColor(Colors.withAlpha(visible, 0.18f));
            rect.set(28, 82, w - 28, 118);
            canvas.drawRoundRect(rect, 18, 18, paint);
            paint.setColor(Color.WHITE);
            paint.setTextSize(14);
            paint.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(activity.getString(R.string.accent_preview_button), w / 2, 105, paint);
            paint.setTextAlign(Paint.Align.LEFT);
            canvas.restore();
        }
    }
}
