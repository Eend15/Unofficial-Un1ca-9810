package dev.android.dynamicisland.island.source;

import android.app.ActivityOptions;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.telecom.TelecomManager;
import android.widget.ImageView;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The in-call card, made from System UI's ongoing-call controller ({@code callNotificationInfo}) and,
 * when the Now Bar has one, its caller name, photo and call buttons. Adds a speaker toggle and an
 * end-call button that work even though the real call notification is hidden by the island.
 */
final class CallCardBuilder {
    private static final String SPEAKER_TOGGLE = "com.samsung.rcs.intent.action.SPEAKER_TOGGLE";
    private static final String INCALLUI = "com.samsung.android.incallui";
    /** Apps whose calls Telecom can end and whose speaker the in-call UI can toggle. */
    private static final Set<String> TELECOM_PACKAGES = new HashSet<>(Arrays.asList(INCALLUI,
            "com.samsung.android.dialer", "com.android.server.telecom", "com.android.phone",
            "com.google.android.dialer", "com.android.dialer", "com.android.incallui"));
    /** Glyph ids drawn by the card view for buttons without an icon. */
    private static final int GLYPH_END_CALL = 9;
    private static final int GLYPH_SPEAKER = 10;

    /** What the call controller says about the call chip. */
    private enum Chip { NONE, SHOWN, APP_VISIBLE }

    private final Context ctx;
    private final IconLoader icons;
    private final OaReader reader;
    /** Run after the speaker was toggled, once the audio route has had time to settle. */
    private final Runnable afterSpeakerToggle;

    CallCardBuilder(Context ctx, IconLoader icons, OaReader reader, Runnable afterSpeakerToggle) {
        this.ctx = ctx;
        this.icons = icons;
        this.reader = reader;
        this.afterSpeakerToggle = afterSpeakerToggle;
    }

    /** Adds the card of the ongoing call, if any; {@code controller} is System UI's call controller (may be null). */
    void collect(Object controller, List<IslandItem> out, Collection<String> packages, Set<String> hiddenByForeground) {
        Object info = controller == null ? null : Refl.get(controller, "callNotificationInfo");
        String key = info == null ? null : (String) Refl.get(info, "key");
        if (key == null) {
            return;
        }
        String pkg = (String) Refl.get(info, "packageName");
        if (pkg == null) {
            pkg = packageOfKey(key); // One UI 7 does not keep the package on the call info
        }
        if (pkg != null) {
            packages.add(pkg);
        }
        switch (chipState(controller, info)) {
            case NONE:
                return;
            case APP_VISIBLE:
                hiddenByForeground.add("call:" + key);
                return;
            default:
                out.add(card(info, key, pkg));
        }
    }

    private static Chip chipState(Object controller, Object info) {
        if (!Refl.getBool(info, "isOngoing", false)) {
            return Chip.NONE;
        }
        return Boolean.TRUE.equals(Refl.call(controller, "hasOngoingCall", new Object[0])) ? Chip.SHOWN : Chip.APP_VISIBLE;
    }

    private IslandItem card(Object info, String key, String pkg) {
        IslandItem it = new IslandItem("call:" + key);
        it.kind = IslandItem.Kind.CALL;
        it.packageName = pkg;
        it.accent = Colors.CALL_GREEN;

        Drawable chipIcon = copyOfShownIcon(Refl.get(info, "notificationIconView"));
        it.icon = chipIcon != null ? chipIcon : icons.appIcon(pkg);
        it.iconIsImage = chipIcon == null;
        it.appName = (String) Refl.get(info, "appName");
        if (it.appName == null && pkg != null) {
            it.appName = labelOf(pkg);
        }
        it.title = it.appName;
        it.cardImage = icons.appIcon(pkg);
        it.cardImageIsImage = true;
        it.contentIntent = (PendingIntent) Refl.get(info, "intent");

        Object nowBar = reader.nowBarOnly(key);
        if (nowBar != null) {
            String caller = (String) Refl.get(nowBar, "mPrimaryInfo");
            if (OaCardBuilder.hasText(caller)) {
                it.title = caller;
            }
            it.subtitle = it.appName;
            Drawable photo = icons.load((Icon) Refl.get(nowBar, "mNowbarIcon"));
            if (photo != null) {
                it.cardImage = photo;
            }
        }
        addButtons(it, nowBar, pkg);
        startClock(it, info);
        it.postTime = Long.MAX_VALUE;
        return it;
    }

    /** The package in a notification key ("user|package|id|tag|uid"), or null. */
    static String packageOfKey(String key) {
        String[] parts = key.split("\\|", 3);
        return parts.length > 1 && !parts[1].isEmpty() ? parts[1] : null;
    }

