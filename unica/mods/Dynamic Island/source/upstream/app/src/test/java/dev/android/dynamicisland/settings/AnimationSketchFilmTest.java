package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertTrue;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;

/** Draws the two looping pictures of the animation page over one cycle; with -Pfilm every frame goes to build/film/sketch. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class AnimationSketchFilmTest {
    @Test
    public void bothPicturesPlay() throws Exception {
        SettingsActivity activity = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        java.lang.reflect.Field f = SettingsActivity.class.getDeclaredField("animation");
        f.setAccessible(true);
        Object screen = f.get(activity);
        Method open = SettingsActivity.class.getDeclaredMethod("open", Runnable.class);
        open.setAccessible(true);
        Method page = screen.getClass().getDeclaredMethod("open");
        page.setAccessible(true);
        open.invoke(activity, (Runnable) () -> {
            try {
                page.invoke(screen);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });
        List<View> sketches = new ArrayList<>();
        find(activity.findViewById(android.R.id.content), sketches);
        assertTrue(sketches.size() == 2);
        boolean film = Boolean.getBoolean("film");
        File dir = new File("build/film/sketch");
        dir.mkdirs();
        for (int step = 0; step < 30; step++) {
            for (int i = 0; i < 2; i++) {
                View v = sketches.get(i);
                v.layout(0, 0, 360, 510);
                Bitmap bmp = Bitmap.createBitmap(360, 510, Bitmap.Config.ARGB_8888);
                v.draw(new Canvas(bmp));
                if (film) {
                    try (FileOutputStream out = new FileOutputStream(new File(dir, String.format("%s%02d.png", i == 0 ? "new" : "old", step)))) {
                        bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
                    }
                }
            }
            ShadowSystemClock.advanceBy(Duration.ofMillis(160));
        }
    }

    private static void find(View view, List<View> out) {
        if (view.getClass().getSimpleName().equals("Sketch")) {
            out.add(view);
        } else if (view instanceof ViewGroup) {
            for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                find(((ViewGroup) view).getChildAt(i), out);
            }
        }
    }
}
