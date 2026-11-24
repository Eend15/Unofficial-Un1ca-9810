package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class StockPopupOwnershipTest {
    SharedPreferences preferences;
    boolean oldRecovery;
    public static final class Manager {
        int removals;
        boolean accepted;
        public Object getHeadsUpEntry(String key) { return accepted ? this : null; }
        public boolean removeNotification(String key,boolean immediately,String reason) { removals++; return true; }
    }
    Manager manager;
    @Before public void setup() {
        oldRecovery=ReflectionHelpers.getStaticField(ModuleSettings.class,"experimentalRecovery");
        preferences=RuntimeEnvironment.getApplication().getSharedPreferences("stock-popup-ownership",0);
        preferences.edit().clear().putBoolean(ModuleSettings.KEY_SYSTEM_POPUP_STYLE,true).commit();ModuleSettings.configurePreview(preferences);
        manager=new Manager();ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",manager);
    }
    @After public void clear() {
        ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",null);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"experimentalRecovery",oldRecovery);
        preferences.edit().clear().commit();ModuleSettings.configurePreview(preferences);
    }
    void hook(String name,XC_MethodHook.MethodHookParam param) throws Exception {
        var method=HeadsUpHooks.class.getDeclaredMethod(name,XC_MethodHook.MethodHookParam.class);method.setAccessible(true);method.invoke(null,param);
    }
    @Test public void keepsBothPositiveAndNegativeNativePinDecisionsAndDoesNotRemoveBannersInRecovery() throws Exception {
        for(boolean nativeDecision:new boolean[]{false,true}) {
            var param=ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);param.thisObject=manager;param.args=new Object[]{null};param.setResult(nativeDecision);
            hook("afterPinDecision",param);assertEquals(nativeDecision,param.getResult());
        }
        ReflectionHelpers.setStaticField(ModuleSettings.class,"experimentalRecovery",true);
        HeadsUpHooks.dismissStock("message");assertEquals(0,manager.removals);
        var param=ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);param.thisObject=manager;param.args=new Object[]{new Object(),"PinnedBySystem","native"};
        hook("beforeSetPinned",param);assertEquals("PinnedBySystem",param.args[1]);
    }
    @Test public void briefPopupIsExcludedOnlyForAnAcceptedNativeBannerEvenBeforeRowBinding() throws Exception {
        for(boolean accepted:new boolean[]{false,true}) {
            manager.accepted=accepted;
            var param=ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);param.thisObject=new Object();param.args=new Object[]{"message"};param.setResult(false);
            hook("afterEdgeRowPinned",param);assertEquals(accepted,param.getResult());
        }
    }
}
