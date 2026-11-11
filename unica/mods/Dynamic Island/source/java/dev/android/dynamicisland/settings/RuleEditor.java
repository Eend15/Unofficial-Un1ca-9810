package dev.android.dynamicisland.settings;

import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.Rx;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;

/**
 * The part of the rule page that sets how a rule behaves: its name, the card colour, whether the card has a progress
 * bar, whether the original notification stays in the shade, how long the card stays, the words that make a
 * notification belong to the rule, and a live test for the patterns of a stage. Every change goes to the user's own
 * rule file ({@link UserRules}); the rules the module ships are never touched. Main thread only.
 */
final class RuleEditor {
    /** Minutes offered for the times; 0 means "the rule's own value" (the shipped one or the default). */
    private static final int[] MINUTES = {0, 3, 10, 30, 60, 180, 720, 1440};
    private static final int[] COLORS = {0xFFFF9500, 0xFFFFCC00, 0xFF30D158, 0xFF64D2FF, 0xFF0A84FF, 0xFFBF5AF2, 0xFFFF375F, 0xFFC8955A};

    private final SettingsActivity activity;
    private final OneUi ui;
    private final RulesScreen rules;

    RuleEditor(SettingsActivity activity, OneUi ui, RulesScreen rules) {
        this.activity = activity;
        this.ui = ui;
        this.rules = rules;
    }

    /** Adds the "card" and "words" sections to the page of rule {@code id}. */
    void sections(String id, RuleDictionary.SmartRule rule, boolean own) {
        LinearLayout page = activity.page();
        ui.category(page, rules.str(R.string.group_card));
        LinearLayout card = ui.card(page);
        if (own) {
            TextView name = ui.valueRow(card, rules.str(R.string.rule_label), rules.ruleName(id), () -> nameDialog(id));
            name.setTextColor(ui.accent);
        }
        ui.valueRow(card, rules.str(R.string.rule_accent), accentText(rule.options.accent), () -> accentDialog(id));
        ui.switchRow(card, rules.str(R.string.rule_progress), rules.str(R.string.rule_progress_sum), rule.showsProgress(),
                on -> setFlag(id, "show_progress", on));
        ui.switchRow(card, rules.str(R.string.rule_hide_original), rules.str(R.string.rule_hide_original_sum), rule.hidesOriginal(),
                on -> setFlag(id, "hide_original", on));
        ui.valueRow(card, rules.str(R.string.rule_ttl), minutesText(rule.ttlMinutes), () -> minutesDialog(id, "ttl_min", R.string.rule_ttl));
        ui.valueRow(card, rules.str(R.string.rule_final_ttl), minutesText(rule.finalTtlMinutes),
                () -> minutesDialog(id, "final_ttl_min", R.string.rule_final_ttl));
        ui.valueRow(card, rules.str(R.string.rule_cooldown), minutesText(rule.cooldownMinutes),
                () -> minutesDialog(id, "cooldown_min", R.string.rule_cooldown));
        ui.note(page, rules.str(R.string.rule_times_help));

        ui.category(page, rules.str(R.string.group_words));
        LinearLayout words = ui.card(page);
        ui.linkRow(words, rules.str(R.string.rule_triggers), rules.str(R.string.rule_triggers_sum, rule.textTriggers.size()),
                () -> triggersDialog(id));
        ui.actionRow(words, rules.str(R.string.rule_try), rules.str(R.string.rule_try_sum), () -> activity.open(rules::testPage));
    }

    // ---------------------------------------------------------------- simple settings

    private void setFlag(String id, String key, boolean on) {
        UserRules edited = rules.user();
        edited.setFlag(id, key, on);
        rules.save(edited);
    }

    private String minutesText(int minutes) {
        if (minutes <= 0) {
            return rules.str(R.string.rule_time_default);
        }
        return minutes % 60 == 0 ? rules.str(R.string.rule_time_hours, minutes / 60) : rules.str(R.string.rule_time_minutes, minutes);
    }

