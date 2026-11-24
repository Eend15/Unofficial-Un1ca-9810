package dev.android.dynamicisland.xposed.hooks;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * Samsung's brief popup runs in :edgelighting, not in the island process. At the final effect draw,
 * after Samsung's own alert/lockscreen/bubble/duplicate policies, use its existing expand-to-heads-up
 * operation. No notification scan or guessed eligibility is involved. Only the small rendering
 * bridge is installed in this process; there is no island window or SystemUI hook bundle here.
 */
public final class BriefPopupBridge {
    private static final String SERVICE = "com.android.systemui.edgelighting.EdgeLightingService";
    private static final String SCHEDULER = "com.android.systemui.edgelighting.scheduler.EdgeLightingScheduler";
    private static WeakReference<Context> service = new WeakReference<>(null);
    private static final Map<Object, Pending> PENDING = new WeakHashMap<>();

    private BriefPopupBridge() { }

    public static void install(ClassLoader loader) {
        if (!Refl.hasClass(SERVICE, loader)) return;
        Refl.hookAll(loader, SERVICE, "onCreate", SafeHook.after("brief popup service", p -> {
            if (p.thisObject instanceof Context) service = new WeakReference<>((Context) p.thisObject);
        }));
        Refl.hookAll(loader, SERVICE, "onDestroy", SafeHook.before("brief popup service release", p -> {
            for (Pending pending : new java.util.ArrayList<>(PENDING.values())) pending.cancel();
            service.clear();
        }));
        Refl.hookAll(loader, SCHEDULER, "-$$Nest$mstartNotiEffect|startNotiEffect",
                SafeHook.before("brief popup to native banner", BriefPopupBridge::beforeEffect));
    }

    private static void beforeEffect(XC_MethodHook.MethodHookParam param) {
        Context context = service.get();
        if (context == null) return;
        if (!ModuleSettings.systemPopupStyle()) {
            skipWhenTheIslandHasIt(param, context);
            return;
        }
        PowerManager power = context.getSystemService(PowerManager.class);
        KeyguardManager keyguard = context.getSystemService(KeyguardManager.class);
        if (power == null || !power.isInteractive() || keyguard == null || keyguard.isKeyguardLocked()) return;
        Object scheduler = param.thisObject;
        boolean staticMethod = param.method instanceof Method && java.lang.reflect.Modifier.isStatic(param.method.getModifiers());
        int blackArgument = staticMethod ? 1 : 0;
        if (param.args.length > blackArgument && Boolean.TRUE.equals(param.args[blackArgument])) return; // Turnover lighting has no popup.
        if (staticMethod)
            scheduler = param.args.length > 0 ? param.args[0] : null;
        Object notifications = Refl.get(scheduler, "mNotificationLightingScheduler");
        Object info = Refl.get(notifications, "mCurrentLightingScheduleInfo");
        Object key = info == null ? null : Refl.call(info, "getNotificationKey");
        Object binder = Refl.get(context, "mConditionListener");
        Object handler = Refl.get(scheduler, "mHandler");
        if (!(key instanceof String) || ((String) key).isEmpty() || binder == null || !(handler instanceof Handler)
                || Refl.method(notifications.getClass(), "flushNotiNow", 0) == null) return;
        // This operation is also used by the stock expand button, which can bypass heads-up filters.
        // Never auto-expand content Samsung would sanitize, app-lock or hide in a locked work profile.
        Object user = Refl.call(info, "getUserId"), visibility = Refl.call(info, "getVisibility");
        Object requester = Refl.get(scheduler, "mRequester");
        if (!(user instanceof Integer) || (Integer) user != (android.os.Process.myUid() / 100_000)
                || !(visibility instanceof Integer) || !Boolean.TRUE.equals(Refl.call(requester, "isScreenOn"))
                || !Boolean.FALSE.equals(Refl.call(requester, "isSensitiveStateActive"))
                || !Boolean.FALSE.equals(Refl.call(requester, "isNeedToSanitized", user, visibility, key))) return;
        Object supportsAppLock = Refl.call(requester, "isSupportAppLock");
        if (!Boolean.FALSE.equals(supportsAppLock)) {
            if (!Boolean.TRUE.equals(supportsAppLock)) return;
            Object appLock = Refl.call(requester, "isAppLockEnabled");
            if (!Boolean.FALSE.equals(appLock) && (!Boolean.TRUE.equals(appLock)
                    || !Boolean.FALSE.equals(Refl.call(requester, "shouldHideNotiForAppLockByPackage", Refl.get(info, "mPackageName"))))) return;
        }
        Method request = Refl.method(binder.getClass(), "turnToHeadsUp", 1);
        Method status = Refl.method(binder.getClass(), "isRowPinned", 1);
        if (request == null || status == null) return;
        if (PENDING.containsKey(notifications)) {
            Pending previous = PENDING.get(notifications);
            if (previous.info == info) { param.setResult(null); return; }
            previous.cancel();
        }
        try {
            if (Boolean.TRUE.equals(status.invoke(binder, key))) {
                Refl.call(notifications, "flushNotiNow"); param.setResult(null); return;
            }
            request.invoke(binder, key); // Samsung's own brief expand button uses precisely this Binder call.
        } catch (ReflectiveOperationException | RuntimeException error) {
            XLog.once("brief popup native handoff", error); return; // Original draw still runs.
        }
        Object target = notifications, originalInfo = info;
        Object receiver = param.thisObject;
        Object[] arguments = param.args.clone();
        var method = param.method;
        Pending pending = new Pending((Handler) handler, target, originalInfo, () -> {
            try { return Boolean.TRUE.equals(status.invoke(binder, key)); }
            catch (ReflectiveOperationException | RuntimeException error) { return false; }
        }, () -> Refl.call(target, "flushNotiNow"), () -> {
            try { XposedBridge.invokeOriginalMethod(method, receiver, arguments); }
            catch (Throwable error) { XLog.once("brief popup original draw", error); }
        });
        PENDING.put(target, pending);
        param.setResult(null);
        pending.start();
    }

