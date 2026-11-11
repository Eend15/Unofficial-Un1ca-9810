package dev.android.dynamicisland.settings;

import dev.android.dynamicisland.R;
import java.util.List;

/** Curated release content, independent of selection history and presentation. Add entries here at release time. */
final class ReleaseHighlights {
    enum Art { MOTION, FLASHLIGHT, SEARCH, GLASS, PREVIEW, SWIPE, BLUR, NOTIFY, PROGRESS, HOTSPOT, UNLOCK, HEADSET }
    record Feature(String id,int title,int summary,Art art,SettingsSearchCatalog.Route route,int settingTitle) { }
    record Release(String family,List<Feature> features) { }

    private static final List<Release> RELEASES=List.of(
            new Release("0.1.14",List.of(
                    new Feature("imotion",R.string.recommend_motion_title,R.string.recommend_motion,Art.MOTION,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.anim_title),
                    new Feature("imotion-gestures",R.string.recommend_gesture_title,R.string.recommend_gesture,Art.MOTION,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.anim_title),
                    new Feature("flashlight-beam",R.string.recommend_torch_title,R.string.recommend_torch,Art.FLASHLIGHT,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.torch_style),
                    new Feature("settings-search",R.string.recommend_search_title,R.string.recommend_search,Art.SEARCH,
                            SettingsSearchCatalog.Route.SEARCH,0),
                    new Feature("frosted-material",R.string.recommend_glass_title,R.string.recommend_glass,Art.GLASS,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.material_style))),
            new Release("0.1.15",List.of(
                    new Feature("preview",R.string.recommend15_preview_title,R.string.recommend15_preview,Art.PREVIEW,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.anim_title),
                    new Feature("swipe",R.string.recommend15_swipe_title,R.string.recommend15_swipe,Art.SWIPE,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.anim_title),
                    new Feature("blur",R.string.recommend15_blur_title,R.string.recommend15_blur,Art.BLUR,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.transition_blur),
                    new Feature("glass",R.string.recommend15_glass_title,R.string.recommend15_glass,Art.GLASS,
                            SettingsSearchCatalog.Route.APPEARANCE,R.string.material_style),
                    new Feature("notify",R.string.recommend15_notify_title,R.string.recommend15_notify,Art.NOTIFY,
                            SettingsSearchCatalog.Route.NOTIFICATIONS,R.string.ui_notification_mode),
                    new Feature("progress",R.string.recommend15_progress_title,R.string.recommend15_progress,Art.PROGRESS,
                            SettingsSearchCatalog.Route.NOTIFICATIONS,R.string.setting_progress_any),
                    new Feature("hotspot",R.string.recommend15_hotspot_title,R.string.recommend15_hotspot,Art.HOTSPOT,
                            SettingsSearchCatalog.Route.EVENTS,R.string.setting_hotspot_card),
                    new Feature("unlock",R.string.recommend15_unlock_title,R.string.recommend15_unlock,Art.UNLOCK,
                            SettingsSearchCatalog.Route.EVENTS,R.string.setting_unlock_notice),
                    new Feature("headset",R.string.recommend15_headset_title,R.string.recommend15_headset,Art.HEADSET,
                            SettingsSearchCatalog.Route.EVENTS,R.string.setting_headset_stay),
                    new Feature("search",R.string.recommend15_search_title,R.string.recommend15_search,Art.SEARCH,
                            SettingsSearchCatalog.Route.SEARCH,0)))
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
