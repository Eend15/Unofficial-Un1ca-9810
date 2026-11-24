package dev.android.dynamicisland.island;

import android.app.RemoteInput;

/** Honors each remote input's text/choice/data contract before opening an editor or sending results. */
final class ReplyInputs {
    private ReplyInputs() { }
    static boolean hasFreeForm(RemoteInput[] inputs) {
        if (inputs != null) for (RemoteInput input : inputs) if (input.getAllowFreeFormInput()) return true;
        return false;
    }
    static boolean accepts(RemoteInput input, CharSequence text) {
        if (input.getAllowFreeFormInput()) return true;
        CharSequence[] choices = input.getChoices();
        if (choices != null && text != null) for (CharSequence choice : choices)
            if (choice != null && choice.toString().contentEquals(text)) return true;
        return false;
    }
}
