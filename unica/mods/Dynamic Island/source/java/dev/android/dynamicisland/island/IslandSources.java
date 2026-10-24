package dev.android.dynamicisland.island;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.source.CallSource;
import dev.android.dynamicisland.island.source.CastSource;
import dev.android.dynamicisland.island.source.EventSource;
import dev.android.dynamicisland.island.source.MediaSource;
import dev.android.dynamicisland.island.source.OaSource;
import dev.android.dynamicisland.island.source.PeekSource;
import dev.android.dynamicisland.island.source.PrivacySource;
import dev.android.dynamicisland.island.source.PromotedSource;
import dev.android.dynamicisland.island.source.ProgressSource;
import dev.android.dynamicisland.island.source.RecorderNotificationSource;
import dev.android.dynamicisland.island.source.RuleSource;
import dev.android.dynamicisland.island.source.TorchSource;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.xposed.hooks.HideDuplicated;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * The set of data sources behind the island and the step that gathers their items into one list.
 * Sources are isolated from each other: one that throws only loses its own islands.
 */
final class IslandSources {
    /** What one gathering pass produced. */
    static final class Gathered {
        final List<IslandItem> items = new ArrayList<>();
        /** Keys of items a source left out because their app is in the foreground. */
        final Set<String> hiddenByForeground = new HashSet<>();
        /** Packages whose chips the launcher should animate into the island. */
        final Set<String> packages = new LinkedHashSet<>();
    }

    private static final long PREVIEW_RECHECK_MS = 2500;
    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    final OaSource oa;
    final MediaSource media;
    final CastSource cast;
    final EventSource events;
    final TorchSource torch;
    final PrivacySource privacy;
    final ProgressSource progress;
    final PromotedSource promoted;
    final RecorderNotificationSource recorder;
    final RuleSource rules;
    final CallSource calls;
    final PeekSource peeks;

    IslandSources(Context ctx, ClassLoader classLoader, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
        oa = new OaSource(ctx, classLoader);
        media = new MediaSource(ctx, main, onChange);
        cast = new CastSource(ctx);
        events = new EventSource(ctx, main, onChange);
        torch = new TorchSource(ctx, main, onChange);
        privacy = new PrivacySource(ctx, main, onChange);
        progress = new ProgressSource(ctx, main, onChange);
        promoted = new PromotedSource(ctx, main, onChange);
        recorder = new RecorderNotificationSource(ctx, onChange);
        recorder.setOnShownChanged(() -> main.post(HideDuplicated::rebuild));
        promoted.setOnShownChanged(() -> main.post(HideDuplicated::rebuild));
        rules = new RuleSource(ctx, main, onChange);
        progress.setOnShownChanged(() -> main.post(HideDuplicated::rebuild));
        rules.setOnShownChanged(() -> main.post(HideDuplicated::rebuild));
        cast.onRecordersChanged = () -> main.post(HideDuplicated::rebuild);
        torch.onShownChanged = () -> main.post(HideDuplicated::rebuild);
        calls = new CallSource(ctx, main, onChange);
        peeks = new PeekSource(ctx, main, onChange);
    }

    /** Starts the sources that listen on their own; the event and privacy islands may fail without harm. */
    void start(Runnable onChange) {
        media.start();
        try {
            events.start();
            torch.start();
            privacy.start();
        } catch (Throwable t) {
            XLog.e("event islands failed to start", t);
        }
        oa.onChanged = onChange;
    }

    /** Package in the foreground as the live-notification source sees it, or null. */
    String foregroundPackage() {
        return oa.foregroundPackage();
    }

    Gathered gather() {
        Gathered out = new Gathered();
        List<IslandItem> items = out.items;
        String fg = null;
        try {
            oa.collect(items, out.hiddenByForeground, out.packages);
            fg = oa.foregroundPackage();
        } catch (Throwable t) {
            XLog.once("collect live notifications", t);
        }
        if (!ModuleSettings.progressNotifications()) {
            items.removeIf(item -> item.transfer);
        }
        final String foreground = fg;
        guarded("media", () -> media.collect(items, foreground, out.hiddenByForeground, out.packages));
        guarded("cast", () -> cast.collect(items));
        guarded("recorder notification", () -> recorder.collect(items));
        guarded("events", () -> events.collect(items));
        guarded("torch", () -> torch.collect(items));
        if (ModuleSettings.placementPreviewActive()) {
            items.add(placementSample());
            main.removeCallbacks(onChange);
            main.postDelayed(onChange, PREVIEW_RECHECK_MS); // so the sample goes away when the page stops asking for it
        }
        guarded("privacy", () -> privacy.collect(items, foreground));
        guarded("live notifications", () -> promoted.collect(items, foreground));
        guarded("progress", () -> progress.collect(items, foreground));
        guarded("rules", () -> rules.collect(items, foreground));
        guarded("calls", () -> calls.collect(items, foreground));
        guarded("peeks", () -> peeks.collect(items));
        if (torch.replacesStockNotification()) {
            // System UI's own "flashlight in use" notification would show next to the brightness card
            items.removeIf(it -> TorchSource.isStockNotification(it.key) || TorchSource.isStockNotification(it.sourceKey));
        }
        SwitchGate.apply(items);
        ItemDedupe.apply(items, HideDuplicated::copyKeysOf);
        return out;
    }

    /** What the island shows while the position page of the settings app is open, so there is something to move. */
    private IslandItem placementSample() {
        boolean ko = "ko".equals(ctx.getResources().getConfiguration().getLocales().get(0).getLanguage());
        IslandItem it = new IslandItem("preview:position");
        it.kind = IslandItem.Kind.EVENT;
        it.iconIsImage = false;
        it.title = ko ? "아일랜드 위치" : "Island position";
        it.subtitle = ko ? "슬라이더로 옮겨 보세요" : "Move it with the sliders";
        it.icon = GlyphIcon.of(GlyphIcon.Kind.HOTSPOT);
        it.accent = 0xFF3E91FF;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = ModuleSettings.previewSampleLong()
                ? (ko ? "미리보기 · 알림 글이 길면 이만큼까지 넓어집니다" : "Preview · a long text stretches the pill this far")
                : (ko ? "미리보기" : "Preview");
        it.postTime = SystemClock.uptimeMillis();
        return it;
    }

    private static void guarded(String source, Runnable collect) {
        try {
            collect.run();
        } catch (Throwable t) {
            XLog.once("collect " + source, t);
        }
    }
}
