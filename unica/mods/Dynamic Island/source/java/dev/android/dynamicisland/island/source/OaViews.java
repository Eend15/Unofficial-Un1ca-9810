package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RemoteViews;
import android.widget.TextView;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.List;

/**
 * Reads values out of the {@link RemoteViews} an app attaches to an ongoing activity, by inflating
 * them off-screen: the score / team badges of a custom chip and the clock of a chronometer view.
 */
final class OaViews {
    private final Context ctx;

    OaViews(Context ctx) {
        this.ctx = ctx;
    }

    /** Team badges (null for a text-only chip) and the text of a custom expanded chip. */
    static final class Chip {
        final Drawable left;
        final Drawable right;
        final String text;

        Chip(Drawable left, Drawable right, String text) {
            this.left = left;
            this.right = right;
            this.text = text;
        }
    }

    /** A chronometer: wall-clock base, direction, whether it ticks and, if frozen, the text it shows. */
    static final class Chrono {
        final long base;
        Long elapsedBase;
        final boolean countDown;
        final boolean running;
        /** What a stopped chronometer displays; null while running. */
        final CharSequence frozenText;

        Chrono(long base, boolean countDown, boolean running, CharSequence frozenText) {
            this.base = base;
            this.countDown = countDown;
            this.running = running;
            this.frozenText = frozenText;
        }

        /** Stopped with a text to show instead of a live count. */
        boolean isFrozen() {
            return !running && frozenText != null && frozenText.length() > 0;
        }
    }

    /** Content of a custom chip layout (a live score, a Teams call ...); null when it holds no text. */
    Chip readChip(RemoteViews views) {
        if (views == null) {
            return null;
        }
        try {
            List<Object> parts = new ArrayList<>();
            gather(views.apply(ctx, new FrameLayout(ctx)), parts);
            return chipOf(parts);
        } catch (Throwable t) {
            XLog.e("score chip failed", t);
            return null;
        }
    }

    /**
     * The chip from what its layout holds, in layout order: a {@link Drawable} for each image and a String for each
     * text. A team without a logo is a letter in the layout instead of an image: two scores and one short letter
     * beside a single logo make a pill with that team's letter on a tile.
     */
    static Chip chipOf(List<Object> parts) {
        List<Drawable> images = new ArrayList<>();
        List<String> texts = new ArrayList<>();
        for (Object part : parts) {
            if (part instanceof Drawable) {
                images.add((Drawable) part);
            } else {
                texts.add((String) part);
            }
        }
        if (texts.isEmpty()) {
            return null;
        }
        if (images.size() >= 2) {
            String score = texts.size() == 2 ? texts.get(0) + "-" + texts.get(1) : String.join(" ", texts);
            return new Chip(images.get(0), images.get(images.size() - 1), score);
        }
        Chip lettered = oneLogoMissing(parts, images, texts);
        return lettered != null ? lettered : new Chip(null, null, String.join(" ", texts));
    }

    private static Chip oneLogoMissing(List<Object> parts, List<Drawable> images, List<String> texts) {
        // Some providers leave the image empty instead of supplying the team's initial.
        if (images.size() == 1 && texts.size() == 2 && parts.size() == 3
                && texts.get(0).matches("\\d{1,3}") && texts.get(1).matches("\\d{1,3}")) {
            int imageAt = parts.indexOf(images.get(0));
            Drawable missing = new dev.android.dynamicisland.island.graphics.TeamBadge("?");
            String score = texts.get(0) + "-" + texts.get(1);
            if (imageAt == 0) return new Chip(images.get(0), missing, score);
            if (imageAt == 2) return new Chip(missing, images.get(0), score);
        }
        if (images.size() != 1 || texts.size() != 3) {
            return null;
        }
        List<String> scores = new ArrayList<>();
        String letter = null;
        int letterAt = -1;
        int at = 0;
        for (Object part : parts) {
            if (part instanceof String) {
                String text = (String) part;
                if (text.matches("\\d{1,3}")) {
                    scores.add(text);
                } else if (text.length() <= 4 && letter == null) {
                    letter = text;
                    letterAt = at;
                }
            }
            at++;
        }
        if (scores.size() != 2 || letter == null) {
            return null;
        }
        int imageAt = parts.indexOf(images.get(0));
        Drawable badge = new dev.android.dynamicisland.island.graphics.TeamBadge(letter);
        String score = scores.get(0) + "-" + scores.get(1);
        return letterAt < imageAt ? new Chip(badge, images.get(0), score) : new Chip(images.get(0), badge, score);
    }

    private static void gather(View view, List<Object> parts) {
        if (view.getVisibility() != View.VISIBLE) {
            return;
        }
        if (view instanceof ImageView) {
            Drawable shown = ((ImageView) view).getDrawable();
            if (shown != null) {
                parts.add(shown);
            }
        } else if (view instanceof Chronometer) {
            // a running clock is neither score nor label; the live chronometer shows it
        } else if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            String trimmed = text == null ? "" : text.toString().trim();
            if (!trimmed.isEmpty()) {
                parts.add(trimmed);
            }
        } else if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                gather(group.getChildAt(i), parts);
            }
        }
    }

    /** The chronometer of the notification or of the activity's chronometer view; null when there is none. */
    Chrono readChrono(Object data, Notification n) {
        if (n != null && n.extras.getBoolean("android.showChronometer", false)) {
            return new Chrono(n.when, n.extras.getBoolean("android.chronometerCountDown", false), true, null);
        }
        RemoteViews views = (RemoteViews) Refl.get(data, "mChronometerView");
        if (views == null) {
            return null;
        }
        try {
            Chronometer clock = firstChronometer(views.apply(ctx, new FrameLayout(ctx)));
            if (clock == null) {
                return null;
            }
            long wallBase = System.currentTimeMillis() - (SystemClock.elapsedRealtime() - clock.getBase());
            boolean ticking = Refl.getBool(clock, "mStarted", true);
            Chrono result = new Chrono(wallBase, clock.isCountDown(), ticking, ticking ? null : clock.getText());
            result.elapsedBase = clock.getBase();
            return result;
        } catch (Throwable t) {
            XLog.e("chronometer RemoteViews", t);
            return null;
        }
    }

    private static Chronometer firstChronometer(View view) {
        if (view instanceof Chronometer) {
            return (Chronometer) view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                Chronometer found = firstChronometer(group.getChildAt(i));
                if (found != null) {
                    return found;
                }
            }
        }
        return null;
    }
}
