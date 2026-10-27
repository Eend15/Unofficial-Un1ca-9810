package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import java.time.Duration;
import java.time.Instant;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Screen recording, screen sharing and casting as island items, read from the chip model of System UI's
 * screen-record / cast status bar controller ({@code screenRecord}, {@code shareToApp},
 * {@code castToOtherDevice}). Only the {@code Active} states of those models are shown.
 */
public final class CastSource {
    private static final int BLUE = 0xFF0A84FF;
    private static final int RED = -50384;

    /** System UI's cast controller; its {@code chipView} is clicked to stop. Set by the hooks. */
    public Object castController;
    private volatile Object bundle;
    private long lifecycleGeneration;
    private long startGeneration;
    private String lastRecorderPackage;
    private boolean observedStop;
    private volatile RecorderLifecycle lifecycle = new RecorderLifecycle(null, 0L, 0L);

    public static final class RecorderLifecycle {
        final String pkg;
        public final long generation;
        public final long start;

        RecorderLifecycle(String pkg, long generation, long start) {
            this.pkg = pkg;
            this.generation = generation;
            this.start = start;
        }
    }

    /** {@code ctx} is accepted for symmetry with the other sources; the chip model needs no context. */
    private volatile Set<String> recordingPackages = Collections.emptySet();
    /** Told when the recorder whose notification is hidden starts or stops, so the shade list is built again. */
    public volatile Runnable onRecordersChanged;

    private final Context ctx;

    public CastSource(Context ctx) { this.ctx = ctx; }

    /** Snapshot lifecycle changes now, even when UI refresh requests are later coalesced. */
    public synchronized void onBundle(Object b) {
        bundle = b;
        Object record = Refl.get(b, "screenRecord");
        Object share = Refl.get(b, "shareToApp");
        String shareOwner = isActive(share) ? ownerPackage(share) : null;
        String pkg = null;
        if (isActive(record)) {
            pkg = ownerPackage(record);
        } else if ("com.samsung.android.app.smartcapture".equals(shareOwner)) {
            pkg = shareOwner;
        }
        RecorderLifecycle old = lifecycle;
        if (pkg == null) {
            // Missing/unknown models invalidate continuity but are not a confirmed stop.
            boolean otherOwner = shareOwner != null && !shareOwner.isEmpty() && !shareOwner.equals(lastRecorderPackage);
            if (isInactive(record) && (isInactive(share) || otherOwner)) observedStop = true;
            lifecycle = new RecorderLifecycle(null, 0L, startGeneration);
        } else if (!pkg.equals(old.pkg)) {
            if (observedStop || !pkg.equals(lastRecorderPackage)) ++startGeneration;
            lifecycle = new RecorderLifecycle(pkg, ++lifecycleGeneration, startGeneration);
            lastRecorderPackage = pkg;
            observedStop = false;
        }
    }

    /** Atomically pairs continuity and start generation for notification consumers. */
    public RecorderLifecycle recorderLifecycle(String pkg) {
        RecorderLifecycle state = lifecycle;
        return pkg != null && pkg.equals(state.pkg) ? state : null;
    }

    /** Zero is unknown, not evidence of recording termination. */
    public long recorderSession(String pkg) {
        RecorderLifecycle state = lifecycle;
        return pkg != null && pkg.equals(state.pkg) ? state.generation : 0L;
    }

    /** Changes only after an observed stop/start or a different recorder owner, not a read failure. */
    public long recorderStart(String pkg) {
        RecorderLifecycle state = lifecycle;
        return pkg != null && pkg.equals(state.pkg) ? state.start : 0L;
    }

    private static String ownerPackage(Object model) {
        Object value = Refl.get(model, "managingPackageName");
        return value instanceof String && !((String) value).isEmpty() ? (String) value : null;
    }

    private static boolean isInactive(Object model) {
        return model != null && model.getClass().getName().endsWith("$Inactive");
    }

    /** True when {@code notificationKey} is the notification of the screen recorder that has a card on the island. */
    public boolean hidesOriginal(String notificationKey) {
        Set<String> recorders = recordingPackages;
        if (recorders.isEmpty() || notificationKey == null) {
            return false;
        }
        String[] parts = notificationKey.split("\\|", 3); // user|package|id|tag|uid
        return parts.length > 1 && recorders.contains(parts[1]);
    }

    public void collect(List<IslandItem> out) {
        Set<String> recorders = new HashSet<>();
        try {
            collectInto(out, recorders);
        } finally {
            Set<String> now = recorders.isEmpty() ? Collections.emptySet() : recorders;
            boolean changed = !now.equals(recordingPackages);
            recordingPackages = now;
            Runnable listener = onRecordersChanged;
            if (changed && listener != null) {
                listener.run();
            }
        }
    }

