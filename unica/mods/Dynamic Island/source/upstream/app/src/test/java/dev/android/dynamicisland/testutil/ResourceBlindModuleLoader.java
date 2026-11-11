package dev.android.dynamicisland.testutil;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.Enumeration;

/** Loads module bytecode but exposes no APK resources, like an in-memory LSPosed/Vector loader. */
public final class ResourceBlindModuleLoader extends ClassLoader {
    private final String[] isolated;

    public ResourceBlindModuleLoader(ClassLoader parent, String... isolated) {
        super(parent);
        this.isolated = isolated;
    }

    @Override protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        boolean module = false;
        for (String type : isolated) module |= name.equals(type) || name.startsWith(type + "$");
        if (!module) return super.loadClass(name, resolve);
        synchronized (this) {
            Class<?> found = findLoadedClass(name);
            if (found == null) {
                // The test harness supplies bytecode; callers on this loader cannot read resources.
                try (InputStream input = getParent().getResourceAsStream(name.replace('.', '/') + ".class")) {
                    if (input == null) throw new ClassNotFoundException(name);
                    byte[] bytes = input.readAllBytes();
                    found = defineClass(name, bytes, 0, bytes.length);
                } catch (IOException failure) {
                    throw new ClassNotFoundException(name, failure);
                }
            }
            if (resolve) resolveClass(found);
            return found;
        }
    }

    @Override public URL getResource(String name) { return null; }
    @Override public Enumeration<URL> getResources(String name) { return Collections.emptyEnumeration(); }
    @Override public InputStream getResourceAsStream(String name) { return null; }
}
