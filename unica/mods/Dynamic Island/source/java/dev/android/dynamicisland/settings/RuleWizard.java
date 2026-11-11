package dev.android.dynamicisland.settings;

import android.app.AlertDialog;
import android.text.InputType;
import android.view.Gravity;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.Rx;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;

/**
 * The "new rule" page: one scrolling form in five steps (name, kind, apps and words, stages, card) with a live test
 * at the bottom, and a button that writes everything to the user's rule file at once. The answers are kept in this
 * object while the page is rebuilt after each change, and forgotten when the rule is made. Main thread only.
 */
final class RuleWizard {
    private static final int MAX_STAGES = 6;

    /** What one stage of the rule is: its name, the pattern that reads it and the optional percentage group. */
    private static final class Stage {
        String label = "";
        String pattern = "";
        int percentGroup;
    }

    private final SettingsActivity activity;
    private final OneUi ui;
    private final RulesScreen rules;
    private final RuleEditor editor;

    private String name = "";
    /** True for a state without a beginning and an end ("running", "connected"): one stage, no bar. */
    private boolean state;
    private final List<String> packages = new ArrayList<>();
    private final List<String> words = new ArrayList<>();
    private final List<Stage> stages = new ArrayList<>();
    private String accent;
    private boolean hideOriginal;
    private boolean fresh = true;
    private String sample = "";

    RuleWizard(SettingsActivity activity, OneUi ui, RulesScreen rules, RuleEditor editor) {
        this.activity = activity;
        this.ui = ui;
        this.rules = rules;
        this.editor = editor;
    }

    private void reset() {
        name = "";
        state = false;
        packages.clear();
        words.clear();
        stages.clear();
        stages.add(new Stage());
        accent = null;
        hideOriginal = false;
        sample = "";
        fresh = false;
    }

