package dev.android.dynamicisland.island.graphics;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

/** Checks {@link Spring} against the analytic solution of the damped oscillator in each regime. */
public class SpringTest {
    private static final double TOL = 2e-3;

    /** Steps a never-resting spring (threshold 0) and compares with x(t) at each frame. */
    private static void assertMatchesAnalytic(float response, float zeta, float x0, float v0) {
        Spring spring = new Spring(0.0f, response, zeta).setValueThreshold(0.0f);
        spring.snapTo(x0);
        spring.animateTo(0.0f);
        spring.impulse(v0);
        double w = 2.0 * Math.PI / response;
        double t = 0;
        for (int i = 0; i < 40; i++) {
            spring.step(0.016f);
            t += 0.016;
            double[] expected = analytic(w, zeta, x0, v0, t);
            assertEquals("value at t=" + t, expected[0], spring.value(), TOL);
            assertEquals("velocity at t=" + t, expected[1], spring.velocity(), TOL * 20);
        }
    }

    private static double[] analytic(double w, double z, double x0, double v0, double t) {
        if (z < 1) {
            double wd = w * Math.sqrt(1 - z * z);
            double e = Math.exp(-z * w * t);
            double k = (v0 + z * w * x0) / wd;
            double x = e * (x0 * Math.cos(wd * t) + k * Math.sin(wd * t));
            double v = e * (v0 * Math.cos(wd * t) - ((z * w * v0 + w * w * x0) / wd) * Math.sin(wd * t));
            return new double[] {x, v};
        }
        if (z == 1) {
            double e = Math.exp(-w * t);
            return new double[] {(x0 + (v0 + w * x0) * t) * e, (v0 - w * (v0 + w * x0) * t) * e};
        }
        double s = w * Math.sqrt(z * z - 1);
        double r1 = -z * w + s;
        double r2 = -z * w - s;
        double c1 = (v0 - r2 * x0) / (r1 - r2);
        double c2 = x0 - c1;
        return new double[] {c1 * Math.exp(r1 * t) + c2 * Math.exp(r2 * t),
            c1 * r1 * Math.exp(r1 * t) + c2 * r2 * Math.exp(r2 * t)};
    }

    @Test
    public void underDampedFollowsAnalyticSolution() {
        assertMatchesAnalytic(0.4f, 0.5f, 100.0f, 0.0f);
        assertMatchesAnalytic(0.3f, 0.2f, 50.0f, 300.0f);
    }

    @Test
    public void criticallyDampedFollowsAnalyticSolution() {
        assertMatchesAnalytic(0.4f, 1.0f, 100.0f, 0.0f);
        assertMatchesAnalytic(0.5f, 1.0f, -80.0f, 200.0f);
    }

    @Test
    public void overDampedFollowsAnalyticSolution() {
        assertMatchesAnalytic(0.4f, 1.8f, 100.0f, 0.0f);
        assertMatchesAnalytic(0.5f, 3.0f, 40.0f, -150.0f);
    }

    @Test
    public void longFramesAreCappedAt64Milliseconds() {
        Spring capped = new Spring(0.0f, 0.4f, 0.6f).setValueThreshold(0.0f);
        Spring reference = new Spring(0.0f, 0.4f, 0.6f).setValueThreshold(0.0f);
        capped.animateTo(100.0f);
        reference.animateTo(100.0f);
        capped.step(5.0f);
        reference.step(0.064f);
        assertEquals(reference.value(), capped.value(), 1e-6);
        assertEquals(reference.velocity(), capped.velocity(), 1e-6);
    }

    @Test
    public void negativeStepDoesNotMove() {
        Spring spring = new Spring(0.0f, 0.4f, 0.6f);
        spring.animateTo(100.0f);
        spring.step(-1.0f);
        assertEquals(0.0f, spring.value(), 0.0f);
    }

    @Test
    public void settlesExactlyOnTargetUnderThreshold() {
        Spring spring = new Spring(0.0f, 0.3f, 0.7f);
        spring.animateTo(10.0f);
        int frames = 0;
        while (spring.step(1.0f / 60.0f) && frames++ < 1000) {
            assertFalse(spring.isAtRest());
        }
        assertTrue(spring.isAtRest());
        assertEquals(10.0f, spring.value(), 0.0f);
        assertEquals(0.0f, spring.velocity(), 0.0f);
        assertTrue(frames < 1000);
    }

    @Test
    public void restingSpringIgnoresSameTargetAndSteps() {
        Spring spring = new Spring(5.0f, 0.4f, 0.8f);
        spring.animateTo(5.0f);
        assertTrue(spring.isAtRest());
        assertFalse(spring.step(0.016f));
    }

    @Test
    public void thresholdsAreRelativeToValueThreshold() {
        // 0.4 away is under the default 0.5 threshold, but speed 0.4 * 60 = 24 is not under 30 -> keep going
        Spring spring = new Spring(0.0f, 0.4f, 1.0f);
        spring.animateTo(0.4f);
        spring.impulse(40.0f);
        assertTrue(spring.step(0.001f));
    }
}
