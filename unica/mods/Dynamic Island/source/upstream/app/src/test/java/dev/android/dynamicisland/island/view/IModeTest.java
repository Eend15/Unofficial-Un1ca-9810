package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.*;
import android.os.SystemClock;
import android.view.*;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.time.Duration;
import java.util.*;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowChoreographer;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="en-rUS-w440dp-h400dp-mdpi")
public class IModeTest {
    private static final class Fixture implements AutoCloseable {
        final Context context=RuntimeEnvironment.getApplication();
        final SharedPreferences prefs=context.getSharedPreferences("imode-test",0);
        final Activity activity;
        final org.robolectric.android.controller.ActivityController<Activity> controller;
        final IslandView view;
        final Scene scene;
        final List<IslandItem> items=new ArrayList<>();
        final List<String> closed=new ArrayList<>();
        Fixture(int count) {
            ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
            ShadowChoreographer.setPaused(true);
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_I_MODE,true)
                    .putBoolean(ModuleSettings.KEY_AMBIENT_GLOW,false).commit();
            ModuleSettings.configurePreview(prefs);
            IslandHost host=(IslandHost)java.lang.reflect.Proxy.newProxyInstance(getClass().getClassLoader(),
                    new Class<?>[]{IslandHost.class},(proxy,method,args)->switch(method.getName()) {
                        case "onPeekClosed" -> { closed.add((String)args[0]); yield null; }
                        case "hasMinimized", "onShadeFade" -> false;
                        default -> null;
                    });
            view=new IslandView(context,host);
            scene=ReflectionHelpers.getField(view,"scene");
            controller=Robolectric.buildActivity(Activity.class).setup();activity=controller.get();activity.setContentView(view);
            view.setGeometry(440,220,30,22,false);view.layout(0,0,440,400);
            for(int i=0;i<count;i++) items.add(item("item"+i,i));
            view.setItems(items);step(16,80);
        }
        void step(int ms,int frames) {
            for(int i=0;i<frames;i++) {
                ShadowSystemClock.advanceBy(Duration.ofMillis(ms));
                view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
                Choreographer.getInstance().removeFrameCallback(view);
            }
        }
        void event(int action,float x,float y) {
            long now=SystemClock.uptimeMillis();MotionEvent e=MotionEvent.obtain(now,now,action,x,y,0);
            view.onTouchEvent(e);e.recycle();
        }
        /** A swipe straight up of {@code distance} px that takes {@code ms} ms, with the timestamps a finger would give. */
        void swipeUp(float x,float y,float distance,int ms) {
            long down=SystemClock.uptimeMillis();int steps=8;
            send(MotionEvent.ACTION_DOWN,down,down,x,y);
            for(int i=1;i<=steps;i++) send(MotionEvent.ACTION_MOVE,down,down+ms*i/steps,x,y-distance*i/steps);
            send(MotionEvent.ACTION_UP,down,down+ms+1,x,y-distance);
        }
        private void send(int action,long down,long at,float x,float y) {
            MotionEvent e=MotionEvent.obtain(down,at,action,x,y,0);view.onTouchEvent(e);e.recycle();
        }
        void tap(RectF r) { event(MotionEvent.ACTION_DOWN,r.centerX(),r.centerY());event(MotionEvent.ACTION_UP,r.centerX(),r.centerY()); }
        Card active() { for(Card c:scene.cards) if(!c.leaving)return c;return null; }
        RectF bounds(Card c) { RectF r=new RectF();view.computeCard(c,r);return r; }
        void assertSingle(String key) {
            assertEquals(key,scene.iMode.selectedKey());
            assertEquals(1,scene.cards.stream().filter(c->!c.leaving).count());
            assertEquals(key,active().item.key);
        }
        public void close() {
            Choreographer.getInstance().removeFrameCallback(view);activity.finish();
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }
    private static IslandItem item(String key,int index) {
        IslandItem it=new IslandItem(key);it.title=index==0?"Stopwatch":index==1?"Navigation":"Night Drive";
        it.subtitle=index==0?"Focus session":index==1?"Turn left in 200 m":"Studio Session";
        it.icon=GlyphIcon.of(index==0?GlyphIcon.Kind.BELL:index==1?GlyphIcon.Kind.LOCATION:GlyphIcon.Kind.HEADPHONES);
        it.accent=index==0?0xff608cff:index==1?0xffa6d9ff:0xffed6e96;
        it.trailing=IslandItem.Trailing.TEXT;it.trailingText=index==0?"00:55":index==1?"200 m":"Playing";
        if(index==0) {
            it.kind=IslandItem.Kind.TIMER;
            IslandItem.Action pause=new IslandItem.Action("Pause",null,null,()->{},false);pause.glyph=dev.android.dynamicisland.island.graphics.Glyphs.PAUSE;
            IslandItem.Action lap=new IslandItem.Action("Lap",null,null,()->{},false);lap.glyph=6;
            it.actions.add(lap);it.actions.add(pause);
        } else if(index==1) {
            it.kind=IslandItem.Kind.NAVIGATION;it.progress=.35f;
        } else if(index==2) {
            it.kind=IslandItem.Kind.MEDIA;it.isMedia=true;it.playing=true;
            it.mediaDuration=255000;it.mediaPosition=107000;it.mediaPositionUpdateTime=SystemClock.elapsedRealtime();
        }
        return it;
    }

    /** Observe the final drawable transform, rather than asserting the scale formula used by iMode. */
    private static final class AspectProbe extends android.graphics.drawable.Drawable {
        final List<Float> ratios=new ArrayList<>();
        final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
        AspectProbe() { paint.setColor(0xffff375f); }
        @Override public void draw(Canvas canvas) {
            Matrix matrix=new Matrix();canvas.getMatrix(matrix);float[] values=new float[9];matrix.getValues(values);
            float x=(float)Math.hypot(values[Matrix.MSCALE_X],values[Matrix.MSKEW_Y]);
            float y=(float)Math.hypot(values[Matrix.MSKEW_X],values[Matrix.MSCALE_Y]);
            ratios.add(getBounds().width()*x/(getBounds().height()*y));
            canvas.drawRect(getBounds(),paint);
        }
        @Override public int getIntrinsicWidth() { return 32; }
        @Override public int getIntrinsicHeight() { return 32; }
        @Override public void setAlpha(int alpha) { paint.setAlpha(alpha); }
        @Override public void setColorFilter(ColorFilter filter) { paint.setColorFilter(filter); }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
    }

