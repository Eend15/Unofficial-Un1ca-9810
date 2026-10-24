package dev.android.dynamicisland.island.window;

/** A failed removal retains ownership: never create a second window over an orphan. */
final class SingleWindowOwner {
    private Object owner;
    synchronized boolean claim(Object candidate) {
        if (owner != null && owner != candidate) return false;
        owner = candidate;
        return true;
    }
    synchronized void release(Object candidate) {
        if (owner == candidate) owner = null;
    }
}
