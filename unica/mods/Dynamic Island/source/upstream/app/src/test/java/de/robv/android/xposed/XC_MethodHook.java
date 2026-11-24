package de.robv.android.xposed;

import de.robv.android.xposed.callbacks.XCallback;

/** Test-only parameter transport; no native hook installation is simulated. */
public abstract class XC_MethodHook extends XCallback {
    public XC_MethodHook(){super();}
    public XC_MethodHook(int priority){super(priority);}
    protected void beforeHookedMethod(MethodHookParam param) throws Throwable { }
    protected void afterHookedMethod(MethodHookParam param) throws Throwable { }
    public static final class MethodHookParam extends XCallback.Param {
        public Object[] args;
        public java.lang.reflect.Member method;
        public Object thisObject;
        private Object result;
        private Throwable throwable;
        boolean returnEarly;
        public Object getResult(){return result;}
        public void setResult(Object result){this.result=result;throwable=null;returnEarly=true;}
        public Throwable getThrowable(){return throwable;}
        public boolean hasThrowable(){return throwable!=null;}
        public void setThrowable(Throwable throwable){this.throwable=throwable;result=null;returnEarly=true;}
        public Object getResultOrThrowable() throws Throwable {if(throwable!=null)throw throwable;return result;}
    }
}