    private void minutesDialog(String id, String key, int title) {
        String[] labels = new String[MINUTES.length];
        for (int i = 0; i < MINUTES.length; i++) {
            labels[i] = MINUTES[i] == 0 ? rules.str(R.string.rule_time_default) : minutesText(MINUTES[i]);
        }
        int current = rules.user().number(id, key);
        int checked = 0;
        for (int i = 0; i < MINUTES.length; i++) {
            checked = MINUTES[i] == current ? i : checked;
        }
        new AlertDialog.Builder(activity).setTitle(title).setSingleChoiceItems(labels, checked, (d, which) -> {
            UserRules edited = rules.user();
            edited.setNumber(id, key, MINUTES[which]);
            rules.save(edited);
            d.dismiss();
            activity.refresh();
        }).setNegativeButton(android.R.string.cancel, null).show();
    }

    private void nameDialog(String id) {
        EditText input = rules.field(rules.str(R.string.rule_label), rules.ruleName(id), false);
        LinearLayout holder = new LinearLayout(activity);
        holder.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
        holder.addView(input, new LinearLayout.LayoutParams(-1, -2));
        new AlertDialog.Builder(activity).setTitle(R.string.rule_label).setView(holder)
                .setPositiveButton(R.string.save, (d, w) -> {
                    UserRules edited = rules.user();
                    edited.setText(id, "name", input.getText().toString());
                    rules.save(edited);
                    activity.refresh();
                }).setNegativeButton(android.R.string.cancel, null).show();
    }

    // ---------------------------------------------------------------- colour

    private String accentText(int accent) {
        return accent == 0 ? rules.str(R.string.rule_time_default) : String.format(Locale.ROOT, "#%06X", accent & 0xFFFFFF);
    }

    private void accentDialog(String id) {
        colorDialog(rules.user().text(id, "accent"), value -> {
            UserRules edited = rules.user();
            edited.setText(id, "accent", value);
            rules.save(edited);
            activity.refresh();
        });
    }