    private String labelOf(String pkg) {
        try {
            PackageManager pm = ctx.getPackageManager();
            return String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable t) {
            return pkg;
        }
    }

    private static Drawable copyOfShownIcon(Object iconView) {
        if (!(iconView instanceof ImageView)) {
            return null;
        }
        Drawable shown = ((ImageView) iconView).getDrawable();
        return shown != null && shown.getConstantState() != null ? shown.getConstantState().newDrawable().mutate() : null;
    }

    private static void startClock(IslandItem it, Object info) {
        Object start = Refl.get(info, "callStartTime");
        if (start instanceof Long && (Long) start > 0) {
            it.trailing = IslandItem.Trailing.CHRONOMETER;
            it.chronoBase = (Long) start;
            it.chronoCountDown = false;
        }
    }

    /** Speaker toggle, at most one extra app button and the end-call button. */
    private void addButtons(IslandItem it, Object nowBar, String pkg) {
        PendingIntent hangUp = null;
        Drawable hangUpIcon = null;
        PendingIntent speaker = null;
        Notification.Action extra = null;
        Object actions = nowBar == null ? null : Refl.get(nowBar, "mActions");
        if (actions instanceof List) {
            for (Object o : (List<?>) actions) {
                if (!(o instanceof Notification.Action)) {
                    continue;
                }
                Notification.Action action = (Notification.Action) o;
                if (action.actionIntent == null || action.title == null) {
                    continue;
                }
                if (hangUp == null) {
                    // a call notification lists its hang-up first
                    hangUp = action.actionIntent;
                    hangUpIcon = icons.load(action.getIcon(), pkg);
                } else if (ActionWords.isSpeaker(action.title)) {
                    speaker = action.actionIntent;
                } else if (extra == null && !ActionWords.isMute(action.title)) {
                    extra = action;
                }
            }
        }

        boolean telecom = pkg == null || TELECOM_PACKAGES.contains(pkg);
        AudioManager audio = ctx.getSystemService(AudioManager.class);
        if (audio != null && (telecom || speaker != null)) {
            PendingIntent viaAction = speaker;
            IslandItem.Action toggle = new IslandItem.Action("Speaker", null, null, () -> toggleSpeaker(viaAction, telecom), false);
            toggle.glyph = GLYPH_SPEAKER;
            toggle.active = isSpeakerRoute(audio);
            it.actions.add(toggle);
        }
        if (extra != null) {
            it.actions.add(new IslandItem.Action(extra.title, icons.load(extra.getIcon(), pkg), extra.actionIntent, null, false));
        }
        if (telecom || hangUp != null) {
            PendingIntent viaAction = hangUp;
            IslandItem.Action end = new IslandItem.Action("End call", hangUpIcon, null, () -> endCall(telecom, viaAction), true);
            if (hangUpIcon == null) {
                end.glyph = GLYPH_END_CALL;
            }
            it.actions.add(end);
        }
    }

    private static boolean isSpeakerRoute(AudioManager audio) {
        try {
            AudioDeviceInfo device = audio.getCommunicationDevice();
            return device != null && device.getType() == AudioDeviceInfo.TYPE_BUILTIN_SPEAKER;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Ends the call through Telecom when allowed, otherwise fires the notification's hang-up action. */
    private void endCall(boolean telecom, PendingIntent hangUp) {
        if (telecom) {
            try {
                TelecomManager telecomManager = ctx.getSystemService(TelecomManager.class);
                if (telecomManager != null && telecomManager.endCall()) {
                    XLog.i("call ended via telecom");
                    return;
                }
            } catch (Throwable t) {
                XLog.e("telecom endCall failed", t);
            }
        }
        if (hangUp == null) {
            return;
        }
        try {
            sendFromBackground(hangUp);
            XLog.i("call hang-up intent sent");
        } catch (Throwable t) {
            XLog.e("hang-up intent failed", t);
        }
    }

    private void toggleSpeaker(PendingIntent viaAction, boolean telecom) {
        try {
            if (telecom) {
                ctx.sendBroadcast(new Intent(SPEAKER_TOGGLE).setPackage(INCALLUI));
                XLog.i("speaker toggled via incallui");
            } else if (viaAction != null) {
                sendFromBackground(viaAction);
                XLog.i("speaker toggled via call action");
            }
        } catch (Throwable t) {
            XLog.e("speaker toggle failed", t);
        }
        afterSpeakerToggle.run();
    }

    private void sendFromBackground(PendingIntent intent) throws PendingIntent.CanceledException {
        ActivityOptions options = ActivityOptions.makeBasic();
        options.setPendingIntentBackgroundActivityStartMode(ActivityOptions.MODE_BACKGROUND_ACTIVITY_START_ALLOWED);
        intent.send(ctx, 0, null, null, null, null, options.toBundle());
    }
}
