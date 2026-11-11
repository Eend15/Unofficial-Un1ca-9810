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
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.app.LocaleManager;
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
    private PositionScreen position;
    private AppearanceScreen appearance;
    private LinearLayout page;
    private ScrollView scroll;
    private LinearLayout previewFrame;
    private LinearLayout previewHeader;
    private LivePreview preview;
    private SettingChangeFeedback changeFeedback;
    private SettingsSearchScreen search;
    private ReleaseRecommendations recommendations;
    /** Builders of the open pages, the visible one on top. */
    private static final class PageState {
        final Runnable build;
        int scrollY;
        String focusTitle,fallbackTitle;
        PageState(Runnable build) { this.build = build; }
    }
    private final Deque<PageState> stack = new ArrayDeque<>();
    private final Handler statusHandler = new Handler(Looper.getMainLooper());
    private LinearLayout statusHero;
    private long statusNonce;
    private long statusRequested;
    private final Runnable statusPoll = new Runnable() {
        @Override public void run() {
            if (statusHero == null || isFinishing() || isDestroyed()) return;
            boolean connected = Diagnostics.statusAcknowledgedSince(SettingsActivity.this, statusNonce);
            if (connected) ui.setHero(statusHero, true, getString(R.string.ui_connected), getString(R.string.ui_connected_detail));
            else if (SystemClock.elapsedRealtime() - statusRequested >= 3000)
                ui.setHero(statusHero, false, getString(R.string.ui_connection_unknown), getString(R.string.status_waiting_detail));
            if (!connected && SystemClock.elapsedRealtime() - statusRequested < 3000) statusHandler.postDelayed(this, 250);
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        super.onCreate(savedInstanceState);
        prefs = openPrefs();
        ui = new OneUi(this);
        rules = new RulesScreen(this, ui, prefs);
        position = new PositionScreen(this, ui, prefs);
        appearance = new AppearanceScreen(this, ui, prefs);
        search = new SettingsSearchScreen(this, ui);
        recommendations=new ReleaseRecommendations(this,ui,version());
        if(savedInstanceState!=null) recommendations.restore(savedInstanceState.getString("settings.recommendation"));
        ui.setSearchAction(search::launch);
        getWindow().setStatusBarColor(ui.background);
        getWindow().setNavigationBarColor(ui.background);
        if (!ui.dark) {
            getWindow().getDecorView().setSystemUiVisibility(
                    View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR | View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
        }
        scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setBackgroundColor(ui.background);
        page = new LinearLayout(this);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(ui.dp(14), 0, ui.dp(14), ui.dp(40));
        scroll.addView(page);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(ui.background);
        root.setFitsSystemWindows(true);
        previewFrame = new LinearLayout(this);
        previewFrame.setOrientation(LinearLayout.VERTICAL);
        previewFrame.setPadding(ui.dp(14), 0, ui.dp(14), ui.dp(8));
        previewFrame.setVisibility(View.GONE);
        previewHeader = new LinearLayout(this);
        previewHeader.setOrientation(LinearLayout.VERTICAL);
        previewFrame.addView(previewHeader, new LinearLayout.LayoutParams(-1, -2));
        root.addView(previewFrame, new LinearLayout.LayoutParams(-1, -2));
        root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        setContentView(root);
        changeFeedback = new SettingChangeFeedback(this, ui, prefs,
                findViewById(android.R.id.content), this::confirmRestart);
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(OnBackInvokedDispatcher.PRIORITY_DEFAULT, this::goBack);
        open(this::hub);
        if(savedInstanceState!=null) {
            search.restore(savedInstanceState.getString("settings.search.query",""));
            if(savedInstanceState.getBoolean("settings.search.open",false))open(search::open);
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        changeFeedback.stop();
        search.stop();
        if (preview != null) preview.stop();
        saveScroll();
        position.stop();
        statusHandler.removeCallbacksAndMessages(null);
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (changeFeedback != null) changeFeedback.start();
        if (!stack.isEmpty()) {
            render();
        }
    }

    @Override protected void onSaveInstanceState(Bundle state) {
        super.onSaveInstanceState(state);
        state.putString("settings.search.query",search.query());state.putBoolean("settings.search.open",search.visible());
        state.putString("settings.recommendation",recommendations.currentId());
    }
    @Override protected void onDestroy() {
        if(search!=null)search.close();
        super.onDestroy();
    }

    // ---------------------------------------------------------------- navigation

    void open(Runnable builder) {
        saveScroll();
        stack.push(new PageState(builder));
        render();
    }

    private void saveScroll() {
        if (!stack.isEmpty()) stack.peek().scrollY = scroll.getScrollY();
    }

    void goBack() {
        if (stack.size() > 1) {
            stack.pop();
            render();
        } else {
            finish();
        }
    }

    void render() {
        position.stop();
        hidePreview();
        statusHero = null;
        statusHandler.removeCallbacksAndMessages(null);
        page.removeAllViews();
        PageState state = stack.peek();
        state.build.run();
        scroll.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {
            @Override public void onGlobalLayout() {
                scroll.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (stack.peek() == state) scroll.scrollTo(0, state.scrollY);
                if (stack.peek() == state && state.focusTitle != null) revealSearchTarget(state);
            }
        });
    }

    /** Pins the page header and the live island preview above the scrolling page; the page builder calls this after {@link #subPage}. */
    void showPreview() {
        if (page.getChildCount() > 0) {
            View header = page.getChildAt(0);
            page.removeViewAt(0);
            previewHeader.removeAllViews();
            previewHeader.addView(header);
        }
        if (preview == null) {
            preview = new LivePreview(this, ui, prefs);
            preview.setBackground(ui.round(0xFF0B0B0D, ui.dp(26)));
            preview.setClipToOutline(true);
            previewFrame.addView(preview, new LinearLayout.LayoutParams(-1, previewHeight()));
        } else {
            preview.getLayoutParams().height = previewHeight();
        }
        previewFrame.setVisibility(View.VISIBLE);
        preview.start();
    }

    /** About 30% of the screen, so tall cards (music) fit on every phone; never tiny, never half the screen. */
    private int previewHeight() {
        int screen = getResources().getDisplayMetrics().heightPixels;
        return Math.max(ui.dp(190), Math.min(ui.dp(340), Math.round(screen * 0.30f)));
    }

    private void hidePreview() {
        if (preview != null) preview.stop();
        if (previewHeader != null) previewHeader.removeAllViews();
        if (previewFrame != null) previewFrame.setVisibility(View.GONE);
    }

    /** Plays the preview again after a setting it shows has changed. */
    void refreshPreview() {
        refreshPreview(LivePreview.KEEP);
    }

    /** Same, but plays the sample card that shows the changed setting best. */
    void refreshPreview(int sample) {
        if (preview != null && previewFrame.getVisibility() == View.VISIBLE) preview.refresh(sample);
    }

    /** Header of a sub page: back button and title. */
    void subPage(CharSequence title) {
        ui.pageHeader(page, title, this::goBack);
    }

    void openSearchResult(SettingsSearchCatalog.Row row) {
        openSetting(row.route,row.title,row.fallback);
    }
    void openSetting(SettingsSearchCatalog.Route route,int title,int fallback) {
        if(route==SettingsSearchCatalog.Route.SEARCH) { search.launch();return; }
        if(route==SettingsSearchCatalog.Route.HOME) {
            while(stack.size()>1)stack.pop();
            stack.peek().focusTitle=getString(title);stack.peek().fallbackTitle=null;stack.peek().scrollY=0;render();return;
        }
        Runnable builder;
        switch(route) {
            case NOTIFICATIONS:builder=this::notificationsPage;break;
            case EVENTS:builder=this::eventsPage;break;
            case APPS:builder=this::appsPage;break;
            case BEHAVIOR:builder=this::behaviorPage;break;
            case ADVANCED:builder=this::advancedPage;break;
            case ABOUT:builder=this::aboutPage;break;
            case DIAGNOSTICS:builder=this::diagnosticsPage;break;
            case POSITION:builder=position::open;break;
            case CALIBRATION:builder=position::calibration;break;
            case ACCENT:builder=appearance::open;break;
            case GLOW:builder=()->new AmbientGlowScreen(this,ui,prefs).open();break;
            case RULES:builder=rules::advancedPage;break;
            default:builder=this::displayPage;break;
        }
        saveScroll();PageState state=new PageState(builder);
        state.focusTitle=getString(title);state.fallbackTitle=fallback==0?null:getString(fallback);
        stack.push(state);render();
    }
    private void revealSearchTarget(PageState state) {
        View target=page.findViewWithTag(state.focusTitle);
        if((target==null||!target.isEnabled())&&state.fallbackTitle!=null) {
            target=page.findViewWithTag(state.fallbackTitle);
            Toast.makeText(this,getString(R.string.search_parent_hint,state.fallbackTitle),Toast.LENGTH_LONG).show();
        }
        state.focusTitle=null;
        if(target==null)return;
        android.graphics.Rect bounds=new android.graphics.Rect();target.getDrawingRect(bounds);
        page.offsetDescendantRectToMyCoords(target,bounds);
        scroll.scrollTo(0,Math.max(0,bounds.top-ui.dp(88)));state.scrollY=scroll.getScrollY();
        android.graphics.drawable.Drawable old=target.getForeground();
        android.graphics.drawable.GradientDrawable highlight=ui.round(ui.accent,ui.dp(16));highlight.setAlpha(52);
        target.setForeground(highlight);
        android.animation.ObjectAnimator.ofInt(highlight,"alpha",52,0).setDuration(1500).start();
        View selected=target;target.postDelayed(()->{if(selected.getForeground()==highlight)selected.setForeground(old);},1550);
    }

    // ---------------------------------------------------------------- preference access

    LinearLayout page() {
        return page;
    }

    /** Rebuilds the visible page after something it shows has changed. */
    void refresh() {
        saveScroll();
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
        ui.title(page, getString(R.string.app_name), getString(R.string.ui_home_hint), 28);
        ui.searchEntry(page,search::launch);
        recommendations.addTo(page);
        statusHero = ui.hero(page);
        ui.setHero(statusHero, false, getString(R.string.ui_checking_connection), getString(R.string.ui_status_hint));
        statusNonce = Diagnostics.requestStatus(this);
        statusRequested = SystemClock.elapsedRealtime();
        statusHandler.post(statusPoll);
        ui.category(page, getString(R.string.hub_settings));
        LinearLayout main = ui.card(page);
        ui.linkRow(main, getString(R.string.ui_notifications), getString(R.string.ui_notifications_summary), () -> open(this::notificationsPage));
        ui.linkRow(main, getString(R.string.ui_appearance), getString(R.string.ui_appearance_summary), () -> open(this::displayPage));
        ui.linkRow(main, getString(R.string.ui_behavior), getString(R.string.ui_behavior_summary), () -> open(this::behaviorPage));
        ui.linkRow(main, getString(R.string.ui_advanced), getString(R.string.ui_advanced_summary), () -> open(this::advancedPage));
        ui.linkRow(main, getString(R.string.ui_about), getString(R.string.ui_about_summary), () -> open(this::aboutPage));
        LinearLayout restart = ui.card(page);
        ui.valueRow(restart, getString(R.string.ui_settings_language), languageLabel(), this::openLanguageSettings);
        ui.actionRow(restart, getString(R.string.restart_systemui), getString(R.string.restart_systemui_sum), this::confirmRestart);
        ui.note(page, getString(R.string.ui_language_scope));
    }

    private void openLanguageSettings() {
        try { startActivity(new Intent(Settings.ACTION_APP_LOCALE_SETTINGS, Uri.parse("package:" + getPackageName()))); }
        catch (RuntimeException unavailable) { startActivity(new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:" + getPackageName()))); }
    }

    void choice(LinearLayout group, int title, int[] labels, int selected, java.util.function.IntConsumer save) {
        ui.valueRow(group, getString(title), getString(labels[selected]), () -> {
            String[] names = new String[labels.length];
            for (int i = 0; i < labels.length; i++) names[i] = getString(labels[i]);
            new AlertDialog.Builder(this).setTitle(title).setSingleChoiceItems(names, selected, (dialog, which) -> {
                dialog.dismiss(); save.accept(which); refresh();
            }).setNegativeButton(android.R.string.cancel, null).show();
        });
    }

    private void aboutPage() {
        subPage(getString(R.string.ui_about));
        LinearLayout information = ui.card(page);
        ui.actionRow(information, getString(R.string.hub_version), "Dynamic Island " + version(), null);
        if(recommendations.available()) ui.actionRow(information,getString(R.string.recommend_about),null,()->{
            recommendations.showAgain();
            while(stack.size()>1) stack.pop();stack.peek().scrollY=0;render();
        });
        ui.actionRow(information, getString(R.string.hub_author), getString(R.string.hub_author_text), null);
        ui.details(page, getString(R.string.hub_credits), getString(R.string.hub_credits_text));
    }

    private String languageLabel() {
        try {
            android.os.LocaleList locales = getSystemService(LocaleManager.class).getApplicationLocales();
            if (!locales.isEmpty()) return locales.get(0).getDisplayName(getResources().getConfiguration().getLocales().get(0));
        } catch (RuntimeException ignored) { }
        return getString(R.string.ui_follow_system);
    }

    private String version() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Throwable e) {
            return "";
        }
    }

    // ---------------------------------------------------------------- pages

    /** A One UI radio list; the live preview above plays the result as soon as an option is tapped. */
    LinearLayout radios(int title, int desc, int[] labels, int[] tags, int selected, int sample, java.util.function.IntConsumer save) {
        CharSequence[] names = new CharSequence[labels.length];
        for (int i = 0; i < labels.length; i++) names[i] = getString(labels[i]);
        return ui.radioGroup(page, getString(title), getString(desc), names, tags, selected, which -> { save.accept(which); refreshPreview(sample); });
    }

    private void displayPage() {
        subPage(getString(R.string.ui_appearance));
        showPreview();
        radios(R.string.anim_title, R.string.desc_animation, new int[]{R.string.anim_new, R.string.anim_legacy, R.string.imode_title},
                new int[]{OneUi.TAG_DEFAULT, 0, OneUi.TAG_RECOMMENDED},
                flag(ModuleSettings.KEY_I_MODE, false) ? 2 : flag(ModuleSettings.KEY_LEGACY_ANIMATION, false) ? 1 : 0, LivePreview.RING,
                selected -> prefs.edit().putBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, selected == 1)
                        .putBoolean(ModuleSettings.KEY_I_MODE, selected == 2).apply());
        ui.note(page, getString(R.string.imode_desc));
        radios(R.string.transition_blur, R.string.desc_transition_blur, new int[]{R.string.blur_mode_auto, R.string.blur_mode_always, R.string.blur_mode_off},
                new int[]{OneUi.TAG_DEFAULT, 0, 0},
                ModuleSettings.readTransitionBlurMode(prefs), LivePreview.RING,
                selected -> prefs.edit().putInt(ModuleSettings.KEY_TRANSITION_BLUR, selected).apply());
        radios(R.string.material_style, R.string.desc_material, new int[]{R.string.material_frosted, R.string.material_classic},
                new int[]{OneUi.TAG_RECOMMENDED, OneUi.TAG_DEFAULT},
                ModuleSettings.readMaterialStyle(prefs), LivePreview.MUSIC,
                selected -> prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE, selected).apply());
        radios(R.string.pill_outline, R.string.desc_outline, new int[]{R.string.pill_outline_auto, R.string.pill_outline_always, R.string.pill_outline_none},
                new int[]{OneUi.TAG_DEFAULT | OneUi.TAG_RECOMMENDED, 0, 0},
                ModuleSettings.readPillOutlineMode(prefs), LivePreview.RING,
                selected -> prefs.edit().putInt(ModuleSettings.KEY_PILL_OUTLINE, selected).apply());
        ui.note(page, getString(R.string.pill_outline_desc));
        ui.category(page, getString(R.string.group_card), getString(R.string.desc_card));
        LinearLayout cards = ui.card(page);
        new CardShapeScreen(this, ui, prefs).addTo(cards);
        radios(R.string.ui_event_icon_size, R.string.desc_icon_size, new int[]{R.string.ui_size_large_label, R.string.ui_size_small},
                new int[]{OneUi.TAG_DEFAULT, 0},
                flag(ModuleSettings.KEY_COMPACT_EVENT_ICONS, false) ? 1 : 0, LivePreview.RING,
                selected -> prefs.edit().putBoolean(ModuleSettings.KEY_COMPACT_EVENT_ICONS, selected == 1).apply());
        radios(R.string.torch_style, R.string.desc_torch, new int[]{R.string.torch_style_classic, R.string.torch_style_beam},
                new int[]{OneUi.TAG_DEFAULT, OneUi.TAG_RECOMMENDED},
                prefs.getInt(ModuleSettings.KEY_TORCH_STYLE, 0) == 1 ? 1 : 0, LivePreview.TORCH,
                style -> prefs.edit().putInt(ModuleSettings.KEY_TORCH_STYLE, style).apply());
        ui.note(page, getString(R.string.torch_style_desc));
        LinearLayout look = ui.card(page);
        previewToggle(look, R.string.setting_card_header, R.string.setting_card_header_desc, ModuleSettings.KEY_CARD_HEADER, true);
        previewToggle(look, R.string.setting_color_icons, R.string.setting_color_icons_desc, ModuleSettings.KEY_COLOR_ICONS, false);
        ui.switchRow(look, getString(R.string.ui_show_battery_icon), getString(R.string.ui_show_battery_icon_summary),
                !flag(ModuleSettings.KEY_HIDE_BATTERY_ICON, true), on -> {
                    prefs.edit().putBoolean(ModuleSettings.KEY_HIDE_BATTERY_ICON, !on).apply();
                    refreshPreview(LivePreview.CHARGING);
                });
        LinearLayout more = ui.card(page);
        ui.linkRow(more, getString(R.string.accent_page), getString(R.string.accent_page_sum), () -> open(appearance::open));
        ui.linkRow(more, getString(R.string.glow_title), getString(R.string.glow_summary),
                () -> open(() -> new AmbientGlowScreen(this, ui, prefs).open()));
        ui.linkRow(more, getString(R.string.pos_title), getString(R.string.pos_sum), () -> open(position::open));
    }

    /** A switch whose result the preview shows right away. */
    private Switch previewToggle(LinearLayout group, int title, int summary, String key, boolean def) {
        return ui.switchRow(group, getString(title), getString(summary), flag(key, def), on -> {
            prefs.edit().putBoolean(key, on).apply();
            refreshPreview();
        });
    }

    private void behaviorPage() {
        subPage(getString(R.string.ui_behavior));
        LinearLayout visibility = ui.card(page);
        toggle(visibility, R.string.show_in_fullscreen, R.string.show_in_fullscreen_desc,
                ModuleSettings.KEY_SHOW_IN_FULLSCREEN, false);
        boolean low = flag(ModuleSettings.KEY_LOW_PERFORMANCE, false);
        LinearLayout performance = ui.card(page);
        Switch lowMode = toggle(performance, R.string.low_performance_mode, R.string.low_performance_desc, ModuleSettings.KEY_LOW_PERFORMANCE, false);
        OneUi.listen(lowMode, on -> refresh());
        ui.linkRow(performance, getString(R.string.low_performance_details_title), getString(R.string.ui_details), () ->
                new AlertDialog.Builder(this).setTitle(R.string.low_performance_mode).setMessage(R.string.low_performance_details)
                        .setPositiveButton(android.R.string.ok, null).show());
        LinearLayout motion = ui.card(page);
        toggle(motion, R.string.setting_haptics, R.string.setting_haptics_desc, ModuleSettings.KEY_HAPTICS, true);
        toggle(motion, R.string.setting_shade_media, R.string.setting_shade_media_desc, ModuleSettings.KEY_SHADE_MEDIA, true);
        if (low) {
            ui.actionRow(motion, getString(R.string.ui_wave_motion), getString(R.string.low_performance_static_wave), null);
        } else {
            choice(motion, R.string.ui_wave_motion, new int[]{R.string.ui_wave_audio, R.string.ui_wave_demo},
                    flag(ModuleSettings.KEY_VISUALIZER, true) ? 0 : 1,
                    selected -> prefs.edit().putBoolean(ModuleSettings.KEY_VISUALIZER, selected == 0).apply());
        }
        toggle(motion, R.string.concurrent_recording_input, R.string.concurrent_recording_input_desc, ModuleSettings.KEY_CONCURRENT_RECORDING_INPUT, false);
        ui.category(page, getString(R.string.ui_card_timing), getString(R.string.desc_timing));
        LinearLayout timing = ui.card(page);
        Switch auto = toggle(timing, R.string.auto_open_cards, R.string.auto_open_cards_desc, ModuleSettings.KEY_AUTO_OPEN_CARDS, false);
        TextView automatic = secondsRow(timing, R.string.ui_auto_open_time, ModuleSettings.KEY_AUTO_OPEN_S, 4, AUTO_COLLAPSE_CHOICES);
        dependent(auto, (View) automatic.getParent().getParent());
        secondsRow(timing, R.string.setting_auto_collapse, ModuleSettings.KEY_AUTO_COLLAPSE_S, ModuleSettings.DEF_AUTO_COLLAPSE_S, AUTO_COLLAPSE_CHOICES);
        secondsRow(timing, R.string.setting_paused_timeout, ModuleSettings.KEY_PAUSED_TIMEOUT_S, ModuleSettings.DEF_PAUSED_TIMEOUT_S, PAUSED_CHOICES);
    }

    private void notificationsPage() {
        subPage(getString(R.string.ui_notifications));
        LinearLayout banners = ui.card(page);
        int mode = flag(ModuleSettings.KEY_ALL_NOTIFICATIONS, false) ? 2 : flag(ModuleSettings.KEY_HEADS_UP_ISLAND, true) ? 1 : 0;
        choice(banners, R.string.ui_notification_mode, new int[]{R.string.ui_notification_off, R.string.ui_notification_banners, R.string.ui_notification_all}, mode,
                selected -> prefs.edit().putBoolean(ModuleSettings.KEY_HEADS_UP_ISLAND, selected > 0)
                        .putBoolean(ModuleSettings.KEY_ALL_NOTIFICATIONS, selected == 2).apply());
        Switch foreground = toggle(banners, R.string.foreground_notifications, R.string.foreground_notifications_desc, ModuleSettings.KEY_FOREGROUND_NOTIFICATIONS, false);
        toggle(banners, R.string.setting_peek_progress, R.string.setting_peek_progress_desc, ModuleSettings.KEY_PEEK_PROGRESS, false);
        OneUi.setDependentsEnabled(mode > 0 || flag(ModuleSettings.KEY_OTP_CARD, true), OneUi.rowOf(foreground));
        ui.linkRow(banners, getString(R.string.apps_title), appsSummary(), () -> open(this::appsPage));
        ui.note(page, getString(R.string.ui_notification_scope));
        ui.category(page, getString(R.string.ui_activity_types), getString(R.string.desc_activity_types));
        LinearLayout activity = ui.card(page);
        ui.linkRow(activity, getString(R.string.hub_events), getString(R.string.hub_events_sum), () -> open(this::eventsPage));
        ui.linkRow(activity, getString(R.string.rules_title), getString(R.string.hub_rules_sum), () -> open(rules::advancedPage));
        Switch progress = toggle(activity, R.string.setting_progress, R.string.setting_progress_desc, ModuleSettings.KEY_PROGRESS_NOTIFICATIONS, true);
        Switch progressForeground = toggle(activity, R.string.setting_progress_foreground, R.string.setting_progress_foreground_desc, ModuleSettings.KEY_PROGRESS_FOREGROUND, false);
        Switch progressAny = toggle(activity, R.string.setting_progress_any, R.string.setting_progress_any_desc, ModuleSettings.KEY_PROGRESS_ANY, false);
        dependent(progress, OneUi.rowOf(progressForeground), OneUi.rowOf(progressAny));
        toggle(activity, R.string.setting_hide_progress, R.string.setting_hide_progress_desc, ModuleSettings.KEY_HIDE_PROGRESS_ORIGINALS, true);
        toggle(activity, R.string.setting_calls, R.string.setting_calls_desc, ModuleSettings.KEY_THIRD_PARTY_CALLS, true);
        ui.category(page, getString(R.string.group_codes), getString(R.string.desc_codes));
        LinearLayout codes = ui.card(page);
        Switch otp = toggle(codes, R.string.setting_otp, R.string.setting_otp_desc, ModuleSettings.KEY_OTP_CARD, true);
        Switch copy = toggle(codes, R.string.setting_otp_copy, R.string.setting_otp_copy_desc, ModuleSettings.KEY_OTP_AUTO_COPY, false);
        dependent(otp, OneUi.rowOf(copy));
        OneUi.listen(otp, on -> OneUi.setDependentsEnabled(mode > 0 || on, OneUi.rowOf(foreground)));
    }

    private void eventsPage() {
        subPage(getString(R.string.hub_events));
        ui.category(page, getString(R.string.group_events_power), getString(R.string.desc_events_power));
        LinearLayout device = ui.card(page);
        Switch charging = toggle(device, R.string.setting_event_charging, R.string.setting_event_charging_desc, ModuleSettings.KEY_EVENT_CHARGING, true);
        Switch chargingInfo = toggle(device, R.string.setting_charging_info, R.string.setting_charging_info_desc, ModuleSettings.KEY_CHARGING_INFO, false);
        Switch chargingStats = toggle(device, R.string.setting_charging_stats, R.string.setting_charging_stats_desc, ModuleSettings.KEY_CHARGING_STATS, false);
        Runnable chargingDependencies = () -> {
            OneUi.setDependentsEnabled(charging.isChecked(), OneUi.rowOf(chargingInfo));
            OneUi.setDependentsEnabled(charging.isChecked() && chargingInfo.isChecked(), OneUi.rowOf(chargingStats));
        };
        OneUi.listen(charging, on -> chargingDependencies.run());
        OneUi.listen(chargingInfo, on -> chargingDependencies.run());
        chargingDependencies.run();
        toggle(device, R.string.setting_stock_charging_animation, R.string.setting_stock_charging_animation_desc, ModuleSettings.KEY_STOCK_CHARGING_ANIMATION, false);
        ui.details(page, getString(R.string.ui_details), getString(R.string.charging_statistics_note));
        ui.category(page, getString(R.string.group_events_audio), getString(R.string.desc_events_audio));
        device = ui.card(page);
        toggle(device, R.string.setting_event_ringer, R.string.setting_event_ringer_desc, ModuleSettings.KEY_EVENT_RINGER, true);
        toggle(device, R.string.setting_event_bluetooth, R.string.setting_event_bluetooth_desc, ModuleSettings.KEY_EVENT_BLUETOOTH, true);
        Switch headset = toggle(device, R.string.setting_event_headset, R.string.setting_event_headset_desc, ModuleSettings.KEY_EVENT_HEADSET, false);
        Switch headsetStay = toggle(device, R.string.setting_headset_stay, R.string.setting_headset_stay_desc, ModuleSettings.KEY_HEADSET_STAY, false);
        dependent(headset, OneUi.rowOf(headsetStay));
        ui.category(page, getString(R.string.group_events_quick), getString(R.string.desc_events_quick));
        device = ui.card(page);
        toggle(device, R.string.setting_event_toggles, R.string.setting_event_toggles_desc, ModuleSettings.KEY_EVENT_TOGGLES, true);
        toggle(device, R.string.setting_hotspot_card, R.string.setting_hotspot_card_desc, ModuleSettings.KEY_HOTSPOT_CARD, false);
        toggle(device, R.string.setting_unlock_notice, R.string.setting_unlock_notice_desc, ModuleSettings.KEY_UNLOCK_NOTICE, false);
        toggle(device, R.string.setting_torch_pill, R.string.setting_torch_pill_desc, ModuleSettings.KEY_TORCH_PILL, true);
        ui.category(page, getString(R.string.group_privacy), getString(R.string.desc_privacy));
        LinearLayout privacy = ui.card(page);
        Switch indicator = toggle(privacy, R.string.setting_privacy, R.string.setting_privacy_desc, ModuleSettings.KEY_PRIVACY, true);
        Switch location = toggle(privacy, R.string.setting_privacy_location, R.string.setting_privacy_location_desc, ModuleSettings.KEY_PRIVACY_LOCATION, false);
        dependent(indicator, OneUi.rowOf(location));
    }

    private void advancedPage() {
        subPage(getString(R.string.ui_advanced));
        LinearLayout advanced = ui.card(page);
        toggle(advanced, R.string.experimental_recovery, R.string.ui_recovery_short, ModuleSettings.KEY_EXPERIMENTAL_RECOVERY, false);
        ui.details(page, getString(R.string.ui_recovery_details), getString(R.string.experimental_recovery_desc));
        ui.category(page, getString(R.string.hub_tools), getString(R.string.desc_tools));
        LinearLayout tools = ui.card(page);
        ui.linkRow(tools, getString(R.string.diagnostics_title), getString(R.string.diagnostics_sum), () -> open(this::diagnosticsPage));
    }

    // ---------------------------------------------------------------- timing choices

    private TextView secondsRow(LinearLayout group, int title, String key, int def, int[] choices) {
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
        return value[0];
    }

    private String seconds(int s) {
        return getString(R.string.seconds_format, s);
    }

    // ---------------------------------------------------------------- apps

    private String appsSummary() {
        boolean only = flag(ModuleSettings.KEY_APPS_ONLY_LISTED, false);
        int count = listedApps().size();
        if (!only && count == 0) return getString(R.string.ui_apps_all);
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
                        refresh();
                    })
                    .setNegativeButton(android.R.string.cancel, null)
                    .show();
        });
        listed[0] = ui.valueRow(card, getString(flag(ModuleSettings.KEY_APPS_ONLY_LISTED, false) ? R.string.ui_allowed_apps : R.string.ui_excluded_apps), getString(R.string.apps_status, listedApps().size()),
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
            runOnUiThread(() -> {
                if (isFinishing() || isDestroyed()) return;
                AppPickerDialog.show(this, ui, rows, listed, selected -> {
                    prefs.edit().putStringSet(ModuleSettings.KEY_APPS_LISTED, selected).apply();
                    done.run();
                });
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
