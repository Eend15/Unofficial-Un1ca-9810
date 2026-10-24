package dev.android.dynamicisland.settings;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.text.LineBreakConfig;
import android.text.InputType;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/**
 * Builds the One UI look of the settings screen: grouped rounded cards on a tinted page, titles with their
 * value or summary underneath, accent-coloured group labels. The row types are the setting kinds the screen
 * uses: {@link #switchRow} (on / off), {@link #valueRow} (opens a choice, shows the current value),
 * {@link #linkRow} (opens a sub page) and {@link #actionRow} (does something). Main thread only.
 */
final class OneUi {
    final int background;
    final int cardColor;
    final int textColor;
    final int muted;
    final int accent;
    final int divider;
    final int good;
    final int warn;
    final boolean dark;

    private final Context ctx;
    private final float density;

    OneUi(Context ctx) {
        this.ctx = ctx;
        density = ctx.getResources().getDisplayMetrics().density;
        dark = (ctx.getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES;
        background = dark ? 0xff000000 : 0xfff3f3f6;
        cardColor = dark ? 0xff171719 : 0xffffffff;
        textColor = dark ? 0xfffafafa : 0xff111114;
        muted = dark ? 0xff9a9aa2 : 0xff75757d;
        accent = dark ? 0xff5ea3ff : 0xff0a6cff;
        divider = dark ? 0xff26262a : 0xffececf0;
        good = dark ? 0xff4fd18b : 0xff1a9e5a;
        warn = dark ? 0xffffb44f : 0xffd97a00;
    }

    int dp(int v) {
        return Math.round(v * density);
    }

    TextView text(CharSequence value, int sp, int color) {
        TextView v = new TextView(ctx);
        v.setText(value);
        v.setTextSize(sp);
        v.setTextColor(color);
        // break Korean at phrase boundaries instead of in the middle of a word
        v.setLineBreakWordStyle(LineBreakConfig.LINE_BREAK_WORD_STYLE_PHRASE);
        return v;
    }

    GradientDrawable round(int color, int radius) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(radius);
        return d;
    }

    private RippleDrawable ripple() {
        return new RippleDrawable(ColorStateList.valueOf(0x1f808080), null, round(Color.WHITE, 0));
    }

    /** Big centred title with an optional line under it; {@code top} is the space above in dp. */
    void title(LinearLayout page, CharSequence title, CharSequence tagline, int top) {
        TextView t = text(title, 32, textColor);
        t.setGravity(Gravity.CENTER);
        t.setPadding(0, dp(top), 0, dp(6));
        page.addView(t, new LinearLayout.LayoutParams(-1, -2));
        TextView sub = text(tagline == null ? "" : tagline, 14, muted);
        sub.setGravity(Gravity.CENTER);
        sub.setPadding(dp(24), 0, dp(24), dp(tagline == null ? 12 : 32));
        if (tagline == null) {
            sub.setVisibility(View.GONE);
        }
        page.addView(sub, new LinearLayout.LayoutParams(-1, -2));
    }

    /** The round back button of sub pages. */
    TextView backButton(LinearLayout page, CharSequence description, Runnable onBack) {
        TextView back = text("‹", 34, textColor);
        back.setGravity(Gravity.CENTER);
        back.setContentDescription(description);
        back.setBackground(ripple());
        back.setOnClickListener(v -> onBack.run());
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(dp(48), dp(48));
        p.topMargin = dp(8);
        page.addView(back, p);
        return back;
    }

    /** Status card: a coloured dot, a headline and a detail line. Returns the card; see {@link #setHero}. */
    LinearLayout hero(LinearLayout page) {
        LinearLayout card = card(page);
        card.setPadding(dp(20), dp(18), dp(20), dp(18));
        LinearLayout line = new LinearLayout(ctx);
        line.setGravity(Gravity.CENTER_VERTICAL);
        View dot = new View(ctx);
        dot.setBackground(round(muted, dp(6)));
        line.addView(dot, new LinearLayout.LayoutParams(dp(10), dp(10)));
        TextView status = text("", 18, textColor);
        status.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        status.setPadding(dp(10), 0, 0, 0);
        line.addView(status);
        card.addView(line);
        TextView detail = text("", 13, muted);
        detail.setPadding(dp(20), dp(6), 0, 0);
        card.addView(detail);
        return card;
    }

