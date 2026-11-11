package dev.android.dynamicisland.settings;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.content.SharedPreferences;
import de.robv.android.xposed.XSharedPreferences;
import dev.android.dynamicisland.island.rules.RuleConfig;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Map;
import java.util.Set;

/**
 * User options chosen in {@link SettingsActivity}, read inside System UI through
 * {@link XSharedPreferences}. Every getter falls back to its default when the preferences are not
 * readable (module scope not granted yet, first boot, ...), so nothing here can break the island.
 */
public final class ModuleSettings {
    public static final String PACKAGE = "dev.android.dynamicisland";
    public static final String FILE = "settings";

    public static final String KEY_PAUSED_TIMEOUT_S = "paused_timeout_s";
    public static final String KEY_AUTO_COLLAPSE_S = "auto_collapse_s";
    public static final String KEY_CARD_HEADER = "card_header";
    public static final String KEY_VISUALIZER = "visualizer";
    public static final String KEY_COLOR_ICONS = "compact_color_icons";
    /** The island's music card in place of the stock music player of the notification shade. */
    public static final String KEY_SHADE_MEDIA = "shade_media_player";
    public static final String KEY_EVENT_CHARGING = "event_charging";
    public static final String KEY_STOCK_CHARGING_ANIMATION = "stock_charging_animation";
    /** Experimental concurrent input; opt-in because vendor recording policies differ. */
    public static final String KEY_CONCURRENT_RECORDING_INPUT = "concurrent_recording_input";
    public static final String KEY_CHARGING_INFO = "charging_info";
    public static final String KEY_CHARGING_STATS = "charging_statistics";
    public static final String KEY_EVENT_HEADSET = "event_headset";
    public static final String KEY_HEADSET_STAY = "headset_card_stay";
    public static final String KEY_HOTSPOT_CARD = "hotspot_card";
    public static final String KEY_UNLOCK_NOTICE = "unlock_notice";
    public static final String KEY_PEEK_PROGRESS = "peek_progress";
    public static final String KEY_PROGRESS_FOREGROUND = "progress_foreground";
    public static final String KEY_PROGRESS_ANY = "progress_any";
    public static final String KEY_EVENT_RINGER = "event_ringer";
    public static final String KEY_EVENT_BLUETOOTH = "event_bluetooth";
    public static final String KEY_HAPTICS = "haptics";
    /** Rendering overrides only; individual preferences are retained. */
    public static final String KEY_LOW_PERFORMANCE = "low_performance_mode";
    public static final String KEY_MATERIAL_STYLE = "material_style";
    public static final int MATERIAL_FROSTED = 0, MATERIAL_CLASSIC = 1;
    /** Keep active content visible when a portrait app hides the status bar. */
    public static final String KEY_SHOW_IN_FULLSCREEN = "show_in_fullscreen";
    /** Plays the animations of version 0.1.3 and before instead of the smoothed ones. */
    public static final String KEY_LEGACY_ANIMATION = "legacy_animation";
    public static final String KEY_I_MODE = "i_mode";
    /** Where the island sits: {@link #ANCHOR_AUTO} (on the camera hole), the middle, the left or the right of the status bar. */
    public static final String KEY_PILL_ANCHOR = "pill_anchor";
    /** Outline policy: automatic contrast detection, always visible, or never drawn. */
    public static final String KEY_PILL_OUTLINE = "pill_outline";
    public static final int PILL_OUTLINE_AUTO = 0;
    public static final int PILL_OUTLINE_ALWAYS = 1;
    public static final int PILL_OUTLINE_NONE = 2;
    /** The blur while the island opens and closes: automatic (off while the phone stutters), always on, or off. */
    public static final String KEY_TRANSITION_BLUR = "transition_blur";
    public static final int TRANSITION_BLUR_AUTO = 0;
    public static final int TRANSITION_BLUR_ALWAYS = 1;
    public static final int TRANSITION_BLUR_OFF = 2;
    public static final String KEY_PILL_X_DP = "pill_x_dp";
    public static final String KEY_PILL_Y_DP = "pill_y_dp";
    /** Wall-clock time until which the position page is open; a slower way (the settings file) to ask for the sample. */
    public static final String KEY_PILL_PREVIEW_UNTIL = "pill_preview_until";
    /** The settings app tells System UI about a position it is trying out, so the real island moves at once. */
    public static final String ACTION_PILL_PREVIEW = "dev.android.dynamicisland.action.PILL_PREVIEW";
    public static final String EXTRA_ACTIVE = "active";
    public static final String EXTRA_SAMPLE_LONG = "sample_long";
    /** A tried-out position counts for this long without another message (the page sends a heartbeat). */
    private static final long PREVIEW_MS = 6000;
    /** The camera hole the island grows from: found from the display cutout, set by hand, or none at all. */
    public static final String KEY_HOLE_MODE = "hole_mode";
    public static final String KEY_HOLE_D_DP = "hole_d_dp";
    public static final String KEY_HOLE_X_DP = "hole_x_dp";
    public static final String KEY_HOLE_Y_DP = "hole_y_dp";
    public static final String KEY_HOLE_TEXT_PADDING_DP = "hole_text_padding_dp";
    public static final int HOLE_TEXT_PADDING_MAX_DP = 16;
    public static final int HOLE_AUTO = 0;
    public static final int HOLE_MANUAL = 1;
    public static final int HOLE_NONE = 2;
    public static final int HOLE_D_MIN_DP = 6;
    public static final int HOLE_D_MAX_DP = 60;
    public static final int HOLE_D_DEFAULT_DP = 22;
    public static final int HOLE_X_MAX_DP = 200;
    public static final int HOLE_Y_MIN_DP = -24;
    public static final int HOLE_Y_MAX_DP = 48;
    /** The size of the pill: height in percent of the normal one, the narrowest and widest it gets (0 = automatic), and whether it keeps its widest width. */
    public static final String KEY_PILL_H_PCT = "pill_h_pct";
    public static final String KEY_PILL_MIN_W_DP = "pill_min_w_dp";
    public static final String KEY_PILL_MAX_W_DP = "pill_max_w_dp";
    public static final String KEY_PILL_KEEP_WIDTH = "pill_keep_width";
    public static final String KEY_CARD_CORNER_RADIUS_DP = "card_corner_radius_dp";
    public static final String KEY_CUSTOM_CARD_ROUNDNESS = "custom_card_roundness";
    public static final int PILL_H_MIN_PCT = -20;
    public static final int PILL_H_MAX_PCT = 40;
    public static final int PILL_MIN_W_MAX_DP = 420;
    public static final int PILL_MAX_W_MIN_DP = 100;
    public static final int PILL_MAX_W_MAX_DP = 420;
    public static final int ANCHOR_AUTO = 0;
    public static final int ANCHOR_CENTER = 1;
    public static final int ANCHOR_LEFT = 2;
    public static final int ANCHOR_RIGHT = 3;
    public static final int PILL_X_MAX_DP = 160;
    public static final int PILL_Y_MIN_DP = -16;
    public static final int PILL_Y_MAX_DP = 64;
    public static final String KEY_HEADS_UP_ISLAND = "heads_up_island";
    public static final String KEY_FOREGROUND_NOTIFICATIONS = "foreground_notifications";
    public static final String KEY_AUTO_OPEN_CARDS = "auto_open_cards";
    public static final String KEY_EXPERIMENTAL_RECOVERY = "experimental_notification_recovery";
    public static final String KEY_COMPACT_EVENT_ICONS = "compact_event_icons";
    public static final String KEY_HIDE_BATTERY_ICON = "hide_battery_icon";
    public static final String KEY_ACCENT_CUSTOM = "accent_custom";
    public static final String KEY_ACCENT_COLOR = "accent_color";
    public static final int DEFAULT_ACCENT = 0xFF3E91FF;
    public static final String KEY_AMBIENT_GLOW = "ambient_glow";
    public static final String KEY_GLOW_STRENGTH = "ambient_glow_strength";
    public static final String KEY_GLOW_MOTION = "ambient_glow_motion";
    public static final String KEY_GLOW_MUSIC_ONLY = "ambient_glow_music_only";
    public static final String KEY_GLOW_COLOUR = "ambient_glow_colour";
    public static final String KEY_GLOW_ALBUM = "ambient_glow_album";
    public static final String KEY_GLOW_FOLLOW_THEME = "ambient_glow_follow_theme";
    public static final int DEFAULT_GLOW_COLOUR = 0xFFE0A97D;
    public static final int DEFAULT_GLOW_STRENGTH = 45;
    public static final int DEFAULT_GLOW_MOTION = 50;
    public static final String KEY_ALL_NOTIFICATIONS = "all_notifications_island";
    public static final String KEY_PROGRESS_NOTIFICATIONS = "progress_notifications";
    public static final String KEY_HIDE_PROGRESS_ORIGINALS = "hide_progress_originals";
    /** Cards for staged processes (delivery, taxi, route, connection) found by the rules. */
    public static final String KEY_SMART_RULES = "smart_rules";
    /** The user's own rule file. */
    public static final String KEY_RULES_CUSTOM = "rules_custom";
    /** Ids of the smart rules switched off. */
    public static final String KEY_RULES_DISABLED = "rules_disabled";
    public static final String KEY_EVENT_TOGGLES = "event_toggles";
    /** The flashlight card shown on the island while the torch is on. */
    public static final String KEY_TORCH_PILL = "torch_pill";
    public static final String KEY_TORCH_STYLE = "torch_style";
    public static final String KEY_PRIVACY = "privacy_indicator";
    public static final String KEY_PRIVACY_LOCATION = "privacy_location";
    public static final String KEY_OTP_CARD = "otp_card";
    public static final String KEY_OTP_AUTO_COPY = "otp_auto_copy";
    public static final String KEY_THIRD_PARTY_CALLS = "third_party_calls";
    /** true = only the listed apps are shown, false (default) = every app except the listed ones. */
    public static final String KEY_APPS_ONLY_LISTED = "apps_only_listed";
    /** Package names of the listed apps. */
    public static final String KEY_APPS_LISTED = "apps_listed";

