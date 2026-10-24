package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class ActionWordsTest {
    @Test
    public void latinEndingWordsMustOpenAWord() {
        assertTrue(ActionWords.isDestructive("End call"));
        assertTrue(ActionWords.isDestructive("Stop"));
        assertFalse(ActionWords.isDestructive("Send"));
        assertFalse(ActionWords.isDestructive("Calendar"));
        assertFalse(ActionWords.isDestructive(null));
    }

    @Test
    public void pauseBeatsStopInEveryLanguage() {
        assertFalse(ActionWords.isDestructive("Pause"));
        assertFalse(ActionWords.isDestructive("일시중지"));
        assertFalse(ActionWords.isDestructive("Приостановить"));
        assertFalse(ActionWords.isDestructive("一時停止"));
        assertTrue(ActionWords.isDestructive("중지"));
    }

    @Test
    public void callToggleTitles() {
        assertTrue(ActionWords.isSpeaker("Speaker"));
        assertTrue(ActionWords.isSpeaker("스피커"));
        assertTrue(ActionWords.isMute("Mute"));
        assertTrue(ActionWords.isMute("음소거"));
        assertFalse(ActionWords.isSpeaker("Mute"));
    }
}