    /** Pick a colour from a few swatches or write it as #RRGGBB; {@code picked} gets the text, or null for "default". */
    void colorDialog(String current, java.util.function.Consumer<String> picked) {
        LinearLayout column = new LinearLayout(activity);
        column.setOrientation(LinearLayout.VERTICAL);
        column.setPadding(ui.dp(18), ui.dp(8), ui.dp(18), 0);
        LinearLayout swatches = new LinearLayout(activity);
        swatches.setGravity(Gravity.CENTER);
        column.addView(swatches, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout second = new LinearLayout(activity);
        second.setGravity(Gravity.CENTER);
        column.addView(second, new LinearLayout.LayoutParams(-1, -2));
        EditText hex = rules.field("#RRGGBB", current, false);
        hex.setTypeface(Typeface.MONOSPACE);
        LinearLayout.LayoutParams hexParams = new LinearLayout.LayoutParams(-1, -2);
        hexParams.topMargin = ui.dp(12);
        column.addView(hex, hexParams);
        AlertDialog dialog = new AlertDialog.Builder(activity).setTitle(R.string.rule_accent).setView(column)
                .setPositiveButton(R.string.save, null)
                .setNeutralButton(R.string.rule_time_default, (d, w) -> picked.accept(null))
                .setNegativeButton(android.R.string.cancel, null).show();
        for (int i = 0; i < COLORS.length; i++) {
            View dot = new View(activity);
            dot.setBackground(ui.round(COLORS[i], ui.dp(22)));
            final int color = COLORS[i];
            dot.setOnClickListener(v -> {
                picked.accept(String.format(Locale.ROOT, "#%06X", color & 0xFFFFFF));
                dialog.dismiss();
            });
            LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ui.dp(44), ui.dp(44));
            p.setMargins(ui.dp(5), ui.dp(5), ui.dp(5), ui.dp(5));
            (i < COLORS.length / 2 ? swatches : second).addView(dot, p);
        }
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            String text = hex.getText().toString().trim();
            if (!text.isEmpty()) {
                if (!text.matches("#[0-9A-Fa-f]{6}([0-9A-Fa-f]{2})?")) {
                    Toast.makeText(activity, R.string.rule_accent_bad, Toast.LENGTH_LONG).show();
                    return;
                }
            }
            picked.accept(text.isEmpty() ? null : text);
            dialog.dismiss();
        });
    }

    // ---------------------------------------------------------------- the words that make a notification belong to the rule

    private void triggersDialog(String id) {
        UserRules mine = rules.user();
        RuleDictionary.SmartRule rule = rules.everything().rule(id);
        List<String> own = mine.triggers(id);
        LinearLayout box = new LinearLayout(activity);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
        TextView help = ui.text(rules.str(R.string.rule_triggers_help), 13, ui.muted);
        box.addView(help);
        for (String word : rule.textTriggers) {
            LinearLayout line = new LinearLayout(activity);
            line.setGravity(Gravity.CENTER_VERTICAL);
            TextView text = ui.text((own.contains(word) ? "✎ " : "") + word, 15, ui.textColor);
            line.addView(text, new LinearLayout.LayoutParams(0, -2, 1));
            if (own.contains(word)) {
                Button remove = new Button(activity);
                remove.setText(R.string.remove);
                remove.setAllCaps(false);
                remove.setOnClickListener(v -> {
                    UserRules edited = rules.user();
                    edited.removeTrigger(id, word);
                    rules.save(edited);
                    line.setVisibility(View.GONE);
                });
                line.addView(remove);
            }
            box.addView(line);
        }
        EditText add = rules.field(rules.str(R.string.rule_trigger_add), null, false);
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(-1, -2);
        p.topMargin = ui.dp(12);
        box.addView(add, p);
        ScrollView scroll = new ScrollView(activity);
        scroll.addView(box);
        new AlertDialog.Builder(activity).setTitle(R.string.rule_triggers).setView(scroll)
                .setPositiveButton(R.string.save, (d, w) -> {
                    String word = add.getText().toString().trim();
                    if (!word.isEmpty()) {
                        UserRules edited = rules.user();
                        edited.addTrigger(id, word);
                        rules.save(edited);
                    }
                    activity.refresh();
                }).setNegativeButton(android.R.string.cancel, null).show();
    }

    // ---------------------------------------------------------------- live test of a pattern

    /**
     * Adds a field for a sample text under the pattern of the stage dialog; while either is typed it says whether the
     * pattern is valid, whether it finds something in the sample and what the percentage group would read.
     */
    void liveTest(LinearLayout box, EditText pattern, EditText group) {
        TextView title = ui.text(rules.str(R.string.stage_sample_title), 13, ui.accent);
        title.setPadding(0, ui.dp(14), 0, ui.dp(2));
        box.addView(title);
        EditText sample = rules.field(rules.str(R.string.stage_sample), null, true);
        box.addView(sample);
        TextView verdict = ui.text("", 13, ui.muted);
        verdict.setPadding(0, ui.dp(4), 0, 0);
        box.addView(verdict);
        TextWatcher watcher = new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                String source = pattern.getText().toString().trim();
                String text = sample.getText().toString();
                if (source.isEmpty() || text.isEmpty()) {
                    verdict.setText("");
                    return;
                }
                Rx rx = Rx.compile(source, true);
                if (rx == null) {
                    verdict.setTextColor(ui.warn);
                    verdict.setText(R.string.stage_pattern_bad);
                    return;
                }
                Matcher m = rx.find(text);
                if (m == null) {
                    verdict.setTextColor(ui.muted);
                    verdict.setText(R.string.stage_sample_no);
                    return;
                }
                verdict.setTextColor(ui.good);
                String message = rules.str(R.string.stage_sample_yes, m.group());
                int wanted = 0;
                try {
                    wanted = Integer.parseInt(group.getText().toString().trim());
                } catch (NumberFormatException ignored) {
                    // no group asked
                }
                if (wanted > 0 && wanted <= m.groupCount() && m.group(wanted) != null) {
                    message += "\n" + rules.str(R.string.stage_sample_percent, m.group(wanted));
                }
                verdict.setText(message);
            }
        };
        pattern.addTextChangedListener(watcher);
        sample.addTextChangedListener(watcher);
        group.addTextChangedListener(watcher);
    }
}
