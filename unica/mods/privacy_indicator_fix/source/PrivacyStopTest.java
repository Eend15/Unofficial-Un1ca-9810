import android.os.*;
import android.util.SparseArray;
import dalvik.system.DexClassLoader;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

public final class PrivacyStopTest {
 static void set(Class<?> c,Object o,String n,Object v)throws Exception{Field f=c.getDeclaredField(n);f.setAccessible(true);f.set(o,v);}
 public static void main(String[] args)throws Exception{
  Looper.prepareMainLooper();
  ClassLoader l=new DexClassLoader(args[0],null,null,PrivacyStopTest.class.getClassLoader());
  Class<?> c=Class.forName("com.android.systemui.appops.AppOpsControllerImpl",true,l);
  Class<?> u=Class.forName("sun.misc.Unsafe");Field uf=u.getDeclaredField("theUnsafe");uf.setAccessible(true);
  Object obj=u.getMethod("allocateInstance",Class.class).invoke(uf.get(null),c);
  Class<?> at=Class.forName("android.app.ActivityThread");Object thread=at.getMethod("systemMain").invoke(null);
  set(c,obj,"mContext",at.getMethod("getSystemContext").invoke(thread));
  Method visible=c.getMethod("isUserVisible",String.class,String.class);
  if((Boolean)visible.invoke(obj,"android",null))throw new AssertionError("Expected null attribution hidden");
  if(!(Boolean)visible.invoke(obj,"android","Biometrics_FaceService"))throw new AssertionError("Expected stock biometric attribution visible");
  Class<?> item=Class.forName("com.android.systemui.appops.AppOpItem",true,l);
  Object active=item.getConstructor(int.class,int.class,String.class,long.class,String.class).newInstance(26,1000,"android",SystemClock.elapsedRealtime(),"Biometrics_FaceService");
  ArrayList<Object> list=new ArrayList<>();list.add(active);set(c,obj,"mActiveItems",list);set(c,obj,"mNotedItems",new ArrayList<>());
  AtomicInteger stops=new AtomicInteger();
  Class<?> callback=Class.forName("com.android.systemui.appops.AppOpsController$Callback",false,l);
  Object cb=Proxy.newProxyInstance(l,new Class<?>[]{callback},(proxy,m,a)->{
   if(m.getName().equals("hashCode"))return System.identityHashCode(proxy);
   if(m.getName().equals("equals"))return proxy==a[0];
   if(m.getName().equals("onActiveStateChanged")){if((Boolean)a[3])throw new AssertionError("Unexpected start");stops.incrementAndGet();}
   return null;
  });
  SparseArray<Object> callbacks=new SparseArray<>();callbacks.put(26,new HashSet<>(Collections.singleton(cb)));set(c,obj,"mCallbacksByCode",callbacks);
  Class<?> h=Class.forName("com.android.systemui.appops.AppOpsControllerImpl$H",true,l);
  set(c,obj,"mBGHandler",h.getConstructor(c,Looper.class).newInstance(obj,Looper.myLooper()));
  c.getMethod("onOpActiveChanged",String.class,int.class,String.class,String.class,int.class,boolean.class,int.class,int.class).invoke(obj,"android:camera",1000,"android",null,0,false,0,-1);
  if(!list.isEmpty())throw new AssertionError("Stopped item retained");
  boolean fixed=Boolean.parseBoolean(args[1]);
  new Handler(Looper.myLooper()).postDelayed(()->{
   if(stops.get()!=(fixed?1:0))throw new AssertionError("stop notifications="+stops.get()+", fixed="+fixed);
   System.out.println("PASS actual ART AppOps stop: fixed="+fixed+", callbacks="+stops.get());System.exit(0);
  },200);
  Looper.loop();
 }
}
