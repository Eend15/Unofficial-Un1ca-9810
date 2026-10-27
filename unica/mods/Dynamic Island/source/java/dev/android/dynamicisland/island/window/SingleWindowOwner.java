package dev.android.dynamicisland.island.window;

/** Process-wide lease shared even by independent payload class loaders.
 * A failed removal retains ownership so an orphan can never get a replacement over it.
 * Only string data is stored in Properties, never views or class-loader references.
 */
final class SingleWindowOwner {
    private static final String KEY="io.mesalabs.unica.dynamicisland.window.owner";
    private Object owner;
    private String lease;
    synchronized boolean claim(Object candidate) {
        if(candidate==null)return false;
        java.util.Properties process=System.getProperties();
        synchronized(process) {
            String current=process.getProperty(KEY);
            if(owner==candidate && lease!=null && lease.equals(current))return true;
            if(current!=null)return false;
            lease=java.util.UUID.randomUUID().toString();
            process.setProperty(KEY,lease);
            owner=candidate;
            return true;
        }
    }
    synchronized void release(Object candidate) {
        if(owner!=candidate || lease==null)return;
        java.util.Properties process=System.getProperties();
        synchronized(process) {
            if(lease.equals(process.getProperty(KEY)))process.remove(KEY);
        }
        owner=null;lease=null;
    }
}
