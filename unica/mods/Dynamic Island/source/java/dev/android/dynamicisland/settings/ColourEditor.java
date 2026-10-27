package dev.android.dynamicisland.settings;

import android.app.AlertDialog;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import dev.android.dynamicisland.R;
import java.util.Locale;

/** Shared cancellable HSV/HEX editor; each caller supplies its own live visual preview. */
final class ColourEditor {
    private static String hex(int colour) { return String.format(Locale.ROOT, "#%06X", colour & 0xFFFFFF); }
    static void show(SettingsActivity activity, OneUi ui, int initial, View preview, java.util.function.IntConsumer update, java.util.function.IntConsumer save) {
        LinearLayout body = new LinearLayout(activity);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(ui.dp(20), ui.dp(8), ui.dp(20), ui.dp(8));
        body.addView(preview, new LinearLayout.LayoutParams(-1, ui.dp(140)));
        EditText hex = new EditText(activity);
        hex.setSingleLine(true);
        hex.setHint(activity.getString(R.string.accent_hex));
        hex.setContentDescription(activity.getString(R.string.accent_hex));
        hex.setText(hex(initial));
        body.addView(hex);
        float[] hsv = new float[3];
        Color.colorToHSV(initial, hsv);
        SeekBar[] sliders = new SeekBar[3];
        int[] labels = {R.string.accent_hue, R.string.accent_saturation, R.string.accent_brightness};
        boolean[] syncing = {false};
        for (int i = 0; i < 3; i++) {
            int axis = i;
            body.addView(ui.text(activity.getString(labels[i]), 15, ui.textColor));
            SeekBar slider = new SeekBar(activity);
            sliders[i] = slider;
            slider.setContentDescription(activity.getString(labels[i]));
            slider.setMax(i == 0 ? 359 : 100);
            slider.setProgress(Math.round(i == 0 ? hsv[i] : hsv[i] * 100));
            body.addView(slider, new LinearLayout.LayoutParams(-1, ui.dp(40)));
            slider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override public void onProgressChanged(SeekBar bar, int value, boolean fromUser) {
                    if (!fromUser || syncing[0]) return;
                    hsv[axis] = axis == 0 ? value : value / 100f;
                    int colour = Color.HSVToColor(hsv);
                    syncing[0] = true;
                    hex.setText(hex(colour));
                    hex.setError(null);
                    syncing[0] = false;
                    update.accept(colour);
                }
                @Override public void onStartTrackingTouch(SeekBar bar) { }
                @Override public void onStopTrackingTouch(SeekBar bar) { }
            });
        }
        hex.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                if (syncing[0]) return;
                Integer colour = AppearanceScreen.parse(s.toString());
                if (colour == null) return;
                Color.colorToHSV(colour, hsv);
                syncing[0] = true;
                for (int i = 0; i < 3; i++) sliders[i].setProgress(Math.round(i == 0 ? hsv[i] : hsv[i] * 100));
                syncing[0] = false;
                update.accept(colour);
            }
            @Override public void afterTextChanged(Editable value) { }
        });
        android.widget.ScrollView scroll = new android.widget.ScrollView(activity);
        scroll.addView(body);
        AlertDialog dialog = new AlertDialog.Builder(activity).setTitle(R.string.accent_custom).setView(scroll)
                .setNegativeButton(android.R.string.cancel, null).setPositiveButton(android.R.string.ok, null).create();
        dialog.show();
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            Integer colour = AppearanceScreen.parse(hex.getText().toString());
            if (colour == null) { hex.setError(activity.getString(R.string.accent_invalid)); return; }
            save.accept(colour);
            dialog.dismiss();
        });
    }

}
