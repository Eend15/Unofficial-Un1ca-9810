package dev.android.dynamicisland.island.window;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.InputType;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * The text field for answering a message from the island: a dark rounded bar with a field and a send button. It lives
 * in its own focusable window below the card (the island window itself never takes focus, so the keyboard could not
 * attach to it). Main thread only.
 */
final class ReplyBar extends LinearLayout {
    /** What the bar reports. */
    public interface Listener {
        void onSend(CharSequence text);

        void onDismiss();
    }

    private static final int FILL = 0xF0202022;
    private static final int ACCENT = 0xFF0A84FF;

    private final EditText field;
    private final Listener listener;

    ReplyBar(Context context, CharSequence hint, CharSequence sendLabel, Listener listener) {
        super(context);
        this.listener = listener;
        float density = context.getResources().getDisplayMetrics().density;
        setOrientation(HORIZONTAL);
        setGravity(Gravity.CENTER_VERTICAL);
        GradientDrawable background = new GradientDrawable();
        background.setColor(FILL);
        background.setCornerRadius(density * 28.0f);
        setBackground(background);
        int pad = Math.round(density * 16.0f);
        setPadding(pad, Math.round(density * 6.0f), Math.round(density * 8.0f), Math.round(density * 6.0f));

        field = new EditText(context);
        field.setHint(hint);
        field.setHintTextColor(0x99FFFFFF);
        field.setTextColor(Color.WHITE);
        field.setTextSize(16.0f);
        field.setBackground(null);
        field.setMaxLines(4);
        field.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        field.setImeOptions(EditorInfo.IME_ACTION_SEND);
        field.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == EditorInfo.IME_ACTION_SEND) {
                send();
                return true;
            }
            return false;
        });
        addView(field, new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1.0f));

        TextView button = new TextView(context);
        button.setText(sendLabel);
        button.setTextColor(ACCENT);
        button.setTextSize(16.0f);
        button.setGravity(Gravity.CENTER);
        button.setPadding(pad, Math.round(density * 10.0f), pad, Math.round(density * 10.0f));
        button.setOnClickListener(v -> send());
        addView(button, new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
    }

    private void send() {
        CharSequence text = field.getText();
        if (text != null && text.toString().trim().length() > 0) {
            listener.onSend(text.toString().trim());
        }
    }

    /** Puts the cursor in the field and brings up the keyboard. */
    void focusField() {
        field.requestFocus();
        InputMethodManager imm = getContext().getSystemService(InputMethodManager.class);
        if (imm != null) {
            imm.showSoftInput(field, InputMethodManager.SHOW_IMPLICIT);
        }
    }

    @Override
    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        if (event.getKeyCode() == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_UP) {
            listener.onDismiss();
            return true;
        }
        return super.dispatchKeyEventPreIme(event);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == MotionEvent.ACTION_OUTSIDE) {
            listener.onDismiss();
            return true;
        }
        return super.onTouchEvent(event);
    }
}
