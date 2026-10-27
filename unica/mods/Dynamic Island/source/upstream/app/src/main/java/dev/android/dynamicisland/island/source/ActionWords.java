package dev.android.dynamicisland.island.source;

import java.util.Locale;

/**
 * Classifies notification action buttons by their (localized) title: whether the button ends or
 * cancels something, or is the speaker / mute toggle of a call. Titles are matched as lower-case
 * substrings in English, Russian, Korean and Japanese, plus whole Turkish words.
 */
final class ActionWords {
    private static final String[] ENDING = {
            "stop", "cancel", "end", "decline", "hang", "delete", "dismiss", "reject",
            "стоп", "останов", "отмен", "заверш", "отклон", "сброс", "удал",
            "중지", "정지", "종료", "취소", "끊기", "거절", "거부", "삭제", "닫기", "해제", "그만",
            "停止", "終了", "キャンセル", "拒否", "削除"};
    /** Contain an {@link #ENDING} word but mean "pause" ("일시중지" holds "중지", "приостановить" holds "останов"). */
    private static final String[] PAUSING = {"pause", "일시", "приостан", "пауз", "一時"};
    private static final String[] SPEAKER = {"speaker", "динамик", "громк", "스피커", "확성기", "スピーカー"};
    private static final String[] MUTE = {"mute", "микрофон", "звук", "음소거", "소리 끄기", "마이크", "ミュート"};

    // Normalize Turkish I/İ separately: the phone's locale must not change English matching.
    private static final String[] TURKISH_ENDING = {
            "durdur", "iptal", "bitir", "sonlandir", "reddet", "sil", "aramayi kapat", "cagriyi kapat"};
    private static final String[] TURKISH_PAUSING = {"duraklat", "beklet", "beklemeye al"};
    private static final String[] TURKISH_SPEAKER = {"hoparlor"};
    private static final String[] TURKISH_MUTE = {
            "sessiz", "mikrofon", "sesi kapat", "sessize al", "sessizden cikar"};

    private ActionWords() {
    }

    /** True when the button should be drawn in the destructive colour. */
    static boolean isDestructive(CharSequence title) {
        if (title == null) {
            return false;
        }
        String text = lower(title);
        String turkish = turkishLower(title);
        if (mentionsAny(text, PAUSING) || mentionsWholeWord(turkish, TURKISH_PAUSING)) {
            return false;
        }
        if (mentionsWholeWord(turkish, TURKISH_ENDING)) {
            return true;
        }
        for (String word : ENDING) {
            boolean latin = word.charAt(0) < 0x80;
            // latin words must open a word: "end call" matches, "Send" and "Calendar" do not
            if (latin ? opensAWord(text, word) : text.contains(word)) {
                return true;
            }
        }
        return false;
    }

    static boolean isSpeaker(CharSequence title) {
        return title != null && (mentionsAny(lower(title), SPEAKER)
                || mentionsWholeWord(turkishLower(title), TURKISH_SPEAKER));
    }

    static boolean isMute(CharSequence title) {
        return title != null && (mentionsAny(lower(title), MUTE)
                || mentionsWholeWord(turkishLower(title), TURKISH_MUTE));
    }

    private static String turkishLower(CharSequence title) {
        return lower(title).replace("i\u0307", "i").replace('ı', 'i').replace('ğ', 'g')
                .replace('ü', 'u').replace('ş', 's').replace('ö', 'o').replace('ç', 'c');
    }

    private static boolean mentionsWholeWord(String text, String[] words) {
        for (String word : words) {
            int from = 0;
            int hit;
            while ((hit = text.indexOf(word, from)) >= 0) {
                int end = hit + word.length();
                if ((hit == 0 || !Character.isLetterOrDigit(text.charAt(hit - 1)))
                        && (end == text.length() || !Character.isLetterOrDigit(text.charAt(end)))) {
                    return true;
                }
                from = hit + 1;
            }
        }
        return false;
    }

    private static String lower(CharSequence title) {
        return title.toString().toLowerCase(Locale.ROOT);
    }

    private static boolean mentionsAny(String text, String[] words) {
        for (String word : words) {
            if (text.contains(word)) {
                return true;
            }
        }
        return false;
    }

    private static boolean opensAWord(String text, String word) {
        int from = 0;
        int hit;
        while ((hit = text.indexOf(word, from)) >= 0) {
            if (hit == 0 || !Character.isLetterOrDigit(text.charAt(hit - 1))) {
                return true;
            }
            from = hit + 1;
        }
        return false;
    }
}
