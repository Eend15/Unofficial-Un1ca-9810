package dev.android.dynamicisland.island.detect;

import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * A percentage that only appears in the text of a notification ("Downloading update 73%") rather than
 * in its progress fields. Follows LiveBridge's text-progress rule: the number must have a progress word
 * within 80 characters and no discount / weather / battery style word.
 */
public final class TextProgress {
    private TextProgress() {
    }

    /** The share of a download that is done when the text says "a MB / b MB" next to a progress word; else -1. */
    private static int detectSizes(String text) {
        Matcher m = SIZES.matcher(text);
        while (m.find()) {
            double done = Double.parseDouble(m.group(1).replace(',', '.')) * unit(m.group(2));
            double total = Double.parseDouble(m.group(3).replace(',', '.')) * unit(m.group(4));
            if (total <= 0 || done > total) {
                continue;
            }
            String context = text.substring(Math.max(0, m.start() - WINDOW), Math.min(text.length(), m.end() + WINDOW)).toLowerCase(Locale.ROOT);
            if (!INCLUDE.matcher(context).find() || EXCLUDE.matcher(context).find()) {
                continue;
            }
            return (int) Math.round(100.0 * done / total);
        }
        return -1;
    }

    private static double unit(String prefix) {
        switch (prefix.toLowerCase(Locale.ROOT)) {
            case "k":
                return 1024.0;
            case "m":
                return 1024.0 * 1024.0;
            case "g":
                return 1024.0 * 1024.0 * 1024.0;
            case "t":
                return 1024.0 * 1024.0 * 1024.0 * 1024.0;
            default:
                return 1.0;
        }
    }

    private static final int WINDOW = 80;
    // "12.5%" / "42,0 %": the decimals belong to the number
    private static final Pattern PERCENT = Pattern.compile("(?<![\\d.,])(\\d{1,3}(?:[.,]\\d+)?)\\s*%");
    private static final Pattern INCLUDE = Pattern.compile(
            "(남음|완료|다운로드|다운중|업로드|업데이트|설치|처리|복사|전송|백업|복원|동기화|변환|압축|"
                    + "remaining|progress|completed|completing|downloading|uploading|updating|installing|sync(?:ing)?|"
                    + "processing|processed|render(?:ing)?|encoding|decoding|copying|transferring|restoring)");
    private static final Pattern EXCLUDE = Pattern.compile(
            "(할인|쿠폰|캐시백|보너스|적립|포인트|날씨|습도|강수|기온|배터리|충전|금리|이자|"
                    + "discount|promo|coupon|sale|cashback|off\\b|bonus|save|deal|special\\s+offer|limited\\s+time|"
                    + "humidity|weather|temperature|pressure|precip|commission|fee\\b|tax\\b|apr\\b|battery|charging)");

    /** "12.4 MB / 40 MB", "6.7G/15.6G": how much of how much is done. */
    private static final Pattern SIZES = Pattern.compile(
            "(?<![\\d.,])(\\d{1,6}(?:[.,]\\d+)?)\\s*([kmgt]?)i?b?\\s*/\\s*(\\d{1,6}(?:[.,]\\d+)?)\\s*([kmgt])i?b?(?![a-z])",
            Pattern.CASE_INSENSITIVE);

    /** @return 0..100, or -1 when the text carries no progress. */
    public static int detect(String text) {
        if (text == null || text.isEmpty()) {
            return -1;
        }
        int bySize = detectSizes(text);
        if (bySize >= 0) {
            return bySize;
        }
        String lower = text.toLowerCase(Locale.ROOT);
        RuleDictionary rules = RuleStore.current();
        Matcher m = PERCENT.matcher(text);
        while (m.find()) {
            int value;
            try {
                value = Math.round(Float.parseFloat(m.group(1).replace(',', '.')));
            } catch (NumberFormatException e) {
                continue;
            }
            if (value < 0 || value > 100) {
                continue;
            }
            String context = lower.substring(Math.max(0, m.start() - WINDOW), Math.min(lower.length(), m.end() + WINDOW));
            // the rule files add words (other languages, other wordings) to the built-in ones
            boolean included = INCLUDE.matcher(context).find()
                    || (rules.textProgressIncludeContextPattern != null && rules.textProgressIncludeContextPattern.matches(context));
            boolean excluded = EXCLUDE.matcher(context).find()
                    || (rules.textProgressExcludeContextPattern != null && rules.textProgressExcludeContextPattern.matches(context));
            if (!included || excluded) {
                continue;
            }
            return value;
        }
        return -1;
    }
}
