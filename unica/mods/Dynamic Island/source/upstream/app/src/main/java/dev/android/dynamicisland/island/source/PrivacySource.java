package dev.android.dynamicisland.island.source;

import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * "Camera / microphone / location in use" island: the stock status bar only shows an anonymous
 * dot, this tells which app is using which sensor and opens that app's permission page on tap.
 */
public final class PrivacySource {
    private static final long GRACE_MS = 1500;
    /** Navigation notes a fix about every second; hold the island over the gaps between fixes. */
    private static final long NOTED_HOLD_MS = 5000;
    private static final int FIRST_APP_UID = 10000;
    private static final int ORANGE = 0xFFFF9F0A;
    private static final int GREEN = 0xFF30D158;
    private static final int BLUE = 0xFF0A84FF;

    /** Packages whose sensor use is the phone / system itself and not worth an island. */
    private static final Set<String> IGNORED = new HashSet<>(Arrays.asList(
            "android", "com.android.systemui", "com.android.phone", "com.android.server.telecom",
            "com.samsung.android.incallui", "com.samsung.android.dialer", "com.google.android.dialer",
            "com.android.dialer", "com.android.incallui", "com.samsung.android.bixby.service",
            "com.samsung.android.app.telephonyui", "dev.android.dynamicisland"));

    /** One app using one sensor. */
    private static final class Use {
        final String op;
        final String pkg;
        boolean active;
        long lastActive;
        /** Known only from "noted" accesses (each location fix), which have no start or end. */
        boolean noted;

