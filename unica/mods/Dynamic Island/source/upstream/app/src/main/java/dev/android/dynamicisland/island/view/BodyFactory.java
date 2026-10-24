package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.CardBody;
import dev.android.dynamicisland.island.view.card.LiveBody;
import dev.android.dynamicisland.island.view.card.MediaBody;
import dev.android.dynamicisland.island.view.card.ProgressBody;
import dev.android.dynamicisland.island.view.card.RemoteBody;
import dev.android.dynamicisland.island.view.card.SliderBody;
import dev.android.dynamicisland.island.view.card.TimerBody;
import dev.android.dynamicisland.xposed.XLog;

/** Picks and lays out the card body that fits an item. */
final class BodyFactory {
    private final IslandView view;
    private final RemoteCards remote;

    BodyFactory(IslandView view, RemoteCards remote) {
        this.view = view;
        this.remote = remote;
    }

    /**
     * @param inShade true for cards drawn in the notification shade, which cannot host a RemoteViews layer
     */
    CardBody create(IslandItem it, float width, boolean inShade) {
        if (it.isMedia) {
            return new MediaBody(view, it, width);
        }
        if (it.sliderChange != null) {
            return new SliderBody(view, it, width);
        }
        if (it.bigNumber) {
            return new TimerBody(view, it, width);
        }
        if ((it.progressStyle || it.kind == IslandItem.Kind.PEEK) && it.remoteView == null) {
            return new ProgressBody(view, it, width);
        }
        if (!inShade && it.remoteView != null && remote.available()) {
            try {
                return new RemoteBody(view, it, width);
            } catch (Throwable t) {
                XLog.e("RemoteViews card failed for " + it.packageName, t);
            }
        }
        if (isTimerLike(it)) {
            return new TimerBody(view, it, width);
        }
        try {
            return new LiveBody(view, it, width);
        } catch (Throwable t) {
            XLog.e("live card layout failed for " + it.packageName, t);
            return new TimerBody(view, it, width);
        }
    }

    private static boolean isTimerLike(IslandItem it) {
        boolean rich = it.description != null || it.hasSegments() || it.progressIndeterminate
                || it.subtitle != null || it.chronoPosition != 0;
        boolean bareChronometer = it.trailing == IslandItem.Trailing.CHRONOMETER && it.progress < 0.0f && !rich;
        return it.kind == IslandItem.Kind.TIMER || it.kind == IslandItem.Kind.RECORDING
                || it.kind == IslandItem.Kind.CALL || it.pulsingDot || bareChronometer;
    }
}
