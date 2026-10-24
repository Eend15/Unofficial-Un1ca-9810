package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioButton;
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
        LinearLayout page = activity.page();
        activity.subPage(activity.getString(R.string.pos_title));

        ui.note(page, activity.getString(R.string.pos_live));
        live.clear();
        handler.removeCallbacks(heartbeat);
        running = true;
        heartbeat.run(); // the real island shows a sample and follows every change below

        ui.category(page, activity.getString(R.string.pos_where));
        LinearLayout where = ui.card(page);
        int current = anchor();
        choice(where, R.string.pos_auto, R.string.pos_auto_desc, current == ModuleSettings.ANCHOR_AUTO).setOnClickListener(v -> pick(ModuleSettings.ANCHOR_AUTO));
        choice(where, R.string.pos_center, R.string.pos_center_desc, current == ModuleSettings.ANCHOR_CENTER).setOnClickListener(v -> pick(ModuleSettings.ANCHOR_CENTER));
        choice(where, R.string.pos_left, R.string.pos_left_desc, current == ModuleSettings.ANCHOR_LEFT).setOnClickListener(v -> pick(ModuleSettings.ANCHOR_LEFT));
        choice(where, R.string.pos_right, R.string.pos_right_desc, current == ModuleSettings.ANCHOR_RIGHT).setOnClickListener(v -> pick(ModuleSettings.ANCHOR_RIGHT));

        ui.category(page, activity.getString(R.string.pos_shift));
        LinearLayout shift = ui.card(page);
        slider(shift, R.string.pos_shift_x, -ModuleSettings.PILL_X_MAX_DP, ModuleSettings.PILL_X_MAX_DP, ModuleSettings.KEY_PILL_X_DP, 0);
        slider(shift, R.string.pos_shift_y, ModuleSettings.PILL_Y_MIN_DP, ModuleSettings.PILL_Y_MAX_DP, ModuleSettings.KEY_PILL_Y_DP, 0);

        ui.category(page, activity.getString(R.string.size_title));
        LinearLayout sizing = ui.card(page);
        slider(sizing, R.string.size_height, ModuleSettings.PILL_H_MIN_PCT, ModuleSettings.PILL_H_MAX_PCT, ModuleSettings.KEY_PILL_H_PCT, 0);
        slider(sizing, R.string.size_min, 0, ModuleSettings.PILL_MIN_W_MAX_DP, ModuleSettings.KEY_PILL_MIN_W_DP, 0);
        slider(sizing, R.string.size_max, 0, ModuleSettings.PILL_MAX_W_MAX_DP, ModuleSettings.KEY_PILL_MAX_W_DP, 0);
        ui.switchRow(sizing, activity.getString(R.string.size_keep), activity.getString(R.string.size_keep_sum),
                prefs.getBoolean(ModuleSettings.KEY_PILL_KEEP_WIDTH, false), on -> {
                    prefs.edit().putBoolean(ModuleSettings.KEY_PILL_KEEP_WIDTH, on).apply();
                    send(true);
                });
        ui.note(page, activity.getString(R.string.size_note));

        ui.category(page, activity.getString(R.string.hole_title));
        ui.note(page, activity.getString(R.string.hole_note));
        LinearLayout hole = ui.card(page);
        int holeNow = holeMode();
        choice(hole, R.string.hole_auto, R.string.hole_auto_desc, holeNow == ModuleSettings.HOLE_AUTO).setOnClickListener(v -> pickHole(ModuleSettings.HOLE_AUTO));
        choice(hole, R.string.hole_manual, R.string.hole_manual_desc, holeNow == ModuleSettings.HOLE_MANUAL).setOnClickListener(v -> pickHole(ModuleSettings.HOLE_MANUAL));
        choice(hole, R.string.hole_none, R.string.hole_none_desc, holeNow == ModuleSettings.HOLE_NONE).setOnClickListener(v -> pickHole(ModuleSettings.HOLE_NONE));
        if (holeNow == ModuleSettings.HOLE_MANUAL) {
            LinearLayout holeSize = ui.card(page);
            slider(holeSize, R.string.hole_size, ModuleSettings.HOLE_D_MIN_DP, ModuleSettings.HOLE_D_MAX_DP, ModuleSettings.KEY_HOLE_D_DP, ModuleSettings.HOLE_D_DEFAULT_DP);
            slider(holeSize, R.string.hole_x, -ModuleSettings.HOLE_X_MAX_DP, ModuleSettings.HOLE_X_MAX_DP, ModuleSettings.KEY_HOLE_X_DP, 0);
            slider(holeSize, R.string.hole_y, ModuleSettings.HOLE_Y_MIN_DP, ModuleSettings.HOLE_Y_MAX_DP, ModuleSettings.KEY_HOLE_Y_DP, 0);
        }

        LinearLayout reset = ui.card(page);
        ui.actionRow(reset, activity.getString(R.string.pos_reset), activity.getString(R.string.pos_reset_sum), () -> {
            prefs.edit().putInt(ModuleSettings.KEY_PILL_ANCHOR, ModuleSettings.ANCHOR_AUTO)
                    .putInt(ModuleSettings.KEY_PILL_X_DP, 0).putInt(ModuleSettings.KEY_PILL_Y_DP, 0)
                    .putInt(ModuleSettings.KEY_HOLE_MODE, ModuleSettings.HOLE_AUTO).putInt(ModuleSettings.KEY_HOLE_D_DP, ModuleSettings.HOLE_D_DEFAULT_DP)
                    .putInt(ModuleSettings.KEY_HOLE_X_DP, 0).putInt(ModuleSettings.KEY_HOLE_Y_DP, 0)
                    .putInt(ModuleSettings.KEY_PILL_H_PCT, 0).putInt(ModuleSettings.KEY_PILL_MIN_W_DP, 0)
                    .putInt(ModuleSettings.KEY_PILL_MAX_W_DP, 0).putBoolean(ModuleSettings.KEY_PILL_KEEP_WIDTH, false).apply();
            rebuild();
        });
        ui.note(page, activity.getString(R.string.pos_note));
    }

    private void pick(int anchor) {
        if (anchor() != anchor) {
            prefs.edit().putInt(ModuleSettings.KEY_PILL_ANCHOR, anchor).apply();
            send(true);
            rebuild();
        }
    }

    private int holeMode() {
        return prefs.getInt(ModuleSettings.KEY_HOLE_MODE, ModuleSettings.HOLE_AUTO);
    }

    private void pickHole(int mode) {
        if (holeMode() != mode) {
            prefs.edit().putInt(ModuleSettings.KEY_HOLE_MODE, mode).apply();
            send(true);
            rebuild();
        }
    }

    private void rebuild() {
        activity.page().removeAllViews();
        open();
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
        int value = prefs.getInt(key, def);
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
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(ui.dp(22), ui.dp(16), ui.dp(22), ui.dp(10));
        LinearLayout top = new LinearLayout(activity);
        top.setGravity(Gravity.CENTER_VERTICAL);
        top.addView(ui.text(activity.getString(title), 18, ui.textColor), new LinearLayout.LayoutParams(0, -2, 1));
        TextView shown = ui.text(describe(key, value), 15, ui.accent);
        top.addView(shown);
        box.addView(top, new LinearLayout.LayoutParams(-1, -2));
        SeekBar bar = new SeekBar(activity);
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
        box.addView(bar, new LinearLayout.LayoutParams(-1, ui.dp(40)));
        group.addView(box, new LinearLayout.LayoutParams(-1, -2));
    }

    /** Keeps the narrowest at or below the widest (when that is set), and the widest at or above the narrowest. */
    private int limitWidth(String key, int dp) {
        if (ModuleSettings.KEY_PILL_MIN_W_DP.equals(key)) {
            int widest = live.containsKey(ModuleSettings.KEY_PILL_MAX_W_DP) ? live.get(ModuleSettings.KEY_PILL_MAX_W_DP) : 0;
            return widest >= ModuleSettings.PILL_MAX_W_MIN_DP ? Math.min(dp, widest) : dp;
        }
        if (ModuleSettings.KEY_PILL_MAX_W_DP.equals(key) && dp >= ModuleSettings.PILL_MAX_W_MIN_DP) {
            int narrowest = live.containsKey(ModuleSettings.KEY_PILL_MIN_W_DP) ? live.get(ModuleSettings.KEY_PILL_MIN_W_DP) : 0;
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

    private LinearLayout choice(LinearLayout group, int title, int summary, boolean checked) {
        if (group.getChildCount() > 0) {
            View line = new View(activity);
            line.setBackgroundColor(ui.divider);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, Math.max(1, ui.dp(1) / 2));
            lp.leftMargin = ui.dp(70);
            lp.rightMargin = ui.dp(22);
            group.addView(line, lp);
        }
        LinearLayout box = new LinearLayout(activity);
        box.setGravity(Gravity.TOP);
        box.setPadding(ui.dp(22), ui.dp(16), ui.dp(22), ui.dp(16));
        RadioButton radio = new RadioButton(activity);
        radio.setChecked(checked);
        radio.setClickable(false);
        radio.setFocusable(false);
        radio.setButtonTintList(ColorStateList.valueOf(checked ? ui.accent : ui.muted));
        box.addView(radio, new LinearLayout.LayoutParams(ui.dp(40), ui.dp(40)));
        LinearLayout words = new LinearLayout(activity);
        words.setOrientation(LinearLayout.VERTICAL);
        words.setPadding(ui.dp(14), 0, 0, 0);
        words.addView(ui.text(activity.getString(title), 18, ui.textColor));
        TextView detail = ui.text(activity.getString(summary), 14, ui.muted);
        detail.setPadding(0, ui.dp(4), 0, 0);
        words.addView(detail);
        box.addView(words, new LinearLayout.LayoutParams(0, -2, 1));
        group.addView(box, new LinearLayout.LayoutParams(-1, -2));
        return box;
    }
}