    public static final int DEF_PAUSED_TIMEOUT_S = 60;
    public static final int DEF_AUTO_COLLAPSE_S = 6;

    private static final long RELOAD_INTERVAL_MS = 4000;
    /** Floors for the timeouts, so a bad stored value cannot make the island flicker away at once. */
    private static final int MIN_PAUSED_TIMEOUT_S = 5;
    private static final int MIN_AUTO_COLLAPSE_S = 2;
    private static final long MS_PER_SECOND = 1000L;

    // Values are cached and refreshed on a background thread: reading the preferences goes through
    // file / binder access that must never block (or throw into) System UI's main thread.
    private static volatile int pausedTimeoutS = DEF_PAUSED_TIMEOUT_S;
    private static volatile int autoCollapseS = DEF_AUTO_COLLAPSE_S;
    private static volatile boolean cardHeader = true;
    private static volatile boolean visualizer = true;
    private static volatile boolean colorIcons;
    private static volatile boolean shadeMedia = true;
    private static volatile boolean eventCharging = true;
    private static volatile boolean stockChargingAnimation;
    private static volatile boolean concurrentRecordingInput;
    private static volatile boolean chargingInfo;
    private static volatile boolean chargingStats;
    private static volatile boolean eventHeadset;
    private static volatile boolean headsetStay;
    private static volatile boolean hotspotCard;
    private static volatile boolean unlockNotice;
    private static volatile boolean peekProgress;
    private static volatile boolean progressForeground;
    private static volatile boolean progressAny;
    private static volatile boolean eventRinger = true;
    private static volatile boolean eventBluetooth = true;
    private static volatile boolean haptics = true;
    private static volatile boolean lowPerformance;
    private static volatile int materialStyle = MATERIAL_CLASSIC;
    private static volatile boolean showInFullscreen;
    private static volatile boolean legacyAnimation;
    private static volatile boolean iMode;
    private static volatile boolean headsUpIsland = true;
    private static volatile boolean allNotifications;
    private static volatile boolean foregroundNotifications;
    private static volatile boolean autoOpenCards;
    private static volatile int autoOpenS = 4;
    private static volatile boolean experimentalRecovery;
    private static volatile boolean hideBatteryIcon = true;
    private static volatile boolean compactEventIcons;
    private static volatile boolean accentCustom;
    private static volatile int accentColor = DEFAULT_ACCENT;
    private static volatile boolean ambientGlow = true;
    private static volatile boolean glowMusicOnly = true;
    private static volatile boolean glowAlbum = true;
    private static volatile boolean glowFollowTheme;
    private static volatile int glowStrength = DEFAULT_GLOW_STRENGTH;
    private static volatile int glowMotion = DEFAULT_GLOW_MOTION;
    private static volatile int glowColour = DEFAULT_GLOW_COLOUR;
    private static volatile boolean progressNotifications = true;
    private static volatile boolean hideProgressOriginals = true;
    private static volatile boolean smartRules = true;
    private static volatile int pillAnchor = ANCHOR_AUTO;
    private static volatile int pillOutlineMode = PILL_OUTLINE_AUTO;
    private static volatile int transitionBlurMode = TRANSITION_BLUR_AUTO;
    private static volatile int cardCornerRadiusDp = 28;
    private static volatile boolean customCardRoundness;
    private static volatile int pillXDp;
    private static volatile int pillYDp;
    /** Told (on the reload thread) when the island's position settings changed. */
    private static volatile Runnable onPlacementChanged;
    private static volatile int holeMode = HOLE_AUTO;
    private static volatile int holeDDp = HOLE_D_DEFAULT_DP;
    private static volatile int holeXDp;
    private static volatile int holeYDp;
    private static volatile int holeTextPaddingDp;
    private static volatile int pillHPct;
    private static volatile int pillMinWDp;
    private static volatile int pillMaxWDp;
    private static volatile boolean keepPillWidth;
    private static volatile long previewUntil;
    private static volatile boolean sampleLong;
    private static volatile long previewWallUntil;
    private static volatile RuleConfig rulesConfig = RuleConfig.DEFAULT;
    /** Told (on the reload thread) when the user's rules changed, so cards already showing can follow. */
    private static volatile Runnable onRulesChanged;
    /** Told (on the reload thread) when any switch changed, so what is on the island follows without waiting for the next event. */
    private static volatile Runnable onSwitchesChanged;
    private static volatile boolean eventToggles = true;
    private static volatile boolean torchPill = true;
    private static volatile int torchStyle;
    private static volatile boolean privacyIndicator = true;
    private static volatile boolean privacyLocation = false;
    private static volatile boolean otpCard = true;
    private static volatile boolean otpAutoCopy = false;
    private static volatile boolean thirdPartyCalls = true;
    private static volatile AppFilter appFilter = AppFilter.OFF;

