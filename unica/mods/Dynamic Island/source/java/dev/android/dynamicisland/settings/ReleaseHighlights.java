package dev.android.dynamicisland.settings;

import dev.android.dynamicisland.R;
import java.util.List;

/** Curated release content, independent of selection history and presentation. Add entries here at release time. */
final class ReleaseHighlights {
    enum Art { MOTION, FLASHLIGHT, SEARCH, GLASS }
    record Feature(String id,int title,int summary,Art art,SettingsSearchCatalog.Route route,int settingTitle) { }
    record Release(String family,List<Feature> features) { }

    private static final List<Release> RELEASES=List.of(
            new Release("0.1.14",List.of(
                    new Feature("imotion",R.string.recommend_motion_title,R.string.recommend_motion,Art.MOTION,
                            SettingsSearchCatalog.Route.ANIMATION,R.string.anim_title),
                    new Feature("imotion-gestures",R.string.recommend_gesture_title,R.string.recommend_gesture,Art.MOTION,
                            SettingsSearchCatalog.Route.ANIMATION,R.string.anim_title),
                    new Feature("flashlight-beam",R.string.recommend_torch_title,R.string.recommend_torch,Art.FLASHLIGHT,
                            SettingsSearchCatalog.Route.EVENTS,R.string.torch_style),
                    new Feature("settings-search",R.string.recommend_search_title,R.string.recommend_search,Art.SEARCH,
                            SettingsSearchCatalog.Route.SEARCH,0),
                    new Feature("frosted-material",R.string.recommend_glass_title,R.string.recommend_glass,Art.GLASS,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.material_style)))
    );

    static Release forVersion(String version) {
        if(version==null) return null;
        for(Release release:RELEASES)
            if(version.equals(release.family()) || version.startsWith(release.family()+"-")
                    || version.startsWith(release.family()+"+")) return release;
        return null; // A future release must supply its own content rather than inheriting stale recommendations.
    }
    private ReleaseHighlights() { }
}
