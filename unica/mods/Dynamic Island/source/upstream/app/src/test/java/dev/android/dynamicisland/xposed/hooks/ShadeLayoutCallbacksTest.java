package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class ShadeLayoutCallbacksTest {
    /** Stands for the notification controller that the shade decorators hold. */
    static final class FaceWidgetNotificationController {
    }

    /** A decorator: a layout listener that holds the notification controller. */
    static final class Decorator implements ViewTreeObserver.OnGlobalLayoutListener {
        final FaceWidgetNotificationController owner = new FaceWidgetNotificationController();
        int calls;

        @Override
        public void onGlobalLayout() {
            calls++;
        }
    }

    static final class Plain implements ViewTreeObserver.OnGlobalLayoutListener {
        @Override
        public void onGlobalLayout() {
        }
    }

    private static ViewTreeObserver observer() {
        Context context = RuntimeEnvironment.getApplication();
        return new View(context).getViewTreeObserver();
    }

    @Test
    public void onlyListenersHoldingTheNotificationControllerAreDecorators() {
        assertTrue(ShadeLayoutCallbacks.isDecorator(Decorator.class));
        assertFalse(ShadeLayoutCallbacks.isDecorator(Plain.class));
    }

    @Test
    public void aRemovalNamingAnotherObserverReachesTheOneThatIsDispatching() {
        ViewTreeObserver dispatching = observer();
        ViewTreeObserver other = observer();
        Decorator decorator = new Decorator();
        dispatching.addOnGlobalLayoutListener(decorator);

        ShadeLayoutCallbacks.enter(dispatching);
        try {
            assertTrue(ShadeLayoutCallbacks.removeFromDispatch(other, decorator));
        } finally {
            ShadeLayoutCallbacks.leave();
        }

        dispatching.dispatchOnGlobalLayout();
        assertEquals("the decorator no longer runs", 0, decorator.calls);
    }

    @Test
    public void nothingIsRedirectedOutsideADispatchOrOnTheDispatchingObserver() {
        ViewTreeObserver dispatching = observer();
        Decorator decorator = new Decorator();
        dispatching.addOnGlobalLayoutListener(decorator);

        assertFalse("no dispatch running", ShadeLayoutCallbacks.removeFromDispatch(observer(), decorator));
        ShadeLayoutCallbacks.enter(dispatching);
        try {
            assertFalse("already the right observer", ShadeLayoutCallbacks.removeFromDispatch(dispatching, decorator));
        } finally {
            ShadeLayoutCallbacks.leave();
        }
        dispatching.dispatchOnGlobalLayout();
        assertEquals(1, decorator.calls);
    }

    @Test
    public void nestedDispatchesRedirectToTheInnermost() {
        ViewTreeObserver outer = observer();
        ViewTreeObserver inner = observer();
        Decorator decorator = new Decorator();
        inner.addOnGlobalLayoutListener(decorator);

        ShadeLayoutCallbacks.enter(outer);
        ShadeLayoutCallbacks.enter(inner);
        try {
            assertTrue(ShadeLayoutCallbacks.removeFromDispatch(observer(), decorator));
        } finally {
            ShadeLayoutCallbacks.leave();
            ShadeLayoutCallbacks.leave();
        }
        inner.dispatchOnGlobalLayout();
        assertEquals(0, decorator.calls);
    }
}
