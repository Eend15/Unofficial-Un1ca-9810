package dev.android.dynamicisland.island.window;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
public final class SingleWindowOwnerTest {
    public static void main(String[] args) throws Exception {
        SingleWindowOwner gate = new SingleWindowOwner();
        Object a = new Object(), b = new Object();
        if (!gate.claim(a) || !gate.claim(a) || gate.claim(b)) throw new AssertionError("duplicate owner");
        gate.release(b);
        if (gate.claim(b)) throw new AssertionError("wrong owner released lease");
        gate.release(a);
        if (!gate.claim(b)) throw new AssertionError("clean detach cannot reattach");
        SingleWindowOwner concurrent = new SingleWindowOwner();
        CountDownLatch start = new CountDownLatch(1);
        AtomicInteger winners = new AtomicInteger();
        Thread[] threads = new Thread[32];
        for (int i=0; i<threads.length; i++) {
            threads[i] = new Thread(() -> {
                try {start.await(); if (concurrent.claim(new Object())) winners.incrementAndGet();}
                catch (InterruptedException e) {throw new AssertionError(e);}
            });
            threads[i].start();
        }
        start.countDown();
        for (Thread t:threads) t.join();
        if (winners.get()!=1) throw new AssertionError("parallel owners: "+winners);
        System.out.println("PASS repeat attach, duplicate rejection, release ownership and 32 concurrent attempts");
    }
}
