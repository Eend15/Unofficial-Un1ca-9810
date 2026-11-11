package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
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

    /** The switch and, once it is on, the radius slider; the preview above follows the slider while it moves. */
    void addTo(LinearLayout group) {
        Switch custom = activity.toggle(group, R.string.card_roundness_custom,
                R.string.card_roundness_summary, ModuleSettings.KEY_CUSTOM_CARD_ROUNDNESS, false);
        OneUi.listen(custom, enabled -> activity.refresh());
        if (!custom.isChecked()) return;
        int initial = Math.max(0, Math.min(48, prefs.getInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP, 28)));
        LinearLayout sliderBox = new LinearLayout(activity);
        sliderBox.setOrientation(LinearLayout.VERTICAL);
        sliderBox.setTag(activity.getString(R.string.card_roundness));
        sliderBox.setPadding(ui.dp(22), ui.dp(14), ui.dp(22), ui.dp(8));
        TextView value = ui.text(activity.getString(R.string.card_corner_radius_format, initial), 17, ui.textColor);
        sliderBox.addView(value);
        SeekBar slider = new SeekBar(activity);
        slider.setMax(48); slider.setProgress(initial);
        slider.setContentDescription(activity.getString(R.string.card_roundness));
        sliderBox.addView(slider, new LinearLayout.LayoutParams(-1, ui.dp(48)));
        group.addView(sliderBox);
        slider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            boolean tracking;
            public void onStartTrackingTouch(SeekBar bar) { tracking = true; }
            public void onProgressChanged(SeekBar bar, int amount, boolean fromUser) {
                value.setText(activity.getString(R.string.card_corner_radius_format, amount));
                if (fromUser) save(amount);
                if (fromUser && !tracking) activity.refreshPreview(LivePreview.MUSIC);
            }
            public void onStopTrackingTouch(SeekBar bar) { tracking = false; save(bar.getProgress()); activity.refreshPreview(LivePreview.MUSIC); }
            private void save(int amount) {
                prefs.edit().putInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP, amount).apply();
                ModuleSettings.configurePreview(prefs);
            }
        });
    }
}
