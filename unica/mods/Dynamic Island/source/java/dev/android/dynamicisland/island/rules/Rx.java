package dev.android.dynamicisland.island.rules;

import dev.android.dynamicisland.xposed.XLog;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/**
 * A regular expression from a rule file, made safe to run. Rule files can come from the network or from the
 * user and run inside System UI, so a pattern that backtracks without end must never freeze the system. Three
 * layers:
 * <ol>
 *   <li>Patterns that can backtrack exponentially (an unbounded repeat of a group that itself repeats or branches,
 *       like {@code (a+)+} or {@code (a|aa)*}) are refused when the file is read ({@link #looksCatastrophic}).</li>
 *   <li>Only the first {@link #MAX_INPUT} characters of a text are matched, which bounds even slow patterns.</li>
 *   <li>Where the regex engine reads the text through {@link CharSequence} (the JVM), a match is abandoned after
 *       {@link #BUDGET_MS}, and a pattern that did so {@link #MAX_TIMEOUTS} times is switched off. Android's engine
 *       copies the text first, so there the first two layers carry the protection.</li>
 * </ol>
 */
public final class Rx {
    /** Time one match attempt may take. */
    static final long BUDGET_MS = 40;
    /** Time-outs after which a pattern is disabled. */
    static final int MAX_TIMEOUTS = 3;
    /** Longest pattern text accepted from a rule file. */
    static final int MAX_PATTERN_LENGTH = 600;
    /** Longest text a pattern is run on; the rest of a long text is ignored. */
    static final int MAX_INPUT = 3000;

    private final Pattern pattern;
    private volatile int timeouts;

    private Rx(Pattern pattern) {
        this.pattern = pattern;
    }

    /** Compiles {@code source}; null when it is empty, too long or not a valid expression. */
    public static Rx compile(String source, boolean ignoreCase) {
        if (source == null) {
            return null;
        }
        String trimmed = source.trim();
        if (trimmed.isEmpty() || trimmed.length() > MAX_PATTERN_LENGTH || looksCatastrophic(trimmed)) {
            return null;
        }
        try {
            return new Rx(Pattern.compile(trimmed, ignoreCase ? Pattern.CASE_INSENSITIVE : 0));
        } catch (PatternSyntaxException | StackOverflowError e) {
            return null;
        }
    }

    /**
     * True when the pattern repeats a group without limit ({@code +}, {@code *}, {@code {n,}}) and that group itself
     * holds an unlimited repeat or a choice: the shapes that make a backtracking engine take exponential time.
     * Bounded repeats ({@code {3,7}}, {@code ?}) are fine. A conservative check, not a proof.
     */
    static boolean looksCatastrophic(String p) {
        java.util.ArrayDeque<boolean[]> groups = new java.util.ArrayDeque<>(); // per open group: {has unbounded repeat, has choice}
        boolean inClass = false;
        for (int i = 0; i < p.length(); i++) {
            char c = p.charAt(i);
            if (c == '\\') {
                i++;
                continue;
            }
            if (inClass) {
                inClass = c != ']';
                continue;
            }
            if (c == '[') {
                inClass = true;
            } else if (c == '(') {
                groups.push(new boolean[2]);
            } else if (c == '|' && !groups.isEmpty()) {
                groups.peek()[1] = true;
            } else if (c == ')' && !groups.isEmpty()) {
                boolean[] group = groups.pop();
                boolean repeatedWithoutLimit = unboundedQuantifierAt(p, i + 1);
                if (repeatedWithoutLimit && (group[0] || group[1])) {
                    return true;
                }
                if (!groups.isEmpty()) {
                    // what a group holds counts for the group around it as well
                    groups.peek()[0] |= group[0] || repeatedWithoutLimit;
                }
            } else if (!groups.isEmpty() && unboundedQuantifierAt(p, i) && i > 0) {
                groups.peek()[0] = true;
            }
        }
        return false;
    }

    /** True when a {@code +}, {@code *} or {@code {n,}} quantifier starts at {@code at}. */
    private static boolean unboundedQuantifierAt(String p, int at) {
        if (at >= p.length()) {
            return false;
        }
        char c = p.charAt(at);
        if (c == '+' || c == '*') {
            return true;
        }
        if (c == '{') {
            int close = p.indexOf('}', at);
            return close > at && p.substring(at + 1, close).matches("\\d+,");
        }
        return false;
    }

    public String source() {
        return pattern.pattern();
    }

    /** The first match in {@code text}, or null when there is none or the pattern ran out of time. */
    public Matcher find(CharSequence text) {
        if (timeouts >= MAX_TIMEOUTS || text == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(new Deadline(clip(text), System.nanoTime() + (BUDGET_MS * 1_000_000L)));
        try {
            return matcher.find() ? matcher : null;
        } catch (Deadline.Expired e) {
            timeouts++;
            XLog.i("rule pattern timed out (" + timeouts + "): " + shorten(pattern.pattern()));
            return null;
        } catch (RuntimeException | StackOverflowError e) {
            timeouts = MAX_TIMEOUTS;
            return null;
        }
    }

    /** Up to {@code limit} matches of the pattern in {@code text}, empty when it ran out of time. */
    public java.util.List<java.util.regex.MatchResult> findAll(CharSequence text, int limit) {
        java.util.List<java.util.regex.MatchResult> out = new java.util.ArrayList<>();
        if (timeouts >= MAX_TIMEOUTS || text == null) {
            return out;
        }
        Matcher matcher = pattern.matcher(new Deadline(clip(text), System.nanoTime() + (BUDGET_MS * 1_000_000L)));
        try {
            while (out.size() < limit && matcher.find()) {
                out.add(matcher.toMatchResult());
            }
        } catch (Deadline.Expired e) {
            timeouts++;
            XLog.i("rule pattern timed out (" + timeouts + "): " + shorten(pattern.pattern()));
            out.clear();
        } catch (RuntimeException | StackOverflowError e) {
            timeouts = MAX_TIMEOUTS;
            out.clear();
        }
        return out;
    }

    public boolean matches(CharSequence text) {
        return find(text) != null;
    }

    /** True when the pattern was switched off after repeated time-outs. */
    public boolean disabled() {
        return timeouts >= MAX_TIMEOUTS;
    }

    private static CharSequence clip(CharSequence text) {
        return text.length() > MAX_INPUT ? text.subSequence(0, MAX_INPUT) : text;
    }

    private static String shorten(String text) {
        return text.length() > 60 ? text.substring(0, 60) + "..." : text;
    }

    /** The text under match; throws once the deadline passed, which stops a runaway match from inside. */
    private static final class Deadline implements CharSequence {
        private final CharSequence text;
        private final long deadlineNanos;
        private int reads;

        Deadline(CharSequence text, long deadlineNanos) {
            this.text = text;
            this.deadlineNanos = deadlineNanos;
        }

        @Override
        public char charAt(int index) {
            // reading the clock is far slower than a character read, so only look at it now and then
            if ((++reads & 0x3FF) == 0 && System.nanoTime() > deadlineNanos) {
                throw new Expired();
            }
            return text.charAt(index);
        }

        @Override
        public int length() {
            return text.length();
        }

        @Override
        public CharSequence subSequence(int start, int end) {
            return new Deadline(text.subSequence(start, end), deadlineNanos);
        }

        @Override
        public String toString() {
            return text.toString();
        }

        /** Thrown from {@link #charAt} when the time is up. */
        static final class Expired extends RuntimeException {
            Expired() {
                super("regex budget exceeded", null, false, false);
            }
        }
    }
}
