package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import java.util.List;
import org.junit.Test;

public class SettingsSearchEngineTest {
    private SettingsSearchEngine.Document doc(String id,String title,String description,String aliases) {
        return new SettingsSearchEngine.Document(id,title,description,"Settings",List.of(
                new SettingsSearchEngine.Field(title,100),new SettingsSearchEngine.Field(description,50),
                new SettingsSearchEngine.Field(aliases,70)));
    }
    private SettingsSearchEngine engine() {
        return new SettingsSearchEngine(List.of(
                doc("glow","Glow","Album colours around the island","후광 글로우 주변광"),
                doc("pause","Keep paused music for","How long music stays after playback stops","노래 음악 멈춤 멈추면 유지 사라짐"),
                doc("charge","충전 애니메이션","Samsung charging effect","번개 충전 charging battery"),
                doc("other","Other","A glow appears during notifications","")),"how do i the for change settings");
    }
    @Test public void ranksIntentAcrossFieldsAboveIncidentalDescriptionMatches() {
        assertEquals("glow",engine().search("glow",10).get(0).id);
        assertEquals("pause",engine().search("how do i change paused music",10).get(0).id);
        assertEquals("pause",engine().search("노래 멈추면",10).get(0).id);
        assertTrue(engine().search("music unrelatedword",10).isEmpty());
    }
    @Test public void matchesSpacingInitialsUnicodeAndBoundedTypos() {
        assertEquals("charge",engine().search("충전애니메이션",10).get(0).id);
        assertEquals("charge",engine().search("ㅊㅈㅇㄴ",10).get(0).id);
        assertEquals("glow",engine().search("glwo",10).get(0).id);
        assertEquals("dusuk performans",SettingsSearchEngine.normalize("DÜŞÜK PERFORMANS"));
        assertEquals("通知",SettingsSearchEngine.normalize("通知"));
        assertEquals("glow",engine().search("ＧＬＯＷ",10).get(0).id);
        assertTrue(engine().search("zzzzzzzz",10).isEmpty());
        assertTrue(engine().search("ㅊ",10).isEmpty());
    }
    @Test public void emptyQueriesAndResultLimitsAreSafeAndDeterministic() {
        assertTrue(engine().search(null,10).isEmpty());assertTrue(engine().search("!!!",10).isEmpty());
        assertTrue(engine().search("glow",0).isEmpty());assertEquals(1,engine().search("glow",1).size());
        assertEquals(engine().search("glow",10).get(0).id,engine().search("glow",10).get(0).id);
        assertTrue(engine().search("x".repeat(10000),10).isEmpty());
    }
}
