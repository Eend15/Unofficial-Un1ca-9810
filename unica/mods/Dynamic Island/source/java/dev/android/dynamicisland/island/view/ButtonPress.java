package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.graphics.Easing.easeOutCubic;

import android.graphics.RectF;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.Btn;

/**
 * Press feedback of the card buttons: a quick ease-in while the finger is down and a damped wobble after
 * release. Only one button is pressed at a time; it is identified by its item and position.
 */
final class ButtonPress {
    private static final long DOWN_MS = 110;
    private static final long UP_MS = 380;
    /** Frequency factor of the damped wobble a released button performs. */
    private static final float WOBBLE_CYCLES = 1.6f;

    private final RectF pressed = new RectF();
    /** Key of the item whose button is pressed, so equally placed buttons of other cards stay still. */
    private String itemKey;
    private boolean held;
    private long downAt;
    private long upAt;
    private float amountAtRelease;

    void press(Btn button, IslandItem item) {
        pressed.set(button.r);
        itemKey = item.key;
        held = true;
        downAt = IslandView.now();
        upAt = 0L;
    }

    void release() {
        if (!held) {
            return;
        }
        long t = IslandView.now();
        held = false;
        amountAtRelease = amount(t);
        upAt = t;
    }

    boolean animating() {
        return held || (upAt != 0 && IslandView.now() - upAt < UP_MS);
    }

    /** Press amount (about 0..1, negative during the wobble) for {@code button} of {@code item}. */
    float of(Btn button, IslandItem item) {
        boolean sameButton = (held || upAt != 0) && item.key.equals(itemKey)
                && Math.abs(button.r.centerX() - pressed.centerX()) <= 1.0f
                && Math.abs(button.r.centerY() - pressed.centerY()) <= 1.0f;
        return sameButton ? amount(IslandView.now()) : 0.0f;
    }

    private float amount(long t) {
        if (held) {
            return easeOutCubic((t - downAt) / (float) DOWN_MS);
        }
        if (upAt == 0) {
            return 0.0f;
        }
        float u = (t - upAt) / (float) UP_MS;
        if (u >= 1.0f) {
            return 0.0f;
        }
        return amountAtRelease * ((float) (Math.cos(u * Math.PI * WOBBLE_CYCLES) * (1.0f - u) * (1.0f - u)));
    }
}
