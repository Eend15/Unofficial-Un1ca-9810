package dev.android.dynamicisland.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.xposed.Diagnostics;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/**
 * The settings app, in the One UI style: a hub of grouped cards that open sub pages. Every setting is one of
 * four kinds (see {@link OneUi}): a switch, a value that opens a choice, a link to a sub page, or an action.
 * Changes are saved at once and reach System UI within a few seconds, no reboot needed (the options are
 * re-read from the shared preferences file).
 */
public final class SettingsActivity extends Activity {
    private static final int[] AUTO_COLLAPSE_CHOICES = {2, 3, 4, 6, 8, 10, 15, 20, 30};
    private static final int[] PAUSED_CHOICES = {10, 30, 60, 120, 180, 300};

    private SharedPreferences prefs;
    private OneUi ui;
    private RulesScreen rules;
    private AnimationScreen animation;
    private PositionScreen position;
    private LinearLayout page;
    private ScrollView scroll;
    /** Builders of the open pages, the visible one on top. */
    private final Deque<Runnable> stack = new ArrayDeque<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        super.onCreate(savedInstanceState);
        prefs = openPrefs();
        ui = new OneUi(this);
        rules = new RulesScreen(this, ui, prefs);
        animation = new AnimationScreen(this, ui, prefs);
        position = new PositionScreen(this, ui, prefs);
        getWindow().setStatusBarColor(ui.background);
        getWindow().setNavigationBarColor(ui.background);
        if (!ui.dark) {
            getWindow().getDecorView().setSystemUiVisibility(
                    View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR | View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
        }
        scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setBackgroundColor(ui.background);
        scroll.setFitsSystemWindows(true);
        page = new LinearLayout(this);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(ui.dp(14), 0, ui.dp(14), ui.dp(40));
        scroll.addView(page);
        setContentView(scroll);
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(OnBackInvokedDispatcher.PRIORITY_DEFAULT, this::goBack);
        open(this::hub);
    }

    @Override
    protected void onPause() {
        super.onPause();
        position.stop();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (!stack.isEmpty()) {
            render();
        }
    }

    // ---------------------------------------------------------------- navigation

    void open(Runnable builder) {
        stack.push(builder);
        render();
        scroll.scrollTo(0, 0);
    }

    void goBack() {
        if (stack.size() > 1) {
            stack.pop();
            render();
            scroll.scrollTo(0, 0);
        } else {
            finish();
        }
    }

    void render() {
        position.stop(); // a page that moves the real island lets go of it when another page is built
        page.removeAllViews();
        stack.peek().run();
    }

    /** Header of a sub page: back button and title. */
    void subPage(CharSequence title) {
        ui.backButton(page, getString(R.string.back), this::goBack);
        ui.title(page, title, null, 8);
    }

    // ---------------------------------------------------------------- preference access

    LinearLayout page() {
        return page;
    }

    /** Rebuilds the visible page after something it shows has changed. */
    void refresh() {
        render();
    }

    private boolean flag(String key, boolean def) {
        return prefs.getBoolean(key, def);
    }

    Switch toggle(LinearLayout group, int title, int summary, String key, boolean def) {
        return ui.switchRow(group, getString(title), getString(summary), flag(key, def),
                on -> prefs.edit().putBoolean(key, on).apply());
    }

    /** A switch whose dependants are dimmed while it is off. */
    private void dependent(Switch parent, View... children) {
        OneUi.setDependentsEnabled(parent.isChecked(), children);
        OneUi.listen(parent, on -> OneUi.setDependentsEnabled(on, children));
    }

    // ---------------------------------------------------------------- hub

