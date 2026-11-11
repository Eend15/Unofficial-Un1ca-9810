package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.app.Person;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.detect.IconContrast;
import dev.android.dynamicisland.island.detect.NotificationText;
import dev.android.dynamicisland.island.detect.OtpDetector;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.List;

/**
 * A notification that would have popped up as a heads-up banner, shown as an island card instead:
 * sender and message with the app icon / avatar, its own buttons, tap to open.
 */
public final class PeekSource {
    /** How long a verification-code card stays, and how long after the code was copied. */
    private static final long OTP_MS = 12000;
    private static final long OTP_COPIED_MS = 3500;
    /** At most this many of the notification's own buttons are shown. */
    private static final int MAX_ACTIONS = 2;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    /** This source's own delayed refresh: sharing {@code onChange} would let another source cancel it. */
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            onChange.run();
        }
    };
    private IslandItem current;

    public PeekSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    /** Puts the card on the island for {@code ms}; a newer card replaces the current one. */
    public void show(IslandItem item, long ms) {
        item.expiresAtUptime = SystemClock.uptimeMillis() + ms;
        current = item;
        main.removeCallbacks(tick);
        main.postDelayed(tick, ms + 40);
    }

    /** The card on the island right now, or null when none is (or its time is up). */
    public IslandItem showing() {
        IslandItem it = current;
        return it != null && it.expiresAtUptime > SystemClock.uptimeMillis() ? it : null;
    }

    /** Takes back a card the island could not show after all. */
    public void dismiss(IslandItem item) {
        if (current == item) {
            current = null;
        }
    }

    public void collect(List<IslandItem> out) {
        if (current == null) {
            return;
        }
        if (current.expiresAtUptime <= SystemClock.uptimeMillis()) {
            current = null;
            return;
        }
        out.add(current);
    }

    /** Which notifications this island takes over from the stock heads-up banner. */
    public static boolean eligible(StatusBarNotification sbn) {
        Notification n = sbn == null ? null : sbn.getNotification();
        if (n == null || n.extras == null) {
            return false;
        }
        if (n.fullScreenIntent != null) {
            return false; // calls and alarms must keep their own full UI
        }
        if ((n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) != 0) {
            return false;
        }
        if (ProgressSource.takesOrdinary(sbn)) {
            return false; // it becomes a progress card, not a message popup
        }
        if ((n.flags & Notification.FLAG_GROUP_SUMMARY) != 0) {
            if (ModuleSettings.experimentalRecovery()) {
                // Match the alternate One UI 8 build's summary eligibility in recovery mode.
                CharSequence title = n.extras.getCharSequence(Notification.EXTRA_TITLE);
                CharSequence text = n.extras.getCharSequence(Notification.EXTRA_TEXT);
                if ((title == null || title.length() == 0) && (text == null || text.length() == 0)) return false;
            } else if (!hasReadableContent(n)) return false;
        }
        if (!hasContent(n)) {
            // System UI posts an empty placeholder (channel and group "INSIGNIFICANT", no text and no views) for the
            // silent section on every unlock; there is nothing to put on a card.
            return false;
        }
        String category = n.category;
        if (Notification.CATEGORY_CALL.equals(category) || Notification.CATEGORY_ALARM.equals(category)
                || Notification.CATEGORY_NAVIGATION.equals(category) || Notification.CATEGORY_TRANSPORT.equals(category)
                || Notification.CATEGORY_PROGRESS.equals(category)) {
            return false;
        }
        String template = n.extras.getString(Notification.EXTRA_TEMPLATE);
        if (template != null && (template.endsWith("$CallStyle") || template.endsWith("$MediaStyle")
                || template.endsWith("$DecoratedMediaCustomViewStyle") || template.endsWith("$ProgressStyle"))) {
            return false;
        }
        if (n.extras.containsKey(Notification.EXTRA_MEDIA_SESSION)) {
            return false;
        }
        for (String key : n.extras.keySet()) {
            if (key.startsWith("android.ongoingActivityNoti")) {
                return false;
            }
        }
        return true;
    }

    /**
     * An upload or a send that is an ordinary notification with a progress bar: the card shows the bar too when the
     * option is on, so it does not read as a plain message with no idea how far along it is.
     */
    static void applyProgress(IslandItem it, Notification n) {
        if (!ModuleSettings.peekProgress() || n.extras == null) return;
        if (n.extras.getBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE, false)) {
            it.progressIndeterminate = true;
            return;
        }
        int max = n.extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0);
        int now = n.extras.getInt(Notification.EXTRA_PROGRESS, 0);
        if (max > 0 && now >= 0) it.progress = Math.min(1f, now / (float) max);
    }

    /** True when the notification carries anything a card could show: text, messages, or views of its own. */
    static boolean hasContent(Notification n) {
        if (n.contentView != null || n.bigContentView != null || n.headsUpContentView != null) return true;
        for (String key : new String[]{Notification.EXTRA_TITLE, Notification.EXTRA_TITLE_BIG, Notification.EXTRA_TEXT,
                Notification.EXTRA_BIG_TEXT, Notification.EXTRA_SUB_TEXT, Notification.EXTRA_SUMMARY_TEXT}) {
            CharSequence value = n.extras.getCharSequence(key);
            if (value != null && value.toString().trim().length() > 0) return true;
        }
        return n.extras.getCharSequenceArray(Notification.EXTRA_TEXT_LINES) != null
                || n.extras.getParcelableArray(Notification.EXTRA_MESSAGES, Parcelable.class) != null
                || n.extras.containsKey(Notification.EXTRA_PICTURE) || n.extras.containsKey(Notification.EXTRA_PICTURE_ICON);
    }

    private static boolean hasReadableContent(Notification n) {
        for (String key : new String[]{Notification.EXTRA_TITLE, Notification.EXTRA_TEXT, Notification.EXTRA_BIG_TEXT}) {
            CharSequence value = n.extras.getCharSequence(key);
            if (value != null && value.toString().trim().length() > 0) return true;
        }
        return n.extras.getParcelableArray(Notification.EXTRA_MESSAGES, Parcelable.class) != null;
    }

    /** Prefer a real child to its summary, within the same Android user and notification group. */
    public static boolean preferred(StatusBarNotification sbn, List<StatusBarNotification> snapshot) {
        if (sbn == null) return false;
        if ((sbn.getNotification().flags & Notification.FLAG_GROUP_SUMMARY) == 0) return true;
        for (StatusBarNotification other : snapshot) {
            if (other != null && !other.getKey().equals(sbn.getKey()) && other.getUserId() == sbn.getUserId()
                    && sbn.getPackageName().equals(other.getPackageName())
                    && java.util.Objects.equals(sbn.getGroupKey(), other.getGroupKey()) && eligible(other)
                    && (other.getNotification().flags & Notification.FLAG_GROUP_SUMMARY) == 0) return false;
        }
        return true;
    }

    public IslandItem build(StatusBarNotification sbn) {
        IslandItem otp = buildOtp(sbn);
        return otp != null ? otp : buildMessage(sbn);
    }

    /**
     * The verification-code card for this notification, or null when it carries no code (or codes are off).
     * Building has no side effects: auto-copy happens once the card is actually on screen ({@link #copy}).
     */
    public IslandItem buildOtp(StatusBarNotification sbn) {
        if (!ModuleSettings.otpCard()) {
            return null;
        }
        OtpDetector.Match otp = OtpDetector.detect(otpText(sbn.getNotification()));
        if (otp == null) {
            return null;
        }
        return otpItem(sbn, otp, ModuleSettings.otpAutoCopy());
    }

    /** The ordinary message card. */
    public IslandItem buildMessage(StatusBarNotification sbn) {
        Notification n = sbn.getNotification();
        Bundle extras = n.extras;
        String pkg = sbn.getPackageName();

        CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
        CharSequence text = extras.getCharSequence(Notification.EXTRA_BIG_TEXT);
        if (text == null) {
            text = extras.getCharSequence(Notification.EXTRA_TEXT);
        }
        Drawable avatar = null;
        Parcelable[] raw = extras.getParcelableArray(Notification.EXTRA_MESSAGES, Parcelable.class);
        if (raw != null && raw.length > 0) {
            List<Notification.MessagingStyle.Message> messages = Notification.MessagingStyle.Message.getMessagesFromBundleArray(raw);
            if (!messages.isEmpty()) {
                Notification.MessagingStyle.Message last = messages.get(messages.size() - 1);
                CharSequence conversation = extras.getCharSequence(Notification.EXTRA_CONVERSATION_TITLE);
                Person sender = last.getSenderPerson();
                CharSequence senderName = sender != null ? sender.getName() : null;
                boolean group = extras.getBoolean(Notification.EXTRA_IS_GROUP_CONVERSATION, false) || conversation != null;
                if (group && conversation != null) {
                    title = conversation;
                    text = senderName != null ? senderName + ": " + last.getText() : last.getText();
                } else {
                    title = senderName != null ? senderName : title;
                    text = last.getText();
                }
                if (sender != null && sender.getIcon() != null) {
                    avatar = load(sender.getIcon());
                }
            }
        }
        if (title == null && text == null) {
            return null;
        }
        Drawable appIcon = appIcon(pkg);
        if (avatar == null && n.getLargeIcon() != null) {
            // a white glyph is no avatar: the app icon (or the glyph on a disc) reads better
            avatar = IconContrast.readable(ctx, load(n.getLargeIcon()), appIcon);
        }
        boolean personal = avatar != null && avatar != appIcon;

        IslandItem it = new IslandItem("peek:" + sbn.getKey());
        it.sourceKey = sbn.getKey();
        it.kind = IslandItem.Kind.PEEK;
        it.packageName = pkg;
        it.appName = label(pkg);
        it.title = title != null ? title : it.appName;
        it.subtitle = text;
        it.contentIntent = n.contentIntent;
        it.postTime = sbn.getPostTime();
        it.accent = n.color != 0 ? Colors.readableOnBlack(n.color) : -1;
        it.cardImage = avatar != null ? avatar : appIcon;
        it.cardImageIsImage = true;
        it.cardImageRound = personal;
        it.icon = avatar != null ? avatar : appIcon;
        it.iconIsImage = true;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = it.title;
        applyProgress(it, n);
        it.actionType = 1;
        if (n.actions != null) {
            for (Notification.Action a : n.actions) {
                if (a.title == null || a.actionIntent == null || it.actions.size() >= MAX_ACTIONS) {
                    continue;
                }
                boolean reply = a.getRemoteInputs() != null && a.getRemoteInputs().length > 0;
                // a reply button asks for the text on the island and sends it with the app's own reply intent
                IslandItem.Action action = new IslandItem.Action(reply ? IslandText.get(ctx, "island_reply") : a.title, null,
                        a.actionIntent, null, !reply && OaSource.isDestructive(a.title));
                if (reply) {
                    action.remoteInputs = a.getRemoteInputs();
                }
                it.actions.add(action);
            }
        }
        addWearableReply(n, it);
        return it;
    }

    /**
     * Some messaging apps (the Samsung messages app) offer their reply only as a wearable action, which carries the
     * text field the same way: the card gets a reply button from it too.
     */
    private void addWearableReply(Notification n, IslandItem it) {
        for (IslandItem.Action existing : it.actions) {
            if (existing.remoteInputs != null) {
                return;
            }
        }
        try {
            for (Notification.Action a : new Notification.WearableExtender(n).getActions()) {
                if (a.getRemoteInputs() != null && a.getRemoteInputs().length > 0 && a.actionIntent != null) {
                    IslandItem.Action reply = new IslandItem.Action(IslandText.get(ctx, "island_reply"), null, a.actionIntent, null, false);
                    reply.remoteInputs = a.getRemoteInputs();
                    it.actions.add(0, reply);
                    return;
                }
            }
        } catch (Throwable ignored) {
            // no wearable extras
        }
    }

    /** The text that decides whether this is a code: for a conversation only its newest message counts. */
    public static String otpText(Notification n) {
        Bundle extras = n.extras;
        try {
            Parcelable[] raw = extras.getParcelableArray(Notification.EXTRA_MESSAGES, Parcelable.class);
            if (raw != null && raw.length > 0) {
                List<Notification.MessagingStyle.Message> messages = Notification.MessagingStyle.Message.getMessagesFromBundleArray(raw);
                if (!messages.isEmpty()) {
                    CharSequence last = messages.get(messages.size() - 1).getText();
                    CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
                    return (title == null ? "" : title + " ") + (last == null ? "" : last);
                }
            }
        } catch (Throwable ignored) {
            // fall back to the plain texts
        }
        return NotificationText.joined(n);
    }

    /** A verification code: the code itself as the title, with a button that puts it on the clipboard. */
    IslandItem otpItem(StatusBarNotification sbn, OtpDetector.Match otp, boolean copied) {
        String pkg = sbn.getPackageName();
        Drawable appIcon = appIcon(pkg);
        IslandItem it = new IslandItem("peek:" + sbn.getKey());
        it.sourceKey = sbn.getKey();
        it.kind = IslandItem.Kind.PEEK;
        it.packageName = pkg;
        it.appName = label(pkg);
        // same layout as a timer: the code as the big number, "app · verification code" as the label
        it.bigNumber = true;
        // who sent it (the SMS sender / service name) reads better than "Messages"
        CharSequence sender = sbn.getNotification().extras.getCharSequence(Notification.EXTRA_TITLE);
        String from = sender != null && sender.toString().trim().length() > 0 ? sender.toString().trim() : String.valueOf(it.appName);
        it.title = from + " · " + (copied ? IslandText.get(ctx, "island_copied") : IslandText.get(ctx, "island_verification_code"));
        it.contentIntent = sbn.getNotification().contentIntent;
        it.postTime = sbn.getPostTime();
        Notification n = sbn.getNotification();
        it.accent = n.color != 0 ? Colors.readableOnBlack(n.color) : -1;
        it.cardImage = appIcon;
        it.cardImageIsImage = true;
        it.icon = appIcon;
        it.iconIsImage = true;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = otp.display();
        it.peekMillis = OTP_MS;
        it.otpCode = otp.code;
        final String code = otp.code;
        IslandItem.Action copy = new IslandItem.Action(copied ? IslandText.get(ctx, "island_copied") : IslandText.get(ctx, "island_copy"), null, null, () -> {
            copy(code);
            show(otpItem(sbn, otp, true), OTP_COPIED_MS);
            onChange.run();
        }, false);
        copy.glyph = copied ? Glyphs.CHECK : Glyphs.COPY;
        copy.active = copied; // white button once the code is on the clipboard, like an active speaker
        it.actions.add(copy);
        return it;
    }

    /** Copies the code to the clipboard, flagged as sensitive so no preview is shown. */
    public void copy(String code) {
        try {
            ClipboardManager cm = ctx.getSystemService(ClipboardManager.class);
            if (cm == null) {
                return;
            }
            ClipData clip = ClipData.newPlainText(IslandText.get(ctx, "island_otp"), code);
            PersistableBundle extras = new PersistableBundle();
            extras.putBoolean("android.content.extra.IS_SENSITIVE", true); // keeps the code out of the clipboard preview
            clip.getDescription().setExtras(extras);
            cm.setPrimaryClip(clip);
        } catch (Throwable t) {
            XLog.once("PeekSource.copy", t);
        }
    }

    private Drawable load(Icon icon) {
        try {
            Drawable d = icon.loadDrawable(ctx);
            return d == null ? null : d.mutate();
        } catch (Throwable t) {
            XLog.once("PeekSource.icon", t);
            return null;
        }
    }

    private Drawable appIcon(String pkg) {
        try {
            return ctx.getPackageManager().getApplicationIcon(pkg);
        } catch (Throwable t) {
            return null;
        }
    }

    private String label(String pkg) {
        try {
            PackageManager pm = ctx.getPackageManager();
            return String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable t) {
            return pkg;
        }
    }

    /** The module has no string resources inside System UI, so pick the language here. */
}
