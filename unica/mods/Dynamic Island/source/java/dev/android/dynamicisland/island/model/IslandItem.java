package dev.android.dynamicisland.island.model;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.LongConsumer;

/**
 * One thing the island can show: a call, a media session, a timer, a heads-up, a charging event ...
 *
 * <p>The sources in {@code island.source} create and fill items (each source only sets the fields
 * that make sense for it, everything else keeps its default), the controller collects them into the
 * list sorted by {@link Kind#priority}, and the views in {@code island.view} only read them.
 * It is a plain data holder with public fields; items are replaced rather than mutated by the views.
 */
public final class IslandItem {
    private static final AtomicLong SEQ = new AtomicLong();

    // ---- identity ------------------------------------------------------------------------------

    /** Stable id of the thing shown; a new item with the same key replaces the old one. */
    public final String key;
    /** What kind of island this is; decides priority and layout. */
    public Kind kind = Kind.LIVE;
    /** Creation order, a tie-breaker between items of the same priority. */
    public final long seq = SEQ.incrementAndGet();
    /** Package that owns the item (notification / media app), null for system events. */
    public String packageName;
    /** Android user id of the owner (work profile etc.); set by the ongoing-activity source. */
    public int userId;
    /** Work/private profile badge for the owning user, null for the main user. */
    public Drawable profileBadge;
    /** Key of the notification this item was made from, when it is made from one; else null. */
    public String sourceKey;
    /** A progress-category notification (download, copy, update): the "Downloads & transfers" switch covers it. */
    public boolean transfer;
    /** Stage reached in a staged process (delivery, ride, route...), see the rule source; -1 = none. */
    public int stage = -1;
    /** When the underlying notification / session was posted (ms, wall clock). */
    public long postTime;
    /** Uptime (ms) after which a transient item (heads-up, event) disappears; set by the peek and event sources. */
    public long expiresAtUptime;
    /** Minutes a card of this stage is not shown again after it left, for events that repeat; 0 = no limit. */
    public int cooldownMinutes;
    /** Wall-clock time (ms) after which a card made from a notification goes away although the notification stays; 0 = never. */
    public long expiresAtWall;
    /** How long a heads-up takeover stays open; 0 = the default. Set by the peek source. */
    public long peekMillis;

    // ---- text ----------------------------------------------------------------------------------

    /** Primary line. */
    public CharSequence title;
    /** Secondary line. */
    public CharSequence subtitle;
    /** Third line of a card (ongoing-activity detail text). */
    public CharSequence detail;
    /** Accessibility/long description; replaces the secondary line when present (OngoingActivityData.mDescription). */
    public CharSequence description;
    /** Text shown at the trailing edge of the compact pill / card, see {@link Trailing#TEXT}. */
    public CharSequence trailingText;
    /** Name of the owning app, shown in the card header. */
    public CharSequence appName;
    /** Notification {@code when}, shown in the card header; 0 = none. */
    public long whenMillis;
    /** Card shows trailingText as a big number with the title as a small label (timer layout). Set by the peek source. */
    public boolean bigNumber;
    /** The verification code on a code card (digits only), else null. Set by the peek source. */
    public String otpCode;

    // ---- images and colours --------------------------------------------------------------------

    /** Icon of the compact pill. */
    public Drawable icon;
    /** The icon is a full-colour image and must not be tinted. */
    public boolean iconIsImage;
    /** Small glyph shown before the secondary line (OngoingActivityData.mSecondaryInfoIcon). */
    public Drawable secondaryIcon;
    /** Icon in the card header. */
    public Drawable cardIcon;
    /** Large image on the card (album art, avatar, app image). */
    public Drawable cardImage;
    /** {@link #cardImage} is a real picture, not a tintable icon. */
    public boolean cardImageIsImage;
    /** The card image is a person's avatar: draw it as a circle. */
    public boolean cardImageRound;
    /** Two-sided pill (sports scores): left team image. With {@link #rightImage} makes {@link #hasTeams()} true. */
    public Drawable leftImage;
    /** Right team image, see {@link #leftImage}. */
    public Drawable rightImage;
    /** Accent colour of the item; -1 = none. */
    public int accent = -1;
    /** Background colour of the compact pill; 0 = default black. Set by the ongoing-activity and event sources. */
    public int pillColor;
    /** Compact pill shows a pulsing dot instead of the icon (screen cast). */
    public boolean pulsingDot;
    /** Android 16 ProgressStyle notification (title/text/progress/segments straight from the notification). */
    public boolean progressStyle;
    /** Custom RemoteViews content of an ongoing activity, hosted in the remote layer of the window. */
    public RemoteViews remoteView;