    private void hub() {
        ui.title(page, getString(R.string.app_name), getString(R.string.settings_hint), 96);
        LinearLayout hero = ui.hero(page);
        String report = Diagnostics.read(this);
        if (report == null) {
            ui.setHero(hero, false, getString(R.string.status_waiting), getString(R.string.status_waiting_detail));
        } else {
            ui.setHero(hero, true, getString(R.string.status_active), firstLines(report, 4));
        }

        ui.category(page, getString(R.string.hub_settings));
        LinearLayout main = ui.card(page);
        ui.linkRow(main, getString(R.string.hub_display), getString(R.string.hub_display_sum), () -> open(this::displayPage));
        ui.linkRow(main, getString(R.string.anim_title), getString(R.string.anim_sum), () -> open(animation::open));
        ui.linkRow(main, getString(R.string.pos_title), getString(R.string.pos_sum), () -> open(position::open));
        ui.linkRow(main, getString(R.string.hub_notifications), getString(R.string.hub_notifications_sum), () -> open(this::notificationsPage));
        ui.linkRow(main, getString(R.string.hub_events), getString(R.string.hub_events_sum), () -> open(this::eventsPage));
        ui.linkRow(main, getString(R.string.apps_title), appsSummary(), () -> open(this::appsPage));
        ui.linkRow(main, getString(R.string.rules_title), getString(R.string.hub_rules_sum), () -> open(rules::listPage));

        ui.category(page, getString(R.string.hub_tools));
        LinearLayout tools = ui.card(page);
        ui.actionRow(tools, getString(R.string.restart_systemui), getString(R.string.restart_systemui_sum), this::confirmRestart);
        ui.linkRow(tools, getString(R.string.diagnostics_title), getString(R.string.diagnostics_sum), () -> open(this::diagnosticsPage));

        ui.category(page, getString(R.string.hub_about));
        LinearLayout about = ui.card(page);
        ui.actionRow(about, getString(R.string.hub_version), "Dynamic Island " + version(), null);
        ui.actionRow(about, getString(R.string.hub_author), getString(R.string.hub_author_text), null);
        ui.actionRow(about, getString(R.string.hub_credits), getString(R.string.hub_credits_text), null);
    }

