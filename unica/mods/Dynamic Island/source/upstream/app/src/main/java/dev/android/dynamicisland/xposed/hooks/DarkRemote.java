package dev.android.dynamicisland.xposed.hooks;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * An app's own RemoteViews are coloured for the system theme: in the light theme their text is dark. The island's shade
 * cards stay dark in every theme, so dark text of such content is lifted to a light one (hue kept for coloured text,
 * transparency kept) to stay readable on the card.
 */
final class DarkRemote {
    private static final float DARK_BELOW = 0.45f;
    private static final float COLOURED_SATURATION = 0.35f;
    private static final float LIFTED_VALUE = 0.92f;

    private DarkRemote() {
    }

    /** Lifts every dark text colour under {@code root}. */
    static void lighten(View root) {
        if (root instanceof TextView) {
            TextView text = (TextView) root;
            int lifted = lift(text.getCurrentTextColor());
            if (lifted != text.getCurrentTextColor()) {
                text.setTextColor(lifted);
            }
        }
        if (root instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) root;
            for (int i = 0; i < group.getChildCount(); i++) {
                lighten(group.getChildAt(i));
            }
        }
    }

    /** The colour as it should be on a dark card; the same colour when it is light enough already. */
    static int lift(int argb) {
        if (Color.alpha(argb) == 0 || luminance(argb) >= DARK_BELOW) {
            return argb;
        }
        float[] hsv = new float[3];
        Color.colorToHSV(argb, hsv);
        if (hsv[1] >= COLOURED_SATURATION) {
            hsv[2] = Math.max(hsv[2], LIFTED_VALUE);
            hsv[1] = Math.min(hsv[1], 0.6f);
            return Color.HSVToColor(Color.alpha(argb), hsv);
        }
        return Color.argb(Color.alpha(argb), 255, 255, 255);
    }

    private static float luminance(int argb) {
        return ((0.2126f * Color.red(argb)) + (0.7152f * Color.green(argb)) + (0.0722f * Color.blue(argb))) / 255.0f;
    }
}
