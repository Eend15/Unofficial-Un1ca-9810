package dev.android.dynamicisland.settings;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
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
import dev.android.dynamicisland.island.detect.OtpDetector;
import dev.android.dynamicisland.island.detect.TextProgress;
import dev.android.dynamicisland.island.rules.RuleConfig;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import dev.android.dynamicisland.island.rules.Rx;
import dev.android.dynamicisland.island.source.RuleSource;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/**
 * The pages that manage the rules: the list of rules with a switch each, one rule in detail (stages, apps, words), a
 * form to add stages, apps and patterns, a tester that shows what a notification text would become, and import /
 * export. Everything the user changes is written to their own rule file ({@link UserRules}); the rules the module
 * ships are never touched, only added to or switched off. Main thread only.
 */
final class RulesScreen {
    private static final int MAX_SHOWN_PATTERNS = 6;

    private final SettingsActivity activity;
    private final OneUi ui;
    private final SharedPreferences prefs;
    private final RuleEditor editor;
    private final RuleWizard wizard;

    RulesScreen(SettingsActivity activity, OneUi ui, SharedPreferences prefs) {
        this.activity = activity;
        this.ui = ui;
        this.prefs = prefs;
        this.editor = new RuleEditor(activity, ui, this);
        this.wizard = new RuleWizard(activity, ui, this, editor);
    }

    // ---------------------------------------------------------------- state

    private String customJson() {
        return prefs.getString(ModuleSettings.KEY_RULES_CUSTOM, null);
    }

    UserRules user() {
        return UserRules.parse(customJson());
    }

    void save(UserRules rules) {
        String json = rules.toJson();
        SharedPreferences.Editor edit = prefs.edit();
        if (json == null) {
            edit.remove(ModuleSettings.KEY_RULES_CUSTOM);
        } else {
            edit.putString(ModuleSettings.KEY_RULES_CUSTOM, json);
        }
        edit.apply();
    }

    private Set<String> disabled() {
        return new HashSet<>(prefs.getStringSet(ModuleSettings.KEY_RULES_DISABLED, java.util.Collections.<String>emptySet()));
    }

    /** What the module ships alone, and everything together (including the rules the user switched off). */
    RuleDictionary shipped() {
        return RuleStore.build(RuleConfig.DEFAULT);
    }

    RuleDictionary everything() {
        return RuleStore.build(new RuleConfig(customJson()));
    }

    String str(int id, Object... args) {
        return activity.getString(id, args);
    }

    String ruleName(String id) {
        switch (id) {
            case "food": return str(R.string.rule_name_food);
            case "parcel": return str(R.string.rule_name_parcel);
            case "navigation": return str(R.string.rule_name_navigation);
            case "taxi": return str(R.string.rule_name_taxi);
            case "wearable": return str(R.string.rule_name_wearable);
            case "battery": return str(R.string.rule_name_battery);
            case "external_device": return str(R.string.rule_name_device);
            case "vpn": return str(R.string.rule_name_vpn);
            case "relay": return str(R.string.rule_name_relay);
            default:
                RuleDictionary.SmartRule own = everything().rule(id);
                return own != null && own.options.name != null ? own.options.name : id;
        }
    }

    // ---------------------------------------------------------------- rule list

    void listPage() {
        activity.subPage(str(R.string.rules_title));
        LinearLayout master = ui.card(activity.page());
        activity.toggle(master, R.string.setting_smart_rules, R.string.setting_smart_rules_desc, ModuleSettings.KEY_SMART_RULES, true);
        ui.note(activity.page(), str(R.string.rules_about));

        ui.category(activity.page(), str(R.string.group_rule_cards));
        LinearLayout cards = ui.card(activity.page());
        RuleDictionary all = everything();
        Set<String> off = disabled();
        for (RuleDictionary.SmartRule rule : all.smartRules) {
            ui.ruleRow(cards, ruleName(rule.id), ruleSummary(rule), !off.contains(rule.id), on -> setEnabled(rule.id, on),
                    () -> activity.open(() -> rulePage(rule.id)));
        }
        ui.actionRow(cards, str(R.string.rule_new), str(R.string.rule_new_sum), () -> activity.open(wizard::page));

        ui.category(activity.page(), str(R.string.group_rule_tools));
        LinearLayout tools = ui.card(activity.page());
        ui.linkRow(tools, str(R.string.rule_test), str(R.string.rule_test_sum), () -> activity.open(this::testPage));
        ui.actionRow(tools, str(R.string.rules_export), str(R.string.rules_export_sum), this::exportRules);
        ui.actionRow(tools, str(R.string.rules_import), str(R.string.rules_import_sum), this::importRules);
        ui.actionRow(tools, str(R.string.rules_clear_custom), customStatus(), this::confirmResetAll);
    }