    private static String firstLines(String text, int count) {
        String[] lines = text.split("\n");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Math.min(count, lines.length); i++) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(lines[i]);
        }
        return sb.toString();
    }

    private String version() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Throwable e) {
            return "";
        }
    }

    // ---------------------------------------------------------------- pages

    private void displayPage() {
        subPage(getString(R.string.hub_display));
        ui.category(page, getString(R.string.group_appearance));
        LinearLayout look = ui.card(page);
        toggle(look, R.string.setting_card_header, R.string.setting_card_header_desc, ModuleSettings.KEY_CARD_HEADER, true);
        toggle(look, R.string.setting_visualizer, R.string.setting_visualizer_desc, ModuleSettings.KEY_VISUALIZER, true);
        toggle(look, R.string.setting_color_icons, R.string.setting_color_icons_desc, ModuleSettings.KEY_COLOR_ICONS, false);

        ui.category(page, getString(R.string.group_feedback));
        LinearLayout feedback = ui.card(page);
        toggle(feedback, R.string.setting_haptics, R.string.setting_haptics_desc, ModuleSettings.KEY_HAPTICS, true);

        ui.category(page, getString(R.string.group_timing));
        LinearLayout timing = ui.card(page);
        secondsRow(timing, R.string.setting_auto_collapse, ModuleSettings.KEY_AUTO_COLLAPSE_S, ModuleSettings.DEF_AUTO_COLLAPSE_S, AUTO_COLLAPSE_CHOICES);
        secondsRow(timing, R.string.setting_paused_timeout, ModuleSettings.KEY_PAUSED_TIMEOUT_S, ModuleSettings.DEF_PAUSED_TIMEOUT_S, PAUSED_CHOICES);
    }

    private void notificationsPage() {
        subPage(getString(R.string.hub_notifications));
        ui.category(page, getString(R.string.group_banners));
        LinearLayout banners = ui.card(page);
        toggle(banners, R.string.setting_heads_up, R.string.setting_heads_up_desc, ModuleSettings.KEY_HEADS_UP_ISLAND, true);
        toggle(banners, R.string.setting_all_notifications, R.string.setting_all_notifications_desc, ModuleSettings.KEY_ALL_NOTIFICATIONS, false);
        Switch progress = toggle(banners, R.string.setting_progress, R.string.setting_progress_desc, ModuleSettings.KEY_PROGRESS_NOTIFICATIONS, true);
        Switch hide = toggle(banners, R.string.setting_hide_progress, R.string.setting_hide_progress_desc, ModuleSettings.KEY_HIDE_PROGRESS_ORIGINALS, true);
        dependent(progress, OneUi.rowOf(hide));

        ui.category(page, getString(R.string.group_codes));
        LinearLayout codes = ui.card(page);
        Switch otp = toggle(codes, R.string.setting_otp, R.string.setting_otp_desc, ModuleSettings.KEY_OTP_CARD, true);
        Switch copy = toggle(codes, R.string.setting_otp_copy, R.string.setting_otp_copy_desc, ModuleSettings.KEY_OTP_AUTO_COPY, false);
        dependent(otp, OneUi.rowOf(copy));

        ui.category(page, getString(R.string.group_calls));
        LinearLayout calls = ui.card(page);
        toggle(calls, R.string.setting_calls, R.string.setting_calls_desc, ModuleSettings.KEY_THIRD_PARTY_CALLS, true);
    }

    private void eventsPage() {
        subPage(getString(R.string.hub_events));
        ui.category(page, getString(R.string.group_charging));
        LinearLayout device = ui.card(page);
        toggle(device, R.string.setting_event_charging, R.string.setting_event_charging_desc, ModuleSettings.KEY_EVENT_CHARGING, true);
        toggle(device, R.string.setting_event_ringer, R.string.setting_event_ringer_desc, ModuleSettings.KEY_EVENT_RINGER, true);
        toggle(device, R.string.setting_event_bluetooth, R.string.setting_event_bluetooth_desc, ModuleSettings.KEY_EVENT_BLUETOOTH, true);
        toggle(device, R.string.setting_event_toggles, R.string.setting_event_toggles_desc, ModuleSettings.KEY_EVENT_TOGGLES, true);

        ui.category(page, getString(R.string.group_privacy));
        LinearLayout privacy = ui.card(page);
        Switch indicator = toggle(privacy, R.string.setting_privacy, R.string.setting_privacy_desc, ModuleSettings.KEY_PRIVACY, true);
        Switch location = toggle(privacy, R.string.setting_privacy_location, R.string.setting_privacy_location_desc, ModuleSettings.KEY_PRIVACY_LOCATION, false);
        dependent(indicator, OneUi.rowOf(location));
    }

    // ---------------------------------------------------------------- timing choices

    private void secondsRow(LinearLayout group, int title, String key, int def, int[] choices) {
        TextView[] value = new TextView[1];
        value[0] = ui.valueRow(group, getString(title), seconds(prefs.getInt(key, def)), () -> {
            int current = prefs.getInt(key, def);
            String[] labels = new String[choices.length];
            int checked = -1;
            for (int i = 0; i < choices.length; i++) {
                labels[i] = seconds(choices[i]);
                if (choices[i] == current) {
                    checked = i;
                }
            }
            new AlertDialog.Builder(this).setTitle(title)
                    .setSingleChoiceItems(labels, checked, (dialog, which) -> {
                        dialog.dismiss();
                        prefs.edit().putInt(key, choices[which]).apply();
                        value[0].setText(seconds(choices[which]));
                    })
                    .setNegativeButton(android.R.string.cancel, null)
                    .show();
        });
    }

    private String seconds(int s) {
        return getString(R.string.seconds_format, s);
    }

    // ---------------------------------------------------------------- apps

    private String appsSummary() {
        boolean only = flag(ModuleSettings.KEY_APPS_ONLY_LISTED, false);
        int count = listedApps().size();
        return getString(R.string.apps_summary_format, getString(only ? R.string.apps_whitelist_short : R.string.apps_blacklist_short), count);
    }

    private Set<String> listedApps() {
        return new LinkedHashSet<>(prefs.getStringSet(ModuleSettings.KEY_APPS_LISTED, Collections.<String>emptySet()));
    }

    private void appsPage() {
        subPage(getString(R.string.apps_title));
        LinearLayout card = ui.card(page);
        TextView[] mode = new TextView[1];
        TextView[] listed = new TextView[1];
        mode[0] = ui.valueRow(card, getString(R.string.apps_mode), modeLabel(), () -> {
            boolean only = flag(ModuleSettings.KEY_APPS_ONLY_LISTED, false);
            String[] labels = {getString(R.string.apps_blacklist), getString(R.string.apps_whitelist)};
            new AlertDialog.Builder(this).setTitle(R.string.apps_mode)
                    .setSingleChoiceItems(labels, only ? 1 : 0, (dialog, which) -> {
                        dialog.dismiss();
                        prefs.edit().putBoolean(ModuleSettings.KEY_APPS_ONLY_LISTED, which == 1).apply();
                        mode[0].setText(modeLabel());
                    })
                    .setNegativeButton(android.R.string.cancel, null)
                    .show();
        });
        listed[0] = ui.valueRow(card, getString(R.string.apps_choose), getString(R.string.apps_status, listedApps().size()),
                () -> chooseApps(() -> listed[0].setText(getString(R.string.apps_status, listedApps().size()))));
        ui.note(page, getString(R.string.apps_only_listed_desc));
    }

    private String modeLabel() {
        return getString(flag(ModuleSettings.KEY_APPS_ONLY_LISTED, false) ? R.string.apps_whitelist : R.string.apps_blacklist);
    }

    /** A checklist of the installed apps that have a launcher icon, plus the apps already listed. */
    private void chooseApps(Runnable done) {
        new Thread(() -> {
            PackageManager pm = getPackageManager();
            Set<String> listed = listedApps();
            Map<String, String> labels = new TreeMap<>();
            android.content.Intent launcher = new android.content.Intent(android.content.Intent.ACTION_MAIN).addCategory(android.content.Intent.CATEGORY_LAUNCHER);
            for (ResolveInfo info : pm.queryIntentActivities(launcher, 0)) {
                labels.put(info.activityInfo.packageName, String.valueOf(info.loadLabel(pm)));
            }
            for (String pkg : listed) {
                if (!labels.containsKey(pkg)) {
                    labels.put(pkg, pkg);
                }
            }
            List<Map.Entry<String, String>> rows = new ArrayList<>(labels.entrySet());
            rows.sort((a, b) -> a.getValue().compareToIgnoreCase(b.getValue()));
            String[] names = new String[rows.size()];
            boolean[] checked = new boolean[rows.size()];
            for (int i = 0; i < names.length; i++) {
                names[i] = rows.get(i).getValue() + "\n" + rows.get(i).getKey();
                checked[i] = listed.contains(rows.get(i).getKey());
            }
            runOnUiThread(() -> {
                if (isFinishing() || isDestroyed()) {
                    return;
                }
                new AlertDialog.Builder(this)
                    .setTitle(R.string.apps_choose)
                    .setMultiChoiceItems(names, checked, (dialog, which, isChecked) -> {
                        String pkg = rows.get(which).getKey();
                        if (isChecked) {
                            listed.add(pkg);
                        } else {
                            listed.remove(pkg);
                        }
                    })
                    .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                        prefs.edit().putStringSet(ModuleSettings.KEY_APPS_LISTED, listed).apply();
                        done.run();
                    })
                    .setNegativeButton(android.R.string.cancel, null)
                    .show();
            });
        }, "list-apps").start();
    }

    // ---------------------------------------------------------------- diagnostics and tools

    private void diagnosticsPage() {
        subPage(getString(R.string.diagnostics_title));
        String text = Diagnostics.read(this);
        LinearLayout card = ui.card(page);
        TextView report = ui.text(text != null ? text : getString(R.string.diagnostics_none), 11, ui.muted);
        report.setTypeface(Typeface.MONOSPACE);
        report.setTextIsSelectable(true);
        report.setPadding(ui.dp(22), ui.dp(16), ui.dp(22), ui.dp(16));
        card.addView(report);
        LinearLayout actions = ui.card(page);
        ui.actionRow(actions, getString(R.string.diagnostics_refresh), null, this::render);
        ui.actionRow(actions, getString(R.string.diagnostics_copy), null, () -> {
            ClipboardManager cm = getSystemService(ClipboardManager.class);
            cm.setPrimaryClip(ClipData.newPlainText("DynamicIsland", report.getText()));
            Toast.makeText(this, R.string.diagnostics_copied, Toast.LENGTH_SHORT).show();
        });
    }

    private void confirmRestart() {
        new AlertDialog.Builder(this)
                .setTitle(R.string.restart_systemui)
                .setMessage(R.string.restart_systemui_confirm)
                .setPositiveButton(android.R.string.ok, (dialog, which) -> restartSystemUi())
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    private void restartSystemUi() {
        new Thread(() -> {
            boolean done = SystemUiRestarter.restart();
            runOnUiThread(() -> {
                if (!done) {
                    Toast.makeText(this, R.string.restart_systemui_failed, Toast.LENGTH_LONG).show();
                }
            });
        }, "restart-systemui").start();
    }

    /** World-readable on LSPosed (which lifts the N+ restriction for active modules), private otherwise. */
    @SuppressWarnings({"deprecation", "WorldReadableFiles"})
    private SharedPreferences openPrefs() {
        return ModuleSettings.openStore(this);
    }
}
