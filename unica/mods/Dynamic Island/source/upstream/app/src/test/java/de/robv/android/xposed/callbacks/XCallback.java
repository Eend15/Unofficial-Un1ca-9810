package de.robv.android.xposed.callbacks;

/** Test-only callback state: the compile-only API jar throws Stub! even for parameter construction. */
public abstract class XCallback {
    public static final int PRIORITY_DEFAULT=50, PRIORITY_HIGHEST=10000, PRIORITY_LOWEST=-10000;
    public final int priority;
    public XCallback(){this(PRIORITY_DEFAULT);}
    protected XCallback(int priority){this.priority=priority;}
    public abstract static class Param {
        private final java.util.Map<String,Object> objects=new java.util.HashMap<>();
        private android.os.Bundle extra;
        protected Param(){ }
        public synchronized android.os.Bundle getExtra(){if(extra==null)extra=new android.os.Bundle();return extra;}
        public Object getObjectExtra(String key){return objects.get(key);}
        public void setObjectExtra(String key,Object value){objects.put(key,value);}
    }
}