    private String ruleSummary(RuleDictionary.SmartRule rule) {
        Set<Integer> stages = new LinkedHashSet<>();
        for (RuleDictionary.Signal signal : rule.signals) {
            stages.add(signal.stage);
        }
        String text = str(R.string.rule_summary_format, stages.size(), rule.packageHints.size(), rule.signals.size());
        return shipped().rule(rule.id) == null ? str(R.string.rule_mine) + " · " + text : text;
    }

    private String customStatus() {
        UserRules rules = user();
        return rules.isEmpty() ? str(R.string.rules_status_none) : str(R.string.rules_status_some, rules.ruleIds().size());
    }

    private void setEnabled(String id, boolean on) {
        Set<String> off = disabled();
        if (on) {
            off.remove(id);
        } else {
            off.add(id);
        }
        prefs.edit().putStringSet(ModuleSettings.KEY_RULES_DISABLED, off).apply();
    }

    // ---------------------------------------------------------------- one rule

    void rulePage(String id) {
        activity.subPage(ruleName(id));
        RuleDictionary all = everything();
        RuleDictionary.SmartRule rule = all.rule(id);
        UserRules mine = user();
        boolean own = shipped().rule(id) == null;
        if (rule == null) {
            ui.note(activity.page(), str(R.string.rule_gone));
            return;
        }
        LinearLayout head = ui.card(activity.page());
        ui.switchRow(head, str(R.string.rule_enabled), own ? str(R.string.rule_own_note) : str(R.string.rule_shipped_note),
                !disabled().contains(id), on -> setEnabled(id, on));

        ui.category(activity.page(), str(R.string.group_stages));
        LinearLayout stages = ui.card(activity.page());
        int top = Math.max(rule.maxStage, mine.maxStage(id));
        for (int stage = 0; stage <= top; stage++) {
            final int s = stage;
            String label = all.statusText(id, stage, Locale.getDefault());
            int count = 0;
            for (RuleDictionary.Signal signal : rule.signals) {
                count += signal.stage == stage ? 1 : 0;
            }
            String title = stage + "  " + (label != null ? label : str(R.string.stage_unnamed));
            ui.linkRow(stages, title, str(R.string.stage_summary, count), () -> stageDialog(id, s));
        }
        if (top < UserRules.MAX_STAGE) {
            ui.actionRow(stages, str(R.string.stage_add), null, () -> {
                UserRules rules = user();
                rules.setMaxStage(id, top + 1);
                save(rules);
                activity.refresh();
            });
        }

        editor.sections(id, rule, own);

        ui.category(activity.page(), str(R.string.group_apps));
        LinearLayout apps = ui.card(activity.page());
        ui.linkRow(apps, str(R.string.rule_apps), str(R.string.rule_apps_sum, rule.packageHints.size()), () -> appsDialog(id));
        ui.actionRow(apps, str(R.string.rule_app_add), null, () -> pickApp(pkg -> {
            UserRules rules = user();
            rules.addPackage(id, pkg);
            save(rules);
            activity.refresh();
        }));

        ui.category(activity.page(), str(R.string.group_excludes));
        LinearLayout excludes = ui.card(activity.page());
        ui.linkRow(excludes, str(R.string.rule_excludes), str(R.string.rule_apps_sum, rule.excludePatterns.size()), () -> excludesDialog(id));
        ui.actionRow(excludes, str(R.string.rule_exclude_add), str(R.string.rule_exclude_hint), () -> addExcludeDialog(id));

        ui.category(activity.page(), str(R.string.group_mine));
        LinearLayout reset = ui.card(activity.page());
        ui.actionRow(reset, own ? str(R.string.rule_delete) : str(R.string.rule_reset), own ? null : str(R.string.rule_reset_sum),
                () -> new AlertDialog.Builder(activity)
                        .setTitle(own ? R.string.rule_delete : R.string.rule_reset)
                        .setMessage(own ? R.string.rule_delete_confirm : R.string.rule_reset_confirm)
                        .setPositiveButton(android.R.string.ok, (d, w) -> {
                            UserRules rules = user();
                            rules.remove(id);
                            save(rules);
                            if (own) {
                                setEnabled(id, true);
                                activity.goBack();
                            } else {
                                activity.refresh();
                            }
                        })
                        .setNegativeButton(android.R.string.cancel, null)
                        .show());
    }

