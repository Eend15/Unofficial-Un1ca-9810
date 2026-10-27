package dev.android.dynamicisland.island.feedback;

import static org.junit.Assert.*;
import java.util.Arrays;
import java.util.Set;
import org.junit.Test;

public class RecordingEnvelopeTest {
    @Test public void levelsFollowActualPcmAndSilenceStaysFlat() {
        short[] pcm = new short[800];
        assertEquals(0f, RecordingEnvelope.measure(pcm, pcm.length), 0f);
        Arrays.fill(pcm, (short) 1000);
        float quiet = RecordingEnvelope.measure(pcm, pcm.length);
        Arrays.fill(pcm, (short) 10000);
        float loud = RecordingEnvelope.measure(pcm, pcm.length);
        assertTrue(quiet > .1f && loud > quiet + .3f);
        Arrays.fill(pcm, Short.MIN_VALUE);
        assertEquals(1f, RecordingEnvelope.measure(pcm, pcm.length), 0f);
        assertEquals(0f, RecordingEnvelope.measure(pcm, 0), 0f);
        RecordingEnvelope history = new RecordingEnvelope();
        history.reset("first");
        history.add("first", loud, 0);
        assertEquals(loud, history.level("first", 1f), 0f);
        assertEquals(0f, history.level("first", 0f), 0f);
        history.reset("second");
        history.add("first", 1f, 40); // queued frame from an ended recording
        assertEquals(0f, history.level("second", 1f), 0f);
        assertEquals(0f, history.level("first", 1f), 0f);
    }

    @Test public void scrollingUsesLongerHistoryWithoutDelayingBriefSounds() {
        RecordingEnvelope history = new RecordingEnvelope();
        history.reset("voice");
        history.add("voice", 0f, 0);
        history.add("voice", .9f, 40);
        assertEquals(.9f, history.level("voice", 1f), 0f); // immediate attack
        history.add("voice", 0f, 80);
        assertEquals(.9f, history.level("voice", 1f), 0f); // brief sound survives aggregation
        history.add("voice", 0f, 120);
        assertEquals(0f, history.level("voice", 1f), 0f);
        assertEquals(.9f, history.level("voice", 22f / 23f), 0f);
        float[] visual = new float[23];
        history.copyVisualLevels("voice", visual, 120);
        assertEquals(0f, visual[21], .0001f);
        assertEquals(.9f, visual[22], .0001f);
        history.copyVisualLevels("voice", visual, 180);
        assertEquals(.45f, visual[21], .0001f); // between columns, rather than jumping
        assertEquals(.45f, visual[22], .0001f); // live edge also fades between columns
        history.copyVisualLevels("voice", visual, 240);
        float[] beforeAdvance = visual.clone();
        history.add("voice", 0f, 240);
        history.copyVisualLevels("voice", visual, 240);
        assertArrayEquals(beforeAdvance, visual, .0001f); // every bar is continuous across a column boundary
        assertTrue(history.isAnimating("voice", 256));
        assertFalse(history.isAnimating("voice", 500)); // a stopped input cannot leave a busy render loop
        assertFalse(history.isAnimating("other-session", 256));
        history.add("voice", 0f, 2760);
        assertEquals(.9f, history.level("voice", 0f), 0f); // retained almost three seconds
        history.add("voice", 0f, 2880);
        assertEquals(0f, history.level("voice", 0f), 0f);
        history.add("voice", .5f, 3000);
        history.add("voice", 0f, 10000);
        for (int i = 0; i < 24; i++) assertEquals(0f, history.level("voice", i / 23f), 0f);
        history.copyVisualLevels("ended-session", visual, 10000);
        for (float level : visual) assertEquals(0f, level, 0f);
        assertFalse(history.isAnimating("voice", 10000)); // no continuous rendering for silence
    }

    @Test public void guardStopsOnlyWhenAPreviouslyAudibleOtherRecordingBecomesSilenced() {
        assertTrue(RecorderInput.otherBecameSilenced(Set.of(20, 30), Set.of(20)));
        assertFalse(RecorderInput.otherBecameSilenced(Set.of(20), Set.of(40)));
        assertFalse(RecorderInput.otherBecameSilenced(Set.of(20), Set.of()));
    }
}
