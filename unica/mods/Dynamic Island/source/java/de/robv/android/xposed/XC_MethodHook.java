package de.robv.android.xposed;
import java.lang.reflect.Member;
public abstract class XC_MethodHook {
 public static class MethodHookParam {
  public Member method; public Object thisObject; public Object[] args;
  Object result; Throwable error; boolean early;
  private final java.util.Map<String,Object> extras = new java.util.HashMap<>();
  public void setObjectExtra(String key,Object value){ if(value==null)extras.remove(key); else extras.put(key,value); }
  public Object getObjectExtra(String key){return extras.get(key);}
  public Object getResult(){return result;}
  public void setResult(Object r){result=r;error=null;early=true;}
  public Throwable getThrowable(){return error;}
  public boolean hasThrowable(){return error!=null;}
  public void setThrowable(Throwable t){error=t;early=true;}
  public boolean isEarly(){return early;}
  public void setOriginalResult(Object r){result=r;error=null;}
  public void setOriginalThrowable(Throwable t){error=t;}
 }
 public class Unhook { public void unhook(){} }
 protected void beforeHookedMethod(MethodHookParam p) throws Throwable{}
 protected void afterHookedMethod(MethodHookParam p) throws Throwable{}
 public final void runBefore(MethodHookParam p)throws Throwable{beforeHookedMethod(p);}
 public final void runAfter(MethodHookParam p)throws Throwable{afterHookedMethod(p);}
}