    private static boolean started;
    private static boolean previewProcess;
    private static XSharedPreferences prefs;
    private static boolean loaded;
    /** True while the values come from {@link SettingsProvider} because the preference file was empty or unreadable. */
    private static boolean viaProvider;
    private static Map<String, Object> lastRemote;
    private static String lastLogged;

    private ModuleSettings() {
    }

    public static void setOnPlacementChanged(Runnable listener) {
        onPlacementChanged = listener;
    }

    /**
     * Takes a position the settings app is trying out. While the preview lasts the island shows a sample item, and
     * the saved settings do not override the position (they are written when the finger lets go).
     */
    public static void applyPlacementPreview(android.content.Intent i) {
        holeTextPaddingDp = clampHoleTextPadding(i.getIntExtra(KEY_HOLE_TEXT_PADDING_DP, holeTextPaddingDp));
        holeMode = Math.max(HOLE_AUTO, Math.min(HOLE_NONE, i.getIntExtra(KEY_HOLE_MODE, holeMode)));
        holeDDp = Math.max(HOLE_D_MIN_DP, Math.min(HOLE_D_MAX_DP, i.getIntExtra(KEY_HOLE_D_DP, holeDDp)));
        holeXDp = Math.max(-HOLE_X_MAX_DP, Math.min(HOLE_X_MAX_DP, i.getIntExtra(KEY_HOLE_X_DP, holeXDp)));
        holeYDp = Math.max(HOLE_Y_MIN_DP, Math.min(HOLE_Y_MAX_DP, i.getIntExtra(KEY_HOLE_Y_DP, holeYDp)));
        pillAnchor = Math.max(ANCHOR_AUTO, Math.min(ANCHOR_RIGHT, i.getIntExtra(KEY_PILL_ANCHOR, pillAnchor)));
        pillXDp = Math.max(-PILL_X_MAX_DP, Math.min(PILL_X_MAX_DP, i.getIntExtra(KEY_PILL_X_DP, pillXDp)));
        pillYDp = Math.max(PILL_Y_MIN_DP, Math.min(PILL_Y_MAX_DP, i.getIntExtra(KEY_PILL_Y_DP, pillYDp)));
        pillHPct = Math.max(PILL_H_MIN_PCT, Math.min(PILL_H_MAX_PCT, i.getIntExtra(KEY_PILL_H_PCT, pillHPct)));
        pillMinWDp = Math.max(0, Math.min(PILL_MIN_W_MAX_DP, i.getIntExtra(KEY_PILL_MIN_W_DP, pillMinWDp)));
        pillMaxWDp = clampMaxWidth(i.getIntExtra(KEY_PILL_MAX_W_DP, pillMaxWDp));
        keepPillWidth = i.getBooleanExtra(KEY_PILL_KEEP_WIDTH, keepPillWidth);
        sampleLong = i.getBooleanExtra(EXTRA_SAMPLE_LONG, false);
        boolean active = i.getBooleanExtra(EXTRA_ACTIVE, true);
        previewUntil = active ? android.os.SystemClock.uptimeMillis() + PREVIEW_MS : 0L;
        Runnable listener = onPlacementChanged;
        if (listener != null) {
            listener.run();
        }
    }

    /** True while the settings app is moving the island: it shows a sample item so there is something to move. */
    /** The sample item holds a long text, so the pill grows as wide as it is allowed to. */
    public static boolean previewSampleLong() {
        return sampleLong;
    }

    public static boolean placementPreviewActive() {
        return android.os.SystemClock.uptimeMillis() < previewUntil || System.currentTimeMillis() < previewWallUntil;
    }

    private static int clampMaxWidth(int dp) {
        return dp < PILL_MAX_W_MIN_DP ? 0 : Math.min(PILL_MAX_W_MAX_DP, dp);
    }

