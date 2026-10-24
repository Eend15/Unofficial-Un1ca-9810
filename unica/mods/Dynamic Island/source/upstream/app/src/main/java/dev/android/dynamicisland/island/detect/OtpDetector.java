package dev.android.dynamicisland.island.detect;

import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import dev.android.dynamicisland.island.rules.Rx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Finds a verification / one-time code in the text of a notification. The approach (trigger words,
 * candidate patterns, scoring by distance to the trigger, penalties for phone numbers, prices and
 * order numbers) follows LiveBridge's OTP detector, with Korean wording added.
 */
public final class OtpDetector {
    private OtpDetector() {
    }

    private static final int MIN_DIGITS = 4;
    private static final int MAX_DIGITS = 8;
    /** Texts longer than this are held to the stricter reach below. */
    private static final int LONG_TEXT = 500;
    private static final int LONG_TEXT_REACH = 60;
    /** Most matches taken from one pattern of a rule file. */
    private static final int MAX_EXTRA_MATCHES = 24;

    // scoring: the higher the score, the more likely the candidate is the code
    /** Bonus for a number that the text itself introduces with a code word ("code is 482913"). */
    private static final int INTRODUCED_BONUS = 400;
    /** Closeness bonus to the nearest trigger word is this minus the distance in characters (never below 0). */
    private static final int CLOSENESS_RANGE = 220;
    /** A number not introduced by a code word must stand within this many characters of one. */
    private static final int MAX_TRIGGER_DISTANCE = 40;
    private static final int SEPARATED_BONUS = 12;
    /** Shorter codes get a small bonus per missing digit up to this length. */
    private static final int PREFERRED_LENGTH = 8;
    private static final int SHORTER_CODE_BONUS = 3;

    private static final String[] STRONG_TRIGGERS = {
            "인증번호", "인증 번호", "인증코드", "인증 코드", "확인코드", "확인 코드", "보안코드", "보안 코드",
            "일회용 비밀번호", "일회용비밀번호", "인증 비밀번호", "본인확인",
            "otp", "one-time password", "one time password", "verification", "verification code", "verify code",
            "code verification", "confirmation code", "confirm code", "authentication code", "authorization code",
            "security code", "sign in code", "signin code", "login verification code", "login code", "account code",
            "payment code", "passcode", "password", "2fa", "auth code", "sms code",
            "验证码", "驗證碼", "动态密码", "動態密碼", "安全码", "安全碼",
            "validation code", "인증기", "승인하려면", "코드를 입력", "인증 절차"};

    // Korean words need an explicit "not part of a longer word" check: 승인번호 (a card approval number)
    // must not count as the loose trigger 번호.
    private static final String KO_WORD_START = "(?<![가-힣a-zA-Z0-9])";
    // "code" is not a verification code when it is a postal, area, promo or similar code
    private static final String NOT_A_CODE_KIND = "(?<!postal )(?<!zip )(?<!area )(?<!country )(?<!promo )(?<!coupon )(?<!discount )"
            + "(?<!referral )(?<!invite )(?<!tracking )(?<!error )(?<!status )(?<!우편 )(?<!쿠폰 )(?<!할인 )(?<!추천인 )(?<!초대 )(?<!프로모션 )";
    private static final String TRIGGER_WORDS =
            "(?:" + NOT_A_CODE_KIND + "\\bcode\\b|\\botp\\b|\\bpasscode\\b|\\bpassword\\b|\\bpin\\b|" + KO_WORD_START + "코드|" + KO_WORD_START
                    + "번호|" + KO_WORD_START + "비밀번호|验证码|驗證碼|密码|密碼)";
    // phrases that are triggers on their own and so also lead straight to the code
    private static final String KO_TRIGGER_PHRASES = "인증\\s*번호|인증\\s*코드|확인\\s*코드|보안\\s*코드|일회용\\s*비밀번호|인증\\s*비밀번호";
    private static final Pattern LOOSE_TRIGGER =
            // a few non-digit characters may stand between the word and the number: "code is 482913", "Code is: 482913"
            Pattern.compile(TRIGGER_WORDS + "[^\\d\\n#]{0,12}?\\d(?:[\\s-]?\\d){3,7}(?![\\d*_])", Pattern.CASE_INSENSITIVE);

    private static final List<Pattern> CODE_PATTERNS = new ArrayList<>();

