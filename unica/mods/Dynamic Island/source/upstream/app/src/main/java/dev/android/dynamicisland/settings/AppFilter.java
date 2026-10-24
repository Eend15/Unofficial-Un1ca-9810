package dev.android.dynamicisland.settings;

import java.util.Collections;
import java.util.Set;

/**
 * Which apps the island may show things for: either everything except the chosen apps (block list, the
 * default) or only the chosen apps (allow list). Immutable; system events without an owning app always pass.
 */
public final class AppFilter {
    /** No filtering: an empty block list. */
    public static final AppFilter OFF = new AppFilter(false, Collections.<String>emptySet());

    private final boolean onlyListed;
    private final Set<String> packages;

    public AppFilter(boolean onlyListed, Set<String> packages) {
        this.onlyListed = onlyListed;
        this.packages = packages == null ? Collections.<String>emptySet() : packages;
    }

    /** True when the island may show something that belongs to {@code packageName} (null = not an app). */
    public boolean allows(String packageName) {
        if (packageName == null) {
            return true;
        }
        return packages.contains(packageName) == onlyListed;
    }

    public boolean onlyListed() {
        return onlyListed;
    }

    public int size() {
        return packages.size();
    }
}