    /** The page; the first call after a rule was made starts from empty answers. */
    void page() {
        if (fresh) {
            reset();
        }
        activity.subPage(rules.str(R.string.wiz_title));
        LinearLayout page = activity.page();
        ui.note(page, rules.str(R.string.wiz_intro));

        step(1, R.string.wiz_step_name);
        LinearLayout nameCard = ui.card(page);
        ui.valueRow(nameCard, rules.str(R.string.rule_label), name.isEmpty() ? rules.str(R.string.wiz_not_set) : name, this::nameDialog);

        step(2, R.string.wiz_step_kind);
        LinearLayout kind = ui.card(page);
        kindRow(kind, false, R.string.wiz_kind_flow, R.string.wiz_kind_flow_sum);
        kindRow(kind, true, R.string.wiz_kind_state, R.string.wiz_kind_state_sum);

        step(3, R.string.wiz_step_apps);
        LinearLayout apps = ui.card(page);
        for (String pkg : packages) {
            ui.actionRow(apps, pkg, rules.str(R.string.wiz_tap_remove), () -> {
                packages.remove(pkg);
                activity.refresh();
            });
        }
        ui.actionRow(apps, rules.str(R.string.rule_app_add), null, () -> rules.pickApp(pkg -> {
            if (!packages.contains(pkg)) {
                packages.add(pkg);
            }
            activity.refresh();
        }));
        ui.actionRow(apps, rules.str(R.string.wiz_package_type), rules.str(R.string.wiz_package_type_sum),
                () -> textDialog(R.string.wiz_package_type, "com.example.app", value -> {
                    String pkg = value.trim().toLowerCase(Locale.ROOT);
                    if (!pkg.isEmpty() && !packages.contains(pkg)) {
                        packages.add(pkg);
                    }
                }));
        for (String word : words) {
            ui.actionRow(apps, "“" + word + "”", rules.str(R.string.wiz_tap_remove), () -> {
                words.remove(word);
                activity.refresh();
            });
        }
        ui.actionRow(apps, rules.str(R.string.rule_trigger_add), rules.str(R.string.wiz_word_sum),
                () -> textDialog(R.string.rule_trigger_add, null, value -> {
                    String word = value.trim().toLowerCase(Locale.ROOT);
                    if (!word.isEmpty() && !words.contains(word)) {
                        words.add(word);
                    }
                }));

        step(4, state ? R.string.wiz_step_state : R.string.wiz_step_stages);
        LinearLayout list = ui.card(page);
        int shown = state ? 1 : stages.size();
        for (int i = 0; i < shown; i++) {
            final int index = i;
            Stage stage = stages.get(i);
            String title = (state ? "" : i + "  ") + (stage.label.isEmpty() ? rules.str(R.string.stage_unnamed) : stage.label);
            ui.linkRow(list, title, stage.pattern.isEmpty() ? rules.str(R.string.wiz_no_pattern) : stage.pattern, () -> stageDialog(index));
        }
        if (!state && stages.size() < MAX_STAGES) {
            ui.actionRow(list, rules.str(R.string.stage_add), null, () -> {
                stages.add(new Stage());
                activity.refresh();
            });
        }

        step(5, R.string.wiz_step_card);
        LinearLayout card = ui.card(page);
        ui.valueRow(card, rules.str(R.string.rule_accent), accent == null ? rules.str(R.string.rule_time_default) : accent,
                () -> editor.colorDialog(accent, value -> {
                    accent = value;
                    activity.refresh();
                }));
        ui.switchRow(card, rules.str(R.string.rule_hide_original), rules.str(R.string.rule_hide_original_sum), hideOriginal,
                on -> hideOriginal = on);

        ui.category(page, rules.str(R.string.wiz_step_try));
        LinearLayout test = ui.card(page);
        EditText input = rules.field(rules.str(R.string.stage_sample), sample, true);
        LinearLayout holder = new LinearLayout(activity);
        holder.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
        holder.addView(input, new LinearLayout.LayoutParams(-1, -2));
        test.addView(holder);
        TextView verdict = ui.text("", 14, ui.muted);
        verdict.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), ui.dp(16));
        test.addView(verdict);
        verdict.setText(verdictFor(sample));
        input.addTextChangedListener(new android.text.TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(android.text.Editable s) {
                sample = s.toString();
                verdict.setText(verdictFor(sample));
            }
        });

        boolean ready = !name.isEmpty() && (!packages.isEmpty() || !words.isEmpty()) && readStages() > 0;
        TextView make = ui.text(rules.str(R.string.rule_create), 17, 0xffffffff);
        make.setGravity(Gravity.CENTER);
        make.setBackground(ui.round(ui.accent, ui.dp(28)));
        make.setAlpha(ready ? 1.0f : 0.4f);
        make.setEnabled(ready);
        make.setOnClickListener(v -> create());
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ui.dp(220), ui.dp(54));
        p.topMargin = ui.dp(28);
        p.gravity = Gravity.CENTER_HORIZONTAL;
        page.addView(make, p);
        ui.note(page, rules.str(ready ? R.string.wiz_ready : R.string.wiz_not_ready));
    }

    private void step(int number, int title) {
        ui.category(activity.page(), number + ". " + rules.str(title));
    }

    private void kindRow(LinearLayout group, boolean isState, int title, int summary) {
        LinearLayout box = new LinearLayout(activity);
        box.setGravity(Gravity.TOP);
        box.setPadding(ui.dp(22), ui.dp(14), ui.dp(22), ui.dp(14));
        RadioButton radio = new RadioButton(activity);
        radio.setChecked(state == isState);
        radio.setClickable(false);
        radio.setFocusable(false);
        radio.setButtonTintList(android.content.res.ColorStateList.valueOf(state == isState ? ui.accent : ui.muted));
        box.addView(radio, new LinearLayout.LayoutParams(ui.dp(40), ui.dp(40)));
        LinearLayout words = new LinearLayout(activity);
        words.setOrientation(LinearLayout.VERTICAL);
        words.setPadding(ui.dp(14), 0, 0, 0);
        words.addView(ui.text(rules.str(title), 17, ui.textColor));
        TextView detail = ui.text(rules.str(summary), 14, ui.muted);
        detail.setPadding(0, ui.dp(3), 0, 0);
        words.addView(detail);
        box.addView(words, new LinearLayout.LayoutParams(0, -2, 1));
        box.setOnClickListener(v -> {
            state = isState;
            activity.refresh();
        });
        group.addView(box, new LinearLayout.LayoutParams(-1, -2));
    }

    // ---------------------------------------------------------------- dialogs

    private void nameDialog() {
        textDialog(R.string.rule_label, name, value -> name = value.trim());
    }

    private interface Text {
        void on(String value);
    }

    private void textDialog(int title, String initial, Text done) {
        EditText input = rules.field(rules.str(title), initial, false);
        LinearLayout holder = new LinearLayout(activity);
        holder.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
        holder.addView(input, new LinearLayout.LayoutParams(-1, -2));
        new AlertDialog.Builder(activity).setTitle(title).setView(holder)
                .setPositiveButton(R.string.save, (d, w) -> {
                    done.on(input.getText().toString());
                    activity.refresh();
                }).setNegativeButton(android.R.string.cancel, null).show();
    }

    private void stageDialog(int index) {
        Stage stage = stages.get(index);
        LinearLayout box = new LinearLayout(activity);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
        EditText label = rules.field(rules.str(R.string.stage_name), stage.label, false);
        box.addView(label);
        EditText pattern = rules.field(rules.str(R.string.stage_add_pattern), stage.pattern, false);
        pattern.setHint(R.string.stage_pattern_hint);
        pattern.setTypeface(android.graphics.Typeface.MONOSPACE);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.topMargin = ui.dp(14);
        box.addView(pattern, lp);
        TextView help = ui.text(rules.str(R.string.stage_pattern_help), 12, ui.muted);
        help.setPadding(0, ui.dp(4), 0, 0);
        box.addView(help);
        EditText group = rules.field(rules.str(R.string.stage_percent_group), stage.percentGroup > 0 ? String.valueOf(stage.percentGroup) : null, false);
        group.setInputType(InputType.TYPE_CLASS_NUMBER);
        box.addView(group);
        editor.liveTest(box, pattern, group);
        android.widget.ScrollView scroll = new android.widget.ScrollView(activity);
        scroll.addView(box);
        AlertDialog dialog = new AlertDialog.Builder(activity).setTitle(state ? R.string.wiz_step_state : R.string.wiz_step_stages)
                .setView(scroll).setPositiveButton(R.string.save, null).setNegativeButton(android.R.string.cancel, null).show();
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            String text = pattern.getText().toString().trim();
            if (!text.isEmpty() && Rx.compile(text, true) == null) {
                Toast.makeText(activity, R.string.stage_pattern_bad, Toast.LENGTH_LONG).show();
                return;
            }
            stage.label = label.getText().toString().trim();
            stage.pattern = text;
            try {
                stage.percentGroup = Integer.parseInt(group.getText().toString().trim());
            } catch (NumberFormatException e) {
                stage.percentGroup = 0;
            }
            dialog.dismiss();
            activity.refresh();
        });
    }

    // ---------------------------------------------------------------- result

    /** How many stages have a pattern that compiles. */
    private int readStages() {
        int count = 0;
        for (int i = 0; i < (state ? 1 : stages.size()); i++) {
            String pattern = stages.get(i).pattern;
            count += !pattern.isEmpty() && Rx.compile(pattern, true) != null ? 1 : 0;
        }
        return count;
    }

    /** What the rule would read from the sample, highest stage first as the module does. */
    private String verdictFor(String text) {
        if (text.trim().isEmpty()) {
            return rules.str(R.string.wiz_try_hint);
        }
        for (int i = state ? 0 : stages.size() - 1; i >= 0; i--) {
            Stage stage = stages.get(i);
            Rx rx = stage.pattern.isEmpty() ? null : Rx.compile(stage.pattern, true);
            Matcher m = rx == null ? null : rx.find(text);
            if (m != null) {
                String label = stage.label.isEmpty() ? rules.str(R.string.stage_unnamed) : stage.label;
                return rules.str(R.string.wiz_try_yes, state ? label : i + "  " + label);
            }
        }
        return rules.str(R.string.wiz_try_no);
    }

    private void create() {
        String id = UserRules.slug(name);
        if (id.isEmpty()) {
            id = "rule";
        }
        RuleDictionary all = rules.everything();
        String unique = id;
        for (int n = 2; all.rule(unique) != null; n++) {
            unique = id + "_" + n;
        }
        final String ruleId = unique;
        UserRules edited = rules.user();
        edited.create(ruleId);
        edited.setText(ruleId, "name", name);
        int top = 0;
        int count = state ? 1 : stages.size();
        for (int i = 0; i < count; i++) {
            Stage stage = stages.get(i);
            if (stage.pattern.isEmpty() || Rx.compile(stage.pattern, true) == null) {
                continue;
            }
            // a state has the single stage 1; "running" is not "before the beginning"
            int number = state ? 1 : i;
            edited.addSignal(ruleId, number, stage.pattern, stage.percentGroup);
            edited.setLabel(ruleId, number, stage.label.isEmpty() ? name : stage.label);
            top = Math.max(top, number);
        }
        edited.setMaxStage(ruleId, Math.max(state ? 2 : 1, top + (state ? 1 : 0)));
        for (String pkg : packages) {
            edited.addPackage(ruleId, pkg);
        }
        for (String word : words) {
            edited.addTrigger(ruleId, word);
        }
        if (accent != null) {
            edited.setText(ruleId, "accent", accent);
        }
        if (state) {
            edited.setFlag(ruleId, "show_progress", false);
            edited.setNumber(ruleId, "ttl_min", 1440); // a running state stays as long as its notification
        }
        if (hideOriginal) {
            edited.setFlag(ruleId, "hide_original", true);
        }
        rules.save(edited);
        fresh = true;
        Toast.makeText(activity, R.string.wiz_made, Toast.LENGTH_SHORT).show();
        activity.goBack();
        activity.open(() -> rules.rulePage(ruleId));
    }
}
