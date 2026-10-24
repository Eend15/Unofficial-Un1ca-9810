package dev.android.dynamicisland.settings;

import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import dev.android.dynamicisland.R;

/**
 * The page where the user picks the island's animations: the smoothed ones of 0.1.4 (default) or the legacy ones of
 * 0.1.3 and before. Two small drawings show the difference, a radio list picks, and nothing changes until Apply.
 * Main thread only.
 */
final class AnimationScreen {
    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;
    /** The choice on screen; it is saved by Apply. */
    private boolean pendingLegacy;
    private boolean opened;

    AnimationScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity = activity;
        this.ui = ui;
        this.prefs = prefs;
    }

    private boolean savedLegacy() {
        return prefs.getBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, false);
    }

    /** Builds the page; the choice starts at what is saved. */
    void open() {
        if (!opened) {
            opened = true; // coming back from another app must not drop a choice that is not applied yet
            pendingLegacy = savedLegacy();
        }
        page();
    }

    private void page() {
        LinearLayout page = activity.page();
        activity.subPage(activity.getString(R.string.anim_title));

        LinearLayout previews = ui.card(page);
        LinearLayout row = new LinearLayout(activity);
        row.setGravity(Gravity.CENTER);
        row.setPadding(ui.dp(12), ui.dp(24), ui.dp(12), ui.dp(20));
        previews.addView(row, new LinearLayout.LayoutParams(-1, -2));
        row.addView(preview(false, R.string.anim_new), new LinearLayout.LayoutParams(0, -2, 1));
        row.addView(preview(true, R.string.anim_legacy), new LinearLayout.LayoutParams(0, -2, 1));

        ui.note(page, activity.getString(R.string.anim_pick));

        LinearLayout choices = ui.card(page);
        LinearLayout newRow = choice(choices, R.string.anim_new, R.string.anim_new_desc, !pendingLegacy);
        LinearLayout oldRow = choice(choices, R.string.anim_legacy, R.string.anim_legacy_desc, pendingLegacy);
        newRow.setOnClickListener(v -> select(false));
        oldRow.setOnClickListener(v -> select(true));

        TextView apply = ui.text(activity.getString(R.string.anim_apply), 17, 0xffffffff);
        apply.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        apply.setGravity(Gravity.CENTER);
        apply.setBackground(ui.round(ui.accent, ui.dp(28)));
        boolean changed = pendingLegacy != savedLegacy();
        apply.setAlpha(changed ? 1.0f : 0.4f);
        apply.setEnabled(changed);
        apply.setOnClickListener(v -> save());
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ui.dp(220), ui.dp(54));
        p.topMargin = ui.dp(28);
        p.gravity = Gravity.CENTER_HORIZONTAL;
        page.addView(apply, p);
        ui.note(page, activity.getString(R.string.anim_after));
    }

    private void select(boolean legacy) {
        if (pendingLegacy != legacy) {
            pendingLegacy = legacy;
            activity.page().removeAllViews();
            page();
        }
    }

    private void save() {
        prefs.edit().putBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, pendingLegacy).apply();
        Toast.makeText(activity, R.string.anim_applied, Toast.LENGTH_SHORT).show();
        activity.goBack();
    }

    /** One drawing with its name underneath. */
    private LinearLayout preview(boolean legacy, int label) {
        LinearLayout box = new LinearLayout(activity);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER_HORIZONTAL);
        box.addView(new Sketch(legacy), new LinearLayout.LayoutParams(ui.dp(120), ui.dp(170)));
        TextView name = ui.text(activity.getString(label), 17, ui.accent);
        name.setPadding(0, ui.dp(14), 0, 0);
        name.setGravity(Gravity.CENTER);
        box.addView(name, new LinearLayout.LayoutParams(-1, -2));
        return box;
    }

    /** A row with a radio button, a title and a description. */
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

    /**
     * A looping, slowed-down and exaggerated picture of what the two animations do: the pill opens into two cards and
     * closes again. In the new animation the first card is in front, every shape wears an outline and the pill grows
     * back while the cards fold in; in the legacy one the lower card is in front, there is no outline while the shapes
     * move, and the pill shrinks to a dot before it springs back at the very end.
     */
    private final class Sketch extends View {
        private static final long PERIOD_MS = 4800;
        private final boolean legacy;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF r = new RectF();
        private final RectF pillRect = new RectF();

        Sketch(boolean legacy) {
            super(activity);
            this.legacy = legacy;
        }

        private float clamp(float v) {
            return Math.max(0f, Math.min(1f, v));
        }

        private float easeOut(float t) {
            float u = 1f - clamp(t);
            return 1f - u * u * u;
        }

        private float easeOutBack(float t) {
            float u = clamp(t) - 1f;
            return 1f + 2.4f * u * u * u + 1.4f * u * u;
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth();
            float h = getHeight();
            float cycle = (android.os.SystemClock.uptimeMillis() % PERIOD_MS) / (float) PERIOD_MS;
            // idle, open, hold, close, idle
            float open = clamp((cycle - 0.12f) / 0.26f);
            float close = clamp((cycle - 0.62f) / 0.28f);

            paint.setStyle(Paint.Style.FILL);
            paint.setColor(ui.dark ? 0xff2a2a30 : 0xffe4e4ea);
            r.set(0, 0, w, h);
            c.drawRoundRect(r, w * 0.14f, w * 0.14f, paint);

            float pad = w * 0.1f;
            float pillH = h * 0.075f;
            float top = h * 0.07f;
            float firstTop = top + pillH + h * 0.04f;
            float secondTop = firstTop + h * 0.16f;
            float cardH = h * 0.2f;

            // how open each card is; the second one follows the first
            float openFirst = easeOut(open / 0.8f);
            float openSecond = easeOut((open - 0.2f) / 0.8f);
            float closeFirst = easeOut((close - 0.15f) / 0.85f);
            float closeSecond = easeOut(close / 0.85f);
            float first = openFirst * (1f - closeFirst);
            float second = openSecond * (1f - closeSecond);

            // the pill gathers while the cards are out
            float gather = 1f - 0.45f * openFirst;
            float factor;
            if (close <= 0f) {
                factor = gather;
            } else if (!legacy) {
                factor = 0.55f + 0.45f * easeOutBack(close / 0.6f);
            } else if (close < 0.65f) {
                factor = 0.55f - 0.35f * (close / 0.65f);
            } else {
                factor = 0.2f + 0.8f * easeOutBack((close - 0.65f) / 0.35f);
            }
            float pillW = w * 0.4f * factor;
            pillRect.set(w / 2f - pillW / 2f, top, w / 2f + pillW / 2f, top + pillH);

            if (legacy) {
                card(c, pad, firstTop, w - pad, cardH, first, 0xff1c1c20, 0xffffb02e);
                card(c, pad, secondTop, w - pad, cardH, second, 0xff000000, 0xffff5a8a);
            } else {
                card(c, pad, secondTop, w - pad, cardH, second, 0xff1c1c20, 0xffff5a8a);
                card(c, pad, firstTop, w - pad, cardH, first, 0xff000000, 0xffffb02e);
            }

            paint.setStyle(Paint.Style.FILL);
            paint.setColor(0xff000000);
            c.drawRoundRect(pillRect, pillH / 2, pillH / 2, paint);
            if (!legacy || (open <= 0f && close >= 1f) || cycle < 0.12f || cycle > 0.9f) {
                outline(c, pillRect, pillH / 2, 1f);
            }
            if (isShown()) {
                postInvalidateOnAnimation();
            }
        }

        /** One card grown out of the pill; {@code amount} 0 = still the pill, 1 = fully open. */
        private void card(Canvas c, float l, float t, float rr, float cardH, float amount, int body, int mark) {
            if (amount <= 0.01f) {
                return;
            }
            float pillCenter = getWidth() / 2f;
            float pillTop = pillRect.top;
            float left = pillCenter + ((l - pillCenter) * amount) - (pillRect.width() / 2f) * (1f - amount);
            float right = pillCenter + ((rr - pillCenter) * amount) + (pillRect.width() / 2f) * (1f - amount);
            float top = pillTop + ((t - pillTop) * amount);
            float bottom = top + (pillRect.height() + ((cardH - pillRect.height()) * amount));
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(body);
            r.set(left, top, right, bottom);
            float radius = (bottom - top) * 0.3f;
            c.drawRoundRect(r, radius, radius, paint);
            if (!legacy) {
                outline(c, r, radius, 1f);
            } else if (amount > 0.92f) {
                outline(c, r, radius, 0f);
            }
            if (amount > 0.6f) {
                float a = clamp((amount - 0.6f) / 0.4f);
                float cw = right - left;
                float ch = bottom - top;
                paint.setStyle(Paint.Style.FILL);
                paint.setColor((mark & 0x00ffffff) | ((int) (255 * a) << 24));
                c.drawRoundRect(left + cw * 0.12f, top + ch * 0.22f, left + cw * 0.3f, top + ch * 0.5f, 6, 6, paint);
                paint.setColor(0x00d0d0d8 | ((int) (255 * a) << 24));
                c.drawRoundRect(left + cw * 0.38f, top + ch * 0.26f, left + cw * 0.85f, top + ch * 0.36f, 4, 4, paint);
                c.drawRoundRect(left + cw * 0.38f, top + ch * 0.5f, left + cw * 0.7f, top + ch * 0.6f, 4, 4, paint);
            }
        }

        /** {@code settled} 0 draws the bright outline of a moving shape, 1 the same one; the legacy card only gets a faint one. */
        private void outline(Canvas c, RectF shape, float radius, float settled) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(Math.max(2f, getWidth() * 0.012f));
            paint.setColor(legacy ? 0x44ffffff : 0x99ffffff);
            c.drawRoundRect(shape, radius, radius, paint);
        }
    }
}