    // ---- trailing indicator --------------------------------------------------------------------

    /**
     * A card with a slider (the flashlight's brightness): its position 0..1 ({@code -1} = none), the number of steps
     * (0 = smooth) and what to tell when the user moves it (the new position, 0..1).
     */
    public float sliderValue = -1.0f;
    public int sliderSteps;
    public java.util.function.Consumer<Float> sliderChange;
    /** Texts that follow the slider while it is dragged (the value is the step the finger is on, 0..1); null = fixed texts. */
    public java.util.function.Function<Float, String> sliderTrailing;
    public java.util.function.Function<Float, String> sliderSubtitle;

    /** What the compact pill shows at its trailing edge. */
    public Trailing trailing = Trailing.NONE;
    /** Progress 0..1 for {@link Trailing#PROGRESS_RING} and progress bars; -1 = none. */
    public float progress = -1.0f;
    /** Chronometer base time in ms (start, or end when counting down); 0 = no chronometer. */
    public long chronoBase;
    /** The chronometer counts down to {@link #chronoBase}. */
    public boolean chronoCountDown;
    /** Stopwatch: show hundredths of a second. */
    public boolean chronoMillis;
    /** 0 none, 1 chronometer replaces the primary line, 2 it replaces the secondary line. */
    public int chronoPosition;

    // ---- progress bar --------------------------------------------------------------------------

    public boolean progressIndeterminate;
    /** Colour of the already-elapsed part of a segmented bar; 0 = default grey. */
    public int progressTrackColor;
    /** Segmented progress: segment i starts at progressSegmentStarts[i] (0..1) and is painted progressSegmentColors[i]. */
    public int[] progressSegmentColors;
    public float[] progressSegmentStarts;
    /** Marker drawn at the current position of a segmented bar (e.g. the car in navigation cards). */
    public Drawable progressThumb;
    /**
     * ProgressStyle bars: the part of each segment that is already behind the progress keeps its
     * colour while the rest is faded (Samsung's own segmented bars do the opposite).
     */
    public boolean progressStyledByProgress;
    /** ProgressStyle milestones: position 0..1 along the bar and their colours. */
    public float[] progressPointPositions;
    public int[] progressPointColors;

    // ---- actions -------------------------------------------------------------------------------

    /** Buttons of the card (call: answer/decline, notification actions ...). */
    public final List<Action> actions = new ArrayList<>();
    /** -1 none, 0 round icon buttons, 1 text buttons (OngoingActivityData.mActionType). */
    public int actionType = -1;
    /** Button background colours matching {@link #actions}; set by the ongoing-activity source. */
    public int[] actionBgColors;
    /** Index in {@link #actions} of the emphasised button, -1 = none. */
    public int primaryActionIndex = -1;
    /** Opens the owning app / notification when the card is tapped. */
    public PendingIntent contentIntent;

    // ---- media (filled by the media source) ----------------------------------------------------