    static {
        CODE_PATTERNS.add(Pattern.compile("(?:" + TRIGGER_WORDS + "|" + KO_TRIGGER_PHRASES + ")[^\\d\\n|]{0,80}(\\d(?:[\\s-]?\\d){3,7})(?!\\d)", Pattern.CASE_INSENSITIVE));
        // standalone numbers: after a space or an opening bracket/quote, e.g. "[482913]"
        CODE_PATTERNS.add(Pattern.compile("(?<![^\\s\\[(<{\"'「『:>])(\\d{4,8})(?!\\d)"));
        CODE_PATTERNS.add(Pattern.compile("(?<![^\\s\\[(<{\"'「『:>])(\\d(?:[\\s-]?\\d){3,7})(?!\\d)"));
        CODE_PATTERNS.add(Pattern.compile("(?<!\\S)([A-Z0-9]{4,8})(?!\\w)"));
        // "G-482913": the digits follow a short letter prefix and a dash
        CODE_PATTERNS.add(Pattern.compile("(?<![A-Za-z0-9])[A-Za-z]{1,3}-(\\d{4,8})(?!\\d)"));
    }

    private static final Pattern MONEY = Pattern.compile(
            // whole words only: 노출금지 contains 출금, Europe contains eur
            "(₽|\\$|€|￥|¥|₩|루블|달러|유로|\\b(?:rub|usd|eur|price|total|amount)\\b|(?<=\\d)\\s*원|[만천]\\s*원|금액|잔액|(?<![가-힣])출금|(?<![가-힣])입금|(?<![가-힣])이체)");
    /** A currency written right against the number itself: "15000원", "₩ 15,000", "$12". */
    private static final Pattern MONEY_SUFFIX = Pattern.compile("^(?:원|₩|달러|\\$|€|usd|krw|won)", Pattern.CASE_INSENSITIVE);
    private static final Pattern MONEY_PREFIX = Pattern.compile("(?:₩|\\$|€|￥|¥|usd|krw)\\s?$", Pattern.CASE_INSENSITIVE);
    private static final Pattern DATE = Pattern.compile("(?:19|20)\\d{2}[-./]\\d{1,2}[-./]\\d{1,2}");
    private static final Pattern PHONE_SHAPE = Pattern.compile("(?:0\\d{1,2}|1[5-8]\\d{2})-\\d{3,4}(?:-\\d{4})?");
    private static final String[] ORDER_HINTS = {"주문", "배달", "order", "delivery", "영수증", "receipt", "invoice", "청구서", "거래 id", "transaction", "tracking"};
    /** Words that put a number in an address or a bank account, not in a code. */
    private static final Pattern ADDRESS = Pattern.compile(
            "(?:\\b(?:street|suite|avenue|road|zip|postal|floor|apt)\\b|계좌|카드번호|우편번호|주소)", Pattern.CASE_INSENSITIVE);
    private static final Pattern PHONE_MARKER = Pattern.compile(
            "(?:phone|mobile|telephone|tel\\.?|call|whatsapp|전화|휴대폰|핸드폰|연락|고객센터|대표번호|콜센터|문의|☎)",
            Pattern.CASE_INSENSITIVE);
    private static final Pattern AD_MARKER = Pattern.compile("[(\\[]\\s*광고\\s*[)\\]]");

    /** A detected code: digits only; {@link #display()} adds the grouping. */
    public static final class Match {
        public final String code;

        Match(String code) {
            this.code = code;
        }

        /** 482913 -> "482 913": easier to read and to type. */
        public String display() {
            int n = code.length();
            if (n == 6) {
                return code.substring(0, 3) + " " + code.substring(3);
            }
            if (n == 8) {
                return code.substring(0, 4) + " " + code.substring(4);
            }
            return code;
        }
    }

    /** A code candidate with its position in the text and its score. */
    private static final class Candidate {
        final String code;
        final int start;
        final int score;

        Candidate(String code, int start, int score) {
            this.code = code;
            this.start = start;
            this.score = score;
        }
    }

