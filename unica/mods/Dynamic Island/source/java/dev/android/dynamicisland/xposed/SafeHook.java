package dev.android.dynamicisland.xposed;

import de.robv.android.xposed.XC_MethodHook;

/**
 * An {@link XC_MethodHook} that never lets its own code throw into the hooked method. Hooks run inside
 * System UI's calls, so an escaping exception would break that method for every caller; here it is
 * logged and swallowed. Extend it, or use the {@link #before} / {@link #after} factories for a lambda.
 */
public abstract class SafeHook extends XC_MethodHook {
    private final String label;

    /** A hook body that may throw; the wrapper logs whatever escapes. */
    public interface Body {
        void run(XC_MethodHook.MethodHookParam param) throws Throwable;
    }

    protected SafeHook(String name) {
        label = name;
    }

    @Override
    protected final void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
        try {
            before(param);
        } catch (Throwable t) {
            XLog.e("before " + label, t);
        }
    }

    @Override
    protected final void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
        try {
            after(param);
        } catch (Throwable t) {
            XLog.e("after " + label, t);
        }
    }

    protected void before(XC_MethodHook.MethodHookParam param) throws Throwable {
    }

    protected void after(XC_MethodHook.MethodHookParam param) throws Throwable {
    }

    /** A hook that runs {@code body} before the hooked method. */
    public static SafeHook before(String name, Body body) {
        return new Lambda(name, body, true);
    }

    /** A hook that runs {@code body} after the hooked method. */
    public static SafeHook after(String name, Body body) {
        return new Lambda(name, body, false);
    }

    /** Adapter that routes a {@link Body} to exactly one of the two phases. */
    private static final class Lambda extends SafeHook {
        private final Body body;
        private final boolean beforePhase;

        Lambda(String name, Body body, boolean beforePhase) {
            super(name);
            this.body = body;
            this.beforePhase = beforePhase;
        }

        @Override
        protected void before(XC_MethodHook.MethodHookParam param) throws Throwable {
            if (beforePhase) {
                body.run(param);
            }
        }

        @Override
        protected void after(XC_MethodHook.MethodHookParam param) throws Throwable {
            if (!beforePhase) {
                body.run(param);
            }
        }
    }
}
