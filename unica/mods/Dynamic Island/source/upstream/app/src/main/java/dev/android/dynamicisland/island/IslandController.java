package dev.android.dynamicisland.island;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.RectF;
import android.media.AudioManager;
import android.media.session.MediaSession;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import android.view.MotionEvent;
import android.view.View;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.source.TorchSource;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.hooks.HideDuplicated;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Facade of the island: the single per-process entry point for the Xposed hooks and the callback
 * target of the {@link IslandView} and its window. The work lives in focused collaborators:
 * {@link IslandSources} (gathering), {@link ItemLedger} (ordering, deferral, minimizing, cycling),
 * {@link IslandPlacement} (window, geometry, suppression), {@link HeadsUpTakeover} (banner and
 * verification-code cards), {@link ItemLauncher} and {@link ShadeDragRelay}.
 *
 * <p>There is one instance per System UI process ({@link #init}, {@link #get}). Every state change
 * ends in {@link #requestRefresh()}, which coalesces requests and rebuilds the list on the main
 * thread. Unless noted, everything here runs on the main thread; the {@code set*} / {@code on*}
 * entry points that hooks may call from other threads either post to the main thread or only touch
 * main-thread-safe state.
 */
public final class IslandController implements IslandHost, IslandWindow.Listener {
    /** Never re-run a deferred refresh sooner than one frame. */
    private static final long MIN_DEFERRED_REFRESH_MS = 16L;

    private static IslandController instance;

    private final Context ctx;
    /** All callbacks and UI work run here. */
    private final Handler main = new Handler(Looper.getMainLooper());
    private final AudioLevels audio = new AudioLevels();
    private final Haptics haptics;

    private final IslandSources sources;
    private final ItemLedger ledger = new ItemLedger();
    private final IslandPlacement placement;
    private final HeadsUpTakeover headsUp;
    private final ItemLauncher launcher;
    private final ShadeDragRelay shadeDrag;

    private boolean refreshPosted;
    private final Runnable refreshRunnable = this::refreshNow;
    /** Key to "kind package" of the items of the last refresh, for the event log. */
    private Map<String, String> lastItems = new LinkedHashMap<>();

    private IslandController(Context ctx, ClassLoader classLoader) {
        this.ctx = ctx;
        sources = new IslandSources(ctx, classLoader, main, this::requestRefresh);
        haptics = new Haptics(ctx);
        placement = new IslandPlacement(ctx, main, classLoader, this, this, audio);
        headsUp = new HeadsUpTakeover(sources, placement, this::refreshNow);
        launcher = new ItemLauncher(ctx, haptics, placement::view);
        shadeDrag = new ShadeDragRelay(ctx, placement::statusBar);
    }

    /** Creates the controller on first call (from the System UI hook) and returns it. */
    public static synchronized IslandController init(Context ctx, ClassLoader classLoader) {
        if (instance == null) {
            ModuleSettings.ensureStarted(); // start reading the settings now, not on the first getter call
            instance = new IslandController(ctx, classLoader);
            instance.main.post(instance::start);
            XLog.i("controller created");
        }
        return instance;
    }

    /** The controller, or null before {@link #init}. */
    public static IslandController get() {
        return instance;
    }

    // ---- public API used by the hooks ----------------------------------------------------------

    public IslandItem itemForKey(String notificationKey) {
        return sources.oa.itemForKey(notificationKey);
    }

    public IslandItem mediaItemForSession(MediaSession.Token token) {
        return sources.media.itemForSession(token);
    }

    public void start() {
        sources.start(this::requestRefresh);
        // the position settings take effect without a restart (and the sample item comes and goes with them)
        ModuleSettings.setOnSwitchesChanged(() -> main.post(() -> {
            requestRefresh();
            HideDuplicated.rebuild();
        }));
        ModuleSettings.setOnPlacementChanged(() -> main.post(() -> {
            placement.updateGeometry();
            requestRefresh();
        }));
        try {
            ctx.registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    requestRefresh();
                }
            }, new IntentFilter("android.media.action.MICROPHONE_MUTE_CHANGED"), Context.RECEIVER_NOT_EXPORTED);
        } catch (Throwable t) {
            XLog.e("mute receiver failed", t);
        }
        try {
            // the settings app moves the island on the real status bar while the position page is open
            ctx.registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    if (!ModuleSettings.PACKAGE.equals(getSentFromPackage())) {
                        return; // only the module's own settings app may move the island
                    }
                    ModuleSettings.applyPlacementPreview(intent);
                    requestRefresh();
                }
            }, new IntentFilter(ModuleSettings.ACTION_PILL_PREVIEW), Context.RECEIVER_EXPORTED);
        } catch (Throwable t) {
            XLog.e("position preview receiver failed", t);
        }
        try {
            ctx.getSystemService(AudioManager.class)
                    .addOnCommunicationDeviceChangedListener(ctx.getMainExecutor(), device -> requestRefresh());
        } catch (Throwable t) {
            XLog.e("speaker listener failed", t);
        }
        requestRefresh();
        placement.scheduleFallbackWindow();
    }

    /** Schedules one list rebuild on the main thread; many requests in a row cost a single refresh. Any thread. */
    public void requestRefresh() {
        if (Looper.myLooper() != main.getLooper()) {
            main.post(this::requestRefresh);
        } else if (!refreshPosted) {
            refreshPosted = true;
            main.post(refreshRunnable);
        }
    }

    public void onStatusBarViewAttached(View statusBar) {
        if (placement.statusBar() == statusBar) {
            return;
        }
        placement.statusBarAttached(statusBar);
        requestRefresh();
    }

    public void onStatusBarViewDetached(View statusBar) {
        placement.statusBarDetached(statusBar);
    }

    /**
     * A heads-up banner is about to be shown: take it over as an island card when the island can show
     * it right now.
     *
     * @return true when the island took it (the stock banner must stay away)
     */
    public boolean peekHeadsUp(StatusBarNotification sbn) {
        return headsUp.take(sbn);
    }

    /** True when the island shows a card for this notification and the setting asks to drop the shade row. */
    public boolean hidesOriginal(String notificationKey) {
        return (ModuleSettings.hideProgressOriginals() && sources.progress.isShownOnIsland(notificationKey))
                || (ModuleSettings.hideProgressOriginals() && sources.promoted.isShownOnIsland(notificationKey))
                || (ModuleSettings.hideProgressOriginals() && sources.recorder.isShownOnIsland(notificationKey))
                || sources.rules.isShownOnIsland(notificationKey)
                || (sources.torch.replacesStockNotification() && TorchSource.isStockNotification(notificationKey))
                || (ModuleSettings.hideProgressOriginals() && sources.cast.hidesOriginal(notificationKey));
    }

    /** Fed by the notification list hook: progress notifications become cards. */
    public void onNotificationsSnapshot(List<StatusBarNotification> all) {
        List<StatusBarNotification> allowed = new ArrayList<>(all.size());
        for (StatusBarNotification sbn : all) {
            if (sbn == null || ModuleSettings.appAllowed(sbn.getPackageName())) {
                allowed.add(sbn);
            }
        }
        sources.recorder.update(allowed);
        sources.promoted.update(allowed);
        sources.progress.update(allowed);
        sources.rules.update(allowed);
        List<StatusBarNotification> forCodes = new ArrayList<>(allowed);
        Runnable scan = () -> {
            try {
                headsUp.scanForCodes(forCodes);
                headsUp.scanAll(forCodes);
            } catch (Throwable t) {
                XLog.once("IslandController.showNewCodes", t);
            }
        };
        // the card touches views: only ever from the main thread
        if (Looper.myLooper() == Looper.getMainLooper()) {
            scan.run();
        } else {
            main.post(scan);
        }
        sources.calls.update(all);
    }

    public void setOngoingActivityController(Object controller) {
        placement.setOngoingActivityController(controller);
        requestRefresh();
    }

    public void setCallController(Object controller) {
        sources.oa.callController = controller;
    }

    public void setCastBundle(Object bundle) {
        sources.cast.onBundle(bundle);
        requestRefresh();
    }

    /** Samsung's flashlight controller, which sets and remembers the torch brightness level. */
    public void setFlashlightController(Object controller) {
        sources.torch.setSamsungController(controller);
    }

    public void setCastController(Object controller) {
        sources.cast.castController = controller;
    }

    /** @param state SystemUI StatusBarState: 0 shade, 1 keyguard, 2 locked shade */
    public void setBarState(int state) {
        placement.setBarState(state);
    }

    public void setDozing(boolean value) {
        placement.setDozing(value);
    }

    /** @param state non-zero while the status bar is hidden (full-screen app) */
    public void setStatusBarWindowState(int state) {
        placement.setStatusBarWindowState(state);
    }

    public void setShadeExpansion(float fraction) {
        IslandView view = placement.view();
        if (view != null) {
            view.setShadeFraction(fraction);
        }
    }

    /** The launcher asked for the island position (it just started an app-close animation). */
    public void onExitTargetsRequested() {
        placement.pushExitTargets(true);
    }

    // ---- IslandHost ----------------------------------------------------------------------------

    @Override
    public boolean onShadeFade(float alpha, float scale, float px, float py) {
        IslandWindow window = placement.window();
        return window != null && window.setSurfaceFade(alpha, scale, px, py);
    }

    @Override
    public void onIslandFrame() {
        placement.onFrame();
    }

    @Override
    public void onOpenItem(IslandItem item, RectF from) {
        launcher.open(item, from);
    }

    @Override
    public void onItemAction(IslandItem item, IslandItem.Action action) {
        if (action.remoteInputs != null && action.intent != null && startReply(item, action)) {
            return;
        }
        if (action.remoteInputs != null && item.contentIntent != null) {
            launcher.open(item, null); // the reply field could not be shown: open the conversation instead
            return;
        }
        launcher.runAction(action);
    }

    /** Opens the text field for answering the message of {@code item}; false when it cannot be shown. */
    private boolean startReply(IslandItem item, IslandItem.Action action) {
        IslandWindow window = placement.window();
        if (window == null) {
            return false;
        }
        boolean ko = "ko".equals(ctx.getResources().getConfiguration().getLocales().get(0).getLanguage());
        CharSequence name = item.title == null ? "" : item.title;
        long originalExpiry = item.expiresAtUptime;
        boolean shown = window.showReply(ko ? name + "에게 답장" : "Reply to " + name, ko ? "전송" : "Send", new IslandWindow.ReplyListener() {
            @Override
            public void onSend(CharSequence text) {
                launcher.sendReply(action, text);
                endReply(window);
            }

            @Override
            public void onDismiss() {
                endReply(window);
            }
        });
        if (shown) {
            // the timers stop while the user types: the card's own countdown and the popup's lifetime
            item.expiresAtUptime = Long.MAX_VALUE / 2;
            placement.view().setHeld(true);
        } else {
            item.expiresAtUptime = originalExpiry;
        }
        return shown;
    }

    private void endReply(IslandWindow window) {
        window.hideReply();
        placement.view().setHeld(false);
        placement.view().collapse();
    }

    @Override
    public void onPeekClosed() {
        IslandWindow window = placement.window();
        if (window != null && window.isReplying()) {
            window.hideReply(); // the card was closed under the reply field (a swipe): the field goes with it
        }
        IslandItem showing = sources.peeks.showing();
        if (showing != null) {
            sources.peeks.dismiss(showing);
        }
        requestRefresh();
    }

    @Override
    public void onExpandedChanged(boolean expanded) {
        haptics.tick();
        IslandWindow window = placement.window();
        if (window != null) {
            window.setWatchOutsideTouch(expanded && !placement.view().isPeekOpen());
        }
        placement.pushExitTargets(false);
    }

    @Override
    public void onCycle(int direction) {
        if (ledger.cycle(direction)) {
            requestRefresh();
        }
    }

    @Override
    public void onShadeDragStart(float downX, float downY, long downTime) {
        shadeDrag.start(downX, downY, downTime);
    }

    @Override
    public void onShadeDragEvent(MotionEvent event) {
        shadeDrag.move(event);
    }

    @Override
    public void onMinimize(IslandItem item) {
        if (ledger.minimize(item)) {
            requestRefresh();
        }
    }

    @Override
    public void onRestore() {
        if (ledger.restore()) {
            requestRefresh();
        }
    }

    @Override
    public boolean hasMinimized() {
        return ledger.hasMinimized();
    }

    @Override
    public void onWindowHeightNeeded(int px) {
        placement.setNeededHeight(px);
    }

    @Override
    public AudioLevels audio() {
        return audio;
    }

    // ---- IslandWindow.Listener -----------------------------------------------------------------

    @Override
    public void onWindowConfigurationChanged() {
        main.post(placement::updateGeometry);
    }

    @Override
    public void onWindowInsetsChanged() {
        placement.updateGeometry();
    }

    // ---- refresh -------------------------------------------------------------------------------

    /** Event log: which items appeared or went away since the last refresh (only changes, so it stays quiet). */
    private void logItemChanges(ItemLedger.Arrangement shape) {
        Map<String, String> now = new LinkedHashMap<>();
        for (IslandItem item : shape.shown) {
            now.put(item.key, item.kind + (item.packageName == null ? "" : " " + item.packageName));
        }
        for (IslandItem item : shape.bubbled) {
            now.put(item.key, item.kind + " minimized" + (item.packageName == null ? "" : " " + item.packageName));
        }
        for (Map.Entry<String, String> e : now.entrySet()) {
            if (!e.getValue().equals(lastItems.get(e.getKey()))) {
                XLog.event((lastItems.containsKey(e.getKey()) ? "item changed " : "item added ") + e.getKey() + " [" + e.getValue() + "]");
            }
        }
        for (Map.Entry<String, String> e : lastItems.entrySet()) {
            if (!now.containsKey(e.getKey())) {
                XLog.event("item removed " + e.getKey() + " [" + e.getValue() + "]");
            }
        }
        lastItems = now;
    }

    /** Rebuilds the item list from all sources and hands it to the view. A failure only skips this refresh. */
    private void refreshNow() {
        try {
            refreshPosted = false;
            placement.ensureWindow(false);
            IslandView view = placement.view();
            if (view == null) {
                return;
            }
            IslandSources.Gathered gathered = sources.gather();
            long now = SystemClock.uptimeMillis();
            ItemLedger.Arrangement shape = ledger.arrange(gathered.items, gathered.hiddenByForeground, now);
            view.setItems(shape.shown, shape.hint, shape.bubbled);
            logItemChanges(shape);
            Diagnostics.fact("islands", shape.shown.size() + " shown, " + shape.bubbled.size() + " minimized");
            Diagnostics.publish(ctx);
            if (shape.flyIn) {
                view.absorb();
            }
            if (shape.nextDeferredAt != Long.MAX_VALUE) {
                main.postDelayed(this::requestRefresh, Math.max(MIN_DEFERRED_REFRESH_MS, shape.nextDeferredAt - now));
            }
            placement.updateExitPackages(gathered.packages);
            onIslandFrame();
        } catch (Throwable t) {
            refreshPosted = false;
            XLog.once("IslandController.refreshNow", t);
        }
    }
}