    /** Outline policy, independent of animation style. Auto uses contrast with the actual background. */
    public static int transitionBlurMode() { return transitionBlurMode; }

    public static int readTransitionBlurMode(SharedPreferences source) {
        try {
            int mode = source.getInt(KEY_TRANSITION_BLUR, TRANSITION_BLUR_AUTO);
            return mode >= TRANSITION_BLUR_AUTO && mode <= TRANSITION_BLUR_OFF ? mode : TRANSITION_BLUR_AUTO;
        } catch (ClassCastException corrupt) {
            return TRANSITION_BLUR_AUTO;
        }
    }

    public static int pillOutlineMode() {
        ensureStarted();
        return pillOutlineMode;
    }

    /** Used by the settings UI, preview, and both preference sources; invalid values mean Auto. */
    static int readPillOutlineMode(SharedPreferences source) {
        try {
            int mode = source.getInt(KEY_PILL_OUTLINE, PILL_OUTLINE_AUTO);
            return mode >= PILL_OUTLINE_AUTO && mode <= PILL_OUTLINE_NONE ? mode : PILL_OUTLINE_AUTO;
        } catch (ClassCastException corrupt) {
            return PILL_OUTLINE_AUTO;
        }
    }

    /** Height of the pill in percent of the normal one, minus 0: -20..+40. */
    public static int pillHeightPercent() {
        ensureStarted();
        return pillHPct;
    }

    /** The narrowest the pill gets in dp, 0 = automatic. */
    public static int pillMinWidthDp() {
        ensureStarted();
        return pillMinWDp;
    }

    /** The widest the pill gets in dp, 0 = automatic. */
    public static int pillMaxWidthDp() {
        ensureStarted();
        return pillMaxWDp;
    }

    /** The pill does not shrink again once it has grown, until it hides. */
    public static boolean keepPillWidth() {
        ensureStarted();
        return keepPillWidth;
    }

    public static int holeMode() {
        ensureStarted();
        return holeMode;
    }

    /** Diameter of the camera hole in dp when it is set by hand. */
    public static int holeDiameterDp() {
        ensureStarted();
        return holeDDp;
    }

    /** Sideways shift of the hole from the middle of the screen, in dp. */
    public static int holeXDp() {
        ensureStarted();
        return holeXDp;
    }

    /** Vertical shift of the hole from the middle of the status bar, in dp. */
    public static int holeYDp() {
        ensureStarted();
        return holeYDp;
    }

    public static int pillAnchor() {
        ensureStarted();
        return pillAnchor;
    }

    /** Horizontal shift of the island in dp (positive = right). */
    public static int pillXDp() {
        ensureStarted();
        return pillXDp;
    }

    /** Vertical shift of the island in dp (positive = down). */
    public static int pillYDp() {
        ensureStarted();
        return pillYDp;
    }

    public static void setOnSwitchesChanged(Runnable listener) {
        onSwitchesChanged = listener;
    }

    public static void setOnRulesChanged(Runnable listener) {
        onRulesChanged = listener;
    }

    /** Starts the background reload loop on first use; later calls do nothing. */
    public static synchronized void ensureStarted() {
        if (started || previewProcess) {
            return;
        }
        started = true;
        refresh(); // the first values are in place before the first getter returns
        try {
            HandlerThread thread = new HandlerThread("DynamicIslandPrefs", Process.THREAD_PRIORITY_BACKGROUND);
            thread.start();
            final Handler handler = new Handler(thread.getLooper());
            handler.post(new Runnable() {
                @Override
                public void run() {
                    refresh();
                    handler.postDelayed(this, RELOAD_INTERVAL_MS);
                }
            });
        } catch (Throwable ignored) {
            // keep the defaults
        }
    }

    /**
     * The preferences to read now, or null when nothing changed since the last call. The shared file is tried first;
     * when it holds nothing (the framework did not let System UI read it) the module app's provider is asked instead.
     */
    private static SharedPreferences readSource() {
        boolean first = prefs == null;
        if (first) {
            prefs = new XSharedPreferences(PACKAGE, FILE);
            prefs.makeWorldReadable();
            XLog.event("settings file " + prefs.getFile() + " readable=" + prefs.getFile().canRead());
        }
        boolean fileChanged = !first && prefs.hasFileChanged();
        if (fileChanged) {
            prefs.reload();
        }
        if (!prefs.getAll().isEmpty()) {
            boolean switched = viaProvider;
            viaProvider = false;
            lastRemote = null;
            boolean fresh = first || fileChanged || switched || !loaded;
            loaded = true;
            return fresh ? prefs : null;
        }
        Map<String, Object> remote = readProvider();
        if (remote == null || remote.isEmpty()) {
            boolean fresh = !loaded;
            loaded = true;
            viaProvider = false;
            return fresh ? prefs : null;
        }
        if (loaded && viaProvider && remote.equals(lastRemote)) {
            return null;
        }
        loaded = true;
        viaProvider = true;
        lastRemote = remote;
        return new MapPrefs(remote);
    }

    /** Every setting as the module app's provider reports it; null when the app cannot be reached. */
    private static Map<String, Object> readProvider() {
        try {
            Object app = Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
            if (!(app instanceof android.content.Context)) {
                return null;
            }
            android.os.Bundle all = ((android.content.Context) app).getContentResolver().call(
                    android.net.Uri.parse("content://" + SettingsProvider.AUTHORITY), SettingsProvider.METHOD_ALL, null, null);
            if (all == null) {
                return null;
            }
            Map<String, Object> out = new java.util.HashMap<>();
            for (String key : all.keySet()) {
                Object value = all.get(key);
                out.put(key, value instanceof java.util.ArrayList ? new java.util.HashSet<Object>((java.util.ArrayList<?>) value) : value);
            }
            return out;
        } catch (Throwable t) {
            XLog.once("ModuleSettings.provider", t);
            return null;
        }
    }

    /** The preference store the settings app writes and the provider reads: world-readable on LSPosed, private otherwise. */
    @SuppressWarnings({"deprecation", "WorldReadableFiles"})
    public static SharedPreferences openStore(android.content.Context ctx) {
        try {
            return ctx.getSharedPreferences(FILE, android.content.Context.MODE_WORLD_READABLE);
        } catch (SecurityException e) {
            return ctx.getSharedPreferences(FILE, android.content.Context.MODE_PRIVATE);
        }
    }

