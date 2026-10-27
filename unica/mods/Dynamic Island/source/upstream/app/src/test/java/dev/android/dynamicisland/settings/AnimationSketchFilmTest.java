package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.view.View;
import android.view.ViewGroup;
import dev.android.dynamicisland.island.view.IslandView;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

/** The preview must use the production renderer rather than a drawing that can drift away from it. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class AnimationSketchFilmTest {
    @Test public void previewUsesIslandRendererAndCanOpenACard() {
        SettingsActivity activity = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        AnimationScreen animation = ReflectionHelpers.getField(activity, "animation");
        activity.open(animation::open);
        IslandView island = find(activity.page());
        assertNotNull(island);
        assertFalse(island.isHapticFeedbackEnabled());
        island.setGeometry(1080, 540, 108, 60, false);
        dev.android.dynamicisland.island.model.IslandItem sample = new dev.android.dynamicisland.island.model.IslandItem("sample");
        sample.title = "Preview";
        assertTrue(island.peek(sample, 1600));
        assertTrue(island.isPeekOpen());
        animation.stop();
    }
    private IslandView find(View view) {
        if (view instanceof IslandView) return (IslandView) view;
        if (view instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
            IslandView found = find(((ViewGroup) view).getChildAt(i));
            if (found != null) return found;
        }
        return null;
    }
}