    /**
     * Island mode: Edge Lighting asks whether the banner exists when the notification arrives, which can be before System UI
     * has decided. Asking once more right before the popup is drawn catches a banner the island has taken since, so the brief
     * popup does not come up next to the island's card. One binder call, no waiting; if the answer is no the popup is drawn.
     */
    private static void skipWhenTheIslandHasIt(XC_MethodHook.MethodHookParam param, Context context) {
        if (!ModuleSettings.headsUpIsland() && !ModuleSettings.allNotifications()) return;
        try {
            Object scheduler = param.thisObject;
            boolean staticMethod = param.method instanceof Method && java.lang.reflect.Modifier.isStatic(param.method.getModifiers());
            if (staticMethod) scheduler = param.args.length > 0 ? param.args[0] : null;
            Object notifications = Refl.get(scheduler, "mNotificationLightingScheduler");
            Object info = Refl.get(notifications, "mCurrentLightingScheduleInfo");
            Object key = info == null ? null : Refl.call(info, "getNotificationKey");
            Object binder = Refl.get(context, "mConditionListener");
            if (!(key instanceof String) || ((String) key).isEmpty() || binder == null) return;
            Method status = Refl.method(binder.getClass(), "isRowPinned", 1);
            if (status == null || !Boolean.TRUE.equals(status.invoke(binder, key))) return;
            if (Refl.method(notifications.getClass(), "flushNotiNow", 0) != null) Refl.call(notifications, "flushNotiNow");
            param.setResult(null);
        } catch (ReflectiveOperationException | RuntimeException error) {
            XLog.once("brief popup island check", error); // the popup is drawn as usual
        }
    }

    interface Status { boolean pinned(); }

    /** Bounded inflation wait. Failed handoffs replay the original draw; obsolete postings never do. */
    static final class Pending implements Runnable {
        private static final long STEP_MS = 24;
        private static final int MAX_CHECKS = 25;
        final Handler handler;
        final Object notifications, info;
        final Status status;
        final Runnable finish, fallback;
        int checks;
        boolean cancelled;

        Pending(Handler handler, Object notifications, Object info, Status status, Runnable finish, Runnable fallback) {
            this.handler=handler;this.notifications=notifications;this.info=info;this.status=status;this.finish=finish;this.fallback=fallback;
        }
        void start() { handler.post(this); }
        void cancel() { cancelled=true;handler.removeCallbacks(this);if(PENDING.get(notifications)==this)PENDING.remove(notifications); }
        @Override public void run() {
            if(cancelled)return;
            if(Refl.get(notifications,"mCurrentLightingScheduleInfo")!=info) { cancel();return; }
            if(status.pinned()) { cancel();finish.run();return; }
            if(++checks>=MAX_CHECKS) { cancel();fallback.run();return; }
            handler.postDelayed(this,STEP_MS);
        }
    }
}