    /** Re-reads the preferences when they changed; runs on the reload thread only. */
    private static void refresh() {
        try {
            SharedPreferences source = readSource();
            if (source == null) {
                return;
            }
            pausedTimeoutS = source.getInt(KEY_PAUSED_TIMEOUT_S, DEF_PAUSED_TIMEOUT_S);
            autoCollapseS = source.getInt(KEY_AUTO_COLLAPSE_S, DEF_AUTO_COLLAPSE_S);
            cardHeader = source.getBoolean(KEY_CARD_HEADER, true);
            visualizer = source.getBoolean(KEY_VISUALIZER, true);
            colorIcons = source.getBoolean(KEY_COLOR_ICONS, false);
            shadeMedia = source.getBoolean(KEY_SHADE_MEDIA, true);
            eventCharging = source.getBoolean(KEY_EVENT_CHARGING, true);
            readOptionalDeviceSettings(source);
            eventRinger = source.getBoolean(KEY_EVENT_RINGER, true);
            eventBluetooth = source.getBoolean(KEY_EVENT_BLUETOOTH, true);
            haptics = source.getBoolean(KEY_HAPTICS, true);
            lowPerformance = source.getBoolean(KEY_LOW_PERFORMANCE, false);
            materialStyle = readMaterialStyle(source);
            legacyAnimation = source.getBoolean(KEY_LEGACY_ANIMATION, false);
            iMode = source.getBoolean(KEY_I_MODE, false);
            pillOutlineMode = readPillOutlineMode(source);
            transitionBlurMode = readTransitionBlurMode(source);
            headsUpIsland = source.getBoolean(KEY_HEADS_UP_ISLAND, true);
            progressNotifications = source.getBoolean(KEY_PROGRESS_NOTIFICATIONS, true);
            allNotifications = source.getBoolean(KEY_ALL_NOTIFICATIONS, false);
            hideProgressOriginals = source.getBoolean(KEY_HIDE_PROGRESS_ORIGINALS, true);
            smartRules = source.getBoolean(KEY_SMART_RULES, true);
            int sizeBefore = pillHPct * 1_000_000 + pillMinWDp * 1000 + pillMaxWDp + (keepPillWidth ? 1 : 0) * 100_000_000;
            int holeBefore = holeMode * 1_000_000 + holeDDp * 10_000 + holeXDp * 100 + holeYDp;
            int anchorBefore = pillAnchor;
            int xBefore = pillXDp;
            int yBefore = pillYDp;
            int textPaddingBefore = holeTextPaddingDp;
            boolean fullscreenBefore = showInFullscreen;
            showInFullscreen = source.getBoolean(KEY_SHOW_IN_FULLSCREEN, false);
            boolean previewBefore = placementPreviewActive();
            previewWallUntil = source.getLong(KEY_PILL_PREVIEW_UNTIL, 0L);
            if (!placementPreviewActive()) {
                pillAnchor = Math.max(ANCHOR_AUTO, Math.min(ANCHOR_RIGHT, source.getInt(KEY_PILL_ANCHOR, ANCHOR_AUTO)));
                pillXDp = Math.max(-PILL_X_MAX_DP, Math.min(PILL_X_MAX_DP, source.getInt(KEY_PILL_X_DP, 0)));
                pillYDp = Math.max(PILL_Y_MIN_DP, Math.min(PILL_Y_MAX_DP, source.getInt(KEY_PILL_Y_DP, 0)));
                pillHPct = Math.max(PILL_H_MIN_PCT, Math.min(PILL_H_MAX_PCT, source.getInt(KEY_PILL_H_PCT, 0)));
                pillMinWDp = Math.max(0, Math.min(PILL_MIN_W_MAX_DP, source.getInt(KEY_PILL_MIN_W_DP, 0)));
                pillMaxWDp = clampMaxWidth(source.getInt(KEY_PILL_MAX_W_DP, 0));
                keepPillWidth = source.getBoolean(KEY_PILL_KEEP_WIDTH, false);
                holeMode = Math.max(HOLE_AUTO, Math.min(HOLE_NONE, source.getInt(KEY_HOLE_MODE, HOLE_AUTO)));
                holeDDp = Math.max(HOLE_D_MIN_DP, Math.min(HOLE_D_MAX_DP, source.getInt(KEY_HOLE_D_DP, HOLE_D_DEFAULT_DP)));
                holeXDp = Math.max(-HOLE_X_MAX_DP, Math.min(HOLE_X_MAX_DP, source.getInt(KEY_HOLE_X_DP, 0)));
                holeYDp = Math.max(HOLE_Y_MIN_DP, Math.min(HOLE_Y_MAX_DP, source.getInt(KEY_HOLE_Y_DP, 0)));
                holeTextPaddingDp = clampHoleTextPadding(source.getInt(KEY_HOLE_TEXT_PADDING_DP, 0));
            }
            Runnable placementListener = onPlacementChanged;
            if (placementListener != null && (anchorBefore != pillAnchor || xBefore != pillXDp || yBefore != pillYDp
                    || fullscreenBefore != showInFullscreen
                    || textPaddingBefore != holeTextPaddingDp
                    || previewBefore != placementPreviewActive()
                    || sizeBefore != pillHPct * 1_000_000 + pillMinWDp * 1000 + pillMaxWDp + (keepPillWidth ? 1 : 0) * 100_000_000
                    || holeBefore != holeMode * 1_000_000 + holeDDp * 10_000 + holeXDp * 100 + holeYDp)) {
                placementListener.run();
            }
            RuleConfig before = rulesConfig;
            rulesConfig = readRulesConfig(source);
            Runnable listener = onRulesChanged;
            if (listener != null && rulesConfig.revision != before.revision) {
                listener.run();
            }
            foregroundNotifications = source.getBoolean(KEY_FOREGROUND_NOTIFICATIONS, false);
            autoOpenCards = source.getBoolean(KEY_AUTO_OPEN_CARDS, false);
            autoOpenS = Math.max(2, Math.min(30, source.getInt(KEY_AUTO_OPEN_S, 4)));
            experimentalRecovery = source.getBoolean(KEY_EXPERIMENTAL_RECOVERY, false);
            compactEventIcons = source.getBoolean(KEY_COMPACT_EVENT_ICONS, false);
            hideBatteryIcon = source.getBoolean(KEY_HIDE_BATTERY_ICON, true);
            accentCustom = source.getBoolean(KEY_ACCENT_CUSTOM, false);
            accentColor = source.getInt(KEY_ACCENT_COLOR, DEFAULT_ACCENT) | 0xFF000000;
            readGlow(source);
            eventToggles = source.getBoolean(KEY_EVENT_TOGGLES, true);
            torchPill = source.getBoolean(KEY_TORCH_PILL, true);
            torchStyle = source.getInt(KEY_TORCH_STYLE, 0) == 1 ? 1 : 0;
            privacyIndicator = source.getBoolean(KEY_PRIVACY, true);
            privacyLocation = source.getBoolean(KEY_PRIVACY_LOCATION, false);
            otpCard = source.getBoolean(KEY_OTP_CARD, true);
            otpAutoCopy = source.getBoolean(KEY_OTP_AUTO_COPY, false);
            thirdPartyCalls = source.getBoolean(KEY_THIRD_PARTY_CALLS, true);
            Set<String> listed = source.getStringSet(KEY_APPS_LISTED, null);
            appFilter = new AppFilter(source.getBoolean(KEY_APPS_ONLY_LISTED, false),
                    listed == null ? null : new java.util.HashSet<>(listed));
            String switches = switchSignature();
            boolean switchesChanged = lastSwitches != null && !switches.equals(lastSwitches);
            lastSwitches = switches;
            logChanges(source);
            Runnable switchListener = onSwitchesChanged;
            if (switchesChanged && switchListener != null) {
                switchListener.run();
            }
        } catch (Throwable t) {
            // unreadable preferences: keep the last known / default values
            XLog.once("ModuleSettings.refresh", t);
        }
    }

