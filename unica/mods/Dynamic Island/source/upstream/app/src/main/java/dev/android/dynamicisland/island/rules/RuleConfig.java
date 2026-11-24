package dev.android.dynamicisland.island.rules;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

/**
 * What the user chose for the rules, as read from the settings: an optional rule file of their own and the rules
 * they switched off. {@link #revision} changes whenever any of it changes, so {@link RuleStore} knows when to rebuild.
 */
public final class RuleConfig {
    private static final AtomicLong NEXT_REVISION = new AtomicLong();
    public static final RuleConfig DEFAULT = new RuleConfig(null);

    /** The user's own rule file, merged on top of the module's rules, or null. */
    public final String custom;
    /** Ids of the smart rules the user switched off. */
    public final Set<String> disabled;
    public final long revision;

    public RuleConfig(String custom) {
        this(custom, Collections.<String>emptySet());
    }

    public RuleConfig(String custom, Set<String> disabled) {
        this.custom = custom;
        this.disabled = disabled == null ? Collections.<String>emptySet() : Set.copyOf(disabled);
        this.revision = NEXT_REVISION.incrementAndGet();
    }
}
