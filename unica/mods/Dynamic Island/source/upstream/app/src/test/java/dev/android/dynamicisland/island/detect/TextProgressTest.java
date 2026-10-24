package dev.android.dynamicisland.island.detect;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class TextProgressTest {
    @Test
    public void percentNextToAProgressWordCounts() {
        assertEquals(73, TextProgress.detect("새 버전 다운로드 중 73%"));
        assertEquals(45, TextProgress.detect("업데이트 설치 중 (45 %)"));
        assertEquals(12, TextProgress.detect("Downloading update 12%"));
        assertEquals(100, TextProgress.detect("백업 100% 완료"));
    }

    @Test
    public void discountsWeatherAndBatteryDoNot() {
        assertEquals(-1, TextProgress.detect("쿠폰 30% 할인 다운로드 받기"));
        assertEquals(-1, TextProgress.detect("Sale 50% off, remaining 2 days"));
        assertEquals(-1, TextProgress.detect("배터리 85% 충전 중, 업데이트 대기"));
        assertEquals(-1, TextProgress.detect("습도 60% 날씨 처리"));
        assertEquals(-1, TextProgress.detect("업데이트 120%"));
        assertEquals(-1, TextProgress.detect("percent only 40%"));
        assertEquals(-1, TextProgress.detect(""));
    }

    @Test
    public void decimalPercentages() {
        assertEquals(13, TextProgress.detect("Downloading 12.5%"));
        assertEquals(100, TextProgress.detect("업데이트 다운로드 중 99.9%"));
        assertEquals(42, TextProgress.detect("업로드 42,0 %"));
    }
}