    public static boolean foregroundNotifications() { return foregroundNotifications; }
    public static final String KEY_AUTO_OPEN_S = "auto_open_s";
    public static long autoOpenMs() { return autoOpenS * 1000L; }

    /** Settings-process preview only; does not start the System UI preference reader. */
    public static void configurePreview(SharedPreferences settings) {
        previewProcess = true;
        legacyAnimation = settings.getBoolean(KEY_LEGACY_ANIMATION, false);
        iMode = settings.getBoolean(KEY_I_MODE, false);
        pillOutlineMode = readPillOutlineMode(settings);
        transitionBlurMode = readTransitionBlurMode(settings);
        lowPerformance = settings.getBoolean(KEY_LOW_PERFORMANCE, false);
        materialStyle = readMaterialStyle(settings);
        torchStyle = settings.getInt(KEY_TORCH_STYLE, 0) == 1 ? 1 : 0;
        showInFullscreen = settings.getBoolean(KEY_SHOW_IN_FULLSCREEN, false);
        eventCharging = settings.getBoolean(KEY_EVENT_CHARGING, true);
        readOptionalDeviceSettings(settings);
        holeTextPaddingDp = clampHoleTextPadding(settings.getInt(KEY_HOLE_TEXT_PADDING_DP, 0));
        cardHeader = settings.getBoolean(KEY_CARD_HEADER, true);
        colorIcons = settings.getBoolean(KEY_COLOR_ICONS, false);
        accentCustom = settings.getBoolean(KEY_ACCENT_CUSTOM, false);
        accentColor = settings.getInt(KEY_ACCENT_COLOR, DEFAULT_ACCENT) | 0xFF000000;
        compactEventIcons = settings.getBoolean(KEY_COMPACT_EVENT_ICONS, false);
        hideBatteryIcon = settings.getBoolean(KEY_HIDE_BATTERY_ICON, true);
        visualizer = settings.getBoolean(KEY_VISUALIZER, true);
        haptics = settings.getBoolean(KEY_HAPTICS, true);
        autoCollapseS = settings.getInt(KEY_AUTO_COLLAPSE_S, DEF_AUTO_COLLAPSE_S);
        eventToggles = settings.getBoolean(KEY_EVENT_TOGGLES, true);
        torchPill = settings.getBoolean(KEY_TORCH_PILL, true);
        readGlow(settings);
    }

    private static void readGlow(SharedPreferences source) {
        ambientGlow = source.getBoolean(KEY_AMBIENT_GLOW, true);
        glowMusicOnly = source.getBoolean(KEY_GLOW_MUSIC_ONLY, true);
        glowAlbum = source.getBoolean(KEY_GLOW_ALBUM, true);
        glowFollowTheme = source.getBoolean(KEY_GLOW_FOLLOW_THEME, false);
        glowStrength = Math.max(0, Math.min(100, source.getInt(KEY_GLOW_STRENGTH, DEFAULT_GLOW_STRENGTH)));
        glowMotion = Math.max(0, Math.min(100, source.getInt(KEY_GLOW_MOTION, DEFAULT_GLOW_MOTION)));
        glowColour = source.getInt(KEY_GLOW_COLOUR, DEFAULT_GLOW_COLOUR) | 0xFF000000;
    }

    public static boolean ambientGlow() { ensureStarted(); return ambientGlow && glowStrength > 0 && !lowPerformance; }
    public static boolean glowAlbum() { return glowAlbum; }
    public static boolean glowMusicOnly() { return glowMusicOnly; }
    public static int glowStrength() { return glowStrength; }
    public static int glowMotion() { return glowMotion; }
    public static int glowColour() {
        return glowFollowTheme ? (accentCustom ? accentColor : DEFAULT_ACCENT) : glowColour;
    }

