package dev.android.dynamicisland.island.view;

import android.graphics.Path;
import android.graphics.RectF;

/**
 * The compact pill drawn as a notch: it hangs from the top edge of the screen with a flat top and only its lower
 * corners rounded, so that on a phone whose camera sits in a notch the pill and the notch read as one shape.
 *
 * <p>The pill's own rectangle is left alone (content, touch bounds and animation all use it); only the black body
 * and its rim are reshaped. The flat top reaches {@code overreach} beyond the screen edge, so the straight top
 * and the corners that would be there are never seen.
 */
final class NotchShape {
    private NotchShape() {
    }

    /** Fills {@code out} with the notch body for the pill {@code pill}, whose lower corners have radius {@code radius}. */
    static void body(Path out, RectF pill, float radius, float overreach) {
        float top = Math.min(pill.top, 0.0f) - overreach;
        float corner = Math.max(0.0f, Math.min(radius, Math.min(pill.width() / 2.0f, (pill.bottom - top) / 2.0f)));
        out.reset();
        out.moveTo(pill.left, top);
        out.lineTo(pill.right, top);
        out.lineTo(pill.right, pill.bottom - corner);
        out.arcTo(pill.right - 2.0f * corner, pill.bottom - 2.0f * corner, pill.right, pill.bottom, 0.0f, 90.0f, false);
        out.lineTo(pill.left + corner, pill.bottom);
        out.arcTo(pill.left, pill.bottom - 2.0f * corner, pill.left + 2.0f * corner, pill.bottom, 90.0f, 90.0f, false);
        out.close();
    }
}
