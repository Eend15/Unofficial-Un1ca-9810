package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import dev.android.dynamicisland.R;

/**
 * The page where the user moves the island: where it sits (on the camera hole, in the middle, left or right of the
 * status bar) and how far it is shifted sideways and up or down from there. The island on the real status bar moves
 * while the sliders are dragged: the page tells System UI each position, and System UI shows a sample item to move.
 * Main thread only.
 */
final class PositionScreen {
    private static final long HEARTBEAT_MS = 2000;
    private static final long PREVIEW_FILE_MS = 7000;

    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;
    private final android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
    private final Runnable heartbeat = new Runnable() {
        @Override
        public void run() {
            send(true);
            handler.postDelayed(this, HEARTBEAT_MS);
        }
    };
    /** Value the sliders show now; saved when the finger lets go. */
    private boolean running;
    private boolean calibrating;
    /** While the widest is being set the sample holds a long text, so the pill grows to that width; else a short one. */
    private boolean sampleLong;
    /** The values on the page right now, by settings key; the finger changes them before they are saved. */
    private final java.util.Map<String, Integer> live = new java.util.HashMap<>();

    PositionScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity = activity;
        this.ui = ui;
        this.prefs = prefs;
    }

    private int anchor() {
        return prefs.getInt(ModuleSettings.KEY_PILL_ANCHOR, ModuleSettings.ANCHOR_AUTO);
    }

    private int value(String key, int def) {
        Integer now = live.get(key);
        return now != null ? now : prefs.getInt(key, def);
    }

    void open() {
        calibrating = false;
        begin(R.string.pos_title);
        LinearLayout page = activity.page();
        LinearLayout where = ui.card(page);
        activity.choice(where, R.string.pos_where, new int[]{R.string.pos_auto, R.string.pos_center, R.string.pos_left, R.string.pos_right},
                Math.max(0, Math.min(3, anchor())), selected -> prefs.edit().putInt(ModuleSettings.KEY_PILL_ANCHOR, selected).apply());
        slider(where, R.string.pos_shift_x, -ModuleSettings.PILL_X_MAX_DP, ModuleSettings.PILL_X_MAX_DP, ModuleSettings.KEY_PILL_X_DP, 0);
        slider(where, R.string.pos_shift_y, ModuleSettings.PILL_Y_MIN_DP, ModuleSettings.PILL_Y_MAX_DP, ModuleSettings.KEY_PILL_Y_DP, 0);
        ui.actionRow(where, activity.getString(R.string.pos_reset), activity.getString(R.string.ui_reset_position_summary), () -> { resetPosition(); rebuild(); });
        ui.category(page, activity.getString(R.string.size_title));
        LinearLayout sizing = ui.card(page);
        slider(sizing, R.string.size_height, ModuleSettings.PILL_H_MIN_PCT, ModuleSettings.PILL_H_MAX_PCT, ModuleSettings.KEY_PILL_H_PCT, 0);
        width(sizing, R.string.size_min, ModuleSettings.KEY_PILL_MIN_W_DP, 64, 64);
        width(sizing, R.string.size_max, ModuleSettings.KEY_PILL_MAX_W_DP, 100, Math.min(300, screenLimit()));
        ui.switchRow(sizing, activity.getString(R.string.size_keep), activity.getString(R.string.size_keep_sum),
                prefs.getBoolean(ModuleSettings.KEY_PILL_KEEP_WIDTH, false), on -> {
                    prefs.edit().putBoolean(ModuleSettings.KEY_PILL_KEEP_WIDTH, on).apply(); send(true);
                });
        ui.actionRow(sizing, activity.getString(R.string.ui_reset_size), activity.getString(R.string.ui_reset_size_summary), () -> { resetSize(); rebuild(); });
        ui.details(page, activity.getString(R.string.ui_details), activity.getString(R.string.size_note));
    }

    void calibration() {
        calibrating = true;
        begin(R.string.ui_camera_calibration);
        LinearLayout page = activity.page();
        ui.note(page, activity.getString(R.string.hole_note));
        LinearLayout hole = ui.card(page);
        activity.choice(hole, R.string.hole_title, new int[]{R.string.hole_auto, R.string.hole_manual, R.string.hole_none},
                Math.max(0, Math.min(2, holeMode())), selected -> prefs.edit().putInt(ModuleSettings.KEY_HOLE_MODE, selected).apply());
        if (holeMode() == ModuleSettings.HOLE_MANUAL) {
            slider(hole, R.string.hole_size, ModuleSettings.HOLE_D_MIN_DP, ModuleSettings.HOLE_D_MAX_DP, ModuleSettings.KEY_HOLE_D_DP, ModuleSettings.HOLE_D_DEFAULT_DP);
            slider(hole, R.string.hole_x, -ModuleSettings.HOLE_X_MAX_DP, ModuleSettings.HOLE_X_MAX_DP, ModuleSettings.KEY_HOLE_X_DP, 0);
            slider(hole, R.string.hole_y, ModuleSettings.HOLE_Y_MIN_DP, ModuleSettings.HOLE_Y_MAX_DP, ModuleSettings.KEY_HOLE_Y_DP, 0);
        }
        if (holeMode() != ModuleSettings.HOLE_NONE) {
            slider(hole, R.string.hole_text_padding, 0, ModuleSettings.HOLE_TEXT_PADDING_MAX_DP,
                    ModuleSettings.KEY_HOLE_TEXT_PADDING_DP, 0);
            ui.note(page, activity.getString(R.string.hole_text_padding_desc));
        }
        ui.actionRow(hole, activity.getString(R.string.ui_reset_calibration), activity.getString(R.string.ui_reset_calibration_summary), () -> { resetCalibration(); rebuild(); });
    }

    private void begin(int title) {
        activity.subPage(activity.getString(title));
        ui.note(activity.page(), activity.getString(R.string.pos_live));
        live.clear();
        handler.removeCallbacks(heartbeat);
        running = true;
        heartbeat.run();
    }

    int screenLimit() {
        return Math.max(100, Math.min(ModuleSettings.PILL_MAX_W_MAX_DP,
                (int) (activity.getResources().getDisplayMetrics().widthPixels / activity.getResources().getDisplayMetrics().density * .96f)));
    }

    private void width(LinearLayout group, int title, String key, int minimum, int initial) {
        int stored = prefs.getInt(key, 0);
        boolean custom = stored >= (key.equals(ModuleSettings.KEY_PILL_MIN_W_DP) ? 1 : 100);
        activity.choice(group, title, new int[]{R.string.ui_auto, R.string.ui_custom}, custom ? 1 : 0,
                selected -> setWidthMode(key, selected == 1, minimum, initial));
        if (custom) slider(group, R.string.ui_precise_value, minimum, screenLimit(), key, initial);
    }

    void setWidthMode(String key, boolean custom, int minimum, int initial) {
        int chosen = Math.max(minimum, Math.min(screenLimit(), initial));
        if (custom) chosen = limitWidth(key, chosen);
        prefs.edit().putInt(key, custom ? chosen : 0).apply();
    }

    void resetPosition() {
        prefs.edit().remove(ModuleSettings.KEY_PILL_ANCHOR).remove(ModuleSettings.KEY_PILL_X_DP).remove(ModuleSettings.KEY_PILL_Y_DP).apply();
    }
    void resetSize() {
        prefs.edit().remove(ModuleSettings.KEY_PILL_H_PCT).remove(ModuleSettings.KEY_PILL_MIN_W_DP)
                .remove(ModuleSettings.KEY_PILL_MAX_W_DP).remove(ModuleSettings.KEY_PILL_KEEP_WIDTH).apply();
    }
    void resetCalibration() {
        prefs.edit().remove(ModuleSettings.KEY_HOLE_MODE).remove(ModuleSettings.KEY_HOLE_D_DP)
                .remove(ModuleSettings.KEY_HOLE_X_DP).remove(ModuleSettings.KEY_HOLE_Y_DP)
                .remove(ModuleSettings.KEY_HOLE_TEXT_PADDING_DP).apply();
    }

    private int holeMode() {
        return prefs.getInt(ModuleSettings.KEY_HOLE_MODE, ModuleSettings.HOLE_AUTO);
    }

    private void rebuild() {
        activity.page().removeAllViews();
        if (calibrating) calibration(); else open();
    }

    /** Leaves the page: the real island goes back to the saved position and stops showing the sample. */
    void stop() {
        handler.removeCallbacks(heartbeat);
        if (running) {
            running = false;
            send(false);
        }
    }

    /** Tells System UI the position on screen now, so the island on the real status bar moves with the finger. */
    private void send(boolean active) {
        // the slower way as well: the settings file, which System UI reads every few seconds
        prefs.edit().putLong(ModuleSettings.KEY_PILL_PREVIEW_UNTIL, active ? System.currentTimeMillis() + PREVIEW_FILE_MS : 0L).apply();
        try {
            android.content.Intent intent = new android.content.Intent(ModuleSettings.ACTION_PILL_PREVIEW);
            intent.setPackage("com.android.systemui");
            intent.putExtra(ModuleSettings.KEY_PILL_ANCHOR, anchor());
            intent.putExtra(ModuleSettings.KEY_PILL_X_DP, value(ModuleSettings.KEY_PILL_X_DP, 0));
            intent.putExtra(ModuleSettings.KEY_PILL_Y_DP, value(ModuleSettings.KEY_PILL_Y_DP, 0));
            intent.putExtra(ModuleSettings.KEY_PILL_H_PCT, value(ModuleSettings.KEY_PILL_H_PCT, 0));
            intent.putExtra(ModuleSettings.KEY_PILL_MIN_W_DP, value(ModuleSettings.KEY_PILL_MIN_W_DP, 0));
            intent.putExtra(ModuleSettings.KEY_PILL_MAX_W_DP, value(ModuleSettings.KEY_PILL_MAX_W_DP, 0));
            intent.putExtra(ModuleSettings.KEY_PILL_KEEP_WIDTH, prefs.getBoolean(ModuleSettings.KEY_PILL_KEEP_WIDTH, false));
            intent.putExtra(ModuleSettings.KEY_HOLE_MODE, holeMode());
            intent.putExtra(ModuleSettings.KEY_HOLE_D_DP, value(ModuleSettings.KEY_HOLE_D_DP, ModuleSettings.HOLE_D_DEFAULT_DP));
            intent.putExtra(ModuleSettings.KEY_HOLE_X_DP, value(ModuleSettings.KEY_HOLE_X_DP, 0));
            intent.putExtra(ModuleSettings.KEY_HOLE_Y_DP, value(ModuleSettings.KEY_HOLE_Y_DP, 0));
            intent.putExtra(ModuleSettings.KEY_HOLE_TEXT_PADDING_DP, value(ModuleSettings.KEY_HOLE_TEXT_PADDING_DP, 0));
            intent.putExtra(ModuleSettings.EXTRA_SAMPLE_LONG, sampleLong);
            intent.putExtra(ModuleSettings.EXTRA_ACTIVE, active);
            // System UI only accepts it from this app, so the sender has to let it see who sent it (API 34)
            android.app.BroadcastOptions options = android.app.BroadcastOptions.makeBasic();
            options.setShareIdentityEnabled(true);
            activity.sendBroadcast(intent, null, options.toBundle());
        } catch (RuntimeException ignored) {
            // the saved settings still reach System UI within a few seconds
        }
    }

    /** A title with the value on the right and a seek bar under it; saved when the finger lets go. */
    private void slider(LinearLayout group, int title, int min, int max, String key, int def) {
        int value = Math.max(min, Math.min(max, prefs.getInt(key, def)));
        live.put(key, value);
        if (group.getChildCount() > 0) {
            View line = new View(activity);
            line.setBackgroundColor(ui.divider);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, Math.max(1, ui.dp(1) / 2));
            lp.leftMargin = ui.dp(22);
            lp.rightMargin = ui.dp(22);
            group.addView(line, lp);
        }
        LinearLayout box = new LinearLayout(activity);
        box.setTag(activity.getString(title));
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(ui.dp(22), ui.dp(16), ui.dp(22), ui.dp(10));
        LinearLayout top = new LinearLayout(activity);
        top.setGravity(Gravity.CENTER_VERTICAL);
        top.addView(ui.text(activity.getString(title), 18, ui.textColor), new LinearLayout.LayoutParams(0, -2, 1));
        TextView shown = ui.text(describe(key, value), 15, ui.accent);
        shown.setPadding(ui.dp(8), ui.dp(10), ui.dp(8), ui.dp(10));
        shown.setMinHeight(ui.dp(48));
        top.addView(shown);
        box.addView(top, new LinearLayout.LayoutParams(-1, -2));
        SeekBar bar = new SeekBar(activity);
        bar.setContentDescription(activity.getString(title));
        bar.setMax(max - min);
        bar.setProgress(value - min);
        bar.setProgressTintList(ColorStateList.valueOf(ui.accent));
        bar.setThumbTintList(ColorStateList.valueOf(ui.accent));
        bar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                int dp = progress + min;
                int limited = limitWidth(key, dp);
                if (limited != dp) {
                    dp = limited; // the narrowest can not pass the widest, nor the widest go below the narrowest
                    seekBar.setProgress(dp - min);
                    return; // setProgress calls this again with the limited value
                }
                if (fromUser) {
                    sampleLong = ModuleSettings.KEY_PILL_MAX_W_DP.equals(key);
                }
                shown.setText(describe(key, dp));
                live.put(key, dp);
                send(true);
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                prefs.edit().putInt(key, seekBar.getProgress() + min).apply();
            }
        });
        shown.setOnClickListener(v -> {
            android.widget.EditText input = new android.widget.EditText(activity);
            input.setInputType(android.text.InputType.TYPE_CLASS_NUMBER | android.text.InputType.TYPE_NUMBER_FLAG_SIGNED);
            input.setText(Integer.toString(bar.getProgress() + min));
            input.setSelectAllOnFocus(true);
            android.app.AlertDialog dialog = new android.app.AlertDialog.Builder(activity).setTitle(title)
                    .setMessage(activity.getString(R.string.ui_input_range, min, max)).setView(input)
                    .setNegativeButton(android.R.string.cancel, null).setPositiveButton(R.string.save, null).create();
            dialog.setOnShowListener(d -> dialog.getButton(android.app.AlertDialog.BUTTON_POSITIVE).setOnClickListener(button -> {
                try {
                    int number = Integer.parseInt(input.getText().toString().trim());
                    if (number < min || number > max || limitWidth(key, number) != number) throw new NumberFormatException();
                    bar.setProgress(number - min);
                    prefs.edit().putInt(key, number).apply();
                    dialog.dismiss();
                } catch (NumberFormatException invalid) { input.setError(activity.getString(R.string.ui_input_range, min, max)); }
            }));
            dialog.show();
        });
        LinearLayout adjustment = new LinearLayout(activity);
        adjustment.setGravity(Gravity.CENTER_VERTICAL);
        for (int direction : new int[]{-1, 1}) {
            TextView step = ui.text(direction < 0 ? "−" : "+", 24, ui.accent);
            step.setGravity(Gravity.CENTER);
            step.setContentDescription(activity.getString(direction < 0 ? R.string.ui_decrease : R.string.ui_increase));
            step.setOnClickListener(v -> {
                int next = Math.max(min, Math.min(max, limitWidth(key, bar.getProgress() + min + direction)));
                bar.setProgress(next - min);
                prefs.edit().putInt(key, next).apply();
            });
            adjustment.addView(step, new LinearLayout.LayoutParams(ui.dp(48), ui.dp(48)));
            if (direction < 0) adjustment.addView(bar, new LinearLayout.LayoutParams(0, ui.dp(48), 1));
        }
        box.addView(adjustment, new LinearLayout.LayoutParams(-1, -2));
        group.addView(box, new LinearLayout.LayoutParams(-1, -2));
    }

    /** Keeps the narrowest at or below the widest (when that is set), and the widest at or above the narrowest. */
    private int limitWidth(String key, int dp) {
        if (ModuleSettings.KEY_PILL_MIN_W_DP.equals(key)) {
            int widest = Math.min(screenLimit(), value(ModuleSettings.KEY_PILL_MAX_W_DP, 0));
            return widest >= ModuleSettings.PILL_MAX_W_MIN_DP ? Math.min(dp, widest) : dp;
        }
        if (ModuleSettings.KEY_PILL_MAX_W_DP.equals(key) && dp >= ModuleSettings.PILL_MAX_W_MIN_DP) {
            int narrowest = Math.min(screenLimit(), Math.max(64, value(ModuleSettings.KEY_PILL_MIN_W_DP, 0)));
            return Math.max(dp, narrowest);
        }
        return dp;
    }

    private String describe(String key, int value) {
        if (ModuleSettings.KEY_PILL_H_PCT.equals(key)) {
            return value == 0 ? activity.getString(R.string.size_normal) : (value > 0 ? "+" : "") + value + " %";
        }
        if (ModuleSettings.KEY_PILL_MIN_W_DP.equals(key) || ModuleSettings.KEY_PILL_MAX_W_DP.equals(key)) {
            boolean unset = value < (ModuleSettings.KEY_PILL_MAX_W_DP.equals(key) ? ModuleSettings.PILL_MAX_W_MIN_DP : 1);
            return unset ? activity.getString(R.string.size_auto) : value + " dp";
        }
        return value == 0 ? "0 dp" : (value > 0 ? "+" : "") + value + " dp";
    }

}