    /** Name and patterns of one stage: the module's patterns are listed, the user's own can be added and removed. */
    private void stageDialog(String id, int stage) {
        UserRules rules = user();
        RuleDictionary.SmartRule shippedRule = shipped().rule(id);
        LinearLayout box = new LinearLayout(activity);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);

        EditText name = field(str(R.string.stage_name), rules.label(id, stage), false);
        box.addView(name);

        TextView listed = ui.text(str(R.string.stage_shipped_patterns), 13, ui.muted);
        listed.setPadding(0, ui.dp(14), 0, ui.dp(2));
        box.addView(listed);
        int shown = 0;
        if (shippedRule != null) {
            for (RuleDictionary.Signal signal : shippedRule.signals) {
                if (signal.stage == stage && shown++ < MAX_SHOWN_PATTERNS) {
                    box.addView(patternText(signal.pattern.source(), ui.muted));
                }
            }
        }
        if (shown == 0) {
            box.addView(patternText(str(R.string.stage_none), ui.muted));
        }

        List<String> mine = new ArrayList<>();
        for (Object[] signal : rules.signals(id)) {
            if ((Integer) signal[0] == stage) {
                mine.add((String) signal[1]);
            }
        }
        if (!mine.isEmpty()) {
            TextView own = ui.text(str(R.string.stage_my_patterns), 13, ui.accent);
            own.setPadding(0, ui.dp(14), 0, ui.dp(2));
            box.addView(own);
            for (String pattern : mine) {
                LinearLayout line = new LinearLayout(activity);
                line.setGravity(Gravity.CENTER_VERTICAL);
                line.addView(patternText(pattern, ui.textColor), new LinearLayout.LayoutParams(0, -2, 1));
                Button remove = new Button(activity);
                remove.setText(R.string.remove);
                remove.setAllCaps(false);
                remove.setOnClickListener(v -> {
                    UserRules edited = user();
                    edited.removeSignal(id, stage, pattern);
                    save(edited);
                    line.setVisibility(View.GONE);
                });
                line.addView(remove);
                box.addView(line);
            }
        }

        EditText add = field(str(R.string.stage_add_pattern), null, false);
        add.setHint(R.string.stage_pattern_hint);
        add.setTypeface(Typeface.MONOSPACE);
        LinearLayout.LayoutParams addParams = new LinearLayout.LayoutParams(-1, -2);
        addParams.topMargin = ui.dp(14);
        box.addView(add, addParams);
        TextView help = ui.text(str(R.string.stage_pattern_help), 12, ui.muted);
        help.setPadding(0, ui.dp(4), 0, 0);
        box.addView(help);
        EditText group = field(str(R.string.stage_percent_group), null, false);
        group.setInputType(InputType.TYPE_CLASS_NUMBER);
        box.addView(group);
        TextView groupHelp = ui.text(str(R.string.stage_percent_help), 12, ui.muted);
        groupHelp.setPadding(0, ui.dp(4), 0, 0);
        box.addView(groupHelp);
        editor.liveTest(box, add, group);

