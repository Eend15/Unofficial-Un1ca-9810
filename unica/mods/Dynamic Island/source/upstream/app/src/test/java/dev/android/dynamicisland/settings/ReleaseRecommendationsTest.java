package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import dev.android.dynamicisland.R;
import java.util.HashSet;
import java.util.Map;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;
import dev.android.dynamicisland.testutil.RenderCapture;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class ReleaseRecommendationsTest {
    /** The curated content belongs to one release family, so the tests must not depend on the version being built. */
    @org.junit.Before public void pinVersion() throws Exception {
        android.app.Application app=RuntimeEnvironment.getApplication();
        android.content.pm.PackageInfo info=app.getPackageManager().getPackageInfo(app.getPackageName(),0);
        info.versionName="0.1.14";
        org.robolectric.Shadows.shadowOf(app.getPackageManager()).installPackage(info);
    }
    private void clearHistory() { RuntimeEnvironment.getApplication().getSharedPreferences(ReleaseRecommendations.PREFS,Context.MODE_PRIVATE).edit().clear().commit(); }

    @Test public void oneRandomSuggestionAtATimeReachesEveryFeatureAndOpensItsSettingWithoutChangingPreferences() {
        clearHistory();
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();ReleaseRecommendations rec=ReflectionHelpers.getField(a,"recommendations");
            assertTrue(rec.available());
            SharedPreferences settings=ReflectionHelpers.getField(a,"prefs");Map<String,?> initial=Map.copyOf(settings.getAll());
            var release=ReleaseHighlights.forVersion("0.1.14");
            assertEquals(5,release.features().size());
            assertEquals(java.util.Set.of("imotion","imotion-gestures","flashlight-beam","settings-search","frosted-material"),
                    release.features().stream().map(ReleaseHighlights.Feature::id).collect(java.util.stream.Collectors.toSet()));
            HashSet<String> visited=new HashSet<>();
            String previous=null;
            for(int i=0;i<release.features().size();i++) {
                assertEquals(1,countBanners(a.page()));String id=rec.currentId();assertTrue(visited.add(id));assertNotEquals(previous,id);
                var feature=release.features().stream().filter(f->f.id().equals(id)).findFirst().orElseThrow();
                a.page().findViewWithTag(ReleaseRecommendations.OPEN).performClick();
                if(feature.route()==SettingsSearchCatalog.Route.SEARCH) {
                    SettingsSearchScreen search=ReflectionHelpers.getField(a,"search");assertTrue(search.visible());
                } else assertNotNull("the suggestion opens its real setting",a.page().findViewWithTag(a.getString(feature.settingTitle())));
                a.goBack();assertEquals("returning from settings keeps the recommendation",id,rec.currentId());
                a.refresh();assertEquals("ordinary redraws do not reshuffle the banner",id,rec.currentId());
                previous=id;a.page().findViewWithTag(ReleaseRecommendations.NEXT).performClick();
            }
            assertEquals(release.features().size(),visited.size());assertNotEquals(previous,rec.currentId());
            assertEquals("recommendations never enable features or write module preferences",initial,settings.getAll());
        } finally { clearHistory(); }
    }

    @Test public void selectionSurvivesRecreationAndDismissalIsScopedToTheExactRelease() {
        clearHistory();
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();ReleaseRecommendations rec=ReflectionHelpers.getField(a,"recommendations");
            String id=rec.currentId();controller.recreate();a=controller.get();rec=ReflectionHelpers.getField(a,"recommendations");
            assertEquals(id,rec.currentId());a.page().findViewWithTag(ReleaseRecommendations.CLOSE).performClick();
            assertTrue(rec.dismissed());a.refresh();assertEquals(0,countBanners(a.page()));
            controller.recreate();a=controller.get();rec=ReflectionHelpers.getField(a,"recommendations");assertEquals(0,countBanners(a.page()));
            var next=new ReleaseRecommendations(a,new OneUi(a),"0.1.14-dev999");LinearLayout other=new LinearLayout(a);next.addTo(other);
            assertFalse("the next release gets its own recommendations",next.dismissed());assertEquals(1,countBanners(other));
            var unknown=new ReleaseRecommendations(a,new OneUi(a),"0.1.16");other.removeAllViews();unknown.addTo(other);
            assertEquals("unknown future releases never show stale feature lists",0,countBanners(other));
            a.openSetting(SettingsSearchCatalog.Route.ABOUT,R.string.hub_version,0);
            a.page().findViewWithTag(a.getString(R.string.recommend_about)).performClick();assertEquals(1,countBanners(a.page()));
            assertFalse(rec.dismissed());
        } finally { clearHistory(); }
    }
    private int countBanners(LinearLayout page) {
        int count=0;for(int i=0;i<page.getChildCount();i++)
            if(ReleaseRecommendations.BANNER.equals(page.getChildAt(i).getTag()) && page.getChildAt(i).getVisibility()==View.VISIBLE) count++;
        return count;
    }
    @Test @Category(RenderCapture.class) public void captureKoreanDarkCandidates() throws Exception {
        clearHistory();
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();ReleaseRecommendations rec=ReflectionHelpers.getField(a,"recommendations");
            for(var feature:ReleaseHighlights.forVersion("0.1.14").features()) {
                rec.restore(feature.id());a.refresh();SettingsRenderTest.render(a,"recommendation_ko_dark_"+feature.id());
            }
        } finally { clearHistory(); }
    }
    @Test @Category(RenderCapture.class) @Config(qualifiers="ko-rKR-w360dp-h800dp-xxhdpi")
    public void captureKoreanLight() throws Exception {
        clearHistory();
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();ReleaseRecommendations rec=ReflectionHelpers.getField(a,"recommendations");
            rec.restore("imotion");a.refresh();SettingsRenderTest.render(a,"recommendation_ko_light");
        } finally { clearHistory(); }
    }

    private void pin(String version) throws Exception {
        android.app.Application app=RuntimeEnvironment.getApplication();
        android.content.pm.PackageInfo info=app.getPackageManager().getPackageInfo(app.getPackageName(),0);
        info.versionName=version;
        org.robolectric.Shadows.shadowOf(app.getPackageManager()).installPackage(info);
    }

    @Test public void theNewReleaseHasTenCardsAndEachOpensItsRealSetting() throws Exception {
        pin("0.1.15");clearHistory();
        var release=ReleaseHighlights.forVersion("0.1.15");
        assertEquals(10,release.features().size());
        assertSame("a development build of the family shows the same cards",release,ReleaseHighlights.forVersion("0.1.15-dev1"));
        for(var feature:release.features()) {
            assertNotEquals(feature.id(),0,feature.title());
            if(feature.route()!=SettingsSearchCatalog.Route.SEARCH) assertNotEquals("a card needs a setting to open: "+feature.id(),0,feature.settingTitle());
        }
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();ReleaseRecommendations rec=ReflectionHelpers.getField(a,"recommendations");
            assertTrue(rec.available());
            SharedPreferences settings=ReflectionHelpers.getField(a,"prefs");Map<String,?> initial=Map.copyOf(settings.getAll());
            HashSet<String> visited=new HashSet<>();
            for(int i=0;i<release.features().size();i++) {
                String id=rec.currentId();assertTrue("no card twice in a cycle: "+id,visited.add(id));
                var feature=release.features().stream().filter(f->f.id().equals(id)).findFirst().orElseThrow();
                assertFalse(a.getString(feature.title()).isEmpty());assertFalse(a.getString(feature.summary()).isEmpty());
                a.page().findViewWithTag(ReleaseRecommendations.OPEN).performClick();
                if(feature.route()==SettingsSearchCatalog.Route.SEARCH) {
                    SettingsSearchScreen search=ReflectionHelpers.getField(a,"search");assertTrue(search.visible());
                } else assertNotNull("the card '"+id+"' opens its real setting",a.page().findViewWithTag(a.getString(feature.settingTitle())));
                a.goBack();
                a.page().findViewWithTag(ReleaseRecommendations.NEXT).performClick();
            }
            assertEquals(release.features().size(),visited.size());
            assertEquals("the cards never change a setting",initial,settings.getAll());
        }
    }
}
