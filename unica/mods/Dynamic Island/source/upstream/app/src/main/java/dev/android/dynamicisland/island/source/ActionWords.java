package dev.android.dynamicisland.island.source;

import java.util.Locale;

/**
 * Classifies notification action buttons by their (localized) title: whether the button ends or
 * cancels something, or is the speaker / mute toggle of a call. Titles are matched as lower-case
 * substrings in English, Russian, Korean and Japanese, the languages the module is used in.
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

    private ActionWords() {
    }

    /** True when the button should be drawn in the destructive colour. */
    static boolean isDestructive(CharSequence title) {
        if (title == null) {
            return false;
        }
        String text = lower(title);
        if (mentionsAny(text, PAUSING)) {
            return false;
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
        return mentionsAny(lower(title), SPEAKER);
    }

    static boolean isMute(CharSequence title) {
        return mentionsAny(lower(title), MUTE);
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