        ScrollView scroll = new ScrollView(activity);
        scroll.addView(box);
        AlertDialog dialog = new AlertDialog.Builder(activity)
                .setTitle(ruleName(id) + " · " + stage)
                .setView(scroll)
                .setPositiveButton(R.string.save, null)
                .setNegativeButton(android.R.string.cancel, null)
                .show();
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            String pattern = add.getText().toString().trim();
            if (!pattern.isEmpty() && Rx.compile(pattern, true) == null) {
                Toast.makeText(activity, R.string.stage_pattern_bad, Toast.LENGTH_LONG).show();
                return;
            }
            UserRules edited = user();
            edited.setLabel(id, stage, name.getText().toString());
            if (!pattern.isEmpty()) {
                int percentGroup = 0;
                try {
                    percentGroup = Integer.parseInt(group.getText().toString().trim());
                } catch (NumberFormatException ignored) {
                    // no group: the stage is just a stage
                }
                edited.addSignal(id, stage, pattern, percentGroup);
            }
            save(edited);
            dialog.dismiss();
            activity.refresh();
        });
    }

    private TextView patternText(String text, int color) {
        TextView v = ui.text(text, 12, color);
        v.setTypeface(Typeface.MONOSPACE);
        v.setPadding(0, ui.dp(3), 0, ui.dp(3));
        v.setTextIsSelectable(true);
        return v;
    }

    EditText field(String hint, String value, boolean multiline) {
        EditText edit = new EditText(activity);
        edit.setHint(hint);
        edit.setSingleLine(!multiline);
        edit.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS
                | (multiline ? InputType.TYPE_TEXT_FLAG_MULTI_LINE : 0));
        if (value != null) {
            edit.setText(value);
        }
        return edit;
    }

    // ---------------------------------------------------------------- apps and excluded words of a rule

    private void appsDialog(String id) {
        RuleDictionary.SmartRule rule = everything().rule(id);
        UserRules mine = user();
        List<String> own = mine.packages(id);
        List<String> all = new ArrayList<>(rule.packageHints);
        all.sort(String::compareTo);
        String[] names = new String[all.size()];
        boolean[] checked = new boolean[all.size()];
        for (int i = 0; i < names.length; i++) {
            names[i] = (own.contains(all.get(i)) ? "✎ " : "") + all.get(i);
            checked[i] = true;
        }
        new AlertDialog.Builder(activity)
                .setTitle(R.string.rule_apps)
                .setMessage(R.string.rule_apps_help)
                .setMultiChoiceItems(names, checked, (d, which, on) -> checked[which] = on)
                .setPositiveButton(android.R.string.ok, (d, w) -> {
                    UserRules edited = user();
                    for (int i = 0; i < names.length; i++) {
                        if (!checked[i] && own.contains(all.get(i))) {
                            edited.removePackage(id, all.get(i));
                        }
                    }
                    save(edited);
                    activity.refresh();
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private void excludesDialog(String id) {
        UserRules mine = user();
        RuleDictionary.SmartRule rule = shipped().rule(id);
        StringBuilder shown = new StringBuilder();
        if (rule != null) {
            for (Rx rx : rule.excludePatterns) {
                shown.append(rx.source()).append("\n\n");
            }
        }
        List<String> own = mine.excludes(id);
        TextView text = patternText(shown.length() == 0 ? str(R.string.stage_none) : shown.toString().trim(), ui.muted);
        LinearLayout box = new LinearLayout(activity);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
        box.addView(text);
        for (String pattern : own) {
            LinearLayout line = new LinearLayout(activity);
            line.setGravity(Gravity.CENTER_VERTICAL);
            line.addView(patternText(pattern, ui.textColor), new LinearLayout.LayoutParams(0, -2, 1));
            Button remove = new Button(activity);
            remove.setText(R.string.remove);
            remove.setAllCaps(false);
            remove.setOnClickListener(v -> {
                UserRules edited = user();
                edited.removeExclude(id, pattern);
                save(edited);
                line.setVisibility(View.GONE);
            });
            line.addView(remove);
            box.addView(line);
        }
        ScrollView scroll = new ScrollView(activity);
        scroll.addView(box);
        new AlertDialog.Builder(activity).setTitle(R.string.rule_excludes).setView(scroll)
                .setPositiveButton(android.R.string.ok, (d, w) -> activity.refresh()).show();
    }

    private void addExcludeDialog(String id) {
        EditText input = field(str(R.string.rule_exclude_add), null, false);
        input.setTypeface(Typeface.MONOSPACE);
        FrameHolder holder = new FrameHolder(activity, ui, input);
        AlertDialog dialog = new AlertDialog.Builder(activity).setTitle(R.string.rule_exclude_add).setView(holder.view)
                .setPositiveButton(R.string.save, null).setNegativeButton(android.R.string.cancel, null).show();
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            String pattern = input.getText().toString().trim();
            if (pattern.isEmpty() || Rx.compile(pattern, true) == null) {
                Toast.makeText(activity, R.string.stage_pattern_bad, Toast.LENGTH_LONG).show();
                return;
            }
            UserRules edited = user();
            edited.addExclude(id, pattern);
            save(edited);
            dialog.dismiss();
            activity.refresh();
        });
    }

    /** Pads a dialog field to the dialog's text margins. */
    private static final class FrameHolder {
        final LinearLayout view;

        FrameHolder(SettingsActivity activity, OneUi ui, View child) {
            view = new LinearLayout(activity);
            view.setPadding(ui.dp(22), ui.dp(8), ui.dp(22), 0);
            view.addView(child, new LinearLayout.LayoutParams(-1, -2));
        }
    }

    // ---------------------------------------------------------------- import, export, reset

    private void exportRules() {
        String json = customJson();
        if (json == null) {
            Toast.makeText(activity, R.string.rules_export_none, Toast.LENGTH_SHORT).show();
            return;
        }
        ClipboardManager cm = activity.getSystemService(ClipboardManager.class);
        cm.setPrimaryClip(ClipData.newPlainText("DynamicIsland rules", json));
        Toast.makeText(activity, R.string.rules_export_done, Toast.LENGTH_SHORT).show();
    }

    /** Takes a rule file from the clipboard as the user's own rules, after checking that it parses. */
    private void importRules() {
        ClipboardManager clipboard = activity.getSystemService(ClipboardManager.class);
        ClipData clip = clipboard == null ? null : clipboard.getPrimaryClip();
        CharSequence text = clip == null || clip.getItemCount() == 0 ? null : clip.getItemAt(0).coerceToText(activity);
        RuleDictionary parsed = text == null ? null : RuleDictionary.fromJson(text.toString());
        if (parsed == null || parsed.isEmpty()) {
            Toast.makeText(activity, R.string.rules_import_bad, Toast.LENGTH_LONG).show();
            return;
        }
        new AlertDialog.Builder(activity).setTitle(R.string.rules_import).setMessage(R.string.rules_import_confirm)
                .setPositiveButton(android.R.string.ok, (d, w) -> {
                    prefs.edit().putString(ModuleSettings.KEY_RULES_CUSTOM, text.toString().trim()).apply();
                    Toast.makeText(activity, R.string.rules_import_done, Toast.LENGTH_SHORT).show();
                    activity.refresh();
                })
                .setNegativeButton(android.R.string.cancel, null).show();
    }

    private void confirmResetAll() {
        new AlertDialog.Builder(activity).setTitle(R.string.rules_clear_custom).setMessage(R.string.rules_clear_confirm)
                .setPositiveButton(android.R.string.ok, (d, w) -> {
                    prefs.edit().remove(ModuleSettings.KEY_RULES_CUSTOM).remove(ModuleSettings.KEY_RULES_DISABLED).apply();
                    activity.refresh();
                })
                .setNegativeButton(android.R.string.cancel, null).show();
    }

    // ---------------------------------------------------------------- tester

    /** Type a package and a notification text; shows which rules fire, the code and the progress it would find. */
    void testPage() {
        activity.subPage(str(R.string.rule_test));
        ui.category(activity.page(), str(R.string.test_input));
        LinearLayout inputs = ui.card(activity.page());
        EditText pkg = ui.inputRow(inputs, str(R.string.test_package), str(R.string.test_package_hint), false, true);
        EditText text = ui.inputRow(inputs, str(R.string.test_text), str(R.string.test_text_hint), true, false);
        ui.actionRow(inputs, str(R.string.test_pick_app), null, () -> pickApp(p -> pkg.setText(p)));

        ui.category(activity.page(), str(R.string.test_result));
        LinearLayout results = ui.card(activity.page());
        ui.note(activity.page(), str(R.string.test_help));

        RuleDictionary dictionary = RuleStore.build(new RuleConfig(customJson(), disabled()));
        TextWatcher watcher = new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int a, int b, int c) { }
            @Override public void onTextChanged(CharSequence s, int a, int b, int c) { }
            @Override public void afterTextChanged(Editable s) {
                showResults(results, dictionary, pkg.getText().toString(), text.getText().toString());
            }
        };
        pkg.addTextChangedListener(watcher);
        text.addTextChangedListener(watcher);
        watcher.afterTextChanged(null);
    }

    /** One row per thing the text turns into: a card of a rule, a code, a progress. */
    private void showResults(LinearLayout results, RuleDictionary dictionary, String pkg, String text) {
        OneUi.clear(results);
        if (text.trim().isEmpty()) {
            ui.actionRow(results, str(R.string.test_empty), null, null);
            return;
        }
        int rows = 0;
        for (RuleSource.Hit hit : RuleSource.hits(pkg.trim().toLowerCase(Locale.ROOT), text, dictionary)) {
            String label = dictionary.statusText(hit.rule.id, hit.stage, Locale.getDefault());
            StringBuilder detail = new StringBuilder(str(R.string.test_stage, hit.stage));
            if (hit.percent >= 0f) {
                detail.append(" · ").append(Math.round(hit.percent * 100f)).append('%');
            }
            if (hit.distance != null) {
                detail.append(" · ").append(hit.distance);
            }
            if (hit.subject != null) {
                detail.append(" · ").append(hit.subject);
            }
            ui.actionRow(results, ruleName(hit.rule.id) + (label != null ? " · " + label : ""), detail.toString(), null);
            rows++;
        }
        // the code and text-progress detectors read the rules of the process: point them at these for the check
        RuleStore.setForTesting(dictionary);
        try {
            OtpDetector.Match code = OtpDetector.detect(text);
            if (code != null) {
                ui.actionRow(results, str(R.string.test_code_title), code.display(), null);
                rows++;
            }
            int percent = TextProgress.detect(text);
            if (percent >= 0) {
                ui.actionRow(results, str(R.string.test_progress_title), percent + "%", null);
                rows++;
            }
        } finally {
            RuleStore.setForTesting(null);
        }
        if (rows == 0) {
            ui.actionRow(results, str(R.string.test_none), null, null);
        }
    }

    // ---------------------------------------------------------------- app picker

    interface Picked {
        void on(String packageName);
    }

    /** One installed app with a launcher icon, chosen from a list. */
    void pickApp(Picked picked) {
        new Thread(() -> {
            PackageManager pm = activity.getPackageManager();
            Map<String, String> labels = new TreeMap<>();
            Intent launcher = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER);
            for (ResolveInfo info : pm.queryIntentActivities(launcher, 0)) {
                labels.put(info.activityInfo.packageName, String.valueOf(info.loadLabel(pm)));
            }
            List<Map.Entry<String, String>> rows = new ArrayList<>(labels.entrySet());
            rows.sort((a, b) -> a.getValue().compareToIgnoreCase(b.getValue()));
            String[] names = new String[rows.size()];
            for (int i = 0; i < names.length; i++) {
                names[i] = rows.get(i).getValue() + "\n" + rows.get(i).getKey();
            }
            activity.runOnUiThread(() -> {
                if (activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                new AlertDialog.Builder(activity).setTitle(R.string.test_pick_app)
                        .setItems(names, (d, which) -> picked.on(rows.get(which).getKey()))
                        .setNegativeButton(android.R.string.cancel, null).show();
            });
        }, "pick-app").start();
    }
}
