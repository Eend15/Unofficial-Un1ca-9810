package dev.android.dynamicisland.island.source;

import java.util.Objects;

/** Admission policy for a newly selected media session when foreground information is uncertain. */
final class MediaForegroundGate {
    static final long RECHECK_MS = 180L;
    private Object token;
    private boolean admitted;
    private long retryAt = -1L;

    boolean shouldHide(Object selectedToken, String pkg, String foreground, boolean confirmed, long now) {
        if (!Objects.equals(token, selectedToken)) {
            token = selectedToken;
            admitted = false;
            retryAt = -1L;
        }
        if (pkg.equals(foreground)) {
            admitted = false;
            retryAt = -1L;
            return true;
        }
        if (confirmed || admitted) {
            admitted = true;
            retryAt = -1L;
            return false;
        }
        if (retryAt < 0L) retryAt = now + RECHECK_MS;
        if (now < retryAt) return true;
        // Unsupported foreground APIs must not suppress legitimate background playback forever.
        admitted = true;
        retryAt = -1L;
        return false;
    }

    long retryAt() {
        return retryAt;
    }

    Object token() {
        return token;
    }

    boolean owns(Object selectedToken) {
        return Objects.equals(token, selectedToken);
    }

    void clear() {
        token = null;
        admitted = false;
        retryAt = -1L;
    }
}
