package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertNotNull;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.util.ArrayList;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class ProgressStyleTest {
    private static Bundle segment(int length, int color) {
        Bundle b = new Bundle();
        b.putInt("length", length);
        b.putInt("colorInt", color);
        return b;
    }

    private static Bundle point(int position, int color) {
        Bundle b = new Bundle();
        b.putInt("positionInt", position);
        b.putInt("colorInt", color);
        return b;
    }

    private static Bundle rideExtras(boolean asList) {
        Bundle[] segs = {segment(40, 0xFF34C759), segment(40, 0xFFFFCC00), segment(20, 0xFFFF3B30)};
        Bundle extras = new Bundle();
        if (asList) {
            ArrayList<Bundle> list = new ArrayList<>();
            for (Bundle b : segs) {
                list.add(b);
            }
            extras.putParcelableArrayList("android.progressSegments", list);
        } else {
            extras.putParcelableArray("android.progressSegments", segs);
        }
        extras.putParcelableArray("android.progressPoints", new Parcelable[]{point(40, 0xFFFFFFFF), point(80, 0)});
        extras.putInt("android.progress", 55);
        extras.putInt("android.progressMax", 100);
        return extras;
    }

    @Category(RenderCapture.class) @Test
    public void renderRideCard() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        OaSource oa = new OaSource(app, getClass().getClassLoader());
        IslandItem it = new IslandItem("ride");
        it.progressStyle = true;
        it.title = "Driver arriving";
        it.subtitle = "3 min away · Toyota Camry";
        it.appName = "Ride";
        it.accent = 0xFF34C759;
        Bitmap b = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        new Canvas(b).drawColor(0xFF1E88E5);
        it.cardImage = new BitmapDrawable(app.getResources(), b);
        Bitmap t = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        Canvas tc = new Canvas(t);
        tc.drawColor(Color.TRANSPARENT);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(Color.WHITE);
        tc.drawCircle(24, 24, 22, p);
        p.setColor(0xFF1E88E5);
        tc.drawCircle(24, 24, 10, p);
        Drawable tracker = new BitmapDrawable(app.getResources(), t);

        oa.bindProgressStyle(it, rideExtras(false), "pkg");
        for (int variant = 0; variant < 2; variant++) {
            it.progressThumb = variant == 0 ? null : tracker;
            IslandView view = new IslandView(app, null);
            float w = 360f * app.getResources().getDisplayMetrics().density;
            float h = view.shadeCardHeight(it, w);
            Bitmap out = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(out);
            c.drawColor(0xFF1B1B1F);
            view.drawShadeCard(c, it, w);
            File dir = new File("build/render");
            dir.mkdirs();
            RenderCapture.write(out, new File(dir, "progress_style_segments_" + variant + ".png"));
            assertNotNull(out);
        }
    }

}
