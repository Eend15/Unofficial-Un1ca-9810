package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.RectF;
import android.os.SystemClock;
import android.view.Choreographer;
import android.view.MotionEvent;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowChoreographer;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

/** The default presentation (the stack of cards): a swipe down on the small pill opens its cards. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class SwipeDownOpensTest {
    private final List<String> shadePulls = new ArrayList<>();

    private IslandView view(Context context) {
        ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
        ShadowChoreographer.setPaused(true);
        IslandHost host = (IslandHost) java.lang.reflect.Proxy.newProxyInstance(getClass().getClassLoader(),
                new Class<?>[] {IslandHost.class}, (proxy, method, args) -> switch (method.getName()) {
                    case "onShadeDragStart" -> { shadePulls.add("start"); yield null; }
                    case "hasMinimized", "onShadeFade" -> false;
                    default -> null;
                });
        IslandView view = new IslandView(context, host);
        Activity activity = Robolectric.buildActivity(Activity.class).setup().get();
        activity.setContentView(view);
        view.setGeometry(440, 220, 30, 22, false);
        view.layout(0, 0, 440, 400);
        IslandItem item = new IslandItem("timer");
        item.kind = IslandItem.Kind.TIMER;
        item.title = "Stopwatch";
        item.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = "00:55";
        List<IslandItem> items = new ArrayList<>();
        items.add(item);
        view.setItems(items);
        step(view, 80);
        return view;
    }

    private static void step(IslandView view, int frames) {
        for (int i = 0; i < frames; i++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            view.doFrame(SystemClock.uptimeMillis() * 1_000_000L);
            Choreographer.getInstance().removeFrameCallback(view);
        }
    }

    private static void touch(IslandView view, int action, long down, float x, float y) {
        touchAt(view, action, down, SystemClock.uptimeMillis(), x, y);
    }

    private static void touchAt(IslandView view, int action, long down, long at, float x, float y) {
        MotionEvent e = MotionEvent.obtain(down, at, action, x, y, 0);
        view.onTouchEvent(e);
        e.recycle();
    }

    private static Card firstCard(Scene scene) {
        for (Card c : scene.cards) if (!c.leaving) return c;
        return null;
    }

    private RectF pillOf(IslandView view) {
        Shapes shapes = ReflectionHelpers.getField(view, "shapes");
        RectF pill = new RectF();
        shapes.paintedMain(pill);
        return pill;
    }

    private void pullDownOnThePill(IslandView view) {
        Shapes shapes = ReflectionHelpers.getField(view, "shapes");
        RectF pill = new RectF();
        shapes.paintedMain(pill);
        long down = SystemClock.uptimeMillis();
        touch(view, MotionEvent.ACTION_DOWN, down, pill.centerX(), pill.centerY());
        touch(view, MotionEvent.ACTION_MOVE, down, pill.centerX(), pill.centerY() + 24);
        touch(view, MotionEvent.ACTION_MOVE, down, pill.centerX(), pill.centerY() + 60);
        touch(view, MotionEvent.ACTION_UP, down, pill.centerX(), pill.centerY() + 120);
    }

    @Test public void aPullDownOnThePillOpensTheCardsByDefault() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = context.getSharedPreferences("swipe-down-stack", 0);
        try {
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, false).commit();
            ModuleSettings.configurePreview(prefs);
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            assertEquals(Mode.COMPACT, scene.mode);
            pullDownOnThePill(view);
            step(view, 80);
            assertEquals("nothing went to the shade", 0, shadePulls.size());
            assertEquals("the cards opened", Mode.EXPANDED, scene.mode);
            assertFalse(scene.cards.isEmpty());
        } finally {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
        }
    }

    @Test public void withTheOptionOffAPullDownOnThePillGoesToTheShade() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = context.getSharedPreferences("swipe-down-stack-off", 0);
        try {
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, false)
                    .putBoolean(ModuleSettings.KEY_SWIPE_DOWN_OPENS, false).commit();
            ModuleSettings.configurePreview(prefs);
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            pullDownOnThePill(view);
            step(view, 60);
            assertEquals("the pull went to the shade", 1, shadePulls.size());
            assertEquals(Mode.COMPACT, scene.mode);
            assertTrue(scene.cards.isEmpty());
        } finally {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
        }
    }

    private SharedPreferences stackPrefs(Context context, String name) {
        SharedPreferences prefs = context.getSharedPreferences(name, 0);
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, false).commit();
        ModuleSettings.configurePreview(prefs);
        return prefs;
    }

    private void reset(SharedPreferences prefs) {
        prefs.edit().clear().commit();
        ModuleSettings.configurePreview(prefs);
    }

    @Test public void theCardsFollowTheFingerAndOpenFurtherTheFurtherItPulls() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = stackPrefs(context, "pull-follow");
        try {
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            RectF pill = pillOf(view);
            long down = SystemClock.uptimeMillis();
            touchAt(view, MotionEvent.ACTION_DOWN, down, down, pill.centerX(), pill.centerY());
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 40, pill.centerX(), pill.centerY() + 20);
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 80, pill.centerX(), pill.centerY() + 50);
            Card card = firstCard(scene);
            assertEquals(Mode.EXPANDED, scene.mode);
            float small = card.h.value();
            assertTrue("part way: taller than the pill " + small, small > card.pullFromH + 1);
            assertTrue("part way: shorter than fully open " + small + " of " + card.targetH, small < card.targetH - 1);
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 120, pill.centerX(), pill.centerY() + 80);
            assertTrue("it opens further as the finger goes on", card.h.value() > small + 1);
            assertEquals("and it is still the finger, not the clock, that sets it", card.h.target(), card.h.value(), 0.01f);
            touchAt(view, MotionEvent.ACTION_CANCEL, down, down + 160, pill.centerX(), pill.centerY() + 80);
            step(view, 120);
            assertEquals("a pull that System UI cancelled (as it does inside an app) still opens the cards", Mode.EXPANDED, scene.mode);
            assertFalse(scene.cards.isEmpty());
            assertEquals(0, shadePulls.size());
        } finally {
            reset(prefs);
        }
    }

    @Test public void aPullTheSystemCutShortJustAfterItStartedStillOpensTheCards() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = stackPrefs(context, "pull-cut-short");
        try {
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            RectF pill = pillOf(view);
            long down = SystemClock.uptimeMillis();
            touchAt(view, MotionEvent.ACTION_DOWN, down, down, pill.centerX(), pill.centerY());
            float slop = android.view.ViewConfiguration.get(context).getScaledTouchSlop();
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 20, pill.centerX(), pill.centerY() + slop * 0.6f);
            touchAt(view, MotionEvent.ACTION_CANCEL, down, down + 40, pill.centerX(), pill.centerY() + slop * 0.7f);
            step(view, 120);
            assertEquals(Mode.EXPANDED, scene.mode);
        } finally {
            reset(prefs);
        }
    }

    private float heightAfterACutShortPull(Context context, String name, long gapMs) {
        SharedPreferences prefs = stackPrefs(context, name);
        try {
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            RectF pill = pillOf(view);
            float slop = android.view.ViewConfiguration.get(context).getScaledTouchSlop();
            long down = SystemClock.uptimeMillis();
            touchAt(view, MotionEvent.ACTION_DOWN, down, down, pill.centerX(), pill.centerY());
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + gapMs, pill.centerX(), pill.centerY() + slop * 0.6f);
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 2 * gapMs, pill.centerX(), pill.centerY() + slop * 1.2f);
            touchAt(view, MotionEvent.ACTION_CANCEL, down, down + 3 * gapMs, pill.centerX(), pill.centerY() + slop * 1.8f);
            Card card = firstCard(scene);
            step(view, 5);
            return card.h.value();
        } finally {
            reset(prefs);
        }
    }

    @Test public void aFasterPullTheSystemCutShortOpensTheCardsFaster() {
        Context context = RuntimeEnvironment.getApplication();
        float slow = heightAfterACutShortPull(context, "cut-slow", 120);
        float fast = heightAfterACutShortPull(context, "cut-fast", 16);
        assertTrue("fast " + fast + " slow " + slow, fast > slow + 1);
    }

    @Test public void aTouchCancelledWithoutMovingDownDoesNotOpenTheCards() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = stackPrefs(context, "pull-cancel-still");
        try {
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            RectF pill = pillOf(view);
            long down = SystemClock.uptimeMillis();
            touchAt(view, MotionEvent.ACTION_DOWN, down, down, pill.centerX(), pill.centerY());
            touchAt(view, MotionEvent.ACTION_CANCEL, down, down + 40, pill.centerX(), pill.centerY() + 1);
            step(view, 60);
            assertEquals(Mode.COMPACT, scene.mode);
            touchAt(view, MotionEvent.ACTION_DOWN, down + 100, down + 100, pill.centerX(), pill.centerY());
            touchAt(view, MotionEvent.ACTION_MOVE, down + 100, down + 120, pill.centerX() + 30, pill.centerY() + 6);
            touchAt(view, MotionEvent.ACTION_CANCEL, down + 100, down + 140, pill.centerX() + 30, pill.centerY() + 6);
            step(view, 60);
            assertEquals("a sideways drag is not a pull down", Mode.COMPACT, scene.mode);
        } finally {
            reset(prefs);
        }
    }

    @Test public void aShortSlowPullFoldsBackAndALongOneOrAQuickFlickOpens() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = stackPrefs(context, "pull-release");
        try {
            for (int variant = 0; variant < 3; variant++) {
                shadePulls.clear();
                IslandView view = view(context);
                Scene scene = ReflectionHelpers.getField(view, "scene");
                RectF pill = pillOf(view);
                float x = pill.centerX(), y = pill.centerY();
                long down = SystemClock.uptimeMillis();
                touchAt(view, MotionEvent.ACTION_DOWN, down, down, x, y);
                if (variant == 0) { // slow and short
                    for (int i = 1; i <= 6; i++) touchAt(view, MotionEvent.ACTION_MOVE, down, down + 200L * i, x, y + 4 * i);
                    touchAt(view, MotionEvent.ACTION_UP, down, down + 1500, x, y + 24);
                } else if (variant == 1) { // long
                    for (int i = 1; i <= 8; i++) touchAt(view, MotionEvent.ACTION_MOVE, down, down + 60L * i, x, y + 12 * i);
                    touchAt(view, MotionEvent.ACTION_UP, down, down + 520, x, y + 96);
                } else { // a quick flick over a short distance
                    for (int i = 1; i <= 4; i++) touchAt(view, MotionEvent.ACTION_MOVE, down, down + 6L * i, x, y + 6 * i);
                    touchAt(view, MotionEvent.ACTION_UP, down, down + 26, x, y + 26);
                }
                step(view, 120);
                assertEquals("variant " + variant + " never goes to the shade", 0, shadePulls.size());
                if (variant == 0) {
                    assertEquals("a short slow pull folds back", Mode.COMPACT, scene.mode);
                    assertTrue(scene.cards.isEmpty());
                } else {
                    assertEquals("variant " + variant + " opens", Mode.EXPANDED, scene.mode);
                    Card card = firstCard(scene);
                    assertEquals("and ends fully open", card.targetH, card.h.value(), 1f);
                }
            }
        } finally {
            reset(prefs);
        }
    }

    @Test public void aPullThatLastsLongerThanTheAutoCollapseTimeDoesNotFoldItself() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = stackPrefs(context, "pull-hold");
        try {
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            RectF pill = pillOf(view);
            long down = SystemClock.uptimeMillis();
            touchAt(view, MotionEvent.ACTION_DOWN, down, down, pill.centerX(), pill.centerY());
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 40, pill.centerX(), pill.centerY() + 30);
            long timeout = ModuleSettings.autoCollapseMs();
            org.robolectric.shadows.ShadowLooper.idleMainLooper(timeout + 2000, java.util.concurrent.TimeUnit.MILLISECONDS);
            assertEquals("still held: still open", Mode.EXPANDED, scene.mode);
            assertFalse(scene.cards.isEmpty());
            touchAt(view, MotionEvent.ACTION_CANCEL, down, down + timeout + 2100, pill.centerX(), pill.centerY() + 30);
        } finally {
            reset(prefs);
        }
    }

    @Test public void theSplitOffSubPillPullsTheCardsOpenToo() {
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = stackPrefs(context, "pull-bubble");
        try {
            IslandView view = view(context);
            Scene scene = ReflectionHelpers.getField(view, "scene");
            IslandItem second = new IslandItem("second");
            second.kind = IslandItem.Kind.TIMER;
            second.title = "Second";
            second.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
            second.trailing = IslandItem.Trailing.TEXT;
            second.trailingText = "1:00";
            List<IslandItem> items = new ArrayList<>();
            items.add(scene.items.get(0));
            items.add(second);
            view.setItems(items);
            step(view, 160);
            assertTrue("a sub pill exists", scene.secondary != null);
            Shapes shapes = ReflectionHelpers.getField(view, "shapes");
            RectF main = new RectF(), bubble = new RectF();
            shapes.paintedMain(main);
            shapes.bubble(main, bubble);
            long down = SystemClock.uptimeMillis();
            touchAt(view, MotionEvent.ACTION_DOWN, down, down, bubble.centerX(), bubble.centerY());
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 40, bubble.centerX(), bubble.centerY() + 30);
            touchAt(view, MotionEvent.ACTION_MOVE, down, down + 80, bubble.centerX(), bubble.centerY() + 70);
            assertEquals("the pull on the sub pill opens the cards", Mode.EXPANDED, scene.mode);
            assertEquals(0, shadePulls.size());
            touchAt(view, MotionEvent.ACTION_UP, down, down + 100, bubble.centerX(), bubble.centerY() + 120);
            step(view, 120);
            assertEquals(Mode.EXPANDED, scene.mode);
            assertEquals("both cards are shown", 2, scene.cards.stream().filter(c -> !c.leaving).count());
        } finally {
            reset(prefs);
        }
    }

    /** The most the first card goes past its final height, width and bottom edge in the 160 frames after the open starts. */
    private static float[] overshoot(IslandView view, Card card) {
        float maxH = 0, maxW = 0, maxBottom = 0;
        for (int i = 0; i < 160; i++) {
            step(view, 1);
            maxH = Math.max(maxH, card.h.value() - card.targetH);
            maxW = Math.max(maxW, card.w.value() - card.targetW);
            maxBottom = Math.max(maxBottom, card.cy.value() + card.h.value() / 2 - (card.targetCy + card.targetH / 2));
        }
        return new float[] {maxH, maxW, maxBottom};
    }

    @Test public void aPullTheSystemCutShortNeverOpensTheCardsFurtherPastTheirSizeThanATapDoes() {
        Context context = RuntimeEnvironment.getApplication();
        for (boolean legacy : new boolean[] {false, true}) {
            SharedPreferences prefs = stackPrefs(context, "cut-overshoot-" + legacy);
            try {
                prefs.edit().putBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, legacy).commit();
                ModuleSettings.configurePreview(prefs);
                IslandView tapView = view(context);
                Scene tapScene = ReflectionHelpers.getField(tapView, "scene");
                RectF tapPill = pillOf(tapView);
                long tapDown = SystemClock.uptimeMillis();
                touchAt(tapView, MotionEvent.ACTION_DOWN, tapDown, tapDown, tapPill.centerX(), tapPill.centerY());
                touchAt(tapView, MotionEvent.ACTION_UP, tapDown, tapDown + 40, tapPill.centerX(), tapPill.centerY());
                Card tapCard = firstCard(tapScene);
                float[] tap = overshoot(tapView, tapCard);
                float margin = tapCard.targetH * 0.05f;
                float slop = android.view.ViewConfiguration.get(context).getScaledTouchSlop();
                for (long gap : new long[] {4, 8, 16, 40}) {
                    IslandView view = view(context);
                    Scene scene = ReflectionHelpers.getField(view, "scene");
                    RectF pill = pillOf(view);
                    long down = SystemClock.uptimeMillis();
                    touchAt(view, MotionEvent.ACTION_DOWN, down, down, pill.centerX(), pill.centerY());
                    touchAt(view, MotionEvent.ACTION_MOVE, down, down + gap, pill.centerX(), pill.centerY() + slop * 0.6f);
                    touchAt(view, MotionEvent.ACTION_MOVE, down, down + 2 * gap, pill.centerX(), pill.centerY() + slop * 1.2f);
                    touchAt(view, MotionEvent.ACTION_CANCEL, down, down + 3 * gap, pill.centerX(), pill.centerY() + slop * 1.8f);
                    Card card = firstCard(scene);
                    String what = (legacy ? "classic" : "default") + ", " + gap + " ms apart: ";
                    float[] cut = overshoot(view, card);
                    assertEquals(what + "opened", Mode.EXPANDED, scene.mode);
                    assertTrue(what + "height over " + cut[0] + " (a tap: " + tap[0] + ")", cut[0] <= tap[0] + margin);
                    assertTrue(what + "width over " + cut[1] + " (a tap: " + tap[1] + ")", cut[1] <= tap[1] + margin);
                    assertTrue(what + "bottom edge over " + cut[2] + " (a tap: " + tap[2] + ")", cut[2] <= tap[2] + margin);
                }
            } finally {
                reset(prefs);
            }
        }
    }

    @Test public void aFastFlickOpensTheCardsNoFurtherPastTheirSizeThanATapDoes() {
        Context context = RuntimeEnvironment.getApplication();
        for (boolean legacy : new boolean[] {false, true}) {
            SharedPreferences prefs = stackPrefs(context, "pull-overshoot-" + legacy);
            try {
                prefs.edit().putBoolean(ModuleSettings.KEY_LEGACY_ANIMATION, legacy).commit();
                ModuleSettings.configurePreview(prefs);
                // what the plain tap-open does on its own is the yardstick
                IslandView tapView = view(context);
                Scene tapScene = ReflectionHelpers.getField(tapView, "scene");
                RectF tapPill = pillOf(tapView);
                long tapDown = SystemClock.uptimeMillis();
                touchAt(tapView, MotionEvent.ACTION_DOWN, tapDown, tapDown, tapPill.centerX(), tapPill.centerY());
                touchAt(tapView, MotionEvent.ACTION_UP, tapDown, tapDown + 40, tapPill.centerX(), tapPill.centerY());
                Card tapCard = firstCard(tapScene);
                float[] tap = overshoot(tapView, tapCard);
                float margin = tapCard.targetH * 0.05f;
                for (int speedPxPerMs : new int[] {1, 2, 4, 8}) {
                    shadePulls.clear();
                    IslandView view = view(context);
                    Scene scene = ReflectionHelpers.getField(view, "scene");
                    RectF pill = pillOf(view);
                    float x = pill.centerX(), y = pill.centerY();
                    long down = SystemClock.uptimeMillis();
                    touchAt(view, MotionEvent.ACTION_DOWN, down, down, x, y);
                    int steps = 6;
                    for (int i = 1; i <= steps; i++) touchAt(view, MotionEvent.ACTION_MOVE, down, down + 5L * i, x, y + 5f * speedPxPerMs * i);
                    touchAt(view, MotionEvent.ACTION_UP, down, down + 5L * steps + 2, x, y + 5f * speedPxPerMs * steps);
                    Card card = firstCard(scene);
                    String what = (legacy ? "classic" : "default") + ", " + speedPxPerMs + " px/ms: ";
                    float[] pull = overshoot(view, card);
                    assertEquals(what + "opened", Mode.EXPANDED, scene.mode);
                    assertTrue(what + "height over " + pull[0] + " (a tap: " + tap[0] + ")", pull[0] <= tap[0] + margin);
                    assertTrue(what + "width over " + pull[1] + " (a tap: " + tap[1] + ")", pull[1] <= tap[1] + margin);
                    assertTrue(what + "bottom edge over " + pull[2] + " (a tap: " + tap[2] + ")", pull[2] <= tap[2] + margin);
                }
            } finally {
                reset(prefs);
            }
        }
    }
}