    /** The most likely verification code in the text, or null when it holds none (or is an advert). */
    public static Match detect(String combinedText) {
        if (combinedText == null || combinedText.trim().isEmpty()) {
            return null;
        }
        String text = combinedText;
        String lower = text.toLowerCase(Locale.ROOT);
        if (AD_MARKER.matcher(text).find()) {
            return null;
        }
        RuleDictionary rules = RuleStore.current();
        boolean strong = false;
        for (String trigger : STRONG_TRIGGERS) {
            if (lower.contains(trigger)) {
                strong = true;
                break;
            }
        }
        // words from the rule files (other languages, newly seen wordings) count like the built-in ones
        for (String trigger : rules.otpStrongTriggers) {
            if (!strong && lower.contains(trigger)) {
                strong = true;
            }
        }
        boolean loose = LOOSE_TRIGGER.matcher(lower).find()
                || (rules.otpLooseTriggerPattern != null && rules.otpLooseTriggerPattern.matches(lower));
        if (!strong && !loose) {
            return null;
        }
        if (!strong && looksLikeOrderContext(lower)) {
            return null;
        }

        List<int[]> triggerRanges = triggerRanges(lower, rules);
        Map<String, Candidate> candidates = new HashMap<>();
        // the built-in patterns first (index 0 is the "introduced by a code word" one), then the rule files' own
        List<MatchResult> found = new ArrayList<>();
        List<Integer> foundIndex = new ArrayList<>();
        for (int patternIndex = 0; patternIndex < CODE_PATTERNS.size(); patternIndex++) {
            Matcher matcher = CODE_PATTERNS.get(patternIndex).matcher(text);
            while (matcher.find()) {
                found.add(matcher.toMatchResult());
                foundIndex.add(patternIndex);
            }
        }
        for (Rx extra : rules.otpCodePatterns) {
            for (MatchResult result : extra.findAll(text, MAX_EXTRA_MATCHES)) {
                found.add(result);
                foundIndex.add(CODE_PATTERNS.size());
            }
        }
        for (int f = 0; f < found.size(); f++) {
            int patternIndex = foundIndex.get(f);
            MatchResult m = found.get(f);
            boolean grouped = m.groupCount() >= 1 && m.group(1) != null;
            String raw = grouped ? m.group(1) : m.group();
            int start = grouped ? m.start(1) : m.start();
            int matchStart = m.start();
            int end = grouped ? m.end(1) : m.end();
            StringBuilder digits = new StringBuilder();
            for (int i = 0; i < raw.length(); i++) {
                if (Character.isDigit(raw.charAt(i))) {
                    digits.append(raw.charAt(i));
                }
            }
            if (digits.length() < MIN_DIGITS || digits.length() > MAX_DIGITS) {
                continue;
            }
            if (!hasTokenBoundaries(text, start, end)) {
                continue;
            }
            // a number the text calls the code is only a price when a currency is written right on it;
            // any other number is a price when a money word is close by
            if (patternIndex == 0 ? attachedMoney(lower, start, end) : window(lower, start, end, 18, MONEY)) {
                continue;
            }
            if (dateOrPhone(text, start, end)) {
                continue;
            }
            if (patternIndex != 0 && window(lower, start, end, 24, ADDRESS)) {
                continue;
            }
            // in a long text (an e-mail, a channel post) a code stands right behind its word, not a sentence away
            if (patternIndex == 0 && text.length() > LONG_TEXT && start - matchStart > LONG_TEXT_REACH) {
                continue;
            }
            if (!strong && looksLikeOrderContext(around(lower, start, end, 24))) {
                continue;
            }
            Candidate c = new Candidate(digits.toString(), start, score(lower, raw, start, end, matchStart, patternIndex, triggerRanges));
            Candidate previous = candidates.get(c.code);
            if (previous == null || c.score > previous.score) {
                candidates.put(c.code, c);
            }
        }

        Candidate best = null;
        for (Candidate c : candidates.values()) {
            if (best == null || c.score > best.score || (c.score == best.score && c.start < best.start)) {
                best = c;
            }
        }
        if (best == null || best.score <= 0) {
            return null;
        }
        return new Match(best.code);
    }

    /** {start, last index} of every trigger word in the (lower-cased) text. */
    private static List<int[]> triggerRanges(String lower, RuleDictionary rules) {
        List<int[]> ranges = new ArrayList<>();
        addTriggerRanges(lower, STRONG_TRIGGERS, ranges);
        addTriggerRanges(lower, rules.otpStrongTriggers.toArray(new String[0]), ranges);
        if (rules.otpLooseTriggerPattern != null) {
            for (MatchResult m : rules.otpLooseTriggerPattern.findAll(lower, MAX_EXTRA_MATCHES)) {
                ranges.add(new int[]{m.start(), m.end() - 1});
            }
        }
        Matcher m = LOOSE_TRIGGER.matcher(lower);
        while (m.find()) {
            ranges.add(new int[]{m.start(), m.end() - 1});
        }
        return ranges;
    }

    private static void addTriggerRanges(String lower, String[] triggers, List<int[]> ranges) {
        for (String trigger : triggers) {
            int at = lower.indexOf(trigger);
            while (at >= 0) {
                ranges.add(new int[]{at, at + trigger.length() - 1});
                at = lower.indexOf(trigger, at + trigger.length());
            }
        }
    }

