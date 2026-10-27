package io.mesalabs.unica.camera;
/** Request policy shared by the bar and pinned native-sized indicator. */
public final class ApertureMode {
    public static final int AUTO = 0, F15 = 1, F24 = 2;
    public static int next(int mode) { return (mode + 1) % 3; }
    public static String name(int mode) { return mode == AUTO ? "AUTO" : mode == F15 ? "F1.5" : "F2.4"; }
    public static Object request(int mode, Object nativeDefault) {
        return mode == AUTO ? nativeDefault : Float.valueOf(mode == F15 ? 1.5f : 2.4f);
    }
    public static String label(int mode, Float reported) {
        if (mode == AUTO) return "AUTO";
        return reported == null ? "F —" : String.format(java.util.Locale.US, "F%.1f", reported);
    }
}