    private void collectInto(List<IslandItem> out, Set<String> recorders) {
        if (bundle == null) {
            return;
        }
        Object record = Refl.get(bundle, "screenRecord");
        Object share = Refl.get(bundle, "shareToApp");
        Object cast = Refl.get(bundle, "castToOtherDevice");
        if (isActive(record)) {
            IslandItem card = item("cast:record", record, IslandItem.Kind.RECORDING, RED, IslandText.get(ctx, "island_screen_recording"));
            out.add(card);
            if (card.packageName != null) {
                recorders.add(card.packageName);
            }
        } else if (isActive(share)) {
            String manager = (String) Refl.get(share, "managingPackageName");
            // Samsung's own recorder reports itself as a share
            boolean ownRecorder = "com.samsung.android.app.smartcapture".equals(manager);
            String title = ownRecorder ? IslandText.get(ctx, "island_screen_recording") : IslandText.get(ctx, "island_sharing_screen");
            IslandItem card = item("cast:share", share, IslandItem.Kind.RECORDING, RED, title);
            out.add(card);
            if (ownRecorder && card.packageName != null) {
                recorders.add(card.packageName);
            }
        }
        if (isActive(cast)) {
            out.add(item("cast:device", cast, IslandItem.Kind.LIVE, BLUE, IslandText.get(ctx, "island_casting_screen")));
        }
    }

    private IslandItem item(String key, Object model, IslandItem.Kind kind, int accent, String title) {
        IslandItem it = new IslandItem(key);
        it.kind = kind;
        it.accent = accent;
        it.pulsingDot = kind == IslandItem.Kind.RECORDING;
        it.title = title;
        it.appName = title;
        it.packageName = (String) Refl.get(model, "managingPackageName");
        Clock clock = readClock(Refl.get(model, "content"));
        if (clock == null) {
            clock = aospClock(model);
        }
        if (clock != null) {
            it.trailing = IslandItem.Trailing.CHRONOMETER;
            it.chronoBase = clock.base;
            it.chronoCountDown = clock.countDown;
        }
        Object chip = castController == null ? null : Refl.get(castController, "chipView");
        if (chip instanceof View) {
            it.actions.add(new IslandItem.Action(IslandText.get(ctx, "island_stop"), null, null, () -> clickStopChip((View) chip), true));
        }
        it.postTime = Long.MAX_VALUE - 1; // above everything else of its kind
        return it;
    }

    /** Taps the chip the way the status bar does: through its custom listener when it has one. */
    static void clickStopChip(View chip) {
        Object listener = Refl.get(chip, "customClickListener");
        if (listener instanceof View.OnClickListener) {
            ((View.OnClickListener) listener).onClick(chip);
        } else {
            chip.performClick();
        }
    }


    private static boolean isActive(Object model) {
        return model != null && model.getClass().getName().endsWith("$Active");
    }

    /** Wall-clock base of a chronometer and its direction. */
    private static final class Clock {
        final long base;
        final boolean countDown;

        Clock(long base, boolean countDown) {
            this.base = base;
            this.countDown = countDown;
        }
    }

    /** AOSP chip models are the timer themselves; {@code startTimeMs} is on the elapsed-realtime clock. */
    private static Clock aospClock(Object model) {
        Object start = model.getClass().getName().endsWith("$Timer") ? Refl.get(model, "startTimeMs") : null;
        if (!(start instanceof Long)) {
            return null;
        }
        long age = SystemClock.elapsedRealtime() - (Long) start;
        return new Clock(System.currentTimeMillis() - age, false);
    }

    /** The timer in a chip's content: running (up or down) or paused at a duration; null for anything else. */
    private static Clock readClock(Object content) {
        if (content == null || !content.getClass().getName().endsWith("$Timer")) {
            return null;
        }
        Object state = Refl.get(content, "value");
        if (state == null) {
            return null;
        }
        String name = state.getClass().getName();
        if (name.endsWith("$Running")) {
            return runningClock(state);
        }
        if (name.endsWith("$Paused") && Refl.get(state, "atDuration") instanceof Duration) {
            Duration elapsed = (Duration) Refl.get(state, "atDuration");
            return new Clock(System.currentTimeMillis() - elapsed.toMillis(), false);
        }
        return null;
    }

    private static Clock runningClock(Object running) {
        boolean countDown = Refl.getBool(running, "isCountdown", false);
        Object event = Refl.get(running, "eventTime");
        if (event == null) {
            return null;
        }
        Object elapsedRealtime = Refl.get(event, "elapsedRealtime");
        if (elapsedRealtime instanceof Long) {
            long age = SystemClock.elapsedRealtime() - (Long) elapsedRealtime;
            return new Clock(System.currentTimeMillis() - age, countDown);
        }
        Object instant = Refl.get(event, "instant");
        return instant instanceof Instant ? new Clock(((Instant) instant).toEpochMilli(), countDown) : null;
    }
}
