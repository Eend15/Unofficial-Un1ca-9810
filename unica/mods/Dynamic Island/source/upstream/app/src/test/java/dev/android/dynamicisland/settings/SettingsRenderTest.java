package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertTrue;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.lang.reflect.Method;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Checks layout on every settings page; -Prender also draws and exports review images. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class SettingsRenderTest {
    @Test
    public void everyPageBuildsAndLaysOut() throws Exception {
        renderAll(Robolectric.buildActivity(SettingsActivity.class).setup().get(), "settings_");
    }

    /** Opens each page and writes it as {@code prefix + name}.png. */
    static void renderAll(SettingsActivity activity, String prefix) throws Exception {
        render(activity, prefix + "hub");
        Object rules = field(activity, "rules");
        for (String page : new String[] {"displayPage", "notificationsPage", "eventsPage", "appsPage", "behaviorPage", "advancedPage", "aboutPage", "diagnosticsPage"}) {
            show(activity, activity, page, prefix + page);
        }
        show(activity, field(activity, "animation"), "open", prefix + "animationPage");
        show(activity, field(activity, "position"), "open", prefix + "positionPage");
        show(activity, field(activity, "position"), "calibration", prefix + "calibrationPage");
        show(activity, field(activity, "appearance"), "open", prefix + "coloursPage");
        show(activity, rules, "advancedPage", prefix + "rulesAdvanced");
        show(activity, rules, "listPage", prefix + "rulesList");
        show(activity, field(rules, "wizard"), "page", prefix + "ruleWizard");
        show(activity, rules, "testPage", prefix + "rulesTest");
        java.util.List<android.widget.EditText> fields = new java.util.ArrayList<>();
        collect(activity.findViewById(android.R.id.content), fields);
        fields.get(0).setText("com.kakao.taxi");
        fields.get(1).setText("기사님이 도착해요. 인증번호 482913, 다운로드 중 73%");
        render(activity, prefix + "rulesTestFilled");
        Method rulePage = rules.getClass().getDeclaredMethod("rulePage", String.class);
        rulePage.setAccessible(true);
        Method open = SettingsActivity.class.getDeclaredMethod("open", Runnable.class);
        open.setAccessible(true);
        open.invoke(activity, (Runnable) () -> {
            try {
                rulePage.invoke(rules, "taxi");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });
        render(activity, prefix + "rulesDetail");
    }

    private static void collect(View view, java.util.List<android.widget.EditText> out) {
        if (view instanceof android.widget.EditText) {
            out.add((android.widget.EditText) view);
        } else if (view instanceof ViewGroup) {
            for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                collect(((ViewGroup) view).getChildAt(i), out);
            }
        }
    }

    private static Object field(Object target, String name) throws Exception {
        java.lang.reflect.Field f = target.getClass().getDeclaredField(name);
        f.setAccessible(true);
        return f.get(target);
    }

    private static void show(SettingsActivity activity, Object owner, String method, String name) throws Exception {
        Method open = SettingsActivity.class.getDeclaredMethod("open", Runnable.class);
        Method build = owner.getClass().getDeclaredMethod(method);
        open.setAccessible(true);
        build.setAccessible(true);
        open.invoke(activity, (Runnable) () -> {
            try {
                build.invoke(owner);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });
        render(activity, name);
    }

    static void render(SettingsActivity activity, String name) throws Exception {
        View root = ((ViewGroup) activity.findViewById(android.R.id.content)).getChildAt(0);
        int width = 1080;
        root.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        View content = ((ViewGroup) root).getChildAt(0);
        content.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        int height = Math.max(content.getMeasuredHeight(), 2200);
        content.layout(0, 0, width, height);
        assertTrue(name + " must have content", content.getMeasuredHeight() > 0);
        if (!RenderCapture.enabled()) return;
        dev.android.dynamicisland.island.view.IslandView preview = findIsland(content);
        if (preview != null) {
            dev.android.dynamicisland.island.model.IslandItem sample = org.robolectric.util.ReflectionHelpers.getField(preview.getParent(), "item");
            preview.peek(sample, 5000);
            for (int frame = 0; frame < 60; frame++) {
                org.robolectric.shadows.ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
                preview.doFrame(android.os.SystemClock.uptimeMillis() * 1_000_000L);
            }
        }
        Bitmap bmp = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        canvas.drawColor(new OneUi(activity).background);
        content.draw(canvas);
        RenderCapture.write(bmp, new File("build/render", name + ".png"));
    }
    private static dev.android.dynamicisland.island.view.IslandView findIsland(View view) {
        if (view instanceof dev.android.dynamicisland.island.view.IslandView) return (dev.android.dynamicisland.island.view.IslandView) view;
        if (view instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
            dev.android.dynamicisland.island.view.IslandView found = findIsland(((ViewGroup) view).getChildAt(i));
            if (found != null) return found;
        }
        return null;
    }

}
