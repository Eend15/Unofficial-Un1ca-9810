package dev.android.dynamicisland.island.detect;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Tells an ongoing call of a third-party app (voice chat, VoIP) from every other ongoing notification
 * by its wording. Follows LiveBridge's call mirror rules, with Korean wording added.
 */
public final class CallDetector {
    private CallDetector() {
    }

    /** Shorthand for the flag used by almost every pattern below. */
    private static final int I = Pattern.CASE_INSENSITIVE;
    private static final Pattern DURATION = Pattern.compile("(?<![\\d:+-])(?:\\d{1,2}:)?\\d{1,2}:\\d{2}(?!\\d)");
    private static final Pattern INCOMING = Pattern.compile(
            "(^|\\s)(incoming|ringing|수신|걸려\\s*오는|전화\\s*왔|전화가\\s*왔|벨\\s*소리)(\\s|$)", I);
    private static final Pattern DIALING = Pattern.compile(
            "^\\s*(calling|dialing|발신\\s*중|전화\\s*거는|연결\\s*중|통화\\s*연결\\s*중)\\b.*|(발신\\s*중|연결\\s*중)", I);
    private static final Pattern ANSWER_ACTION = Pattern.compile(
            "(answer|accept|decline|reject|받기|수락|응답|거절|수신\\s*거부)", I);
    private static final Pattern END_ACTION = Pattern.compile(
            "(^|\\s)(end|end\\s*call|hang\\s*up|hangup|disconnect|leave|통화\\s*종료|전화\\s*끊기|끊기|종료|나가기|연결\\s*해제|퇴장|보이스톡\\s*종료)(\\s|$)", I);
    private static final Pattern ACTIVE_TEXT = Pattern.compile(
            "((?:ongoing|active).{0,40}\\bcall\\b|call\\s+in\\s+progress|on\\s+call|in\\s+call|"
                    + "voice.{0,60}(?:connected)|통화\\s*중|진행\\s*중인\\s*통화|음성\\s*(?:채널|연결)|보이스톡|페이스톡)", I);
    private static final Pattern ENDED_TEXT = Pattern.compile(
            "(call\\s+(?:ended|finished|disconnected)|(?:missed|declined|rejected|completed)\\s+(?:voice\\s+|video\\s+)?call|"
                    + "통화\\s*(?:가\\s*)?(?:종료|끝)|부재중|놓친\\s*전화|거절된\\s*통화)", I);
    private static final Pattern CONTEXT = Pattern.compile(
            "(\\bcall\\b|\\bvoice\\s+(?:chat|channel|connection|connected)\\b|통화|전화|보이스톡|페이스톡|음성)", I);
    private static final Pattern DISCORD_VOICE = Pattern.compile(
            "(\\bvoice\\s+(?:connected|connection|channel)\\b|음성\\s*(?:채널|연결))", I);

    /** Phone / dialer apps whose calls the system call chip already handles. */
    public static final Set<String> NATIVE_PACKAGES = new HashSet<>(Arrays.asList(
            "com.samsung.android.incallui", "com.samsung.android.dialer", "com.samsung.android.app.telephonyui",
            "com.android.incallui", "com.android.dialer", "com.google.android.dialer", "com.google.android.apps.dialer",
            "com.android.server.telecom"));
    /** Discord and its release channels: their voice channels are shown like calls. */
    public static final Set<String> DISCORD_PACKAGES = new HashSet<>(Arrays.asList(
            "com.discord", "com.discord.alpha", "com.discord.beta", "com.discord.canary", "com.hammerandchisel.discord"));

    public static final class Verdict {
        /** Wall-clock start when the notification states it, else 0. */
        public final long explicitStartMillis;
        /** Time already elapsed according to the text ("12:34"), else -1. */
        public final long elapsedMillis;

        Verdict(long explicitStartMillis, long elapsedMillis) {
            this.explicitStartMillis = explicitStartMillis;
            this.elapsedMillis = elapsedMillis;
        }
    }

    /**
     * @param chronometerStart wall-clock start from a count-up chronometer, or 0
     * @return null when this is not an ongoing, connected call
     */
    public static Verdict classify(boolean ongoing, boolean categoryCall, boolean discordVoiceChannel, boolean discordPackage,
                            List<String> contentTexts, List<String> actionTexts, long chronometerStart) {
        if (!ongoing) {
            return null;
        }
        for (String t : contentTexts) {
            if (ENDED_TEXT.matcher(t).find()) {
                return null;
            }
        }
        for (String a : actionTexts) {
            if (ANSWER_ACTION.matcher(a).find()) {
                return null; // ringing: the stock call UI has the answer buttons
            }
        }
        for (String t : contentTexts) {
            if (INCOMING.matcher(t).find() || DIALING.matcher(t).find()) {
                return null;
            }
        }
        long elapsed = -1;
        if (chronometerStart <= 0) {
            for (String t : contentTexts) {
                Matcher m = DURATION.matcher(t);
                while (m.find()) {
                    long ms = parseClock(m.group());
                    if (ms > elapsed) {
                        elapsed = ms;
                    }
                }
            }
        }
        boolean explicitTime = chronometerStart > 0 || elapsed >= 0;
        boolean discordVoice = false;
        if (discordPackage) {
            boolean text = false;
            for (String t : contentTexts) {
                text |= DISCORD_VOICE.matcher(t).find();
            }
            boolean disconnect = false;
            for (String a : actionTexts) {
                disconnect |= END_ACTION.matcher(a).find();
            }
            discordVoice = (discordVoiceChannel || text) && (text || disconnect);
        }
        boolean endAction = false;
        for (String a : actionTexts) {
            endAction |= END_ACTION.matcher(a).find();
        }
        boolean activeText = false;
        boolean context = categoryCall || discordVoice;
        for (String t : contentTexts) {
            activeText |= ACTIVE_TEXT.matcher(t).find();
            context |= CONTEXT.matcher(t).find();
        }
        if (!context) {
            return null;
        }
        if (!categoryCall && !endAction && !discordVoice) {
            return null;
        }
        if (!explicitTime && !endAction && !activeText && !discordVoice) {
            return null;
        }
        return new Verdict(chronometerStart, elapsed);
    }

    /** Whether an action button (by its title) hangs up / leaves the call. */
    public static boolean isEndAction(CharSequence title) {
        return title != null && END_ACTION.matcher(title).find();
    }

    /** Whether an action button (by its title) answers or declines a ringing call. */
    public static boolean isAnswerAction(CharSequence title) {
        return title != null && ANSWER_ACTION.matcher(title).find();
    }

    /** "12:34" or "1:02:03" as milliseconds, -1 when it is not a valid clock. */
    static long parseClock(String value) {
        String[] parts = value.split(":");
        if (parts.length < 2 || parts.length > 3) {
            return -1;
        }
        long[] n = new long[parts.length];
        for (int i = 0; i < parts.length; i++) {
            try {
                n[i] = Long.parseLong(parts[i]);
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        long seconds;
        if (n.length == 3) {
            if (n[1] < 0 || n[1] > 59 || n[2] < 0 || n[2] > 59) {
                return -1;
            }
            seconds = n[0] * 3600 + n[1] * 60 + n[2];
        } else {
            if (n[1] < 0 || n[1] > 59) {
                return -1;
            }
            seconds = n[0] * 60 + n[1];
        }
        return Math.max(0, seconds) * 1000L;
    }
}
