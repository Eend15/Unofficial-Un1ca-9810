package io.mesalabs.unica.dynamicisland;
import android.app.Application;
import android.util.Log;
import dalvik.system.PathClassLoader;
import java.lang.reflect.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Locale;
public final class Bootstrap {
 private static Method dispatch,constructor;
 public static void start(Application app){
  try{
   ClassLoader cl=app.getClassLoader();
   PathClassLoader payload=new PathClassLoader("/system/app/UnicaDynamicIsland/UnicaDynamicIsland.apk",cl);
   Class<?> r=Class.forName("dev.android.dynamicisland.nativebridge.NativeRuntime",true,payload);
   dispatch=r.getMethod("invoke",Object.class,Class.class,String.class,Object[].class);
   constructor=r.getMethod("constructed",Object.class,Class.class,String.class,Object[].class);
   r.getMethod("init",Application.class,ClassLoader.class).invoke(null,app,cl);
  }catch(Throwable t){Log.e("UnicaDynamicIsland","Built-in initialization failed; stock methods remain available",t);dispatch=null;constructor=null;}
 }
 private static String id(String sig)throws Exception{
  byte[] d=MessageDigest.getInstance("SHA-256").digest(sig.getBytes(StandardCharsets.UTF_8));StringBuilder s=new StringBuilder("unica_di_");
  for(int i=0;i<8;i++)s.append(String.format(Locale.ROOT,"%02x",d[i]));return s.toString();
 }
 public static Object invoke(Object target,Class<?> owner,String sig,Object[] args)throws Throwable{
  try{
   if(dispatch!=null)return dispatch.invoke(null,new Object[]{target,owner,sig,args});
   for(Method m:owner.getDeclaredMethods())if(m.getName().equals(id(sig))){m.setAccessible(true);return m.invoke(target,args);}
   throw new NoSuchMethodException(owner.getName()+"#"+sig);
  }catch(InvocationTargetException e){throw e.getCause();}
 }
 public static void constructed(Object target,Class<?> owner,String sig,Object[] args){
  try{if(constructor!=null)constructor.invoke(null,new Object[]{target,owner,sig,args});}
  catch(Throwable t){Log.e("UnicaDynamicIsland","Constructor observer failed",t);}
 }
}
