package de.robv.android.xposed;
import java.lang.reflect.*; import java.util.*;
public final class XposedBridge {
 public static void log(String s){android.util.Log.i("UnicaDynamicIsland",s);}
 public static void log(Throwable t){android.util.Log.e("UnicaDynamicIsland","callback",t);}
 public static XC_MethodHook.Unhook hookMethod(Member m,XC_MethodHook h){
  return dev.android.dynamicisland.nativebridge.NativeRuntime.register(m,h)?h.new Unhook():null;
 }
 /** Calls the method body without hooks: the renamed original when a native call-site exists. */
 public static Object invokeOriginalMethod(Member m,Object thisObject,Object[] args) throws Throwable{
  if(!(m instanceof Method))throw new IllegalArgumentException("only methods are supported: "+m);
  Method method=(Method)m,target=method;
  try{target=method.getDeclaringClass().getDeclaredMethod(dev.android.dynamicisland.nativebridge.NativeRuntime.id(dev.android.dynamicisland.nativebridge.NativeRuntime.signature(method)),method.getParameterTypes());}
  catch(NoSuchMethodException notWoven){}
  target.setAccessible(true);
  try{return target.invoke(thisObject,args);}catch(InvocationTargetException e){throw e.getCause();}
 }
 public static Set<XC_MethodHook.Unhook> hookAllMethods(Class<?> c,String n,XC_MethodHook h){
  Set<XC_MethodHook.Unhook>s=new HashSet<>();for(Method m:c.getDeclaredMethods())if(m.getName().equals(n)){XC_MethodHook.Unhook u=hookMethod(m,h);if(u!=null)s.add(u);}return s;
 }
 public static Set<XC_MethodHook.Unhook> hookAllConstructors(Class<?> c,XC_MethodHook h){
  Set<XC_MethodHook.Unhook>s=new HashSet<>();for(Constructor<?> m:c.getDeclaredConstructors())s.add(hookMethod(m,h));return s;
 }
}