    /** The item is a media session (compact look is shared between sessions, see {@link #sameCompactLook}). */
    public boolean isMedia;
    public boolean playing;
    /** Album art. */
    public Bitmap art;
    /** Launcher icon of the playing app. */
    public Drawable appIcon;
    /** Monochrome version of {@link #appIcon} for the compact pill, may be null. */
    public Drawable appGlyph;
    public Runnable mediaPlayPause;
    public Runnable mediaNext;
    public Runnable mediaPrev;
    /** Seeks to the given position in ms. */
    public LongConsumer mediaSeek;
    /** Last reported playback position in ms; -1 = unknown. */
    public long mediaPosition = -1;
    /** {@code SystemClock.elapsedRealtime()} at which {@link #mediaPosition} was reported. */
    public long mediaPositionUpdateTime;
    /** Track length in ms; -1 = unknown. */
    public long mediaDuration = -1;
    /** Playback speed factor. */
    public float mediaSpeed = 1.0f;
    /** The app's own custom actions (shuffle, like ...). */
    public final List<Action> mediaCustom = new ArrayList<>();
    /** Where the music plays (Bluetooth / wired / cast), null for the phone speaker. */
    public CharSequence mediaOutput;
    public Drawable mediaOutputIcon;
    /** Battery percent of the output device, -1 = unknown. */
    public int mediaOutputBattery = -1;

    /** What the compact pill shows at its trailing edge. */
    public enum Trailing {
        NONE,
        TEXT,
        CHRONOMETER,
        PROGRESS_RING,
        WAVEFORM
    }

    /** Category of an item; its priority decides which item wins the island. Higher wins. */
    public enum Kind {
        CALL(100),
        PEEK(95),
        NAVIGATION(90),
        RECORDING(80),
        TIMER(70),
        EVENT(65),
        LIVE(60),
        TASK(55),
        MEDIA(50),
        CHARGING(40);

        public final int priority;

        Kind(int priority) {
            this.priority = priority;
        }
    }

    /** A button on a card: either a pending intent or a runnable. */
    public static final class Action {
        /** Shown in its active state (e.g. mic muted). */
        public boolean active;
        /** Drawn in the destructive colour (hang up, decline). */
        public final boolean destructive;
        /** One of the {@code Glyphs} ids to draw instead of {@link #icon}; 0 = none. */
        public int glyph;
        public final Drawable icon;
        public final PendingIntent intent;
        public final Runnable runnable;
        public final CharSequence title;
        /** The text fields of a reply action: the button asks for a text and sends it through {@link #intent}. */
        public android.app.RemoteInput[] remoteInputs;

        public Action(CharSequence title, Drawable icon, PendingIntent intent, Runnable runnable, boolean destructive) {
            this.title = title;
            this.icon = icon;
            this.intent = intent;
            this.runnable = runnable;
            this.destructive = destructive;
        }
    }

    public IslandItem(String key) {
        this.key = key;
    }

    public boolean hasTeams() {
        return leftImage != null && rightImage != null;
    }

    public int priority() {
        return kind.priority;
    }

    /** Estimated playback position in ms at {@code nowElapsed}, or -1 when the position is unknown. */
    public long currentMediaPosition(long nowElapsed) {
        if (mediaPosition < 0) {
            return -1L;
        }
        if (!playing) {
            return mediaPosition;
        }
        long pos = mediaPosition + ((long) ((nowElapsed - mediaPositionUpdateTime) * mediaSpeed));
        if (mediaDuration > 0) {
            pos = Math.min(pos, mediaDuration);
        }
        return Math.max(0L, pos);
    }

    public boolean hasChronometer() {
        return chronoBase != 0;
    }

    public boolean hasSegments() {
        return progressSegmentColors != null && progressSegmentColors.length > 0
                && progressSegmentStarts != null && progressSegmentStarts.length == progressSegmentColors.length;
    }

    /** True when the compact pill would look the same for both items, so it need not animate a swap. */
    public boolean sameCompactLook(IslandItem o) {
        return o != null && Objects.equals(key, o.key) && trailing == o.trailing && (accent == o.accent || (isMedia && o.isMedia)) && iconIsImage == o.iconIsImage && pulsingDot == o.pulsingDot && pillColor == o.pillColor && hasTeams() == o.hasTeams();
    }

    @Override
    public String toString() {
        return "IslandItem{" + key + " " + kind + " " + packageName + "}";
    }
}
