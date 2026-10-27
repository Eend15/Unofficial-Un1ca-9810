package dev.android.dynamicisland.island.graphics;

import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * A small Lottie player for the icon set in {@link LottieData}. It understands what those files use:
 * shape and pre-composition layers, parents, alpha mattes, groups, paths, rectangles, ellipses, fills,
 * strokes, trim, merge and round-corner modifiers, keyframes with bezier easing. Colours are ignored on
 * purpose: every shape is painted in the colour the island asks for.
 */
final class LottiePlayer {
    private static final PorterDuffXfermode MATTE_IN = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    private static final PorterDuffXfermode MATTE_OUT = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);

    private final float width;
    private final float height;
    private final float inFrame;
    private final float outFrame;
    private final float frameRate;
    private final List<Layer> layers;
    private final java.util.Map<String, List<Layer>> assets = new java.util.HashMap<>();

    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mattePaint = new Paint();
    private final Path combined = new Path();
    /** True while drawing a layer named "cut": it removes what is below instead of adding to it. */
    private boolean erasing;
    private final Matrix scratch = new Matrix();
    private final RectF clip = new RectF();
    private int color;
    /** Charge shown by layers named "level", 0..1; negative leaves them alone. */
    private float level = -1.0f;

    private LottiePlayer(JSONObject root) throws JSONException {
        width = (float) root.getDouble("w");
        height = (float) root.getDouble("h");
        inFrame = (float) root.optDouble("ip", 0);
        outFrame = (float) root.optDouble("op", 60);
        frameRate = (float) root.optDouble("fr", 60);
        JSONArray defs = root.optJSONArray("assets");
        if (defs != null) {
            for (int i = 0; i < defs.length(); i++) {
                JSONObject a = defs.getJSONObject(i);
                if (a.has("layers")) {
                    assets.put(a.getString("id"), parseLayers(a.getJSONArray("layers")));
                }
            }
        }
        layers = parseLayers(root.getJSONArray("layers"));
    }

    static LottiePlayer parse(String json) {
        try {
            return new LottiePlayer(new JSONObject(json));
        } catch (JSONException | RuntimeException e) {
            return null;
        }
    }

    float durationMillis() {
        return (outFrame - inFrame) * 1000.0f / frameRate;
    }

    void setLevel(float level) {
        this.level = level;
    }

    /** Draws the composition at {@code elapsedMillis} into {@code dst}, every shape in {@code tint}. */
    void draw(Canvas c, RectF dst, float elapsedMillis, int tint) {
        float frame = Math.min(outFrame - 0.01f, inFrame + (elapsedMillis * frameRate / 1000.0f));
        color = tint;
        int save = c.save();
        c.translate(dst.left, dst.top);
        c.scale(dst.width() / width, dst.height() / height);
        clip.set(-width, -height, width * 2.0f, height * 2.0f);
        int group = c.saveLayer(clip, null);
        drawLayers(c, layers, frame, 1.0f);
        c.restoreToCount(group);
        c.restoreToCount(save);
    }

    // ---- model ----

    private static final class Layer {
        int index;
        int parent = -1;
        int matteParent = -1;
        int type;
        String name = "";
        String ref;
        float in;
        float out;
        float start;
        boolean matteSource;
        int matteType;
        Transform transform;
        List<Shape> shapes = new ArrayList<>();
    }

    private static final class Transform {
        Prop opacity;
        Prop rotation;
        Prop position;
        Prop positionX;
        Prop positionY;
        Prop anchor;
        Prop scale;
    }

    private static final class Shape {
        String type;
        Prop a;
        Prop b;
        Prop c;
        PathProp path;
        List<Shape> items;
        Transform transform;
        boolean evenOdd;
        int cap = 2;
        int join = 2;
        int mergeMode = 1;
    }

    private static List<Layer> parseLayers(JSONArray arr) throws JSONException {
        List<Layer> out = new ArrayList<>();
        for (int i = 0; i < arr.length(); i++) {
            JSONObject o = arr.getJSONObject(i);
            Layer l = new Layer();
            l.index = o.optInt("ind", i);
            l.parent = o.has("parent") ? o.getInt("parent") : -1;
            l.matteParent = o.has("tp") ? o.getInt("tp") : -1;
            l.type = o.optInt("ty", 4);
            l.name = o.optString("nm", "");
            l.ref = o.optString("refId", null);
            l.in = (float) o.optDouble("ip", 0);
            l.out = (float) o.optDouble("op", 1e9);
            l.start = (float) o.optDouble("st", 0);
            l.matteSource = o.optInt("td", 0) == 1;
            l.matteType = o.optInt("tt", 0);
            l.transform = parseTransform(o.optJSONObject("ks"));
            JSONArray shapes = o.optJSONArray("shapes");
            if (shapes != null) {
                l.shapes = parseShapes(shapes);
            }
            out.add(l);
        }
        return out;
    }

    private static Transform parseTransform(JSONObject ks) throws JSONException {
        Transform t = new Transform();
        if (ks == null) {
            return t;
        }
        t.opacity = Prop.parse(ks.optJSONObject("o"));
        t.rotation = Prop.parse(ks.optJSONObject("r"));
        t.anchor = Prop.parse(ks.optJSONObject("a"));
        t.scale = Prop.parse(ks.optJSONObject("s"));
        JSONObject p = ks.optJSONObject("p");
        if (p != null && p.optBoolean("s", false)) {
            t.positionX = Prop.parse(p.optJSONObject("x"));
            t.positionY = Prop.parse(p.optJSONObject("y"));
        } else {
            t.position = Prop.parse(p);
        }
        return t;
    }

    private static List<Shape> parseShapes(JSONArray arr) throws JSONException {
        List<Shape> out = new ArrayList<>();
        for (int i = 0; i < arr.length(); i++) {
            JSONObject o = arr.getJSONObject(i);
            Shape s = new Shape();
            s.type = o.getString("ty");
            switch (s.type) {
                case "gr":
                    s.items = parseShapes(o.getJSONArray("it"));
                    for (Shape inner : s.items) {
                        if (inner.type.equals("tr")) {
                            s.transform = inner.transform;
                        }
                    }
                    break;
                case "tr":
                    s.transform = parseTransform(trToKs(o));
                    break;
                case "sh":
                    s.path = PathProp.parse(o.optJSONObject("ks"));
                    break;
                case "rc":
                    s.a = Prop.parse(o.optJSONObject("p"));
                    s.b = Prop.parse(o.optJSONObject("s"));
                    s.c = Prop.parse(o.optJSONObject("r"));
                    break;
                case "el":
                    s.a = Prop.parse(o.optJSONObject("p"));
                    s.b = Prop.parse(o.optJSONObject("s"));
                    break;
                case "fl":
                    s.a = Prop.parse(o.optJSONObject("o"));
                    s.evenOdd = o.optInt("r", 1) == 2;
                    break;
                case "st":
                    s.a = Prop.parse(o.optJSONObject("o"));
                    s.b = Prop.parse(o.optJSONObject("w"));
                    s.cap = o.optInt("lc", 2);
                    s.join = o.optInt("lj", 2);
                    break;
                case "tm":
                    s.a = Prop.parse(o.optJSONObject("s"));
                    s.b = Prop.parse(o.optJSONObject("e"));
                    s.c = Prop.parse(o.optJSONObject("o"));
                    break;
                case "rd":
                    s.a = Prop.parse(o.optJSONObject("r"));
                    break;
                case "mm":
                    s.mergeMode = o.optInt("mm", 1);
                    break;
                default:
                    break;
            }
            out.add(s);
        }
        return out;
    }

    /** A group's "tr" item names its properties like a layer's "ks" does, except for the letters. */
    private static JSONObject trToKs(JSONObject tr) {
        return tr;
    }

    // ---- drawing ----

    private void drawLayers(Canvas c, List<Layer> list, float frame, float alpha) {
        for (int i = list.size() - 1; i >= 0; i--) {
            Layer l = list.get(i);
            if (l.matteSource || frame < l.in || frame >= l.out) {
                continue;
            }
            Layer matte = l.matteType != 0 ? matteOf(list, i) : null;
            if (matte == null) {
                drawLayer(c, list, l, frame, alpha);
                continue;
            }
            int outer = c.saveLayer(clip, null);
            drawLayer(c, list, l, frame, alpha);
            mattePaint.setXfermode(l.matteType == 2 || l.matteType == 4 ? MATTE_OUT : MATTE_IN);
            int inner = c.saveLayer(clip, mattePaint);
            drawLayer(c, list, matte, frame, alpha);
            c.restoreToCount(inner);
            c.restoreToCount(outer);
        }
    }

    private static Layer matteOf(List<Layer> list, int i) {
        Layer l = list.get(i);
        if (l.matteParent >= 0) {
            for (Layer o : list) {
                if (o.index == l.matteParent) {
                    return o;
                }
            }
        }
        return i > 0 && list.get(i - 1).matteSource ? list.get(i - 1) : null;
    }

    private void drawLayer(Canvas c, List<Layer> list, Layer l, float frame, float alpha) {
        int save = c.save();
        concat(c, list, l, frame);
        float a = alpha * (l.transform.opacity == null ? 1.0f : l.transform.opacity.at(frame)[0] / 100.0f);
        float local = frame - l.start;
        if (l.type == 0) {
            List<Layer> inner = assets.get(l.ref);
            if (inner != null) {
                drawLayers(c, inner, local, a);
            }
        } else if (l.type == 4) {
            erasing = l.name.equals("cut");
            drawShapes(c, l.shapes, local, a);
            erasing = false;
        }
        c.restoreToCount(save);
    }

    /** Applies the layer's transform after its parents'. */
    private void concat(Canvas c, List<Layer> list, Layer l, float frame) {
        if (l.parent >= 0) {
            for (Layer p : list) {
                if (p.index == l.parent) {
                    concat(c, list, p, frame);
                    break;
                }
            }
        }
        applyTransform(c, l.transform, frame, l.name.equals("level") ? level : -1.0f);
    }

    private void applyTransform(Canvas c, Transform t, float frame, float levelScale) {
        float px = 0;
        float py = 0;
        if (t.position != null) {
            float[] p = t.position.at(frame);
            px = p[0];
            py = p.length > 1 ? p[1] : 0;
        } else if (t.positionX != null && t.positionY != null) {
            px = t.positionX.at(frame)[0];
            py = t.positionY.at(frame)[0];
        }
        float ax = 0;
        float ay = 0;
        if (t.anchor != null) {
            float[] a = t.anchor.at(frame);
            ax = a[0];
            ay = a.length > 1 ? a[1] : 0;
        }
        float sx = 1;
        float sy = 1;
        if (t.scale != null) {
            float[] s = t.scale.at(frame);
            sx = s[0] / 100.0f;
            sy = (s.length > 1 ? s[1] : s[0]) / 100.0f;
        }
        if (levelScale >= 0.0f) {
            sy *= levelScale;
        }
        float rot = t.rotation == null ? 0 : t.rotation.at(frame)[0];
        scratch.reset();
        scratch.preTranslate(px, py);
        scratch.preRotate(rot);
        scratch.preScale(sx, sy);
        scratch.preTranslate(-ax, -ay);
        c.concat(scratch);
    }

    private void drawShapes(Canvas c, List<Shape> items, float frame, float alpha) {
        List<Path> geoms = new ArrayList<>();
        float corner = 0.0f;
        for (Shape s : items) {
            switch (s.type) {
                case "gr":
                    int save = c.save();
                    float groupAlpha = alpha;
                    if (s.transform != null) {
                        applyTransform(c, s.transform, frame, -1.0f);
                        if (s.transform.opacity != null) {
                            groupAlpha *= s.transform.opacity.at(frame)[0] / 100.0f;
                        }
                    }
                    drawShapes(c, s.items, frame, groupAlpha);
                    c.restoreToCount(save);
                    break;
                case "sh":
                    if (s.path != null) {
                        geoms.add(s.path.at(frame));
                    }
                    break;
                case "rc":
                    geoms.add(rect(s, frame));
                    break;
                case "el":
                    geoms.add(ellipse(s, frame));
                    break;
                case "rd":
                    corner = s.a.at(frame)[0];
                    break;
                case "tm":
                    geoms = trim(geoms, s, frame);
                    break;
                case "mm":
                    geoms = merge(geoms, s.mergeMode);
                    break;
                case "fl":
                    paintAll(c, geoms, s, frame, alpha, corner);
                    break;
                case "st":
                    paintAll(c, geoms, s, frame, alpha, corner);
                    break;
                default:
                    break;
            }
        }
    }

    private void paintAll(Canvas c, List<Path> geoms, Shape s, float frame, float alpha, float corner) {
        float opacity = s.a == null ? 1.0f : s.a.at(frame)[0] / 100.0f;
        float tintAlpha = (color >>> 24) / 255.0f;
        int argb = (color & 0x00FFFFFF) | (Math.round(255.0f * tintAlpha * alpha * opacity) << 24);
        paint.reset();
        paint.setAntiAlias(true);
        paint.setColor(argb);
        if (erasing) {
            paint.setXfermode(MATTE_OUT);
        }
        if (corner > 0.0f) {
            paint.setPathEffect(new CornerPathEffect(corner));
        }
        if (s.type.equals("st")) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(s.b.at(frame)[0]);
            paint.setStrokeCap(s.cap == 1 ? Paint.Cap.BUTT : s.cap == 3 ? Paint.Cap.SQUARE : Paint.Cap.ROUND);
            paint.setStrokeJoin(s.join == 1 ? Paint.Join.MITER : s.join == 3 ? Paint.Join.BEVEL : Paint.Join.ROUND);
        } else {
            paint.setStyle(Paint.Style.FILL);
        }
        if (s.type.equals("fl")) {
            // one fill covers every shape above it, so cut-outs (even-odd) see the other shapes
            combined.rewind();
            for (Path p : geoms) {
                combined.addPath(p);
            }
            combined.setFillType(s.evenOdd ? Path.FillType.EVEN_ODD : Path.FillType.WINDING);
            c.drawPath(combined, paint);
        } else {
            for (Path p : geoms) {
                c.drawPath(p, paint);
            }
        }
        paint.reset();
    }

    private static Path rect(Shape s, float frame) {
        float[] p = s.a.at(frame);
        float[] size = s.b.at(frame);
        float r = s.c == null ? 0 : Math.min(s.c.at(frame)[0], Math.min(size[0], size[1]) / 2.0f);
        Path path = new Path();
        path.addRoundRect(p[0] - size[0] / 2, p[1] - size[1] / 2, p[0] + size[0] / 2, p[1] + size[1] / 2, r, r, Path.Direction.CW);
        return path;
    }

    /** Starts at the top and runs clockwise, like Lottie's ellipse, so trims line up. */
    private static Path ellipse(Shape s, float frame) {
        float[] p = s.a.at(frame);
        float[] size = s.b.at(frame);
        RectF r = new RectF(p[0] - size[0] / 2, p[1] - size[1] / 2, p[0] + size[0] / 2, p[1] + size[1] / 2);
        Path path = new Path();
        path.arcTo(r, -90.0f, 180.0f, true);
        path.arcTo(r, 90.0f, 180.0f, false);
        path.close();
        return path;
    }

    private static List<Path> trim(List<Path> geoms, Shape s, float frame) {
        float start = s.a.at(frame)[0] / 100.0f;
        float end = s.b.at(frame)[0] / 100.0f;
        float offset = s.c == null ? 0.0f : s.c.at(frame)[0] / 360.0f;
        float lo = Math.min(start, end) + offset;
        float hi = Math.max(start, end) + offset;
        List<Path> out = new ArrayList<>();
        for (Path p : geoms) {
            if (hi - lo >= 0.9999f) {
                out.add(p);
                continue;
            }
            if (hi - lo <= 0.0001f) {
                continue;
            }
            float a = lo - (float) Math.floor(lo);
            float b = a + (hi - lo);
            Path t = new Path();
            segment(p, a, Math.min(b, 1.0f), t);
            if (b > 1.0f) {
                segment(p, 0.0f, b - 1.0f, t);
            }
            out.add(t);
        }
        return out;
    }

    private static void segment(Path src, float from, float to, Path dst) {
        PathMeasure m = new PathMeasure(src, false);
        float total = 0.0f;
        do {
            total += m.getLength();
        } while (m.nextContour());
        m.setPath(src, false);
        float acc = 0.0f;
        do {
            float len = m.getLength();
            float s = Math.max(from * total, acc) - acc;
            float e = Math.min(to * total, acc + len) - acc;
            if (e > s) {
                m.getSegment(s, e, dst, true);
            }
            acc += len;
        } while (m.nextContour());
    }

    private static List<Path> merge(List<Path> geoms, int mode) {
        if (geoms.size() < 2) {
            return geoms;
        }
        Path acc = new Path(geoms.get(0));
        Path.Op op = mode == 3 ? Path.Op.DIFFERENCE : mode == 4 ? Path.Op.INTERSECT : mode == 5 ? Path.Op.XOR : Path.Op.UNION;
        for (int i = 1; i < geoms.size(); i++) {
            acc.op(geoms.get(i), op);
        }
        List<Path> out = new ArrayList<>();
        out.add(acc);
        return out;
    }

    // ---- properties ----

    /** A number or vector that is constant or keyframed with bezier easing. */
    private static final class Prop {
        float[] value;
        float[] times;
        float[][] from;
        float[][] to;
        float[][][] ease;
        boolean[] hold;

        static Prop parse(JSONObject o) throws JSONException {
            if (o == null) {
                return null;
            }
            Prop p = new Prop();
            Object k = o.get("k");
            if (o.optInt("a", 0) == 0 || !(k instanceof JSONArray) || !isKeyframes((JSONArray) k)) {
                p.value = vec(k);
                return p;
            }
            JSONArray frames = (JSONArray) k;
            int n = frames.length();
            p.times = new float[n];
            p.from = new float[n][];
            p.to = new float[n][];
            p.ease = new float[n][][];
            p.hold = new boolean[n];
            for (int i = 0; i < n; i++) {
                JSONObject kf = frames.getJSONObject(i);
                p.times[i] = (float) kf.getDouble("t");
                p.from[i] = kf.has("s") ? vec(kf.get("s")) : (i > 0 ? p.to[i - 1] : new float[] {0});
                if (kf.has("e")) {
                    p.to[i] = vec(kf.get("e"));
                }
                p.hold[i] = kf.optInt("h", 0) == 1;
                if (kf.has("o") && kf.has("i")) {
                    p.ease[i] = new float[][] {arr(kf.getJSONObject("o").get("x")), arr(kf.getJSONObject("o").get("y")),
                        arr(kf.getJSONObject("i").get("x")), arr(kf.getJSONObject("i").get("y"))};
                }
            }
            for (int i = 0; i < n; i++) {
                if (p.to[i] == null) {
                    p.to[i] = i + 1 < n ? p.from[i + 1] : p.from[i];
                }
            }
            return p;
        }

        private static boolean isKeyframes(JSONArray a) {
            return a.length() > 0 && a.optJSONObject(0) != null && a.optJSONObject(0).has("t");
        }

        static float[] vec(Object o) throws JSONException {
            if (o instanceof JSONArray) {
                JSONArray a = (JSONArray) o;
                float[] v = new float[a.length()];
                for (int i = 0; i < v.length; i++) {
                    v[i] = (float) a.getDouble(i);
                }
                return v;
            }
            return new float[] {((Number) o).floatValue()};
        }

        private static float[] arr(Object o) throws JSONException {
            return vec(o);
        }

        float[] at(float frame) {
            if (value != null) {
                return value;
            }
            int n = times.length;
            if (frame <= times[0]) {
                return from[0];
            }
            if (frame >= times[n - 1]) {
                return n > 1 || hold[n - 1] ? from[n - 1] : from[0];
            }
            int i = 0;
            while (i + 1 < n && frame >= times[i + 1]) {
                i++;
            }
            float[] a = from[i];
            float[] b = to[i];
            if (hold[i]) {
                return a;
            }
            float f = (frame - times[i]) / (times[i + 1] - times[i]);
            float[] out = new float[a.length];
            for (int d = 0; d < out.length; d++) {
                float e = f;
                if (ease[i] != null) {
                    e = bezier(f, pick(ease[i][0], d), pick(ease[i][1], d), pick(ease[i][2], d), pick(ease[i][3], d));
                }
                float bv = d < b.length ? b[d] : b[b.length - 1];
                out[d] = a[d] + ((bv - a[d]) * e);
            }
            return out;
        }

        private static float pick(float[] v, int d) {
            return v[Math.min(d, v.length - 1)];
        }

        /** Cubic-bezier easing through (0,0), (x1,y1), (x2,y2), (1,1). */
        static float bezier(float x, float x1, float y1, float x2, float y2) {
            float lo = 0.0f;
            float hi = 1.0f;
            float t = x;
            for (int i = 0; i < 24; i++) {
                float cx = coordinate(t, x1, x2);
                if (cx < x) {
                    lo = t;
                } else {
                    hi = t;
                }
                t = (lo + hi) * 0.5f;
            }
            return coordinate(t, y1, y2);
        }

        private static float coordinate(float t, float p1, float p2) {
            float u = 1.0f - t;
            return (3.0f * u * u * t * p1) + (3.0f * u * t * t * p2) + (t * t * t);
        }
    }

    /** A bezier outline, constant or morphing between keyframes with the same vertex count. */
    private static final class PathProp {
        private float[][][] verts;
        private float[] times;
        private float[][][] ease;
        private boolean[] closed;
        private final Path out = new Path();

        static PathProp parse(JSONObject o) throws JSONException {
            if (o == null) {
                return null;
            }
            PathProp p = new PathProp();
            Object k = o.get("k");
            if (o.optInt("a", 0) == 0 || !(k instanceof JSONArray)) {
                p.verts = new float[][][] {outline(k instanceof JSONArray ? ((JSONArray) k).getJSONObject(0) : (JSONObject) k)};
                p.closed = new boolean[] {closedOf(k instanceof JSONArray ? ((JSONArray) k).getJSONObject(0) : (JSONObject) k)};
                return p;
            }
            JSONArray frames = (JSONArray) k;
            int n = frames.length();
            p.times = new float[n];
            p.verts = new float[n][][];
            p.ease = new float[n][][];
            p.closed = new boolean[n];
            for (int i = 0; i < n; i++) {
                JSONObject kf = frames.getJSONObject(i);
                p.times[i] = (float) kf.getDouble("t");
                JSONObject shape = null;
                if (kf.has("s")) {
                    JSONArray s = kf.getJSONArray("s");
                    shape = s.getJSONObject(0);
                } else if (i > 0) {
                    shape = null;
                }
                if (shape != null) {
                    p.verts[i] = outline(shape);
                    p.closed[i] = closedOf(shape);
                } else {
                    p.verts[i] = p.verts[i - 1];
                    p.closed[i] = p.closed[i - 1];
                }
                if (kf.has("o") && kf.has("i")) {
                    p.ease[i] = new float[][] {Prop.vec(kf.getJSONObject("o").get("x")), Prop.vec(kf.getJSONObject("o").get("y")),
                        Prop.vec(kf.getJSONObject("i").get("x")), Prop.vec(kf.getJSONObject("i").get("y"))};
                }
            }
            return p;
        }

        private static boolean closedOf(Object o) {
            return o instanceof JSONObject && ((JSONObject) o).optBoolean("c", false);
        }

        /** Rows: vertices, in tangents, out tangents; each a flat [x0, y0, x1, y1, ...]. */
        private static float[][] outline(Object o) throws JSONException {
            JSONObject s = (JSONObject) o;
            return new float[][] {flat(s.getJSONArray("v")), flat(s.getJSONArray("i")), flat(s.getJSONArray("o"))};
        }

        private static float[] flat(JSONArray a) throws JSONException {
            float[] v = new float[a.length() * 2];
            for (int i = 0; i < a.length(); i++) {
                JSONArray pt = a.getJSONArray(i);
                v[i * 2] = (float) pt.getDouble(0);
                v[(i * 2) + 1] = (float) pt.getDouble(1);
            }
            return v;
        }

        Path at(float frame) {
            float[][] shape;
            boolean isClosed;
            if (times == null || frame <= times[0]) {
                shape = verts[0];
                isClosed = closed[0];
            } else if (frame >= times[times.length - 1]) {
                shape = verts[verts.length - 1];
                isClosed = closed[closed.length - 1];
            } else {
                int i = 0;
                while (i + 1 < times.length && frame >= times[i + 1]) {
                    i++;
                }
                float f = (frame - times[i]) / (times[i + 1] - times[i]);
                float e = ease[i] == null ? f : Prop.bezier(f, ease[i][0][0], ease[i][1][0], ease[i][2][0], ease[i][3][0]);
                float[][] a = verts[i];
                float[][] b = verts[i + 1];
                shape = new float[3][];
                for (int row = 0; row < 3; row++) {
                    int len = Math.min(a[row].length, b[row].length);
                    shape[row] = new float[len];
                    for (int j = 0; j < len; j++) {
                        shape[row][j] = a[row][j] + ((b[row][j] - a[row][j]) * e);
                    }
                }
                isClosed = closed[i];
            }
            return build(shape, isClosed);
        }

        private static Path build(float[][] s, boolean closed) {
            float[] v = s[0];
            float[] in = s[1];
            float[] out = s[2];
            int n = v.length / 2;
            Path path = new Path();
            if (n == 0) {
                return path;
            }
            path.moveTo(v[0], v[1]);
            for (int k = 1; k < n; k++) {
                path.cubicTo(v[(k - 1) * 2] + out[(k - 1) * 2], v[((k - 1) * 2) + 1] + out[((k - 1) * 2) + 1],
                        v[k * 2] + in[k * 2], v[(k * 2) + 1] + in[(k * 2) + 1], v[k * 2], v[(k * 2) + 1]);
            }
            if (closed) {
                int l = n - 1;
                path.cubicTo(v[l * 2] + out[l * 2], v[(l * 2) + 1] + out[(l * 2) + 1], v[0] + in[0], v[1] + in[1], v[0], v[1]);
                path.close();
            }
            return path;
        }
    }
}
