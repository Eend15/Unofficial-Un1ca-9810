package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.Btn;
import dev.android.dynamicisland.island.view.card.CardBody;
import dev.android.dynamicisland.island.view.card.MediaBody;

/**
 * The island's card renderer lent to the notification shade: lays out, draws and hit-tests one card at a time
 * (the one the shade currently asks about) and runs the media seek bar for it.
 */
final class ShadeCards {
    /** Content of a card in the shade is always fully faded in. */
    private static final long SETTLED_ELAPSED_MS = 290;

    private final IslandView view;
    private final StackPainter painter;
    private CardBody body;
    private IslandItem item;
    private float width;

    ShadeCards(IslandView view, StackPainter painter) {
        this.view = view;
        this.painter = painter;
    }

    /** Throws the cached layout away, e.g. after the system font changed. */
    void forget() {
        body = null;
    }

    private CardBody bodyFor(IslandItem wanted, float w) {
        view.followFont();
        if (body == null || item != wanted || width != w) {
            body = view.bodies().create(wanted, w, true);
            item = wanted;
            width = w;
        }
        return body;
    }

    float heightOf(IslandItem wanted, float w) {
        return bodyFor(wanted, w).h;
    }

    void draw(Canvas canvas, IslandItem wanted, float w) {
        CardBody b = bodyFor(wanted, w);
        view.tmpRect.set(0.0f, 0.0f, b.w, b.h);
        painter.drawBackground(b, canvas, view.tmpRect, 1.0f);
        painter.drawBody(b, canvas, 0.0f, 0.0f, 1.0f, SETTLED_ELAPSED_MS);
    }

    boolean hasButtonAt(IslandItem wanted, float w, float x, float y) {
        return bodyFor(wanted, w).hit(x, y) != null;
    }

    boolean buttonDown(IslandItem wanted, float w, float x, float y) {
        Btn b = bodyFor(wanted, w).hit(x, y);
        if (b != null) {
            view.buttons().press(b, wanted);
        }
        return b != null;
    }

    boolean seekStart(IslandItem wanted, float w, float x, float y) {
        CardBody b = bodyFor(wanted, w);
        if (!(b instanceof MediaBody) || !((MediaBody) b).onSeekBar(x, y)) {
            return false;
        }
        view.seekBody = (MediaBody) b;
        view.seekFraction = view.seekBody.fractionAt(x);
        return true;
    }

    void seekMove(float x) {
        if (view.seekBody != null) {
            view.seekFraction = view.seekBody.fractionAt(x);
        }
    }

    void seekEnd(boolean commit) {
        MediaBody seeking = view.seekBody;
        view.seekBody = null;
        if (commit && seeking != null && seeking.item.mediaSeek != null) {
            seeking.item.mediaSeek.accept((long) (view.seekFraction * seeking.item.mediaDuration));
        }
    }

    /** Runs the button under the point; true when there was one (even one without an effect). */
    boolean tap(IslandItem wanted, float w, float x, float y) {
        Btn b = bodyFor(wanted, w).hit(x, y);
        if (b == null) {
            return false;
        }
        if (b.run != null) {
            b.run.run();
            return true;
        }
        if (b.action == null) {
            return true;
        }
        IslandController controller = IslandController.get();
        if (controller == null) {
            return false;
        }
        controller.onItemAction(wanted, b.action);
        return true;
    }
}