    @Test public void widerCapsulesAndEveryTransitionFrameKeepArtworkAndIconsSquare() {
        try(Fixture f=new Fixture(3)) {
            AspectProbe probe=new AspectProbe();
            f.items.get(0).icon=probe;f.items.get(0).iconIsImage=true;
            f.view.setItems(f.items);f.step(16,80);
            Bitmap frame=Bitmap.createBitmap(440,400,Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(frame);
            f.view.draw(canvas);
            assertFalse(probe.ratios.isEmpty());
            for(float ratio:probe.ratios) assertEquals("a wide compact body must not widen its icon",1,ratio,.001f);
            probe.ratios.clear();
            f.scene.iMode.open("item0",true);
            for(int i=0;i<90;i++) {
                if(i==12) f.scene.iMode.open("item1",true);
                if(i==16) f.scene.iMode.open("item0",true);
                if(i==50) f.view.collapse();
                f.step(16,1);
                for(Card c:f.scene.cards) f.view.drawCard(canvas,c,IslandView.now());
                f.view.draw(canvas);
            }
            assertTrue(probe.ratios.size()>30);
            for(float ratio:probe.ratios) assertEquals("opening, folding and reversal preserve image aspect",1,ratio,.001f);
            frame.recycle();
        }
    }

    @Test public void bubbleTapUnfoldsFromItsOwnSurfaceAndRearrangesTheOtherActivities() {
        try(Fixture f=new Fixture(3)) {
            RectF bubble=new RectF();f.scene.iMode.bubbleBounds(bubble);
            f.tap(bubble);f.assertSingle("item1");
            RectF start=f.bounds(f.active());
            assertEquals(bubble.centerX(),start.centerX(),.01f);assertEquals(bubble.width(),start.width(),.01f);
            assertEquals(bubble.centerY(),start.centerY(),.01f);assertEquals(bubble.height(),start.height(),.01f);
            f.step(16,20);
            assertTrue(f.bounds(f.active()).width()>400);
            assertEquals(List.of("item0","item2"),f.scene.iMode.visibleItems().stream().map(i->i.key).toList());
        }
    }

    @Test public void compactWidthFollowsContentAcrossScreenSizesAndPressHandsOffWithoutASnap() {
        try(Fixture f=new Fixture(3)) {
            RectF phone=new RectF();f.view.computeMain(phone);
            f.view.setGeometry(880,440,30,22,true);f.step(16,70);
            RectF tablet=new RectF();f.view.computeMain(tablet);
            assertEquals("a larger display must not force empty capsule space",phone.width(),tablet.width(),.5f);
            f.view.setGeometry(440,220,30,22,false);f.step(16,70);
            f.view.computeMain(phone);
            f.event(MotionEvent.ACTION_DOWN,phone.centerX(),phone.centerY());f.step(16,4);
            RectF pressed=new RectF();f.view.computeMain(pressed);
            assertTrue(pressed.width()<phone.width());
            assertEquals(pressed.width()/phone.width(),pressed.height()/phone.height(),.001f);
            f.event(MotionEvent.ACTION_UP,phone.centerX(),phone.centerY());
            RectF start=f.bounds(f.active());
            assertEquals(pressed.centerX(),start.centerX(),.001f);assertEquals(pressed.centerY(),start.centerY(),.001f);
            assertEquals(pressed.width(),start.width(),.001f);assertEquals(pressed.height(),start.height(),.001f);
            f.step(16,65);Card card=f.active();f.view.collapse();f.step(16,19);
            assertEquals("the returning pill resolves by about 300ms",0,card.handoff.compactBlur(IslandView.now()),.001f);
        }
    }

    @Test public void nativeActivityPlanesStayStableWhileIncomingAndOutgoingSurfacesOverlap() {
        try(Fixture f=new Fixture(3)) {
            f.scene.iMode.open("item1",true);f.step(16,65);Card outgoing=f.active();
            f.scene.iMode.open("item2",true);Card incoming=f.active();
            assertSame("the small arriving music bubble starts above the open navigation card",incoming,f.scene.cards.get(0));
            for(int i=0;i<22;i++) {
                f.step(16,1);
                assertSame("media stays above the departing generic navigation surface",incoming,f.scene.cards.get(0));
            }
            f.step(16,60);assertEquals(1,f.scene.cards.size());
            f.scene.iMode.open("item0",true);Card timer=f.active();
            for(int i=0;i<14;i++) { f.step(16,1);assertSame(timer,f.scene.cards.get(0)); }
            f.scene.iMode.open("item2",true);
            assertSame("a departing timer keeps its plane above the arriving music card",timer,f.scene.cards.get(0));
        }
    }

    @Test public void compactHaloTravelsWithTheSurfaceInsteadOfWaitingForTheCardToBeRemoved() {
        try(Fixture f=new Fixture(1)) {
            f.prefs.edit().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW,true)
                    .putBoolean(ModuleSettings.KEY_GLOW_MUSIC_ONLY,false).putBoolean(ModuleSettings.KEY_GLOW_ALBUM,false)
                    .putInt(ModuleSettings.KEY_GLOW_COLOUR,0xffeb52ad).putInt(ModuleSettings.KEY_GLOW_STRENGTH,100)
                    .putInt(ModuleSettings.KEY_GLOW_MOTION,0).commit();
            ModuleSettings.configurePreview(f.prefs);f.step(16,100);
            f.scene.iMode.open("item0",true);
            assertTrue("the first unfolding frame retains the compact halo",haloPixels(f)>0);
            f.step(16,70);assertEquals("a full card does not acquire an oversized pill halo",0,haloPixels(f));
            f.view.collapse();f.step(16,8);
            assertFalse("the returning surface still exists",f.scene.cards.isEmpty());
            assertTrue("the halo is already present before the native card slot is released",haloPixels(f)>0);
            f.step(16,70);assertTrue(f.scene.cards.isEmpty());assertTrue(haloPixels(f)>0);
        }
    }
    private static int haloPixels(Fixture f) {
        Bitmap image=Bitmap.createBitmap(440,400,Bitmap.Config.ARGB_8888);f.view.draw(new Canvas(image));
        int[] pixels=new int[440*400];image.getPixels(pixels,0,440,0,0,440,400);image.recycle();int count=0;
        for(int colour:pixels) if(Color.alpha(colour)>3 && Color.red(colour)>Color.green(colour)+20) count++;
        return count;
    }

    @Test public void aHorizontalDragPreviewsTheNeighbourAndReleaseContinuesFromTheFingerPosition() {
        try(Fixture f=new Fixture(8)) {
            f.scene.iMode.open("item0",true);f.step(16,70);
            Card old=f.active();RectF start=f.bounds(old);
            f.event(MotionEvent.ACTION_DOWN,start.centerX(),start.centerY());
            f.event(MotionEvent.ACTION_MOVE,start.centerX()-90,start.centerY());
            RectF dragged=f.bounds(old);
            assertEquals("the page follows the finger without the stack's rubber offset",start.left-90,dragged.left,.01f);
            Card neighbour=f.scene.cards.stream().filter(c->c.iModePreview).findFirst().orElseThrow();
            assertTrue("a neighbouring full-size card is already entering",f.bounds(neighbour).left<440);
            assertTrue("the expanded card's foreground blurs during the swipe",StackPainter.contentBlurAmount(old,IslandView.now(),1)>0);
            RectF preview=f.bounds(neighbour);
            f.event(MotionEvent.ACTION_UP,start.centerX()-90,start.centerY());
            f.assertSingle("item1");assertEquals(dragged,f.bounds(old));assertEquals(preview,f.bounds(neighbour));
            f.step(16,60);assertEquals(1,f.scene.cards.size());assertEquals(start.left,f.bounds(f.active()).left,.01f);
            f.scene.iMode.dragPage(-20);Card current=f.active();RectF small=f.bounds(current);
            f.scene.iMode.finishPage(0);f.assertSingle("item1");assertEquals(small,f.bounds(current));
            f.step(16,60);assertEquals(1,f.scene.cards.size());assertEquals(0,current.dx.value(),.001f);
            f.scene.iMode.dragPage(-120);f.scene.iMode.finishPage(1000);f.assertSingle("item1");
            f.step(16,60);assertEquals(1,f.scene.cards.size());
            RectF settled=f.bounds(f.active());
            f.event(MotionEvent.ACTION_DOWN,settled.centerX(),settled.centerY());
            f.event(MotionEvent.ACTION_MOVE,settled.centerX()-90,settled.centerY());
            Card cancelledPreview=f.scene.cards.stream().filter(c->c.iModePreview).findFirst().orElseThrow();
            float pageGap=cancelledPreview.dx.value()-f.active().dx.value();
            f.event(MotionEvent.ACTION_CANCEL,settled.centerX()-90,settled.centerY());
            assertEquals("system cancellation returns the neighbour offscreen rather than on top of the current page",
                    pageGap,cancelledPreview.dx.target(),.01f);
            f.step(16,60);f.assertSingle("item1");assertEquals(1,f.scene.cards.size());
        }
    }