    public static boolean lowPerformance() { ensureStarted(); return lowPerformance; }
    public static int readMaterialStyle(SharedPreferences source) {
        return source.getInt(KEY_MATERIAL_STYLE, MATERIAL_CLASSIC) == MATERIAL_FROSTED ? MATERIAL_FROSTED : MATERIAL_CLASSIC;
    }
    public static boolean frostedMaterial() { ensureStarted(); return materialStyle == MATERIAL_FROSTED; }
    public static boolean showInFullscreen() { ensureStarted(); return showInFullscreen; }
    public static boolean chargingInfo() { ensureStarted(); return eventCharging && chargingInfo; }
    public static boolean stockChargingAnimation() { ensureStarted(); return stockChargingAnimation; }
    public static boolean concurrentRecordingInput() { ensureStarted(); return concurrentRecordingInput && !lowPerformance; }
    public static boolean chargingStats() { return chargingInfo() && chargingStats; }
    public static boolean eventHeadset() { ensureStarted(); return eventHeadset; }
    /** The headset card stays while a wired/USB headset is plugged in (needs the headset events). */
    public static boolean hotspotCard() { ensureStarted(); return hotspotCard; }
    public static boolean unlockNotice() { ensureStarted(); return unlockNotice; }
    /** A notification card shows the notification's own progress bar. */
    public static boolean peekProgress() { ensureStarted(); return peekProgress; }
    /** Progress cards are also made for the app that is open (they are left out by default). */
    public static boolean progressForeground() { ensureStarted(); return progressForeground; }
    /** Ordinary (not ongoing) notifications with a progress bar also become progress cards, and a bar card beats a live card. */
    public static boolean progressAny() { ensureStarted(); return progressAny; }
    public static boolean headsetCardStays() { ensureStarted(); return eventHeadset && headsetStay; }
    public static int holeTextPaddingDp() { ensureStarted(); return holeTextPaddingDp; }
    public static int cardCornerRadiusDp() { ensureStarted(); return cardCornerRadiusDp; }
    public static boolean customCardRoundness() { ensureStarted(); return customCardRoundness; }

    private static int clampHoleTextPadding(int value) {
        return Math.max(0, Math.min(HOLE_TEXT_PADDING_MAX_DP, value));
    }

    private static void readOptionalDeviceSettings(SharedPreferences source) {
        customCardRoundness = source.getBoolean(KEY_CUSTOM_CARD_ROUNDNESS, false);
        cardCornerRadiusDp = Math.max(0, Math.min(48, source.getInt(KEY_CARD_CORNER_RADIUS_DP, 28)));
        stockChargingAnimation = source.getBoolean(KEY_STOCK_CHARGING_ANIMATION, false);
        concurrentRecordingInput = source.getBoolean(KEY_CONCURRENT_RECORDING_INPUT, false);
        chargingInfo = source.getBoolean(KEY_CHARGING_INFO, false);
        chargingStats = source.getBoolean(KEY_CHARGING_STATS, false);
        eventHeadset = source.getBoolean(KEY_EVENT_HEADSET, false);
        headsetStay = source.getBoolean(KEY_HEADSET_STAY, false);
        hotspotCard = source.getBoolean(KEY_HOTSPOT_CARD, false);
        unlockNotice = source.getBoolean(KEY_UNLOCK_NOTICE, false);
        peekProgress = source.getBoolean(KEY_PEEK_PROGRESS, false);
        progressForeground = source.getBoolean(KEY_PROGRESS_FOREGROUND, false);
        progressAny = source.getBoolean(KEY_PROGRESS_ANY, false);
    }

    public static boolean autoOpenCards() { return autoOpenCards; }
    public static boolean experimentalRecovery() { return experimentalRecovery; }
    public static boolean compactEventIcons() { return compactEventIcons; }
    public static boolean hideBatteryIcon() { return hideBatteryIcon; }
    public static boolean accentCustom() { return accentCustom; }
    public static int accentColor() { return accentColor; }

    private static String lastSwitches;

    private static String switchSignature() {
        return "" + ambientGlow + glowAlbum + glowFollowTheme + glowStrength + "/motion=" + glowMotion + "/musicOnly=" + glowMusicOnly + "/" + glowColour + lowPerformance + foregroundNotifications + autoOpenCards + autoOpenS + experimentalRecovery + compactEventIcons + hideBatteryIcon + accentCustom + accentColor + eventCharging + eventRinger + eventBluetooth + eventToggles + torchPill + "/torchStyle=" + torchStyle + headsUpIsland + allNotifications + progressNotifications + hideProgressOriginals
                + smartRules + privacyIndicator + privacyLocation + otpCard + otpAutoCopy + thirdPartyCalls + visualizer + colorIcons + shadeMedia + cardHeader
                + "/devices=" + chargingInfo + "/" + chargingStats + "/" + eventHeadset + "/" + headsetStay + "/hotspot=" + hotspotCard + "/unlock=" + unlockNotice + "/peekProgress=" + peekProgress + "/progressForeground=" + progressForeground + "/progressAny=" + progressAny + "/stockCharging=" + stockChargingAnimation + "/recordingInput=" + concurrentRecordingInput
                + "/iMotion=" + iMode + "/material=" + materialStyle + "/roundness=" + customCardRoundness + "/" + cardCornerRadiusDp + "/outline=" + pillOutlineMode + "/blur=" + transitionBlurMode + "/" + appFilter.onlyListed() + appFilter.size();
    }

    /** One line in the event log whenever the values the module runs on differ from the last read. */
    private static void logChanges(SharedPreferences source) {
        String now = "glow=" + ambientGlow + "/" + glowAlbum + "/" + glowFollowTheme + "/" + glowStrength + "/" + glowColour + "/motion=" + glowMotion + "/musicOnly=" + glowMusicOnly + " lowPerformance=" + lowPerformance + " haptics=" + haptics + " legacyAnimation=" + legacyAnimation + " visualizer=" + visualizer + " cardHeader=" + cardHeader
                + " recovery=" + experimentalRecovery + " foregroundNotifications=" + foregroundNotifications + " autoOpen=" + autoOpenCards + " customAccent=" + accentCustom + " hideBattery=" + hideBatteryIcon + " headsUpIsland=" + headsUpIsland + " progress=" + progressNotifications + " hideOriginals=" + hideProgressOriginals
                + " smartRules=" + smartRules + " otp=" + otpCard + "/" + otpAutoCopy + " calls3p=" + thirdPartyCalls
                + " privacy=" + privacyIndicator + "/" + privacyLocation + " events=" + eventCharging + "/" + eventRinger + "/" + eventBluetooth
                + " pill=" + pillAnchor + "/" + pillXDp + "/" + pillYDp + " size=" + pillHPct + "/" + pillMinWDp + "/" + pillMaxWDp + "/" + keepPillWidth + " hole=" + holeMode + "/" + holeDDp + "/" + holeXDp + "/" + holeYDp + " pausedS=" + pausedTimeoutS + " collapseS=" + autoCollapseS + " rules=" + rulesConfig.revision
                + " pillOutline=" + pillOutlineMode + " showInFullscreen=" + showInFullscreen + " appFilter=" + (appFilter.onlyListed() ? "only " : "except ") + appFilter.size();
        Diagnostics.fact("pill outline mode", Integer.toString(pillOutlineMode));
        Diagnostics.fact("island presentation", iMode ? "iMotion" : "stack");
        Diagnostics.fact("card material selected", materialStyle == MATERIAL_CLASSIC ? "classic" : "frosted");
        Diagnostics.fact("optional device cards", "charging=" + chargingInfo + " statistics=" + chargingStats + " headset=" + eventHeadset + " hotspot=" + hotspotCard + " unlock=" + unlockNotice + " stockCharging=" + stockChargingAnimation);
        Diagnostics.fact("settings file", prefs.getFile() + " readable=" + prefs.getFile().canRead() + " keys=" + prefs.getAll().size());
        Diagnostics.fact("settings source", viaProvider ? "provider (" + source.getAll().size() + " keys)" : "preference file (" + source.getAll().size() + " keys)");
        if (!now.equals(lastLogged)) {
            lastLogged = now;
            XLog.event("settings: " + now);
        }
    }

