package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import dev.android.dynamicisland.R;

/** Optional card rounding; never changes the existing shape until explicitly enabled. */
final class CardShapeScreen {
    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;

    CardShapeScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity = activity; this.ui = ui; this.prefs = prefs;
    }

    void open() {
        activity.subPage(activity.getString(R.string.card_roundness));
        LinearLayout controls = ui.card(activity.page());
        Switch custom = activity.toggle(controls, R.string.card_roundness_custom,
                R.string.card_roundness_summary, ModuleSettings.KEY_CUSTOM_CARD_ROUNDNESS, false);
        OneUi.listen(custom, enabled -> activity.refresh());
        ui.note(activity.page(), activity.getString(R.string.card_roundness_desc));
        if (!custom.isChecked()) return;
        int initial = Math.max(0, Math.min(48, prefs.getInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP, 28)));
        LinearLayout example = ui.card(activity.page());
        Preview preview = new Preview(initial);
        example.addView(preview, new LinearLayout.LayoutParams(-1, ui.dp(172)));
        LinearLayout sliderBox = ui.card(activity.page());
        sliderBox.setTag(activity.getString(R.string.card_roundness));
        sliderBox.setPadding(ui.dp(22), ui.dp(16), ui.dp(22), ui.dp(12));
        TextView value = ui.text(activity.getString(R.string.card_corner_radius_format, initial), 17, ui.textColor);
        sliderBox.addView(value);
        SeekBar slider = new SeekBar(activity);
        slider.setMax(48); slider.setProgress(initial);
        slider.setContentDescription(activity.getString(R.string.card_roundness));
        sliderBox.addView(slider, new LinearLayout.LayoutParams(-1, ui.dp(48)));
        slider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            boolean tracking;
            public void onStartTrackingTouch(SeekBar bar) { tracking = true; }
            public void onProgressChanged(SeekBar bar, int amount, boolean fromUser) {
                preview.amount = amount; preview.invalidate();
                value.setText(activity.getString(R.string.card_corner_radius_format, amount));
                if (fromUser && !tracking) save(amount);
            }
            public void onStopTrackingTouch(SeekBar bar) { tracking = false; save(bar.getProgress()); }
            private void save(int amount) { prefs.edit().putInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP, amount).apply(); }
        });
    }

    private final class Preview extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        int amount;
        Preview(int amount) { super(activity); this.amount = amount; setContentDescription(activity.getString(R.string.card_roundness)); }
        @Override protected void onDraw(Canvas canvas) {
            float left = ui.dp(18), right = getWidth() - left;
            for (int row = 0; row < 2; row++) {
                float top = ui.dp(18 + row * 78), height = ui.dp(row == 0 ? 60 : 58);
                float radius = Math.min(height / 2f, ui.dp(amount));
                paint.setStyle(Paint.Style.FILL); paint.setColor(0xFF101012);
                canvas.drawRoundRect(left, top, right, top + height, radius, radius, paint);
                paint.setStyle(Paint.Style.STROKE); paint.setStrokeWidth(ui.dp(1)); paint.setColor(0xFF55555C);
                canvas.drawRoundRect(left, top, right, top + height, radius, radius, paint);
                paint.setStyle(Paint.Style.FILL); paint.setColor(row == 0 ? 0xFFFF5B62 : 0xFFD4C8FF);
                for (int i = 0; i < 9; i++) {
                    float x = left + ui.dp(23 + i * 4), h = ui.dp(5 + (i % 4) * 3);
                    canvas.drawRoundRect(x, top + height / 2 - h / 2, x + ui.dp(2), top + height / 2 + h / 2, ui.dp(1), ui.dp(1), paint);
                }
                paint.setTextSize(ui.dp(22));
                Paint.FontMetrics fm = paint.getFontMetrics();
                canvas.drawText(row == 0 ? "0:18" : "0:27.45", left + ui.dp(76), top + height / 2 - (fm.ascent + fm.descent) / 2, paint);
            }
        }
    }
}