    @Test public void aSharedVectorIconRemainsVisibleWhenTheBubbleBecomesTheMainPill() {
        try(Fixture f=new Fixture(3)) {
            f.items.get(1).icon=f.context.getDrawable(dev.android.dynamicisland.R.drawable.ic_battery_pill_39);
            f.view.setItems(f.items);f.step(16,80);
            f.scene.iMode.next(1);f.step(16,15);
            Bitmap moving=capture(f,"");
            float early=leadingBrightness(f,moving);moving.recycle();
            f.step(16,50);
            Bitmap settled=capture(f,"");
            float late=leadingBrightness(f,settled);settled.recycle();
            assertTrue("the icon resolves with its text instead of waiting for the tiny bubble crossfade to finish: "+early+" / "+late,
                    early>late*.35f);
        }
    }
    private static float leadingBrightness(Fixture f,Bitmap bitmap) {
        RectF main=new RectF();f.scene.iMode.mainBounds(main);
        float sum=0;
        for(int y=(int)(main.centerY()-f.view.leadSize/2);y<main.centerY()+f.view.leadSize/2;y++)
            for(int x=(int)(main.left+f.view.padding);x<main.left+f.view.padding+f.view.leadSize;x++) {
                int pixel=bitmap.getPixel(x,y);sum+=Color.red(pixel)+Color.green(pixel)+Color.blue(pixel);
            }
        return sum;
    }

    @Test public void compactSwipesFollowTheFingerCommitOrCancelAndSurviveMetadataUpdates() {
        try(Fixture f=new Fixture(8)) {
            RectF start=new RectF();f.scene.iMode.mainBounds(start);
            f.event(MotionEvent.ACTION_DOWN,start.centerX(),start.centerY());
            f.event(MotionEvent.ACTION_MOVE,start.centerX()-50,start.centerY());
            assertTrue(f.scene.iMode.hasCompactDrag());
            f.items.get(0).subtitle="Refreshed";f.view.setItems(f.items);
            assertTrue("ordinary updates do not restart the gesture",f.scene.iMode.hasCompactDrag());
            RectF dragged=new RectF();f.scene.iMode.mainBounds(dragged);
            assertTrue("the capsule body follows the finger as well as its contents",dragged.centerX()<start.centerX()-3);
            assertTrue("the outline gently deforms under drag",dragged.height()<start.height());
            f.event(MotionEvent.ACTION_UP,start.centerX()-50,start.centerY());
            RectF released=new RectF();f.scene.iMode.mainBounds(released);
            assertEquals("release continues from the finger position",dragged,released);
            f.step(16,70);f.scene.iMode.mainBounds(released);
            assertEquals("item1",f.scene.iMode.hit(released.centerX(),released.centerY(),0));
            f.event(MotionEvent.ACTION_DOWN,released.centerX(),released.centerY());
            f.event(MotionEvent.ACTION_MOVE,released.centerX()-50,released.centerY());
            f.event(MotionEvent.ACTION_CANCEL,released.centerX()-50,released.centerY());
            f.step(16,70);f.scene.iMode.mainBounds(released);
            assertEquals("system cancellation keeps the current item","item1",f.scene.iMode.hit(released.centerX(),released.centerY(),0));
            Set<String> reachable=new HashSet<>();
            for(int i=0;i<8;i++) {
                f.scene.iMode.mainBounds(released);
                reachable.add(f.scene.iMode.hit(released.centerX(),released.centerY(),0));
                f.scene.iMode.next(1);f.step(16,70);
            }
            assertEquals(8,reachable.size());assertSame("display paging does not change notification priority",f.items.get(0),f.scene.primary);
            f.scene.iMode.dragCompact(-55);f.scene.iMode.finishCompactPage(-1000);f.step(16,3);
            f.scene.iMode.finishCompactInteraction();f.scene.iMode.mainBounds(released);
            f.scene.iMode.open(f.scene.iMode.hit(released.centerX(),released.centerY(),0),true);
            assertEquals(Mode.EXPANDED,f.scene.mode);assertRectClose(released,f.bounds(f.active()));
        }
    }

    private static void assertRectClose(RectF a,RectF b) {
        assertEquals(a.left,b.left,.001f);assertEquals(a.top,b.top,.001f);
        assertEquals(a.right,b.right,.001f);assertEquals(a.bottom,b.bottom,.001f);
    }

    @Test public void newAndDepartingCapsulesGrowAndShrinkInPlaceAndCanReverseWithoutSnapping() {
        try(Fixture f=new Fixture(1)) {
            IslandItem extra=item("arrival",1);f.items.add(extra);f.view.setItems(f.items);
            RectF first=new RectF(),grown=new RectF();f.scene.iMode.bubbleBounds(first);
            f.step(16,6);f.scene.iMode.bubbleBounds(grown);
            assertTrue("a new surface grows rather than appearing at full size",grown.height()>first.height()+3);
            f.step(16,70);
            Map<String,IMode.Node> nodes=ReflectionHelpers.getField(f.scene.iMode,"nodes");
            IMode.Node node=nodes.get("arrival");RectF before=new RectF();node.bounds(before);
            f.items.remove(extra);f.view.setItems(f.items);f.step(16,6);
            RectF departing=new RectF();node.bounds(departing);
            assertTrue(departing.height()<before.height()-3);
            assertEquals("a withdrawal retreats at its own origin",before.centerX(),departing.centerX(),.01f);
            assertTrue(node.alpha.value()>0 && node.alpha.value()<1);
            f.items.add(extra);f.view.setItems(f.items);RectF reversed=new RectF();node.bounds(reversed);
            assertRectClose(departing,reversed);
            f.step(16,90);assertEquals(before.height(),node.h.value(),.01f);assertEquals(1,node.presence.value(),.001f);
            float opacity=f.view.visibleAlpha();f.view.setItems(List.of());assertEquals(opacity,f.view.visibleAlpha(),.001f);
            f.step(16,6);assertTrue("the last surface also has an exit tail",f.view.visibleAlpha()>0);
            f.step(16,100);assertTrue(f.view.isFullyHidden());assertTrue(nodes.isEmpty());
        }
    }

    @Test public void swipeUpHidesAllActivitiesUntilTheCameraHoleIsPulledDown() {
        try(Fixture f=new Fixture(6)) {
            RectF main=new RectF();f.scene.iMode.mainBounds(main);
            f.event(MotionEvent.ACTION_DOWN,main.centerX(),main.centerY());
            f.event(MotionEvent.ACTION_MOVE,main.centerX(),main.centerY()-48);
            f.event(MotionEvent.ACTION_UP,main.centerX(),main.centerY()-48);
            assertTrue(f.scene.iMode.hiddenByGesture());assertEquals(6,f.scene.items.size());
            assertFalse(f.view.canPeek());assertFalse(f.view.peek(item("banner",8),1000));
            f.step(16,90);assertTrue(f.view.isFullyHidden());
            Region region=new Region();f.view.getTouchRegion(region);
            assertTrue("only the hole neighbourhood remains touchable",region.contains(220,30));
            assertFalse(region.contains(40,100));assertTrue(f.view.iModeOwnsTouch(220,30));
            f.items.add(item("added-while-hidden",7));f.view.setItems(f.items);f.step(16,60);
            assertEquals(Mode.HIDDEN,f.scene.mode);assertTrue(f.view.isFullyHidden());
            f.view.setSleeping(true);f.view.finishSleeping();f.view.getTouchRegion(region);assertTrue(region.isEmpty());
            f.view.setSleeping(false);f.step(16,80);assertTrue(f.scene.iMode.hiddenByGesture());
            f.event(MotionEvent.ACTION_DOWN,220,30);f.event(MotionEvent.ACTION_MOVE,220,50);f.event(MotionEvent.ACTION_UP,220,50);
            assertFalse(f.scene.iMode.hiddenByGesture());assertEquals(Mode.COMPACT,f.scene.mode);
            f.step(16,80);assertFalse(f.view.isFullyHidden());assertEquals(7,f.scene.iMode.count());
            f.scene.iMode.open("item0",true);f.step(16,80);RectF card=f.bounds(f.active());
            f.event(MotionEvent.ACTION_DOWN,card.centerX(),card.centerY());
            f.event(MotionEvent.ACTION_MOVE,card.centerX(),card.centerY()-48);
            f.event(MotionEvent.ACTION_UP,card.centerX(),card.centerY()-48);
            f.step(16,90);
            assertFalse("an open card folds back on a swipe up, it does not hide the island",f.scene.iMode.hiddenByGesture());
            assertEquals(Mode.COMPACT,f.scene.mode);assertEquals(7,f.scene.items.size());
            f.scene.iMode.mainBounds(main);
            f.event(MotionEvent.ACTION_DOWN,main.centerX(),main.centerY());
            f.event(MotionEvent.ACTION_MOVE,main.centerX(),main.centerY()-48);
            f.event(MotionEvent.ACTION_UP,main.centerX(),main.centerY()-48);
            f.step(16,90);assertTrue("a swipe up on the small pill hides it",f.scene.iMode.hiddenByGesture());
            assertTrue(f.scene.cards.isEmpty());assertEquals(7,f.scene.items.size());
        }
    }

