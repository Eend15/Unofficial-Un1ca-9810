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
            List<Drawable> images = new ArrayList<>();
            List<String> texts = new ArrayList<>();
            gather(views.apply(ctx, new FrameLayout(ctx)), images, texts);
            if (texts.isEmpty()) {
                return null;
            }
            if (images.size() >= 2) {
                String score = texts.size() == 2 ? texts.get(0) + "-" + texts.get(1) : String.join(" ", texts);
                return new Chip(images.get(0), images.get(images.size() - 1), score);
            }
            return new Chip(null, null, String.join(" ", texts));
        } catch (Throwable t) {
            XLog.e("score chip failed", t);
            return null;
        }
    }

    private static void gather(View view, List<Drawable> images, List<String> texts) {
        if (view.getVisibility() != View.VISIBLE) {
            return;
        }
        if (view instanceof ImageView) {
            Drawable shown = ((ImageView) view).getDrawable();
            if (shown != null) {
                images.add(shown);
            }
        } else if (view instanceof Chronometer) {
            // a running clock is neither score nor label; the live chronometer shows it
        } else if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            String trimmed = text == null ? "" : text.toString().trim();
            if (!trimmed.isEmpty()) {
                texts.add(trimmed);
            }
        } else if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                gather(group.getChildAt(i), images, texts);
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
            return new Chrono(wallBase, clock.isCountDown(), ticking, ticking ? null : clock.getText());
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
