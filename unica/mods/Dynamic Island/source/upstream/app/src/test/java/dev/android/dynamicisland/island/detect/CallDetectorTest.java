package dev.android.dynamicisland.island.detect;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.Arrays;
import java.util.Collections;
import org.junit.Test;

public class CallDetectorTest {
    @Test
    public void discordVoiceChannelIsACall() {
        CallDetector.Verdict v = CallDetector.classify(true, false, true, true,
                Arrays.asList("Voice Connected", "#general / My Server"), Arrays.asList("Disconnect"), 0);
        assertNotNull(v);
    }

    @Test
    public void koreanVoiceCallReadsItsElapsedTime() {
        CallDetector.Verdict v = CallDetector.classify(true, false, false, false,
                Arrays.asList("홍길동", "보이스톡 통화 중 03:12"), Arrays.asList("종료"), 0);
        assertNotNull(v);
        assertEquals(192_000L, v.elapsedMillis);
        assertEquals(0L, v.explicitStartMillis);
    }

    @Test
    public void aChronometerStartWins() {
        CallDetector.Verdict v = CallDetector.classify(true, true, false, false,
                Arrays.asList("Alex", "Ongoing call"), Arrays.asList("Hang up"), 123_000L);
        assertNotNull(v);
        assertEquals(123_000L, v.explicitStartMillis);
        assertEquals(-1L, v.elapsedMillis);
    }

    @Test
    public void ringingDialingEndedAndNonCallsAreNotConnectedCalls() {
        assertNull(CallDetector.classify(true, true, false, false,
                Arrays.asList("홍길동", "수신 전화"), Arrays.asList("수락", "거절"), 0));
        assertNull(CallDetector.classify(true, true, false, false,
                Arrays.asList("Alex", "Incoming call"), Arrays.asList("Answer", "Decline"), 0));
        assertNull(CallDetector.classify(true, true, false, false,
                Arrays.asList("Alex", "Calling..."), Arrays.asList("Hang up"), 0));
        assertNull(CallDetector.classify(true, false, false, false,
                Arrays.asList("홍길동", "통화 종료"), Arrays.asList("종료"), 0));
        assertNull(CallDetector.classify(true, false, false, false,
                Arrays.asList("음악 재생", "듣는 중"), Arrays.asList("종료"), 0));
        assertNull(CallDetector.classify(false, true, false, false,
                Arrays.asList("Alex", "Ongoing call"), Arrays.asList("Hang up"), 0));
        assertNull(CallDetector.classify(true, false, false, false,
                Arrays.asList("메신저", "메시지 수신 대기 중"), Collections.<String>emptyList(), 0));
    }

    @Test
    public void actionWording() {
        assertTrue(CallDetector.isEndAction("통화 종료"));
        assertTrue(CallDetector.isEndAction("Hang up"));
        assertTrue(CallDetector.isAnswerAction("수락"));
        assertFalse(CallDetector.isEndAction("음소거"));
        assertEquals(3_723_000L, CallDetector.parseClock("1:02:03"));
        assertEquals(-1L, CallDetector.parseClock("1:75"));
    }
}
