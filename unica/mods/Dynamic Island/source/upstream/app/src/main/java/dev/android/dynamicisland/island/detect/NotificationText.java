package dev.android.dynamicisland.island.detect;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/** The readable text of a notification, gathered the same way for every detector. */
public final class NotificationText {
    private NotificationText() {
    }

    /** Every distinct text field, including all messages of a conversation. */
    public static List<String> parts(Notification n) {
        Set<String> out = new LinkedHashSet<>();
        if (n == null || n.extras == null) {
            return new ArrayList<>(out);
        }
        Bundle e = n.extras;
        add(out, e.getCharSequence(Notification.EXTRA_TITLE));
        add(out, e.getCharSequence(Notification.EXTRA_TITLE_BIG));
        add(out, e.getCharSequence(Notification.EXTRA_TEXT));
        add(out, e.getCharSequence(Notification.EXTRA_BIG_TEXT));
        add(out, e.getCharSequence(Notification.EXTRA_SUB_TEXT));
        add(out, e.getCharSequence(Notification.EXTRA_SUMMARY_TEXT));
        add(out, e.getCharSequence(Notification.EXTRA_INFO_TEXT));
        add(out, n.tickerText);
        CharSequence[] lines = e.getCharSequenceArray(Notification.EXTRA_TEXT_LINES);
        if (lines != null) {
            for (CharSequence line : lines) {
                add(out, line);
            }
        }
        try {
            Parcelable[] raw = e.getParcelableArray(Notification.EXTRA_MESSAGES, Parcelable.class);
            if (raw != null) {
                for (Notification.MessagingStyle.Message m : Notification.MessagingStyle.Message.getMessagesFromBundleArray(raw)) {
                    add(out, m.getText());
                }
            }
        } catch (Throwable ignored) {
            // a malformed message bundle just contributes nothing
        }
        return new ArrayList<>(out);
    }

    /** The visible texts joined into one line, the way people read the notification. */
    public static String joined(Notification n) {
        return String.join(" ", parts(n)).replaceAll("\\s+", " ").trim();
    }

    private static void add(Set<String> out, CharSequence value) {
        if (value == null) {
            return;
        }
        String s = value.toString().replaceAll("\\s+", " ").trim();
        if (!s.isEmpty()) {
            out.add(s);
        }
    }
}
