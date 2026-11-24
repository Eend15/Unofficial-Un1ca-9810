package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioManager;
import android.service.notification.StatusBarNotification;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.detect.CallDetector;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** Ringing calls are read from notifications: Samsung's ongoing-call controller deliberately excludes them. */
public final class IncomingCallSource {
    private final Context context;
    private final AppLook apps;
    private final Map<String, IslandItem> items = new LinkedHashMap<>();

    public IncomingCallSource(Context context) { this.context = context; apps = new AppLook(context); }

    public boolean update(List<StatusBarNotification> notifications) {
        boolean hadCalls = !items.isEmpty();
        items.clear();
        for (StatusBarNotification notification : notifications) {
            IslandItem item = safelyBuild(notification);
            if (item != null) items.put(item.sourceKey, item);
        }
        return hadCalls || !items.isEmpty();
    }

    /** A heads-up pin decision may arrive before the next complete notification snapshot. */
    public boolean posted(StatusBarNotification notification) {
        IslandItem item = safelyBuild(notification);
        if (item == null) { if (notification != null) items.remove(notification.getKey()); return false; }
        items.put(item.sourceKey, item);
        return true;
    }

    private IslandItem safelyBuild(StatusBarNotification notification) {
        try { return build(notification); }
        catch (RuntimeException error) { XLog.once("incoming call notification", error); return null; }
    }

    public IslandItem item(String notificationKey) { return items.get(notificationKey); }
    public Set<String> activeKeys() {
        if (items.isEmpty()) return Set.of();
        Set<String> keys = new java.util.HashSet<>();
        for (IslandItem item : items.values()) if (enabled(item)) keys.add(item.key);
        return keys;
    }
    private static boolean nativeCall(String pkg) { return CallDetector.NATIVE_PACKAGES.contains(pkg); }
    private static boolean enabled(IslandItem item) {
        return ModuleSettings.incomingCallCards() && (nativeCall(item.packageName) || ModuleSettings.thirdPartyCalls());
    }

    public void collect(List<IslandItem> out, String foreground) {
        for (IslandItem item : items.values()) {
            if (!enabled(item)) continue;
            if (foreground != null && (nativeCall(item.packageName)
                    ? CallCardBuilder.isCallApp(item.packageName, foreground) : foreground.equals(item.packageName))) continue;
            out.add(item);
        }
    }

    IslandItem build(StatusBarNotification sbn) {
        if (sbn == null || sbn.getNotification() == null) return null;
        if (!ModuleSettings.incomingCallCards()) return null; // every ringing call stays with the system's own call UI
        Notification notification = sbn.getNotification();
        if (notification.extras == null || (notification.flags & Notification.FLAG_GROUP_SUMMARY) != 0) return null;
        boolean callStyle = Notification.CallStyle.class.getName().equals(notification.extras.getString(Notification.EXTRA_TEMPLATE));
        if (!callStyle && !Notification.CATEGORY_CALL.equals(notification.category)) return null;
        int type = notification.extras.getInt("android.callType", -1);
        PendingIntent answer = notification.extras.getParcelable("android.answerIntent", PendingIntent.class);
        PendingIntent decline = notification.extras.getParcelable("android.declineIntent", PendingIntent.class);
        if (notification.actions != null) for (Notification.Action action : notification.actions) {
            if (action.actionIntent == null) continue;
            if (ActionWords.isAnswer(action.title)) answer = action.actionIntent;
            else if (ActionWords.isDestructive(action.title) && !ActionWords.isMute(action.title)) decline = action.actionIntent;
        }
        boolean nativeCall = nativeCall(sbn.getPackageName());
        boolean explicitActions = answer != null && decline != null;
        if (type != 1 && (type != -1 || !(explicitActions || nativeCall && ringing()
                && !notification.extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false)))) return null;
        // Do not replace an unanswerable third-party alert merely because its text says "incoming".
        boolean telecomAllowed = nativeCall && android.os.Process.myUserHandle().equals(sbn.getUser());
        if (!telecomAllowed && (answer == null || decline == null)) return null;
        if (!nativeCall && !ModuleSettings.thirdPartyCalls()) return null;
        IslandItem item = new IslandItem("incoming:" + sbn.getKey());
        item.sourceKey = sbn.getKey(); item.packageName = sbn.getPackageName(); item.userId = sbn.getUserId();
        item.kind = IslandItem.Kind.CALL; item.incomingCall = true; item.transientPopup = true;
        item.postTime = sbn.getPostTime();
        item.contentIntent = notification.contentIntent != null ? notification.contentIntent : notification.fullScreenIntent;
        item.appName = apps.label(item.packageName); item.accent = Colors.CALL_GREEN;
        Person person = notification.extras.getParcelable("android.callPerson", Person.class);
        CharSequence title = person == null ? null : person.getName();
        if (title == null || title.length() == 0) title = notification.extras.getCharSequence(Notification.EXTRA_TITLE);
        item.title = title == null ? item.appName : title.toString();
        item.subtitle = IslandText.get(context, "island_incoming_call");
        item.trailing = IslandItem.Trailing.TEXT; item.trailingText = item.subtitle;
        item.icon = apps.icon(item.packageName); item.iconIsImage = true;
        Drawable photo = null;
        Icon icon = person != null && person.getIcon() != null ? person.getIcon() : notification.getLargeIcon();
        try { if (icon != null) photo = icon.loadDrawable(context); }
        catch (RuntimeException error) { XLog.once("incoming caller picture", error); }
        item.cardImage = photo == null ? item.icon : photo; item.cardImageIsImage = true; item.cardImageRound = photo != null;
        PendingIntent accept = answer, reject = decline;
        if (accept != null || telecomAllowed) {
            IslandItem.Action action = new IslandItem.Action(IslandText.get(context, "island_answer_call"), null, null,
                    () -> act(accept, true), false);
            action.glyph = Glyphs.ANSWER; action.affirmative = true; item.actions.add(action);
        }
        if (reject != null || telecomAllowed) {
            IslandItem.Action action = new IslandItem.Action(IslandText.get(context, "island_decline_call"), null, null,
                    () -> act(reject, false), true);
            action.glyph = Glyphs.HANGUP; item.actions.add(action);
        }
        return item;
    }

    /** Whether a call is ringing right now (also a second call while another is active), whatever notifications say. */
    public boolean phoneRinging() { return ringing(); }

    @android.annotation.SuppressLint("MissingPermission")
    private boolean ringing() {
        try {
            TelephonyManager phone = context.getSystemService(TelephonyManager.class);
            if (phone != null && phone.getCallState() == TelephonyManager.CALL_STATE_RINGING) return true;
        } catch (RuntimeException ignored) { }
        AudioManager audio = context.getSystemService(AudioManager.class);
        return audio != null && audio.getMode() == AudioManager.MODE_RINGTONE;
    }

    @android.annotation.SuppressLint("MissingPermission")
    private void act(PendingIntent intent, boolean answer) {
        try {
            if (intent != null) {
                android.app.ActivityOptions options = android.app.ActivityOptions.makeBasic();
                options.setPendingIntentBackgroundActivityStartMode(android.app.ActivityOptions.MODE_BACKGROUND_ACTIVITY_START_ALLOWED);
                intent.send(context, 0, null, null, null, null, options.toBundle());
            } else {
                TelecomManager telecom = context.getSystemService(TelecomManager.class);
                if (telecom != null) { if (answer) telecom.acceptRingingCall(); else telecom.endCall(); }
            }
        } catch (PendingIntent.CanceledException | RuntimeException error) { XLog.once("incoming call action", error); }
    }
}
