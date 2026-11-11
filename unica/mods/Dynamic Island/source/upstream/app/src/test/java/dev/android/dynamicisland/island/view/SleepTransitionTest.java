package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import static org.robolectric.util.ReflectionHelpers.ClassParameter.from;

import android.content.Context;
import android.graphics.*;
import android.os.*;
import android.view.*;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.time.Duration;
import java.util.List;
import java.util.Locale;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

/** Exercise real placement timers, the liquid gate, input, and cleanup across power-signal orders. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35, qualifiers="en-rUS-w600dp-h360dp-mdpi")
public class SleepTransitionTest {
    private static final class Fixture implements AutoCloseable {
        final Context context=RuntimeEnvironment.getApplication();
        final IslandView view;
        final android.app.Activity activity;
        final Object placement;
        final IslandItem music=new IslandItem("music"),timer=new IslandItem("timer");
        Fixture() throws Exception { this(false); }
        Fixture(boolean surfaceFade) throws Exception {
            org.robolectric.shadows.ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
            org.robolectric.shadows.ShadowChoreographer.setPaused(true);
            var prefs=context.getSharedPreferences("sleep-transition-test",0);
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW,false).commit();
            ModuleSettings.configurePreview(prefs);
            IslandHost host=surfaceFade ? (IslandHost)java.lang.reflect.Proxy.newProxyInstance(getClass().getClassLoader(),
                    new Class<?>[]{IslandHost.class},(proxy,method,args)->switch(method.getName()) {
                        case "onShadeFade" -> true;
                        case "hasMinimized" -> false;
                        default -> null;
                    }) : IslandHost.NONE;
            placement=ReflectionHelpers.callConstructor(Class.forName("dev.android.dynamicisland.island.IslandPlacement"),
                    from(Context.class,context),from(Handler.class,new Handler(Looper.getMainLooper())),
                    from(ClassLoader.class,getClass().getClassLoader()),from(IslandHost.class,host),
                    from(IslandWindow.Listener.class,new IslandWindow.Listener(){
                        public void onWindowConfigurationChanged() { }
                        public void onWindowInsetsChanged() { }
                    }),from(AudioLevels.class,new AudioLevels()));
            view=new IslandView(context,host);
            activity=Robolectric.buildActivity(android.app.Activity.class).setup().get();
            activity.setContentView(view);
            ReflectionHelpers.setField(placement,"view",view);
            view.setGeometry(600,300,44,22,false);view.layout(0,0,600,360);
            music.kind=IslandItem.Kind.MEDIA;music.isMedia=true;music.playing=true;
            music.title="Night Drive";music.subtitle="Studio Session";music.trailing=IslandItem.Trailing.WAVEFORM;
            music.icon=GlyphIcon.of(GlyphIcon.Kind.HEADPHONES);music.accent=0xffa59cff;
            timer.kind=IslandItem.Kind.TIMER;timer.title="Timer";timer.trailing=IslandItem.Trailing.CHRONOMETER;
            timer.chronoCountDown=true;timer.chronoBase=System.currentTimeMillis()+180000;
            timer.icon=GlyphIcon.of(GlyphIcon.Kind.BELL);timer.accent=0xffffbd58;
            view.setItems(List.of(music,timer));
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(300));
            // Like the other manual frame drivers, admit the view's delayed split once it is due.
            Director director=ReflectionHelpers.getField(view,"director");
            Runnable split=ReflectionHelpers.getField(director,"startSplit");split.run();
            step(16,100);
        }
        void flag(String method,boolean value) { ReflectionHelpers.callInstanceMethod(placement,method,from(boolean.class,value)); }
        void bar(int value) { ReflectionHelpers.callInstanceMethod(placement,"setBarState",from(int.class,value)); }
        void finish() { ReflectionHelpers.callInstanceMethod(placement,"finishSleeping"); }
        void step(int ms,int count) {
            for(int i=0;i<count;i++) {
                ShadowSystemClock.advanceBy(Duration.ofMillis(ms));
                view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
                Choreographer.getInstance().removeFrameCallback(view);
            }
        }
        RectF pill() { RectF r=new RectF();view.computeMain(r);return r; }
        public void close() {
            Choreographer.getInstance().removeFrameCallback(view);
            new Handler(Looper.getMainLooper()).removeCallbacks(ReflectionHelpers.getField(placement,"revealTimer"));
            activity.finish();
            var prefs=context.getSharedPreferences("sleep-transition-test",0);
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }

    @Test public void shrinksBeforeFadingThenStopsInAodAt60And120Hz() throws Exception {
        for(int ms:new int[]{16,8})try(Fixture f=new Fixture()) {
            float width=f.pill().width();
            f.flag("setSleeping",true);
            assertEquals("sleep does not snap geometry on the signal",width,f.pill().width(),.01f);
            assertFalse(f.view.canPeek());assertFalse(f.view.needsAudio());
            Region input=new Region();f.view.getTouchRegion(input);assertTrue(input.isEmpty());
            f.bar(1);f.flag("setDozing",true);
            ReflectionHelpers.callInstanceMethod(f.placement,"setStatusBarWindowState",from(int.class,2));
            f.step(ms,48/ms);
            assertTrue("liquid geometry contracts while still opaque",f.pill().width()<width*.9f);
            assertTrue(f.view.visibleAlpha()>.95f);
            f.finish();f.step(ms,1);
            assertTrue(f.view.isFullyHidden());
            assertFalse(f.view.materialBackdropRegion(new Rect()));
            assertFalse((boolean)ReflectionHelpers.getField(f.view,"frameScheduled"));
            SecondTicker ticker=ReflectionHelpers.getField(f.view,"ticker");
            assertFalse((boolean)ReflectionHelpers.getField(ticker,"posted"));
            // Waking on keyguard is still hidden, even if a shade-close signal arrives.
            f.flag("setSleeping",false);f.flag("setDozing",false);
            ReflectionHelpers.callInstanceMethod(f.placement,"setStatusBarWindowState",from(int.class,0));
            f.view.setShadeFraction(1);f.view.setShadeFraction(0);f.step(ms,60);
            assertEquals(0,f.view.visibleAlpha(),.001f);
            f.bar(0);
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(199));
            assertTrue("unlock delay retains the closed gate",f.view.isFullyHidden());
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2));
            f.step(ms,160);
            assertTrue(f.view.visibleAlpha()>.99f);assertFalse(f.view.isExpanded());
        }
    }

    @Test public void interruptedSleepReversesAndShadeCannotReopenASleepingPill() throws Exception {
        try(Fixture f=new Fixture(true)) {
            for(int repeat=0;repeat<12;repeat++) {
                f.flag("setSleeping",true);f.step(16,3);
                float width=f.pill().width();
                f.flag("setSleeping",true);
                assertEquals("duplicate power callbacks do not restart the transition",width,f.pill().width(),.001f);
                f.flag("setSleeping",false);
                assertEquals("a cancelled sleep reverses without a size jump",width,f.pill().width(),.001f);
                f.step(16,90);assertTrue(f.view.visibleAlpha()>.99f);
            }
            assertTrue(f.view.peek(f.music,60000));f.step(16,80);
            f.flag("setSleeping",true);assertFalse(f.view.isExpanded());
            f.view.setShadeFraction(1);f.view.setShadeFraction(0);f.step(16,70);
            assertTrue(f.view.isFullyHidden());assertTrue("no half-folded cards survive AOD",f.view.cards().isEmpty());
            f.finish();f.flag("setSleeping",false);
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(201));f.step(16,100);
            assertFalse(f.view.isExpanded());assertTrue(f.view.cards().isEmpty());assertTrue(f.view.visibleAlpha()>.99f);
        }
    }

    @Test public void lateDozeFallbackAndNoLockWakeRecoverWithoutStaleReveal() throws Exception {
        try(Fixture f=new Fixture()) {
            f.bar(1);f.step(16,100); // Cold/late signal: keyguard already hid the overlay.
            f.flag("setDozing",true);f.step(16,80);
            assertTrue(f.view.isFullyHidden());
            f.bar(0);f.flag("setDozing",false);
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(201));f.step(16,100);
            assertTrue(f.view.visibleAlpha()>.99f);
            f.flag("setSleeping",true);f.finish();
            f.flag("setSleeping",false); // A no-lock device stays in bar state 0 throughout.
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(100));
            f.flag("setSleeping",true); // Relock before the pending reveal.
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(200));f.step(16,90);
            assertTrue("an old reveal cannot reopen a sleeping display",f.view.isFullyHidden());
            f.finish();f.flag("setSleeping",false);
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(201));f.step(16,100);
            assertTrue(f.view.visibleAlpha()>.99f);
            f.flag("setSleeping",true);f.flag("setDozing",true);f.finish();
            f.flag("setDozing",false); // OEM missed its early waking callback, but AOD did exit.
            Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(201));f.step(16,100);
            assertTrue("doze exit recovers even if an early wake callback is missed",f.view.visibleAlpha()>.99f);
        }
    }

    @Test @Category(RenderCapture.class) public void renderPowerTransitionWhenRequested() throws Exception {
        if(!RenderCapture.enabled())return;
        try(Fixture f=new Fixture()) {
            for(int frame=0;frame<150;frame++) {
                if(frame==24)f.flag("setSleeping",true);
                if(frame==29){f.bar(1);f.flag("setDozing",true);}
                if(frame==39)f.finish();
                if(frame==72){f.flag("setSleeping",false);f.flag("setDozing",false);f.bar(0);}
                if(frame==79)Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(201));
                f.step(33,1);
                Bitmap b=Bitmap.createBitmap(600,210,Bitmap.Config.ARGB_8888);Canvas c=new Canvas(b);
                c.drawColor(0xff273149);
                Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xffeeeefa);p.setTextSize(19);
                c.save();c.translate(0,34);f.view.draw(c);c.restore();
                c.drawText(frame<24?"Awake":frame<39?"Going to sleep":frame<72?"AOD":frame<79?"Unlock delay":"Returning",24,178,p);
                RenderCapture.write(b,new File("build/render/sleep-transition",String.format(Locale.ROOT,"frame%03d.png",frame)));
                b.recycle();
            }
        }
    }

    @Test public void aShadeCloseThatWasNeverReportedIsForgottenWhenTheScreenGoesOff() throws Exception {
        try(Fixture f=new Fixture()) {
            f.view.setShadeFraction(0.9f);
            Object scene=ReflectionHelpers.getField(f.view,"scene");
            assertTrue("pulled shade: the pill is gone",ReflectionHelpers.getField(scene,"shadeGone"));
            assertTrue(f.view.shadeNeedsWatching());
            f.flag("setSleeping",true);
            assertFalse("System UI closed the shade with the screen",ReflectionHelpers.getField(scene,"shadeGone"));
            assertFalse(f.view.shadeNeedsWatching());
            f.flag("setSleeping",false);
            assertFalse("and the pill is not held back by it after the wake",ReflectionHelpers.getField(scene,"shadeGone"));
        }
    }
}
