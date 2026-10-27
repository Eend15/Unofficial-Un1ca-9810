package dev.android.dynamicisland.island.view;

import android.graphics.Color;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;

/** Independent compact-payload glow state. No timers, artwork readbacks or synthetic audio beats. */
public final class GlowMotion {
    private final int[] from = new int[3], target = new int[3], shown = new int[3];
    private final float[] baseHsv = new float[3];
    private ArtworkPalette lastPalette;
    private int lastBase;
    private boolean primed, lastAlbum;
    private float colourTime = 1, activity, mediaMix, energy, phase;
    private float gain = 1;

    boolean step(float dt, IslandItem item, boolean album, int fallback, AudioLevels audio) {
        float signal = 0;
        if (item != null && item.isMedia && item.playing && audio != null && audio.isLive()) {
            signal = .35f * audio.level(0) + .25f * audio.level(1)
                    + .2f * audio.level(2) + .12f * audio.level(3) + .08f * audio.level(4);
        }
        return step(dt, item, album, fallback, ModuleSettings.glowMotion(), signal);
    }

    /** A supplied output level also lets settings preview the exact renderer without opening audio capture. */
    public boolean step(float dt, IslandItem item, boolean album, int fallback, int motionStrength, float signal) {
        dt = Math.max(0, Math.min(.05f, dt));
        float setting = Math.max(0, Math.min(100, motionStrength)) / 50f;
        gain = setting * setting; // fine control at the quiet end, four times the v2 response at maximum
        boolean media = item != null && item.isMedia;
        boolean playing = media && item.playing;
        ArtworkPalette palette = media && album ? item.mediaPalette : null;
        int base = media && album && item.accent != -1 ? item.accent : fallback;
        if (!primed || base != lastBase || !java.util.Objects.equals(palette, lastPalette) || album != lastAlbum) {
            System.arraycopy(shown, 0, from, 0, 3);
            Color.colorToHSV(base, baseHsv);
            // Use the very same vivid stops as the music waveform, without white mixing or hue compression.
            target[0] = palette == null ? tone(-.07f) : palette.first;
            target[1] = palette == null ? base : palette.middle;
            target[2] = palette == null ? tone(.05f) : palette.last;
            colourTime = 0;
            lastBase = base;
            lastPalette = palette;
            lastAlbum = album;
            if (!primed) {
                System.arraycopy(target, 0, from, 0, 3);
                System.arraycopy(target, 0, shown, 0, 3);
                colourTime = 1;
                activity = playing ? 1 : 0;
                mediaMix = media ? 1 : 0;
                primed = true;
            }
        }
        colourTime = Math.min(1, colourTime + dt / 1.4f);
        float fade = colourTime * colourTime * (3 - 2 * colourTime);
        for (int i = 0; i < 3; i++) shown[i] = Colors.blend(from[i], target[i], fade);
        activity = approach(activity, playing ? 1 : 0, dt, playing ? .45f : .65f);
        mediaMix = approach(mediaMix, media ? 1 : 0, dt, .45f);
        // Lift quiet passages without raising the maximum, and follow beats before smoothing them away.
        signal = playing && gain > 0 ? (float) Math.sqrt(Math.max(0, Math.min(1, signal))) : 0;
        float response = .65f + .35f * gain;
        energy = approach(energy, signal, dt, (signal > energy ? .12f : .42f) / response);
        phase = (phase + dt * activity * gain / 12f) % 1;
        return (playing && gain > 0) || colourTime < 1 || Math.abs(activity - (playing ? 1 : 0)) > .001f
                || Math.abs(mediaMix - (media ? 1 : 0)) > .001f || energy > .001f;
    }

    private int tone(float valueOffset) {
        float value = baseHsv[2];
        baseHsv[2] = Math.max(0, Math.min(1, value + valueOffset));
        int colour = Color.HSVToColor(baseHsv);
        baseHsv[2] = value;
        return colour;
    }

    private static float approach(float value, float target, float dt, float seconds) {
        float next = value + (target - value) * (1 - (float) Math.exp(-dt / seconds));
        return Math.abs(next - target) < .0005f ? target : next;
    }

    int colour(int stop) { return shown[stop]; }
    float phase() { return phase; }
    // Same near-invisible pause, with a readable but bounded envelope during playback.
    float opacity() { return 1 - mediaMix + mediaMix * (.035f + .965f * activity * (1 - .18f * gain * (1 - energy))); }
    float spread() { return 1 - mediaMix + mediaMix * (.60f + (.40f - .06f * Math.min(1, gain)) * activity + .10f * gain * energy); }
}