    /** Score of one candidate, or -1 when it must not be offered (far from any trigger, or a phone number). */
    private static int score(String lower, String raw, int start, int end, int matchStart, int patternIndex, List<int[]> triggers) {
        int score = patternIndex == 0 ? INTRODUCED_BONUS : 0;
        int nearest = Integer.MAX_VALUE;
        for (int[] r : triggers) {
            int d;
            if (end <= r[0]) {
                d = r[0] - end;
            } else if (start > r[1]) {
                d = start - r[1] - 1;
            } else {
                d = 0;
            }
            nearest = Math.min(nearest, d);
        }
        if (patternIndex != 0 && nearest > MAX_TRIGGER_DISTANCE) {
            return -1; // a lone number far from any code word is not a code
        }
        if (nearest != Integer.MAX_VALUE) {
            score += CLOSENESS_RANGE - Math.min(nearest, CLOSENESS_RANGE);
        }
        boolean separated = false;
        int digitCount = 0;
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if (c == '-' || Character.isWhitespace(c)) {
                separated = true;
            }
            if (Character.isDigit(c)) {
                digitCount++;
            }
        }
        if (separated) {
            score += SEPARATED_BONUS;
        }
        score += (PREFERRED_LENGTH - digitCount) * SHORTER_CODE_BONUS;
        if (likelyPhone(lower, start, end, matchStart, patternIndex)) {
            return -1; // never offer a phone number as a code
        }
        return score;
    }

    private static boolean likelyPhone(String lower, int start, int end, int matchStart, int patternIndex) {
        // a number reached from the trigger word is judged by what stands between the two only
        String context = patternIndex == 0 ? lower.substring(matchStart, start) : around(lower, start, end, 28);
        // "휴대폰 인증번호" names the kind of code, not a phone number
        context = context.replace("휴대폰 인증", "인증").replace("핸드폰 인증", "인증").replace("전화 인증", "인증").replace("휴대폰인증", "인증");
        boolean marker = PHONE_MARKER.matcher(context).find();
        boolean international = lower.substring(Math.max(0, start - 3), start).indexOf('+') >= 0;
        return marker || international;
    }

    private static boolean attachedMoney(String lower, int start, int end) {
        String after = lower.substring(end, Math.min(lower.length(), end + 4));
        String before = lower.substring(Math.max(0, start - 5), start);
        return MONEY_SUFFIX.matcher(after).find() || MONEY_PREFIX.matcher(before).find();
    }

    /** The whole number the candidate belongs to (digits with - . / between them) is a date or a phone number. */
    private static boolean dateOrPhone(String text, int start, int end) {
        int a = start;
        while (a > 0 && isNumberChar(text, a - 1)) {
            a--;
        }
        int b = end;
        while (b < text.length() && isNumberChar(text, b)) {
            b++;
        }
        String token = text.substring(a, b).replaceAll("^[-./]+|[-./]+$", "");
        return DATE.matcher(token).matches() || PHONE_SHAPE.matcher(token).matches();
    }

    private static boolean isNumberChar(String text, int i) {
        char c = text.charAt(i);
        if (Character.isDigit(c)) {
            return true;
        }
        // a separator only counts when a digit stands on both sides of it
        return (c == '-' || c == '.' || c == '/') && i > 0 && i + 1 < text.length()
                && Character.isDigit(text.charAt(i - 1)) && Character.isDigit(text.charAt(i + 1));
    }

    private static boolean looksLikeOrderContext(String lower) {
        for (String hint : ORDER_HINTS) {
            if (lower.contains(hint)) {
                return true;
            }
        }
        return false;
    }

    private static String around(String text, int start, int end, int radius) {
        return text.substring(Math.max(0, start - radius), Math.min(text.length(), end + radius));
    }

    private static boolean window(String text, int start, int end, int radius, Pattern p) {
        return p.matcher(around(text, start, end, radius)).find();
    }

    private static boolean hasTokenBoundaries(String text, int start, int end) {
        // Korean particles stick to the number ("123456입니다"), so only ASCII letters and digits count as part of it.
        // "0015_2" is a survey number, "3333**" a masked account number, "#14613" an issue number
        boolean leftOk = start == 0 || (!asciiAlnum(text.charAt(start - 1)) && text.charAt(start - 1) != '#' && text.charAt(start - 1) != '_');
        boolean rightOk = end >= text.length() || (!asciiAlnum(text.charAt(end)) && text.charAt(end) != '_' && text.charAt(end) != '*');
        return leftOk && rightOk;
    }

    private static boolean asciiAlnum(char c) {
        return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }
}
