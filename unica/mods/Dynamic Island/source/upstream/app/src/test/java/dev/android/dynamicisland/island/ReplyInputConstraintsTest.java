package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.Intent;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class ReplyInputConstraintsTest {
    @Test public void choiceOnlyRepliesCannotOpenTheFreeFormEditorOrSendArbitraryText() {
        Context app=RuntimeEnvironment.getApplication();
        var action=new IslandItem.Action("Reply",null,PendingIntent.getBroadcast(app,0,new Intent("choice.reply"),PendingIntent.FLAG_MUTABLE),null,false);
        action.remoteInputs=new RemoteInput[]{new RemoteInput.Builder("answer").setAllowFreeFormInput(false).setChoices(new CharSequence[]{"Yes","No"}).build()};
        var controller=ReflectionHelpers.callConstructor(IslandController.class,ReflectionHelpers.ClassParameter.from(Context.class,app),
                ReflectionHelpers.ClassParameter.from(ClassLoader.class,getClass().getClassLoader()));
        assertFalse((Boolean)ReflectionHelpers.callInstanceMethod(controller,"startReply",ReflectionHelpers.ClassParameter.from(IslandItem.class,new IslandItem("test")),
                ReflectionHelpers.ClassParameter.from(IslandItem.Action.class,action)));
        var launcher=new ItemLauncher(app,new Haptics(app),()->null);
        assertFalse(launcher.sendReply(action,"arbitrary text"));assertTrue(launcher.sendReply(action,"Yes"));
        action.remoteInputs=new RemoteInput[]{new RemoteInput.Builder("text").build()};assertTrue(launcher.sendReply(action,"ordinary reply"));
    }
    @Test public void dataOnlyInputsDoNotReceiveTextMeantForAnIndependentFreeFormField() {
        Context app=RuntimeEnvironment.getApplication();
        var data=new RemoteInput.Builder("image").setAllowFreeFormInput(false).setAllowDataType("image/png",true).build();
        assertFalse(ReplyInputs.accepts(data,"not an image"));
        assertFalse(ReplyInputs.hasFreeForm(new RemoteInput[]{data}));
    }
}
