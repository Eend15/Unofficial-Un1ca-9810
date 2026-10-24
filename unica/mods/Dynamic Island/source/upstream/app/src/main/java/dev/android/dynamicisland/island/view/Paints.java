package dev.android.dynamicisland.island.view;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Fonts;
import java.util.Objects;

/** The paints the island draws with, including the text paints that follow the system font. */
final class Paints {
    final Paint shape = new Paint(Paint.ANTI_ALIAS_FLAG);
    final Paint outline = new Paint(Paint.ANTI_ALIAS_FLAG);
    final Paint card = new Paint(Paint.ANTI_ALIAS_FLAG);
    final Paint cardStroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    final Paint stroke = new Paint(Paint.ANTI_ALIAS_FLAG);

    final TextPaint trail = text();
    final TextPaint small = text();
    final TextPaint title = text();
    final TextPaint body = text();
    final TextPaint bigTime = text();
    final TextPaint button = text();
    private TextPaint mediaTitle;
    private TextPaint mediaArtist;

    private final DisplayMetrics display;
    private Object fontKey;

    Paints(DisplayMetrics display, float outlineW) {
        this.display = display;
        shape.setColor(Colors.BLACK);
        outline.setColor(Colors.PILL_OUTLINE);
        cardStroke.setStyle(Paint.Style.STROKE);
        cardStroke.setStrokeWidth(outlineW);
        stroke.setStyle(Paint.Style.STROKE);
        stroke.setStrokeCap(Paint.Cap.ROUND);

        applyFonts();
        trail.setTextSize(sp(14.5f));
        trail.setFontFeatureSettings("tnum");
        small.setTextSize(sp(12.0f));
        small.setFontFeatureSettings("tnum");
        title.setTextSize(sp(18.0f));
        title.setColor(Colors.WHITE);
        body.setTextSize(sp(14.5f));
        body.setColor(Colors.TEXT_BODY);
        bigTime.setTextSize(sp(30.0f));
        bigTime.setFontFeatureSettings("tnum");
        bigTime.setColor(Colors.WHITE);
        button.setTextSize(sp(14.0f));
        button.setTextAlign(Paint.Align.CENTER);
    }

    private static TextPaint text() {
        return new TextPaint(Paint.ANTI_ALIAS_FLAG);
    }

    private float sp(float v) {
        return TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, v, display);
    }

    TextPaint mediaTitle() {
        if (mediaTitle == null) {
            mediaTitle = text();
            mediaTitle.setTypeface(Fonts.of(600));
            mediaTitle.setTextSize(sp(17.0f));
        }
        return mediaTitle;
    }

    TextPaint mediaArtist() {
        if (mediaArtist == null) {
            mediaArtist = text();
            mediaArtist.setTypeface(Fonts.of(400));
            mediaArtist.setTextSize(sp(14.5f));
        }
        return mediaArtist;
    }

    /**
     * One UI "flip font" changes the system typeface at runtime.
     *
     * @return true when the typeface changed and the paints were updated, so text must be laid out again
     */
    boolean followSystemFont() {
        if (Objects.equals(fontKey, Fonts.key())) {
            return false;
        }
        applyFonts();
        return true;
    }

    private void applyFonts() {
        fontKey = Fonts.key();
        Typeface regular = Fonts.of(400);
        Typeface semibold = Fonts.of(600);
        Typeface medium = Fonts.of(500);
        trail.setTypeface(semibold);
        small.setTypeface(medium);
        title.setTypeface(Fonts.of(700));
        body.setTypeface(regular);
        bigTime.setTypeface(semibold);
        button.setTypeface(medium);
        if (mediaTitle != null) {
            mediaTitle.setTypeface(semibold);
        }
        if (mediaArtist != null) {
            mediaArtist.setTypeface(regular);
        }
    }
}
