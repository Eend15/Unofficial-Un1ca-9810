package dev.android.dynamicisland.island.graphics;

import android.graphics.Typeface;
import dev.android.dynamicisland.xposed.Refl;

/**
 * Typeface lookup that respects Samsung's "flip font" (user-selected system font), where variable
 * weights are not available. Stateless, any thread.
 */
public final class Fonts {
    /** From this weight up a flip font is drawn bold. */
    private static final int BOLD_FROM_WEIGHT = 600;

    private Fonts() {
    }

    /** Identity of the current default typeface; changes when the user switches the system font. */
    public static Object key() {
        Object handle = Refl.get(Typeface.DEFAULT, "native_instance");
        return handle == null ? Typeface.DEFAULT : handle;
    }

    /** Default typeface at the given CSS-style weight (100..900); flip fonts only offer regular and bold. */
    public static Typeface of(int weight) {
        if (!usesFlipFont()) {
            return Typeface.create(Typeface.DEFAULT, weight, false);
        }
        return weight >= BOLD_FROM_WEIGHT ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT;
    }

    private static boolean usesFlipFont() {
        return Boolean.TRUE.equals(Refl.getStatic(Typeface.class, "isFlipFontUsed"));
    }
}