    @Test public void darkBackgroundOutlineIsSampledDuringTheWholeMorphAndChangesContinuously() {
        try(Fixture f=new Fixture(3)) {
            f.controller.visible();f.view.layout(0,0,440,400);
            f.view.setPillBackgroundLuma(1f);f.step(16,80);assertEquals(0,f.scene.pillOutlineOpacity(),.001f);
            f.scene.iMode.open("item0",true);
            Rect stable=new Rect();assertTrue("sampling starts before the card has finished opening",f.view.pillBackgroundSamplingRegion(stable));
            f.view.setPillBackgroundLuma(0f);f.step(16,3);
            assertTrue("the dark-background rim is visible while moving",f.scene.pillOutlineOpacity()>.1f);
            assertTrue("contrast changes fade rather than switching",f.scene.pillOutlineOpacity()<.99f);
            for(int i=0;i<20;i++) {
                Rect sample=new Rect();assertTrue(f.view.pillBackgroundSamplingRegion(sample));
                assertEquals("the compositor listener is not re-registered for each moving frame",stable,sample);f.step(16,1);
            }
            f.view.collapse();assertTrue(f.view.pillBackgroundSamplingRegion(stable));
            for(int i=0;i<25;i++) {
                Rect sample=new Rect();assertTrue(f.view.pillBackgroundSamplingRegion(sample));assertEquals(stable,sample);f.step(16,1);
                assertTrue(f.scene.pillOutlineOpacity()>.99f);
            }
            f.prefs.edit().putInt(ModuleSettings.KEY_PILL_OUTLINE,2).commit();ModuleSettings.configurePreview(f.prefs);
            assertEquals("the user's never-show-outline option remains respected",0,f.scene.pillOutlineOpacity(),0);
        }
    }