    private static RuleConfig readRulesConfig(SharedPreferences source) {
        String custom = source.getString(KEY_RULES_CUSTOM, null);
        Set<String> off = source.getStringSet(KEY_RULES_DISABLED, null);
        RuleConfig next = new RuleConfig(custom == null || custom.isEmpty() ? null : custom,
                off == null ? null : new java.util.HashSet<>(off));
        return next.revision == rulesConfig.revision ? rulesConfig : next;
    }

    /** Staged cards from the rules (delivery, taxi, route, device connection). */
    public static boolean smartRules() {
        ensureStarted();
        return smartRules;
    }

    /** The rule file the user wrote, if any. */
    public static RuleConfig rulesConfig() {
        ensureStarted();
        return rulesConfig;
    }

    /** How long a paused player stays on the island. */
    public static long pausedTimeoutMs() {
        ensureStarted();
        return Math.max(MIN_PAUSED_TIMEOUT_S, pausedTimeoutS) * MS_PER_SECOND;
    }

    /** How long an expanded island waits before folding back. */
    public static long autoCollapseMs() {
        ensureStarted();
        return Math.max(MIN_AUTO_COLLAPSE_S, autoCollapseS) * MS_PER_SECOND;
    }

    /** App name + time line at the top of live cards. */
    public static boolean cardHeader() {
        ensureStarted();
        return cardHeader;
    }

    /** The island's music card in the notification shade; off leaves the stock music player there (see {@link #KEY_SHADE_MEDIA}). */
    public static boolean shadeMediaPlayer() {
        ensureStarted();
        return shadeMedia;
    }

    /** Keep the real colours of an app's icon or a team's logo in the small pill, instead of a grey version of it. */
    public static boolean colorIcons() {
        ensureStarted();
        return colorIcons;
    }

    /** Drive the waveform from the audio output instead of random bars. */
    public static boolean visualizer() {
        ensureStarted();
        return visualizer;
    }

    /** Charging / low battery popups. */
    public static boolean eventCharging() {
        ensureStarted();
        return eventCharging;
    }

    /** Silent / vibrate / ring popup. */
    public static boolean eventRinger() {
        ensureStarted();
        return eventRinger;
    }

    /** Bluetooth headphones connected popup. */
    public static boolean eventBluetooth() {
        ensureStarted();
        return eventBluetooth;
    }

    /** Messages and other banner notifications as island cards instead of the stock heads-up. */
    public static boolean headsUpIsland() {
        ensureStarted();
        return headsUpIsland;
    }

    /** Drop the shade row of a progress notification while the island shows its card. */
    public static boolean hideProgressOriginals() {
        ensureStarted();
        return hideProgressOriginals;
    }

    /** Downloads, uploads and other plain progress notifications as island cards. */
    public static boolean progressNotifications() {
        ensureStarted();
        return progressNotifications;
    }

    /** Verification-code card for one-time passwords found in notifications. */
    public static boolean otpCard() {
        ensureStarted();
        return otpCard;
    }

    /** Copy a detected verification code to the clipboard without a tap. */
    public static boolean otpAutoCopy() {
        ensureStarted();
        return otpAutoCopy;
    }

    /** False for an app the user blocked (or left out of the allow list); its cards and banners stay stock. */
    public static boolean appAllowed(String packageName) {
        ensureStarted();
        return appFilter.allows(packageName);
    }

    /** Calls from third-party calling apps shown on the island, not only the phone app's. */
    public static boolean thirdPartyCalls() {
        ensureStarted();
        return thirdPartyCalls;
    }

    /** Do Not Disturb / airplane / power saving / flashlight / hotspot / auto-rotate feedback. */
    /** Every new notification, also the quiet ones that would not pop up as a banner, gets an island card. */
    public static boolean allNotifications() {
        ensureStarted();
        return allNotifications;
    }

    public static boolean eventToggles() {
        ensureStarted();
        return eventToggles;
    }

    /** The flashlight card while the torch is on (see {@link #KEY_TORCH_PILL}). */
    public static boolean torchPill() {
        ensureStarted();
        return torchPill;
    }
    public static boolean torchBeamStyle() { ensureStarted(); return torchStyle == 1; }

    /** Camera / microphone in use island. */
    public static boolean privacyIndicator() {
        ensureStarted();
        return privacyIndicator;
    }

    /** Also announce location use (noisy: navigation and weather apps use it all the time). */
    public static boolean privacyLocation() {
        ensureStarted();
        return privacyLocation;
    }

    /** The animations of 0.1.3 and before instead of the smoothed ones (default off). */
    public static boolean iMode() { ensureStarted(); return iMode; }

    public static boolean legacyAnimation() {
        ensureStarted();
        return legacyAnimation && !iMode;
    }

    /** Tick when the island expands / collapses and click on button presses. */
    public static boolean haptics() {
        ensureStarted();
        return haptics;
    }
}