    void setHero(LinearLayout hero, boolean ok, CharSequence status, CharSequence detail) {
        LinearLayout line = (LinearLayout) hero.getChildAt(0);
        line.getChildAt(0).setBackground(round(ok ? good : warn, dp(6)));
        ((TextView) line.getChildAt(1)).setText(status);
        ((TextView) hero.getChildAt(1)).setText(detail);
    }

    /** Accent-coloured label above a card. */
    void category(LinearLayout page, CharSequence title) {
        TextView label = text(title, 14, accent);
        label.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        label.setPadding(dp(22), dp(26), 0, dp(2));
        page.addView(label);
    }

    LinearLayout card(LinearLayout page) {
        LinearLayout c = new LinearLayout(ctx);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(round(cardColor, dp(26)));
        c.setClipToOutline(true);
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(-1, -2);
        p.topMargin = dp(10);
        page.addView(c, p);
        return c;
    }

    void note(LinearLayout page, CharSequence content) {
        TextView t = text(content, 13, muted);
        t.setLineSpacing(dp(2), 1f);
        t.setPadding(dp(22), dp(10), dp(22), 0);
        page.addView(t);
    }

    private void separator(LinearLayout group) {
        if (group.getChildCount() == 0) {
            return;
        }
        View line = new View(ctx);
        line.setBackgroundColor(divider);
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(-1, Math.max(1, dp(1) / 2));
        p.leftMargin = dp(22);
        p.rightMargin = dp(22);
        group.addView(line, p);
    }