    @Test public void automaticRimStaysOnTheMovingExteriorInClassicAndFrostedMaterials() {
        for(int material:new int[]{ModuleSettings.MATERIAL_CLASSIC,ModuleSettings.MATERIAL_FROSTED}) try(Fixture f=new Fixture(1)) {
            f.prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,material).commit();ModuleSettings.configurePreview(f.prefs);
            f.view.setPillBackgroundLuma(0f);f.step(16,80);
            f.scene.iMode.open("item0",true);Card card=f.active();
            assertTrue("the first morph frame must retain the compact exterior rim; material="+material,
                    exteriorAutomaticRimEnergy(f,card)>500);
            if(material==ModuleSettings.MATERIAL_FROSTED)
                assertNotNull("the frosted regression must use the actual GPU material",ReflectionHelpers.getField(card.material,"shader"));
            f.step(16,6);
            assertTrue("the material renderer must not swallow the automatic rim during unfolding; material="+material,
                    exteriorAutomaticRimEnergy(f,card)>200);
            f.step(16,80);f.view.collapse();f.step(16,12);
            assertTrue(f.scene.cards.contains(card));
            assertTrue("the rim must already exist before the moving card is replaced by the compact node; material="+material,
                    exteriorAutomaticRimEnergy(f,card)>500);
            f.step(16,80);f.view.setPillBackgroundLuma(1f);f.step(16,80);f.scene.iMode.open("item0",true);
            assertEquals("automatic contrast still omits the pill rim on a bright background; material="+material,
                    0,exteriorAutomaticRimEnergy(f,f.active()));
        }
    }
    private static long exteriorAutomaticRimEnergy(Fixture f,Card card) {
        RectF bounds=f.bounds(card);
        f.prefs.edit().putInt(ModuleSettings.KEY_PILL_OUTLINE,ModuleSettings.PILL_OUTLINE_AUTO).commit();ModuleSettings.configurePreview(f.prefs);
        Bitmap automatic=capture(f,"");
        f.prefs.edit().putInt(ModuleSettings.KEY_PILL_OUTLINE,2).commit();ModuleSettings.configurePreview(f.prefs);
        Bitmap none=capture(f,"");
        long energy=0;
        for(int y=Math.max(0,(int)bounds.top-2);y<Math.min(330,(int)Math.ceil(bounds.bottom)+2);y++)
            for(int x=Math.max(0,(int)bounds.left-2);x<Math.min(440,(int)Math.ceil(bounds.right)+2);x++)
                if(!bounds.contains(x+.5f,y+.5f)) energy+=Math.max(0,Color.red(automatic.getPixel(x,y))-Color.red(none.getPixel(x,y)));
        automatic.recycle();none.recycle();
        f.prefs.edit().putInt(ModuleSettings.KEY_PILL_OUTLINE,ModuleSettings.PILL_OUTLINE_AUTO).commit();ModuleSettings.configurePreview(f.prefs);
        return energy;
    }

    @Test public void outlineSamplingIsReadyBeforeAnArrivalAndBeforeCameraHoleRestore() {
        try(Fixture f=new Fixture(0)) {
            f.controller.visible();f.view.layout(0,0,440,400);
            Rect standby=new Rect();assertTrue("an empty iMotion row still prewarms automatic contrast",f.view.pillBackgroundSamplingRegion(standby));
            f.view.setPillBackgroundLuma(1f);assertEquals(0,f.scene.pillOutlineOpacity(),.001f);
            f.items.add(item("arrival",0));f.view.setItems(f.items);
            Rect arriving=new Rect();assertTrue(f.view.pillBackgroundSamplingRegion(arriving));
            assertEquals("an arrival does not restart sampling at another width",standby,arriving);
            f.step(16,80);f.scene.iMode.hideByGesture();f.step(16,80);
            f.view.setPillBackgroundLuma(0f);
            assertEquals("contrast can settle while invisible instead of waiting for a future animation",1,f.scene.pillOutlineOpacity(),.001f);
            f.scene.iMode.restoreByGesture();assertEquals(1,f.scene.pillOutlineOpacity(),.001f);
            f.step(16,2);assertEquals("the restoring surface already has its dark-background rim",1,f.scene.pillOutlineOpacity(),.001f);
        }
    }

    @Test public void quickPanelCollectsTheSecondaryPillAtTheCameraHoleBeforeItFades() {
        try(Fixture f=new Fixture(2)) {
            Shapes shapes=ReflectionHelpers.getField(f.view,"shapes");RectF main=new RectF(),bubble=new RectF();
            f.view.computeMain(main);shapes.bubble(main,bubble);float originalDistance=bubble.centerX()-220;
            f.view.setShadeFraction(1);float last=originalDistance;boolean gathered=false;
            for(int i=0;i<45;i++) {
                f.step(8,1);f.view.computeMain(main);shapes.bubble(main,bubble);
                float distance=Math.abs(bubble.centerX()-220);
                assertTrue("the secondary surface travels inward rather than becoming a stationary dot",distance<=last+.01f);
                assertEquals("the small pill stays circular",bubble.width(),bubble.height(),.01f);
                if(f.scene.shadeAlpha()>.1f && distance<originalDistance*.35f) gathered=true;
                last=distance;
            }
            assertTrue("gathering is visible before the opacity gate closes",gathered);
            f.view.setShadeFraction(0);f.step(16,80);f.view.computeMain(main);shapes.bubble(main,bubble);
            assertEquals(originalDistance,bubble.centerX()-220,.1f);
        }
    }

    @Test public void panelSwipesCoordinateTheHeaderAndPreserveItsGeometryAtCommitAndTakeover() {
        for(int count:new int[]{2,5}) try(Fixture f=new Fixture(count)) {
            f.scene.iMode.open("item0",true);f.step(16,80);Card outgoing=f.active();RectF card=f.bounds(outgoing);
            f.event(MotionEvent.ACTION_DOWN,card.centerX(),card.centerY());
            f.event(MotionEvent.ACTION_MOVE,card.centerX()-140,card.centerY());
            Object header=ReflectionHelpers.getField(f.scene.iMode,"compactPage");assertNotNull("the header previews the same swipe",header);
            assertTrue((boolean)ReflectionHelpers.getField(header,"header"));
            RectF before=new RectF(),after=new RectF();f.scene.iMode.mainBounds(before);
            f.event(MotionEvent.ACTION_UP,card.centerX()-140,card.centerY());f.scene.iMode.mainBounds(after);
            assertRectClose(before,after);f.assertSingle("item1");
            if(count==2) {
                RectF bubble=new RectF();f.scene.iMode.bubbleBounds(bubble);
                assertTrue("one remaining activity does not invent a third bubble",bubble.isEmpty());
            }
            boolean transferred=false;
            for(int i=0;i<160;i++) {
                Object previous=ReflectionHelpers.getField(f.scene.iMode,"compactPage");f.scene.iMode.mainBounds(before);
                f.step(8,1);
                if(previous!=null && ReflectionHelpers.getField(f.scene.iMode,"compactPage")==null) {
                    f.scene.iMode.mainBounds(after);
                    assertEquals("the header takeover does not restart slot motion",before.centerX(),after.centerX(),.5f);
                    assertEquals(before.width(),after.width(),.5f);transferred=true;break;
                }
            }
            assertTrue(transferred);f.step(16,80);assertEquals(1,f.scene.cards.size());
            f.scene.iMode.mainBounds(after);assertEquals("item0",f.scene.iMode.hit(after.centerX(),after.centerY(),0));
            f.scene.iMode.dragPage(-20);f.scene.iMode.cancelPage();f.step(16,80);
            f.assertSingle("item1");f.scene.iMode.mainBounds(after);assertEquals("item0",f.scene.iMode.hit(after.centerX(),after.centerY(),0));
        }
    }

    @Test public void theLastFrostedBubbleFrameIsCircularBeforeItsNativeSurfaceIsReleased() {
        try(Fixture f=new Fixture(2)) {
            f.prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED)
                    .putInt(ModuleSettings.KEY_PILL_OUTLINE,2).commit();ModuleSettings.configurePreview(f.prefs);
            f.scene.iMode.open("item1",true);f.step(16,80);Card card=f.active();f.view.collapse();
            boolean measured=false;
            for(int i=0;i<90 && f.scene.cards.contains(card);i++) {
                f.step(8,1);RectF r=f.bounds(card);
                if(!f.scene.cards.contains(card) || r.width()>31.5f || r.height()>31.5f) continue;
                RenderNode node=new RenderNode("last native bubble");node.setPosition(0,0,440,180);
                Canvas canvas=node.beginRecording();f.view.drawCard(canvas,card,IslandView.now());node.endRecording();
                Bitmap hardware=ReflectionHelpers.callStaticMethod(HardwareRenderer.class,"createHardwareBitmap",
                        ReflectionHelpers.ClassParameter.from(RenderNode.class,node),
                        ReflectionHelpers.ClassParameter.from(int.class,440),ReflectionHelpers.ClassParameter.from(int.class,180));
                Bitmap bitmap=hardware.copy(Bitmap.Config.ARGB_8888,false);hardware.recycle();node.discardDisplayList();
                float radius=Math.min(r.width(),r.height())/2;int bulging=0;
                for(int y=(int)r.top;y<r.bottom;y++) for(int x=(int)r.left;x<r.right;x++) {
                    float qx=Math.abs(x+.5f-r.centerX())-r.width()/2+radius;
                    float qy=Math.abs(y+.5f-r.centerY())-r.height()/2+radius;
                    float distance=(float)Math.hypot(Math.max(qx,0),Math.max(qy,0))+Math.min(Math.max(qx,qy),0)-radius;
                    if(distance>.8f && Color.alpha(bitmap.getPixel(x,y))>160) bulging++;
                }
                assertEquals("the final material mask must not bulge into a squircle",0,bulging);bitmap.recycle();measured=true;break;
            }
            assertTrue("the test observed a small native frame before cleanup",measured);
        }
    }

    @Test public void switchingAndReversingReuseMovingSurfacesWithoutSnapping() {
        try(Fixture f=new Fixture(3)) {
            f.scene.iMode.open("item0",true);f.step(16,30);
            Card first=f.active();RectF before=f.bounds(first);
            f.scene.iMode.open("item1",true);
            assertTrue(first.leaving);assertEquals(before,f.bounds(first));f.assertSingle("item1");
            f.step(16,5);RectF moving=f.bounds(first);
            float velocity=first.w.velocity();
            f.scene.iMode.open("item0",true);
            assertSame(first,f.active());assertEquals(moving,f.bounds(first));
            assertEquals(velocity,first.w.velocity(),.01f);
            f.step(16,70);assertEquals(1,f.scene.cards.size());
            for(int i=0;i<40;i++) { f.scene.iMode.next(1);f.step(8,2);assertTrue(f.scene.cards.size()<=3); }
            f.step(16,100);assertEquals(1,f.scene.cards.size());
        }
    }

    @Test public void everyActivityIncludingMoreThanFourAndMinimizedSourcesIsReachable() {
        try(Fixture f=new Fixture(9)) {
            IslandItem minimized=item("minimized",9);
            f.view.setItems(f.items,IslandView.HINT_NONE,List.of(f.items.get(0),minimized));
            assertEquals(10,f.scene.iMode.count());
            f.scene.iMode.open("item0",true);f.step(16,60);
            Set<String> visited=new HashSet<>();
            for(int i=0;i<10;i++) {
                visited.add(f.active().item.key);
                RectF card=f.bounds(f.active());
                f.event(MotionEvent.ACTION_DOWN,card.centerX(),card.centerY());
                f.event(MotionEvent.ACTION_MOVE,card.centerX()-90,card.centerY());
                f.event(MotionEvent.ACTION_UP,card.centerX()-90,card.centerY());
                f.step(16,50);
                assertEquals(2,f.scene.iMode.visibleItems().size());
                f.assertSingle(f.active().item.key);
            }
            assertEquals(10,visited.size());assertTrue(visited.contains("minimized"));
        }
    }

    @Test public void refreshesKeepSelectionAndWithdrawalsDoNotLeaveAnEmptyCard() {
        try(Fixture f=new Fixture(6)) {
            f.scene.iMode.open("item4",true);f.step(16,30);
            Collections.reverse(f.items);f.view.setItems(f.items);f.assertSingle("item4");
            f.items.removeIf(i->i.key.equals("item4"));f.view.setItems(f.items);
            assertNotEquals("item4",f.active().item.key);f.step(16,60);
            assertEquals(1,f.scene.cards.size());
            IslandItem popup=f.items.get(2);f.view.peek(popup,5000);f.step(16,40);
            f.scene.iMode.open(f.items.get(1).key,true);
            assertEquals(List.of(popup.key),f.closed);assertFalse(f.scene.peekOpen);
            f.view.setItems(List.of());f.step(16,100);
            assertFalse(f.view.isExpanded());assertTrue(f.scene.cards.isEmpty());assertEquals(Mode.HIDDEN,f.scene.mode);
        }
    }

    @Test public void shadeSleepAndLiveSettingChangesReleaseTheAlternatePresentation() {
        try(Fixture f=new Fixture(5)) {
            f.scene.iMode.open("item2",true);f.step(16,6);
            f.view.setShadeFraction(1);f.step(16,80);assertFalse(f.view.isExpanded());
            f.view.setShadeFraction(0);f.step(16,80);
            f.scene.iMode.open("item3",true);f.step(16,3);
            f.view.setSleeping(true);f.view.finishSleeping();
            assertTrue(f.scene.cards.isEmpty());Region r=new Region();f.view.getTouchRegion(r);assertTrue(r.isEmpty());
            f.view.setSleeping(false);f.step(16,80);
            f.scene.iMode.open("item0",true);f.step(16,10);
            f.prefs.edit().putBoolean(ModuleSettings.KEY_I_MODE,false).commit();ModuleSettings.configurePreview(f.prefs);
            f.view.setItems(f.items);assertNull(f.scene.iMode);assertFalse(f.view.isExpanded());
            Director director=ReflectionHelpers.getField(f.view,"director");director.expandFromPill();
            assertEquals("normal mode still opens its existing stack",4,f.scene.cards.stream().filter(c->!c.leaving).count());
            f.step(16,80);RectF normal=f.bounds(f.active());
            f.event(MotionEvent.ACTION_DOWN,normal.centerX(),normal.centerY());
            f.event(MotionEvent.ACTION_MOVE,normal.centerX(),normal.centerY()-48);
            f.event(MotionEvent.ACTION_UP,normal.centerX(),normal.centerY()-48);
            assertEquals("normal mode still collapses instead of hiding all activities",Mode.COMPACT,f.scene.mode);
            f.prefs.edit().putBoolean(ModuleSettings.KEY_I_MODE,true).commit();ModuleSettings.configurePreview(f.prefs);
            f.view.setItems(f.items);assertNotNull(f.scene.iMode);assertTrue(f.scene.cards.isEmpty());
        }
    }

    @Test public void customRemoteViewsKeepNativeButtonsAndStillAllowHorizontalActivitySwitching() throws Exception {
        try(Fixture f=new Fixture(5)) {
            android.widget.FrameLayout layer=(android.widget.FrameLayout)ReflectionHelpers.callConstructor(
                    Class.forName("dev.android.dynamicisland.island.window.ActivityRemoteLayer"),
                    ReflectionHelpers.ClassParameter.from(Context.class,f.context),
                    ReflectionHelpers.ClassParameter.from(IslandView.class,f.view));
            android.widget.FrameLayout root=new android.widget.FrameLayout(f.context);
            f.activity.setContentView(root);root.addView(f.view);root.addView(layer);f.view.setRemoteLayer(layer);
            f.view.layout(0,0,440,400);
            IslandItem custom=f.items.get(0);
            custom.remoteView=new android.widget.RemoteViews("android",android.R.layout.simple_list_item_1);
            custom.remoteView.setTextViewText(android.R.id.text1,"Custom activity");
            custom.remoteView.setOnClickPendingIntent(android.R.id.text1,android.app.PendingIntent.getBroadcast(f.context,11,
                    new android.content.Intent("imode-test-button"),android.app.PendingIntent.FLAG_IMMUTABLE));
            f.view.setItems(f.items);f.scene.iMode.open(custom.key,true);f.step(16,4);
            var moving=(dev.android.dynamicisland.island.view.card.RemoteBody)f.active().body;
            assertEquals("custom layouts must not stretch during the morph",moving.view.getScaleX(),moving.view.getScaleY(),.001f);
            assertEquals("moving custom content is painted inside the card, not above its siblings",View.GONE,moving.view.getVisibility());
            RenderNode capture=new RenderNode("moving custom notification");capture.setPosition(0,0,440,400);
            Canvas hardware=capture.beginRecording();f.view.drawCard(hardware,f.active(),IslandView.now());capture.endRecording();
            assertNotNull(ReflectionHelpers.getField(f.active().contentBlur,"node"));capture.discardDisplayList();
            f.step(16,66);
            assertEquals(View.VISIBLE,moving.view.getVisibility());
            assertTrue(f.active().body instanceof dev.android.dynamicisland.island.view.card.RemoteBody);
            var body=(dev.android.dynamicisland.island.view.card.RemoteBody)f.active().body;
            layer.measure(View.MeasureSpec.makeMeasureSpec(440,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(400,View.MeasureSpec.EXACTLY));
            layer.layout(0,0,440,400);
            assertTrue(body.view.findViewById(android.R.id.text1).hasOnClickListeners());
            RectF card=f.bounds(f.active());
            for(int action:new int[]{MotionEvent.ACTION_DOWN,MotionEvent.ACTION_MOVE,MotionEvent.ACTION_UP}) {
                long time=SystemClock.uptimeMillis();
                MotionEvent event=MotionEvent.obtain(time,time,action,
                        card.centerX()-(action==MotionEvent.ACTION_DOWN?0:90),card.centerY(),0);
                assertTrue(layer.dispatchTouchEvent(event));event.recycle();
            }
            f.assertSingle("item1");
            f.step(16,80);f.scene.iMode.open(custom.key,true);f.step(16,80);card=f.bounds(f.active());
            for(int action:new int[]{MotionEvent.ACTION_DOWN,MotionEvent.ACTION_MOVE,MotionEvent.ACTION_UP}) {
                long time=SystemClock.uptimeMillis();
                MotionEvent event=MotionEvent.obtain(time,time,action,card.centerX(),
                        card.centerY()-(action==MotionEvent.ACTION_DOWN?0:48),0);
                assertTrue(layer.dispatchTouchEvent(event));event.recycle();
            }
            f.step(16,90);assertFalse("a native notification's upward swipe folds its card, it does not hide the group",f.scene.iMode.hiddenByGesture());
            assertEquals(Mode.COMPACT,f.scene.mode);
            f.scene.iMode.hideByGesture();f.step(16,90);assertTrue(f.scene.iMode.hiddenByGesture());
            for(int action:new int[]{MotionEvent.ACTION_DOWN,MotionEvent.ACTION_MOVE,MotionEvent.ACTION_UP}) {
                long time=SystemClock.uptimeMillis();
                MotionEvent event=MotionEvent.obtain(time,time,action,220,action==MotionEvent.ACTION_DOWN?30:50,0);
                assertTrue(layer.dispatchTouchEvent(event));event.recycle();
            }
            assertFalse("the invisible hole hotspot still receives the restoring drag through the native layer",f.scene.iMode.hiddenByGesture());
        }
    }

    @Test public void hardwareRecordingBlursEveryMovingForegroundAndKeepsTheOutlineSeparate() {
        try(Fixture f=new Fixture(3)) {
            f.scene.iMode.open("item0",true);f.step(16,4);
            Card c=f.active();
            RenderNode node=new RenderNode("foreground verification");node.setPosition(0,0,440,400);
            Canvas hardware=node.beginRecording();
            f.view.drawCard(hardware,c,IslandView.now());f.view.draw(hardware);node.endRecording();
            assertNotNull(ReflectionHelpers.getField(c.contentBlur,"node"));
            assertNotNull(ReflectionHelpers.getField(c.iModeCompactBlur,"node"));
            assertFalse((boolean)ReflectionHelpers.getField(c.contentBlur,"failed"));
            assertFalse((boolean)ReflectionHelpers.getField(c.iModeCompactBlur,"failed"));
            assertTrue("all expanded contents share a foreground blur",StackPainter.contentBlurAmount(c,IslandView.now(),1)>.5f);
            StackPainter painter=ReflectionHelpers.getField(f.view,"stackPainter");
            assertFalse((boolean)ReflectionHelpers.getField(painter,"drawFailureLogged"));
            node.discardDisplayList();
            f.step(16,80);
            assertEquals(0,StackPainter.contentBlurAmount(c,IslandView.now(),1),.001f);
            IslandItem transientItem=item("transient",3);
            assertTrue(f.view.peek(transientItem,6000));f.assertSingle("transient");
            f.view.peek(transientItem,6000);f.assertSingle("transient");
        }
    }

    @Test public void referenceTimingAndContentContinuityHoldAt60And120Hz() {
        for(int ms:new int[]{16,8}) try(Fixture f=new Fixture(3)) {
            f.scene.iMode.open("item0",true);Card c=f.active();
            for(int i=0;i<400/ms;i++) {
                f.step(ms,1);
                long t=IslandView.now();
                assertEquals("no blank content handoff",1,c.handoff.compact(t)+c.handoff.expanded(t),.001f);
                RectF r=f.bounds(c);assertTrue(r.width()>0);assertTrue(r.left>=0);assertTrue(r.right<=440);
            }
            assertTrue(c.handoff.expanded(IslandView.now())>.99f);
            assertEquals(c.targetW,c.w.value(),1.5f);assertEquals(c.targetH,c.h.value(),1.5f);
        }
    }

    private static Bitmap capture(Fixture f,String caption) {
        // Fixture clocks restart between tests; static pictogram playback epochs may belong to a
        // previous fixture. Capture the finished icon pose while reviewing presentation motion.
        GlyphIcon.setPlaybackFrozen(true);
        try {
        RenderNode node=new RenderNode("iMode production frame");node.setPosition(0,0,440,330);
        Canvas canvas=node.beginRecording();assertTrue(canvas.isHardwareAccelerated());
        canvas.drawColor(0xff09090c);
        Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xfff5f5f7);p.setTextSize(17);
        canvas.drawText("13:14",14,35,p);p.setTextSize(12);canvas.drawText("5G  ·  57%",356,35,p);
        p.setTextSize(28);canvas.drawText("Settings",24,160,p);
        p.setColor(0xff242428);canvas.drawRoundRect(new RectF(16,185,424,227),21,21,p);
        p.setColor(0xff9c9ca4);p.setTextSize(15);canvas.drawText("Search settings",36,212,p);
        int cardFade=canvas.saveLayerAlpha(0,0,440,330,Math.round(255*IslandView.clamp01(f.scene.visibleAlpha())));
        for(int i=f.scene.cards.size()-1;i>=0;i--) f.view.drawCard(canvas,f.scene.cards.get(i),IslandView.now());
        canvas.restoreToCount(cardFade);
        f.view.draw(canvas);
        p.setColor(0xffc4c4ce);p.setTextSize(13);
        canvas.drawText(caption,20,308,p);
        node.endRecording();
        Bitmap hardware=ReflectionHelpers.callStaticMethod(HardwareRenderer.class,"createHardwareBitmap",
                ReflectionHelpers.ClassParameter.from(RenderNode.class,node),
                ReflectionHelpers.ClassParameter.from(int.class,440),ReflectionHelpers.ClassParameter.from(int.class,330));
        Bitmap b=hardware.copy(Bitmap.Config.ARGB_8888,false);
        hardware.recycle();node.discardDisplayList();
        return b;
        } finally { GlyphIcon.setPlaybackFrozen(false); }
    }

    @Test @Category(RenderCapture.class) public void captureReferenceStyleAndManyActivities() throws Exception {
        if(!RenderCapture.enabled())return;
        for(int count:new int[]{3,8}) try(Fixture f=new Fixture(count)) {
            for(int frame=0;frame<180;frame++) {
                if(frame==12) f.scene.iMode.open("item0",true);
                if(frame==48) f.scene.iMode.open("item1",true);
                if(frame==84) f.scene.iMode.open("item2",true);
                if(frame==118) f.scene.iMode.next(1);
                if(frame==148) f.view.collapse();
                f.step(16,2);
                Bitmap b=capture(f,"iMode · "+count+" activities · "+(frame*32)+" ms");
                RenderCapture.write(b,new File("build/render/imode-"+count,String.format(Locale.ROOT,"frame%03d.png",frame)));
                b.recycle();
            }
        }
    }
    @Test @Category(RenderCapture.class) public void captureAlignedReferenceTransitions() throws Exception {
        if(!RenderCapture.enabled())return;
        try(Fixture f=new Fixture(3)) {
            int event=0;
            int[] times={416,1376,2416};
            String[] keys={"item0","item1","item2"};
            long start=SystemClock.uptimeMillis();
            StringBuilder trace=new StringBuilder("time_ms,key,leaving,cx,cy,width,height,foreground_blur\n");
            for(int frame=0;frame<104;frame++) {
                int elapsed=frame*32;
                while(SystemClock.uptimeMillis()-start<elapsed) {
                    long t=SystemClock.uptimeMillis()-start;
                    if(event<times.length && t>=times[event]) f.scene.iMode.open(keys[event++],true);
                    f.step(8,1);
                }
                if(event<times.length && elapsed>=times[event]) f.scene.iMode.open(keys[event++],true);
                Bitmap bitmap=capture(f,"iMode · approximate reference timing · "+elapsed+" ms");
                RenderCapture.write(bitmap,new File("build/render/imode-reference",String.format(Locale.ROOT,"frame%03d.png",frame)));
                bitmap.recycle();
                for(Card card:f.scene.cards) trace.append(String.format(Locale.ROOT,"%d,%s,%s,%.3f,%.3f,%.3f,%.3f,%.3f\n",elapsed,
                        card.item.key,card.leaving,card.cx.value(),card.cy.value(),card.w.value(),card.h.value(),
                        StackPainter.contentBlurAmount(card,IslandView.now(),1)));
            }
            java.nio.file.Files.write(new File("build/render/imode-reference/motion.csv").toPath(),trace.toString().getBytes(java.nio.charset.StandardCharsets.UTF_8));
        }
    }

    @Test @Category(RenderCapture.class) public void captureFingerDrivenPages() throws Exception {
        if(!RenderCapture.enabled())return;
        try(Fixture f=new Fixture(8)) {
            f.scene.iMode.open("item0",true);f.step(16,70);
            for(int frame=0;frame<180;frame++) {
                if(frame>=12 && frame<=30) f.scene.iMode.dragPage(-6*(frame-12)-1);
                if(frame==31) f.scene.iMode.finishPage(-800);
                if(frame>=65 && frame<=73) f.scene.iMode.dragPage(-4*(frame-65)-1);
                if(frame==74) f.scene.iMode.finishPage(0);
                if(frame>=95 && frame<=111) f.scene.iMode.dragPage(-8*(frame-95)-1);
                if(frame==112) f.scene.iMode.finishPage(-900);
                if(frame>=145 && frame<=152) f.scene.iMode.dragPage(10*(frame-145)+1);
                if(frame==153) f.scene.iMode.finishPage(900);
                f.step(16,2);
                Bitmap bitmap=capture(f,"iMode · finger tracking, cancel, commit · 8 activities");
                RenderCapture.write(bitmap,new File("build/render/imode-swipe",String.format(Locale.ROOT,"frame%03d.png",frame)));
                bitmap.recycle();
            }
        }
    }

    @Test @Category(RenderCapture.class) public void captureCompactFingerDrivenPages() throws Exception {
        if(!RenderCapture.enabled()) return;
        try(Fixture f=new Fixture(3)) {
            f.items.get(1).icon=f.context.getDrawable(dev.android.dynamicisland.R.drawable.ic_battery_pill_39);
            f.view.setItems(f.items);f.step(16,80);
            RectF main=new RectF();
            for(int frame=0;frame<160;frame++) {
                if(frame==12 || frame==60 || frame==100) {
                    f.scene.iMode.mainBounds(main);f.event(MotionEvent.ACTION_DOWN,main.centerX(),main.centerY());
                }
                if(frame>=13 && frame<=30) f.event(MotionEvent.ACTION_MOVE,main.centerX()-3*(frame-12),main.centerY());
                if(frame==31) f.event(MotionEvent.ACTION_UP,main.centerX()-54,main.centerY());
                if(frame>=61 && frame<=70) f.event(MotionEvent.ACTION_MOVE,main.centerX()-1.5f*(frame-60),main.centerY());
                if(frame==71) f.event(MotionEvent.ACTION_CANCEL,main.centerX()-15,main.centerY());
                if(frame>=101 && frame<=122) f.event(MotionEvent.ACTION_MOVE,main.centerX()+4*(frame-100),main.centerY());
                if(frame==123) f.event(MotionEvent.ACTION_UP,main.centerX()+88,main.centerY());
                f.step(16,2);Bitmap bitmap=capture(f,"iMode · compact finger tracking · native vector icon");
                RenderCapture.write(bitmap,new File("build/render/imode-compact-swipe",String.format(Locale.ROOT,"frame%03d.png",frame)));
                bitmap.recycle();
            }
        }
    }

    @Test @Category(RenderCapture.class) public void captureAppearanceDepartureAndCameraHoleRestore() throws Exception {
        if(!RenderCapture.enabled()) return;
        try(Fixture f=new Fixture(0)) {
            RectF main=new RectF();
            for(int frame=0;frame<220;frame++) {
                if(frame==6) { f.items.add(item("item0",0));f.view.setItems(f.items); }
                if(frame==40) { f.items.add(item("item1",1));f.view.setItems(f.items); }
                if(frame==76) { f.items.add(item("item2",2));f.view.setItems(f.items); }
                if(frame==100) { f.items.removeIf(it->it.key.equals("item1"));f.view.setItems(f.items); }
                if(frame==130) {
                    f.scene.iMode.mainBounds(main);
                    f.event(MotionEvent.ACTION_DOWN,main.centerX(),main.centerY());
                    f.event(MotionEvent.ACTION_MOVE,main.centerX(),main.centerY()-48);
                    f.event(MotionEvent.ACTION_UP,main.centerX(),main.centerY()-48);
                }
                if(frame==170) {
                    f.event(MotionEvent.ACTION_DOWN,220,30);f.event(MotionEvent.ACTION_MOVE,220,50);f.event(MotionEvent.ACTION_UP,220,50);
                }
                f.step(16,2);Bitmap bitmap=capture(f,"iMotion · appearance, departure, swipe up and pull down");
                RenderCapture.write(bitmap,new File("build/render/imode-presence",String.format(Locale.ROOT,"frame%03d.png",frame)));
                bitmap.recycle();
            }
        }
    }

    @Test @Category(RenderCapture.class) public void captureOutlineContinuityAcrossMaterials() throws Exception {
        if(!RenderCapture.enabled()) return;
        for(int material:new int[]{ModuleSettings.MATERIAL_CLASSIC,ModuleSettings.MATERIAL_FROSTED}) try(Fixture f=new Fixture(1)) {
            f.prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,material).commit();ModuleSettings.configurePreview(f.prefs);
            f.view.setPillBackgroundLuma(0f);f.step(16,80);
            String name=material==ModuleSettings.MATERIAL_CLASSIC ? "classic" : "frosted";
            for(int frame=0;frame<96;frame++) {
                if(frame==8) f.scene.iMode.open("item0",true);
                if(frame==36) f.view.collapse();
                if(frame==67) f.scene.iMode.open("item0",true);
                if(frame==73) f.view.collapse();
                f.step(16,2);Bitmap bitmap=capture(f,"iMotion · automatic exterior rim · "+name);
                RenderCapture.write(bitmap,new File("build/render/imotion-outline-"+name,String.format(Locale.ROOT,"frame%03d.png",frame)));
                bitmap.recycle();
            }
        }
    }

    @Test @Category(RenderCapture.class) public void captureCoordinatedHeaderAndQuickPanel() throws Exception {
        if(!RenderCapture.enabled()) return;
        for(int count:new int[]{2,5}) try(Fixture f=new Fixture(count)) {
            f.prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();ModuleSettings.configurePreview(f.prefs);
            f.scene.iMode.open("item0",true);f.step(16,80);
            for(int frame=0;frame<205;frame++) {
                if(frame>=12 && frame<=30) f.scene.iMode.dragPage(-8*(frame-12)-1);
                if(frame==31) f.scene.iMode.finishPage(-800);
                if(frame>=65 && frame<=73) f.scene.iMode.dragPage(-3*(frame-65)-1);
                if(frame==74) f.scene.iMode.cancelPage();
                if(frame==98) f.view.collapse();
                if(frame==126) f.view.setShadeFraction(1);
                if(frame==163) f.view.setShadeFraction(0);
                f.step(16,2);Bitmap bitmap=capture(f,"iMotion · "+count+" activities · coordinated row and panel");
                RenderCapture.write(bitmap,new File("build/render/imotion-header-"+count,String.format(Locale.ROOT,"frame%03d.png",frame)));
                bitmap.recycle();
            }
        }
    }


    @Test public void aSwipeUpOnAnOpenCardFoldsItByDistanceAndSpeedAndSlowShortOnesSpringBack() {
        try(Fixture f=new Fixture(4)) {
            f.scene.iMode.open("item0",true);f.step(16,80);RectF card=f.bounds(f.active());
            f.swipeUp(card.centerX(),card.centerY(),20,600);
            f.step(16,60);
            assertEquals("a short, slow drag is not enough: the card springs back and stays open",Mode.EXPANDED,f.scene.mode);
            assertFalse(f.scene.iMode.hiddenByGesture());

            card=f.bounds(f.active());
            f.swipeUp(card.centerX(),card.centerY(),60,500);
            f.step(16,90);
            assertEquals("a long drag folds the card back into the pill",Mode.COMPACT,f.scene.mode);
            assertFalse("and the island stays",f.scene.iMode.hiddenByGesture());

            f.scene.iMode.open("item0",true);f.step(16,80);card=f.bounds(f.active());
            f.swipeUp(card.centerX(),card.centerY(),24,24);
            f.step(16,90);
            assertEquals("a quick flick folds it after a short move",Mode.COMPACT,f.scene.mode);
            assertFalse(f.scene.iMode.hiddenByGesture());
        }
    }

    @Test public void aSwipeUpOnTheSmallPillHidesItAndAFlickNeedsLessDistance() {
        try(Fixture f=new Fixture(3)) {
            RectF main=new RectF();f.scene.iMode.mainBounds(main);
            f.swipeUp(main.centerX(),main.centerY(),20,500);
            f.step(16,60);
            assertFalse("a short slow drag on the pill does nothing",f.scene.iMode.hiddenByGesture());

            f.scene.iMode.mainBounds(main);
            f.swipeUp(main.centerX(),main.centerY(),24,12);
            f.step(16,90);
            assertTrue("a flick hides it after a short move",f.scene.iMode.hiddenByGesture());
        }
    }
}
