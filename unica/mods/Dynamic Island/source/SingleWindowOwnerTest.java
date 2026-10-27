package dev.android.dynamicisland.island.window;
import java.net.URLClassLoader;
import java.nio.file.Path;
import java.lang.reflect.*;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
public final class SingleWindowOwnerTest {
    static void check(boolean ok,String message){if(!ok)throw new AssertionError(message);}
    static Object gate(ClassLoader loader)throws Exception{
        Class<?> type=Class.forName("dev.android.dynamicisland.island.window.SingleWindowOwner",true,loader);
        Constructor<?> c=type.getDeclaredConstructor();c.setAccessible(true);return c.newInstance();
    }
    static Object invoke(Object gate,String name,Object candidate)throws Exception{
        Method m=gate.getClass().getDeclaredMethod(name,Object.class);m.setAccessible(true);return m.invoke(gate,candidate);
    }
    public static void main(String[] args)throws Exception{
        SingleWindowOwner first=new SingleWindowOwner(),second=new SingleWindowOwner();
        Object a=new Object(),b=new Object();
        check(!first.claim(null),"null owner");
        check(first.claim(a)&&first.claim(a),"repeat owner");
        check(!first.claim(b)&&!second.claim(b),"independent gate admitted a duplicate");
        second.release(a);first.release(b);check(!second.claim(b),"foreign release cleared live/orphan owner");
        first.release(a);check(second.claim(b),"clean detach cannot reattach");second.release(b);
        // Independent defining class loaders still share the bootstrap System process lease.
        java.net.URL url=args.length>0?Path.of(args[0]).toUri().toURL():SingleWindowOwnerTest.class.getProtectionDomain().getCodeSource().getLocation();
        try(URLClassLoader one=new URLClassLoader(new java.net.URL[]{url},null);
            URLClassLoader two=new URLClassLoader(new java.net.URL[]{url},null)){
            Object x=gate(one),y=gate(two);
            check((Boolean)invoke(x,"claim",a),"first loader rejected");
            check(!(Boolean)invoke(y,"claim",b),"second loader admitted duplicate");
            invoke(y,"release",a);check(!(Boolean)invoke(y,"claim",b),"foreign loader released ownership");
            invoke(x,"release",a);check((Boolean)invoke(y,"claim",b),"lease not handed over");invoke(y,"release",b);
        }
        CountDownLatch start=new CountDownLatch(1);AtomicInteger winners=new AtomicInteger();
        SingleWindowOwner[] gates=new SingleWindowOwner[32];Object[] candidates=new Object[32];Thread[] threads=new Thread[32];
        for(int i=0;i<32;i++){
            final int index=i;gates[i]=new SingleWindowOwner();candidates[i]=new Object();
            threads[i]=new Thread(()->{try{start.await();if(gates[index].claim(candidates[index]))winners.incrementAndGet();}
                catch(InterruptedException e){throw new AssertionError(e);}});threads[i].start();
        }
        start.countDown();for(Thread t:threads)t.join();check(winners.get()==1,"parallel owners: "+winners);
        for(int i=0;i<32;i++)gates[i].release(candidates[i]);
        check(first.claim(a),"parallel cleanup left stale lease");first.release(a);
        System.out.println("PASS process-wide duplicate exclusion: independent gates, independent class loaders, retained orphan ownership, clean handover and 32 competing gates");
    }
}
