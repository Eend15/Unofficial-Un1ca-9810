package dev.android.dynamicisland.island.window;

import static org.junit.Assert.*;
import android.widget.EditText;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class ReplyBarTest {
    @Test public void aFailedSendKeepsTextAndSelectionAndShowsAnError() {
        ReplyBar[] bar=new ReplyBar[1];
        bar[0]=new ReplyBar(RuntimeEnvironment.getApplication(),"Reply","Send",new ReplyBar.Listener() {
            public void onSend(CharSequence text) { assertEquals("unsent draft",text.toString());bar[0].showError("Could not send"); }
            public void onDismiss() { fail("a failed send is not a dismissal"); }
        });
        EditText field=ReflectionHelpers.getField(bar[0],"field");
        field.setText("unsent draft");field.setSelection(3);
        bar[0].getChildAt(1).performClick();
        assertEquals("unsent draft",field.getText().toString());
        assertEquals(3,field.getSelectionStart());
        assertEquals("Could not send",field.getError().toString());
    }
}