    /** A row with a title and a summary, optionally clickable; returns its container. */
    private LinearLayout box(LinearLayout group, CharSequence title, CharSequence summary, int summaryColor, Runnable action, boolean chevron) {
        separator(group);
        LinearLayout box = new LinearLayout(ctx);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(22), dp(14), dp(16), dp(14));
        box.setMinimumHeight(dp(64));
        LinearLayout words = new LinearLayout(ctx);
        words.setOrientation(LinearLayout.VERTICAL);
        words.addView(text(title, 17, textColor));
        TextView detail = text(summary == null ? "" : summary, 14, summaryColor);
        detail.setPadding(0, dp(2), dp(8), 0);
        detail.setMaxLines(5);
        detail.setEllipsize(TextUtils.TruncateAt.END);
        if (summary == null || summary.length() == 0) {
            detail.setVisibility(View.GONE);
        }
        words.addView(detail);
        box.addView(words, new LinearLayout.LayoutParams(0, -2, 1));
        if (chevron) {
            TextView arrow = text("›", 26, muted);
            box.addView(arrow);
        }
        if (action != null) {
            box.setBackground(ripple());
            box.setOnClickListener(v -> action.run());
        }
        group.addView(box, new LinearLayout.LayoutParams(-1, -2));
        return box;
    }

    /** On / off setting; the summary explains it. {@code onChange} gets the new state. */
    Switch switchRow(LinearLayout group, CharSequence title, CharSequence summary, boolean checked, Consumer<Boolean> onChange) {
        LinearLayout box = box(group, title, summary, muted, null, false);
        Switch sw = new Switch(ctx);
        sw.setContentDescription(title);
        sw.setClickable(false);
        sw.setFocusable(false);
        sw.setChecked(checked);
        box.addView(sw);
        box.setBackground(ripple());
        List<Consumer<Boolean>> listeners = new ArrayList<>();
        listeners.add(onChange);
        sw.setTag(listeners);
        box.setOnClickListener(v -> {
            sw.setChecked(!sw.isChecked());
            for (Consumer<Boolean> listener : listeners) {
                listener.accept(sw.isChecked());
            }
        });
        return sw;
    }

    /** Also calls {@code listener} when the user flips the switch of a {@link #switchRow}. */
    @SuppressWarnings("unchecked")
    static void listen(Switch sw, Consumer<Boolean> listener) {
        ((List<Consumer<Boolean>>) sw.getTag()).add(listener);
    }

    /**
     * A row that opens a sub page when tapped and has its own switch at the end (a rule that can be switched off
     * and also looked into). Returns the switch.
     */
    Switch ruleRow(LinearLayout group, CharSequence title, CharSequence summary, boolean checked,
            Consumer<Boolean> onChange, Runnable open) {
        LinearLayout box = box(group, title, summary, muted, open, false);
        View divider = new View(ctx);
        divider.setBackgroundColor(this.divider);
        LinearLayout.LayoutParams line = new LinearLayout.LayoutParams(Math.max(1, dp(1) / 2), dp(32));
        line.leftMargin = dp(4);
        line.rightMargin = dp(12);
        box.addView(divider, line);
        Switch sw = new Switch(ctx);
        sw.setContentDescription(title);
        sw.setChecked(checked);
        sw.setOnCheckedChangeListener((button, on) -> onChange.accept(on));
        box.addView(sw);
        return sw;
    }

    /** A text field laid out like the other rows: a small label above, the typed text in the row's title size. */
    EditText inputRow(LinearLayout group, CharSequence label, CharSequence hint, boolean multiline, boolean monospace) {
        separator(group);
        LinearLayout box = new LinearLayout(ctx);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(dp(22), dp(14), dp(22), dp(14));
        box.setMinimumHeight(dp(64));
        TextView caption = text(label, 14, accent);
        box.addView(caption);
        EditText edit = new EditText(ctx);
        edit.setBackground(null);
        edit.setPadding(0, dp(4), 0, 0);
        edit.setTextSize(17);
        edit.setTextColor(textColor);
        edit.setHintTextColor(muted);
        edit.setHint(hint);
        edit.setSingleLine(!multiline);
        edit.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | (multiline ? InputType.TYPE_TEXT_FLAG_MULTI_LINE : 0));
        if (multiline) {
            edit.setMinLines(2);
            edit.setGravity(Gravity.TOP);
        }
        if (monospace) {
            edit.setTypeface(Typeface.MONOSPACE);
        }
        box.addView(edit, new LinearLayout.LayoutParams(-1, -2));
        group.addView(box, new LinearLayout.LayoutParams(-1, -2));
        return edit;
    }

    /** Removes every row of a card, to fill it again. */
    static void clear(LinearLayout group) {
        group.removeAllViews();
    }

    /** The row view that holds the given switch (to dim it together with its dependants). */
    static View rowOf(Switch sw) {
        return (View) sw.getParent();
    }

    /** Setting with a choice behind it: the current value is shown under the title in the accent colour. */
    TextView valueRow(LinearLayout group, CharSequence title, CharSequence value, Runnable open) {
        LinearLayout box = box(group, title, value, accent, open, false);
        return (TextView) ((LinearLayout) box.getChildAt(0)).getChildAt(1);
    }

    /** Entry to a sub page. */
    TextView linkRow(LinearLayout group, CharSequence title, CharSequence summary, Runnable open) {
        LinearLayout box = box(group, title, summary, muted, open, true);
        return (TextView) ((LinearLayout) box.getChildAt(0)).getChildAt(1);
    }

    /** Button-like row that performs something. */
    TextView actionRow(LinearLayout group, CharSequence title, CharSequence summary, Runnable run) {
        LinearLayout box = box(group, title, summary, muted, run, false);
        return (TextView) ((LinearLayout) box.getChildAt(0)).getChildAt(1);
    }

    /** Dims a group of views and blocks taps while the setting they depend on is off. */
    static void setDependentsEnabled(boolean on, View... views) {
        for (View v : views) {
            v.setAlpha(on ? 1f : 0.4f);
            setEnabledDeep(v, on);
        }
    }

    private static void setEnabledDeep(View v, boolean on) {
        v.setEnabled(on);
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                setEnabledDeep(g.getChildAt(i), on);
            }
        }
    }
}