        Use(String op, String pkg) {
            this.op = op;
            this.pkg = pkg;
        }
    }

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    /** This source's own delayed refresh: sharing {@code onChange} would let another source cancel it. */
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            onChange.run();
        }
    };
    private final Map<String, Use> uses = new HashMap<>();
    private final Map<String, String> labels = new HashMap<>();
    private IslandItem cached;
    private String cachedSignature = "";

    public PrivacySource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    public void start() {
        try {
            AppOpsManager appOps = ctx.getSystemService(AppOpsManager.class);
            appOps.startWatchingActive(
                    new String[]{AppOpsManager.OPSTR_CAMERA, AppOpsManager.OPSTR_RECORD_AUDIO, AppOpsManager.OPSTR_FINE_LOCATION,
                            AppOpsManager.OPSTR_MONITOR_HIGH_POWER_LOCATION},
                    ctx.getMainExecutor(), this::onOp);
        } catch (Throwable t) {
            XLog.e("privacy indicator unavailable", t);
        }
        try {
            // the location service does not start FINE_LOCATION as an active op, it notes it on every fix.
            // startWatchingNoted / OnOpNotedListener are system APIs (System UI may use them): reached by reflection.
            AppOpsManager appOps = ctx.getSystemService(AppOpsManager.class);
            Class<?> listenerType = Class.forName("android.app.AppOpsManager$OnOpNotedListener");
            Object listener = Refl.proxy(listenerType, (proxy, method, args) -> {
                if ("onOpNoted".equals(method.getName()) && args != null && args.length >= 6
                        && args[5] instanceof Integer && (Integer) args[5] == AppOpsManager.MODE_ALLOWED) {
                    final String op = (String) args[0];
                    final int uid = (Integer) args[1];
                    final String pkg = (String) args[2];
                    main.post(() -> {
                        try {
                            noted(op, uid, pkg);
                        } catch (Throwable t) {
                            XLog.once("PrivacySource.noted", t);
                        }
                    });
                }
                return null;
            });
            AppOpsManager.class.getMethod("startWatchingNoted", String[].class, listenerType)
                    .invoke(appOps, new String[]{AppOpsManager.OPSTR_FINE_LOCATION}, listener);
        } catch (Throwable t) {
            XLog.e("location access watch unavailable", t);
        }
    }

    /** Callback of the active-ops watcher: sensor use started or stopped. */
    private void onOp(String op, int uid, String pkg, boolean active) {
        try {
            record(op, uid, pkg, active);
        } catch (Throwable t) {
            XLog.once("PrivacySource.onOp", t);
        }
    }

    /** A single location access: the island shows for a while after the latest one. */
    void noted(String op, int uid, String pkg) {
        if (pkg == null || uid < FIRST_APP_UID || IGNORED.contains(pkg)) {
            return;
        }
        String key = op + "|" + pkg;
        Use use = uses.get(key);
        boolean fresh = use == null;
        if (fresh) {
            use = new Use(op, pkg);
            uses.put(key, use);
        }
        use.noted = true;
        use.lastActive = SystemClock.uptimeMillis();
        if (fresh) {
            onChange.run();
        }
        main.removeCallbacks(tick);
        main.postDelayed(tick, NOTED_HOLD_MS + 50);
    }

    /** A sensor use that has a start and an end (camera, microphone, long-running location). */
    void record(String op, int uid, String pkg, boolean active) {
        if (pkg == null || uid < FIRST_APP_UID || IGNORED.contains(pkg)) {
            return;
        }
        String key = op + "|" + pkg;
        Use use = uses.get(key);
        if (use == null) {
            if (!active) {
                return;
            }
            use = new Use(op, pkg);
            uses.put(key, use);
        }
        use.active = active;
        use.lastActive = SystemClock.uptimeMillis();
        onChange.run();
    }

    /** Adds the island while a sensor is (or was a moment ago) in use. */
    public void collect(List<IslandItem> out, String foregroundPackage) {
        if (uses.isEmpty() || !ModuleSettings.privacyIndicator()) {
            return;
        }
        long now = SystemClock.uptimeMillis();
        boolean location = ModuleSettings.privacyLocation();
        boolean cam = false;
        boolean mic = false;
        boolean loc = false;
        List<String> packages = new ArrayList<>();
        long next = Long.MAX_VALUE;
        for (Iterator<Use> it = uses.values().iterator(); it.hasNext(); ) {
            Use use = it.next();
            long hold = use.noted ? NOTED_HOLD_MS : GRACE_MS;
            boolean visible = use.active || now - use.lastActive < hold;
            if (!visible) {
                it.remove();
                continue;
            }
            if (!use.active) {
                next = Math.min(next, use.lastActive + hold);
            }
            boolean isLocation = AppOpsManager.OPSTR_FINE_LOCATION.equals(use.op)
                    || AppOpsManager.OPSTR_MONITOR_HIGH_POWER_LOCATION.equals(use.op);
            if (isLocation && !location) {
                continue;
            }
            // sensor use by the app on screen is expected: only surface what happens elsewhere
            if (use.pkg.equals(foregroundPackage)) {
                continue;
            }
            cam |= AppOpsManager.OPSTR_CAMERA.equals(use.op);
            mic |= AppOpsManager.OPSTR_RECORD_AUDIO.equals(use.op);
            loc |= isLocation;
            if (!packages.contains(use.pkg)) {
                packages.add(use.pkg);
            }
        }
        if (next != Long.MAX_VALUE) {
            main.removeCallbacks(tick);
            main.postDelayed(tick, Math.max(16L, next - now + 20));
        }
        if (packages.isEmpty() || !(cam || mic || loc)) {
            return;
        }
        out.add(item(cam, mic, loc, packages));
    }

    /** The island for the current uses; reused while the same sensors and apps are involved. */
    private IslandItem item(boolean cam, boolean mic, boolean loc, List<String> packages) {
        StringBuilder sig = new StringBuilder().append(cam).append(mic).append(loc);
        for (String p : packages) {
            sig.append('|').append(p);
        }
        String signature = sig.toString();
        if (cached != null && signature.equals(cachedSignature)) {
            return cached;
        }
        IslandItem it = new IslandItem("event:privacy");
        it.kind = IslandItem.Kind.EVENT;
        it.iconIsImage = false;
        it.packageName = null;
        if (cam && mic) {
            it.title = t("카메라·마이크 사용 중", "Camera & microphone in use");
        } else if (cam) {
            it.title = t("카메라 사용 중", "Camera in use");
        } else if (mic) {
            it.title = t("마이크 사용 중", "Microphone in use");
        } else {
            it.title = t("위치 사용 중", "Location in use");
        }
        it.icon = GlyphIcon.of(cam ? GlyphIcon.Kind.CAMERA : mic ? GlyphIcon.Kind.MIC : GlyphIcon.Kind.LOCATION);
        it.accent = cam ? GREEN : mic ? ORANGE : BLUE;

        StringBuilder who = new StringBuilder();
        for (int i = 0; i < packages.size() && i < 2; i++) {
            if (i > 0) {
                who.append(", ");
            }
            who.append(label(packages.get(i)));
        }
        if (packages.size() > 2) {
            who.append(t(" 외 " + (packages.size() - 2) + "개", " +" + (packages.size() - 2)));
        }
        it.subtitle = who.toString();
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = packages.size() == 1 ? label(packages.get(0)) : String.valueOf(packages.size());
        it.contentIntent = settingsIntent(packages.get(0));
        cached = it;
        cachedSignature = signature;
        return it;
    }

    private PendingIntent settingsIntent(String pkg) {
        try {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:" + pkg))
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            return PendingIntent.getActivity(ctx, 0, intent, PendingIntent.FLAG_IMMUTABLE | PendingIntent.FLAG_UPDATE_CURRENT);
        } catch (Throwable t) {
            return null;
        }
    }

    private String label(String pkg) {
        String cachedLabel = labels.get(pkg);
        if (cachedLabel != null) {
            return cachedLabel;
        }
        String label = pkg;
        try {
            PackageManager pm = ctx.getPackageManager();
            label = String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable ignored) {
            // unknown package: show its name
        }
        labels.put(pkg, label);
        return label;
    }

    /** The module has no string resources inside System UI, so pick the language here. */
    private String t(String ko, String en) {
        Locale locale = ctx.getResources().getConfiguration().getLocales().get(0);
        return "ko".equals(locale.getLanguage()) ? ko : en;
    }
}
