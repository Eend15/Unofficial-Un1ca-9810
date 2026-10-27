package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.Switch;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35, qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class CardShapeSettingsTest {
    @Test public void customCornersAreOptInPersistAndRestoreDefaults() throws Exception {
        SettingsActivity activity=Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences prefs=ReflectionHelpers.getField(activity,"prefs");
        OneUi ui=ReflectionHelpers.getField(activity,"ui");
        activity.open(()->new CardShapeScreen(activity,ui,prefs).open());
        ModuleSettings.configurePreview(prefs);
        assertFalse(ModuleSettings.customCardRoundness());
        assertNull(find(activity.page(),SeekBar.class));
        SettingsRenderTest.render(activity,"settings_ko_cardCorners_default");
        find(activity.page(),Switch.class).toggle();
        SeekBar slider=find(activity.page(),SeekBar.class);
        assertNotNull(slider);
        SeekBar.OnSeekBarChangeListener listener=ReflectionHelpers.getField(slider,"mOnSeekBarChangeListener");
        listener.onStartTrackingTouch(slider); slider.setProgress(40); listener.onStopTrackingTouch(slider);
        ModuleSettings.configurePreview(prefs);
        assertTrue(ModuleSettings.customCardRoundness()); assertEquals(40,ModuleSettings.cardCornerRadiusDp());
        activity.refresh();
        assertEquals(40,find(activity.page(),SeekBar.class).getProgress());
        SettingsRenderTest.render(activity,"settings_ko_cardCorners_custom");
        find(activity.page(),Switch.class).toggle();
        ModuleSettings.configurePreview(prefs); assertFalse(ModuleSettings.customCardRoundness());
        assertEquals(40,prefs.getInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP,0)); // keep the user's value while off
        prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
    }
    private <T extends View> T find(View view,Class<T> type) {
        if(type.isInstance(view))return type.cast(view);
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++) {
            T found=find(((ViewGroup)view).getChildAt(i),type);if(found!=null)return found;
        }
        return null;
    }
}
