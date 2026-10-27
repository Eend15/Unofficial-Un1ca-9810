package dev.android.dynamicisland.island.source;

import org.json.JSONObject;

/** Observed charging intervals. Signed fuel-gauge changes are split over the whole reporting window. */
final class ChargingSession {
    long lastAt;
    boolean screenOn;
    long onMs, offMs;
    double onPercent, offPercent, onUah, offUah;
    boolean hasCounter;
    int lastLevel = -1;
    long lastCounter = -1;
    private long levelOnMs, levelOffMs, counterOnMs, counterOffMs;

    ChargingSession(long now, boolean interactive) {
        lastAt = now;
        screenOn = interactive;
    }

    void advance(long now) {
        long elapsed = Math.max(0, now - lastAt);
        lastAt = now;
        if (screenOn) {
            onMs += elapsed;
            levelOnMs += elapsed;
            counterOnMs += elapsed;
        } else {
            offMs += elapsed;
            levelOffMs += elapsed;
            counterOffMs += elapsed;
        }
    }

    void sample(long now, boolean interactive, int level, long counterUah) {
        advance(now);
        if (level >= 0 && level <= 100) {
            if (lastLevel >= 0 && level != lastLevel) {
                double fraction = fractionOn(levelOnMs, levelOffMs);
                onPercent += (level - lastLevel) * fraction;
                offPercent += (level - lastLevel) * (1 - fraction);
            }
            if (level != lastLevel) levelOnMs = levelOffMs = 0;
            lastLevel = level;
        } else {
            lastLevel = -1;
            levelOnMs = levelOffMs = 0;
        }
        if (counterUah > 0 && counterUah <= 100_000_000L) {
            hasCounter = true;
            if (lastCounter > 0 && counterUah != lastCounter) {
                // Preserve decreases too: being plugged in does not guarantee a net battery gain.
                double fraction = fractionOn(counterOnMs, counterOffMs);
                onUah += (counterUah - lastCounter) * fraction;
                offUah += (counterUah - lastCounter) * (1 - fraction);
            }
            if (counterUah != lastCounter) counterOnMs = counterOffMs = 0;
            lastCounter = counterUah;
        } else {
            lastCounter = -1;
            hasCounter = false;
            counterOnMs = counterOffMs = 0;
        }
        screenOn = interactive;
    }

    private double fractionOn(long on, long off) {
        long total = on + off;
        return total > 0 ? (double) on / total : screenOn ? 1 : 0;
    }

    JSONObject checkpoint(int boot, int plug) throws org.json.JSONException {
        return new JSONObject().put("version", 1).put("boot", boot).put("plug", plug)
                .put("at", lastAt).put("level", lastLevel).put("counter", lastCounter)
                .put("onMs", onMs).put("offMs", offMs)
                .put("onPct", onPercent).put("offPct", offPercent)
                .put("onUah", onUah).put("offUah", offUah).put("hasCounter", hasCounter);
    }

    static ChargingSession restore(String saved, long now, int boot, int plug, boolean interactive,
            int level, long counter) {
        try {
            JSONObject data = new JSONObject(saved);
            long age = now - data.getLong("at");
            if (data.getInt("version") != 1 || boot < 0 || data.getInt("boot") != boot
                    || data.getInt("plug") != plug || age < 0 || age > 30_000
                    || counter <= 0 || data.getLong("counter") <= 0
                    || Math.abs(counter - data.getLong("counter")) > 100_000
                    || level < 0 || Math.abs(level - data.getInt("level")) > 2) return null;
            ChargingSession session = new ChargingSession(now, interactive);
            session.onMs = Math.max(0, data.getLong("onMs"));
            session.offMs = Math.max(0, data.getLong("offMs"));
            session.onPercent = data.getDouble("onPct");
            session.offPercent = data.getDouble("offPct");
            session.onUah = data.getDouble("onUah");
            session.offUah = data.getDouble("offUah");
            session.hasCounter = data.getBoolean("hasCounter");
            // A process gap is unobserved: retain measured totals, but start fresh baselines now.
            session.lastLevel = level;
            session.lastCounter = counter;
            return session;
        } catch (Exception ignored) {
            return null;
        }
    }
}
