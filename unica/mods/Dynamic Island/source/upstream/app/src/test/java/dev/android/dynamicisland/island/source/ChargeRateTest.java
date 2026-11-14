package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;

import org.junit.Test;

public class ChargeRateTest {
    @Test public void aRisingCounterGivesTheCurrentOnceThereIsEnoughTimeBetweenSamples() {
        ChargeRate rate = new ChargeRate();
        assertTrue(Double.isNaN(rate.estimateMa(0)));
        rate.add(0, 1_000_000);
        assertTrue("one sample says nothing", Double.isNaN(rate.estimateMa(0)));
        rate.add(5_000, 1_001_667);
        assertTrue("five seconds are too little", Double.isNaN(rate.estimateMa(5_000)));
        rate.add(10_000, 1_003_333);
        assertEquals("1.2 A: 3333 uAh in 10 s", 1200, rate.estimateMa(10_000), 1);
    }

    @Test public void aCounterThatStaysPutIsNoCurrentOnlyAfterALongWhile() {
        ChargeRate rate = new ChargeRate();
        rate.add(0, 2_000_000);
        rate.add(20_000, 2_000_000);
        assertTrue("it moves in coarse steps: 20 s of nothing proves nothing", Double.isNaN(rate.estimateMa(20_000)));
        rate.add(70_000, 2_000_000);
        assertEquals(0, rate.estimateMa(70_000), 0);
    }

    @Test public void aFallingOrMissingCounterStartsOver() {
        ChargeRate rate = new ChargeRate();
        rate.add(0, 2_000_000);
        rate.add(15_000, 2_005_000);
        assertEquals(1200, rate.estimateMa(15_000), 1);
        rate.add(20_000, 1_900_000); // the phone stopped charging, or the counter was reset
        assertTrue(Double.isNaN(rate.estimateMa(20_000)));
        rate.add(40_000, 1_901_000);
        assertEquals(180, rate.estimateMa(40_000), 1);
        rate.add(41_000, Long.MIN_VALUE); // no counter on this phone
        assertTrue(Double.isNaN(rate.estimateMa(41_000)));
    }

    @Test public void oldSamplesAreDroppedSoTheEstimateFollowsTheCurrentCharge() {
        ChargeRate rate = new ChargeRate();
        long counter = 1_000_000;
        for (long t = 0; t <= 60_000; t += 5_000) { rate.add(t, counter); counter += 833; } // about 600 mA
        for (long t = 65_000; t <= 200_000; t += 5_000) { rate.add(t, counter); counter += 2_500; } // then 1.8 A
        assertEquals(1800, rate.estimateMa(200_000), 40);
    }
}
