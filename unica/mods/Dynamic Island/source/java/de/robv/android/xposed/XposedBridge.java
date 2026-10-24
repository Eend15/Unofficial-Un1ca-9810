package de.robv.android.xposed;
import java.lang.reflect.*; import java.util.*;
public final class XposedBridge {
 public static void log(String s){android.util.Log.i("UnicaDynamicIsland",s);}
 public static void log(Throwable t){android.util.Log.e("UnicaDynamicIsland","callback",t);}
 public static XC_MethodHook.Unhook hookMethod(Member m,XC_MethodHook h){
  return dev.android.dynamicisland.nativebridge.NativeRuntime.register(m,h)?h.new Unhook():null;
 }
 public static Set<XC_MethodHook.Unhook> hookAllMethods(Class<?> c,String n,XC_MethodHook h){
  Set<XC_MethodHook.Unhook>s=new HashSet<>();for(Method m:c.getDeclaredMethods())if(m.getName().equals(n)){XC_MethodHook.Unhook u=hookMethod(m,h);if(u!=null)s.add(u);}return s;
 }
 public static Set<XC_MethodHook.Unhook> hookAllConstructors(Class<?> c,XC_MethodHook h){
  Set<XC_MethodHook.Unhook>s=new HashSet<>();for(Constructor<?> m:c.getDeclaredConstructors())s.add(hookMethod(m,h));return s;
 }
}
