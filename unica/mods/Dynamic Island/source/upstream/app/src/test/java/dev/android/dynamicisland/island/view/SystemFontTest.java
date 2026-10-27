package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;

import android.graphics.Typeface;
import dev.android.dynamicisland.island.graphics.Fonts;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

/** Native font-map integration: Samsung's UI family can differ while Typeface.DEFAULT stays identical. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="w411dp-h891dp-mdpi")
public class SystemFontTest {
    private Map<String,Typeface> original;
    @Before public void saveFonts(){original=ReflectionHelpers.getStaticField(Typeface.class,"sSystemFontMap");}
    @After public void restoreFonts(){ReflectionHelpers.setStaticField(Typeface.class,"sSystemFontMap",original);Fonts.key();}

    private void samsungFamily(Typeface font){
        Map<String,Typeface> map=new HashMap<>(original);
        if(font==null)map.remove("sec");else map.put("sec",font);
        ReflectionHelpers.setStaticField(Typeface.class,"sSystemFontMap",map);
    }

    @Test public void paintsUseSamsungFamilyAndFollowItsChangesWithoutADefaultFontChange(){
        Typeface systemDefault=Typeface.DEFAULT;
        samsungFamily(Typeface.SERIF);
        Paints paints=new Paints(RuntimeEnvironment.getApplication().getResources().getDisplayMetrics(),1);
        assertEquals(Typeface.create(Typeface.SERIF,400,false),paints.body.getTypeface());
        assertEquals(Typeface.create(Typeface.SERIF,500,false),paints.button.getTypeface());
        assertEquals(Typeface.create(Typeface.SERIF,600,false),paints.trail.getTypeface());
        assertEquals(Typeface.create(Typeface.SERIF,700,false),paints.title.getTypeface());
        assertEquals(Typeface.create(Typeface.SERIF,600,false),paints.mediaTitle().getTypeface());
        assertEquals(Typeface.create(Typeface.SERIF,400,false),paints.mediaArtist().getTypeface());
        Object key=Fonts.key();
        samsungFamily(Typeface.MONOSPACE);
        assertSame(systemDefault,Typeface.DEFAULT);assertNotEquals(key,Fonts.key());
        assertTrue(paints.followSystemFont());
        assertEquals(Typeface.create(Typeface.MONOSPACE,600,false),paints.mediaTitle().getTypeface());
        assertFalse(paints.followSystemFont());
        samsungFamily(null);assertTrue(paints.followSystemFont());
        assertEquals(Typeface.create(Typeface.DEFAULT,400,false),paints.body.getTypeface());
    }

    @Test public void fontChangesRemeasurePillAndOpenCardWithoutChangingPeekMembership(){
        samsungFamily(Typeface.SERIF);
        IslandView view=new IslandView(RuntimeEnvironment.getApplication(),IslandHost.NONE);
        view.setGeometry(411,205.5f,32,0,false);view.layout(0,0,411,800);
        IslandItem item=new IslandItem("font:live");item.kind=IslandItem.Kind.LIVE;
        item.title="WWiiWWii";item.subtitle="Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi Wi";
        item.trailing=IslandItem.Trailing.TEXT;item.trailingText="WWiiWWii";
        IslandItem other=new IslandItem("font:other");other.title="Other";
        view.setItems(List.of(item,other));
        Scene scene=ReflectionHelpers.getField(view,"scene");
        Content oldCompact=scene.mainIn.content;float oldWidth=oldCompact.desiredWidth();
        samsungFamily(Typeface.MONOSPACE);view.followFont();
        assertNotSame(oldCompact,scene.mainIn.content);
        assertNotEquals(oldWidth,scene.mainIn.content.desiredWidth(),.1f);
        assertTrue(view.peek(item,60000));
        Card card=scene.cards.stream().filter(c->!c.leaving).findFirst().get();
        Object oldBody=card.body;
        samsungFamily(Typeface.SERIF);view.followFont();
        assertTrue(view.isExpanded());assertEquals(1,scene.cards.stream().filter(c->!c.leaving).count());
        assertSame(item,card.item);assertNotSame(oldBody,card.body);
        assertEquals(card.body.h,card.targetH,.01f);
    }
}
