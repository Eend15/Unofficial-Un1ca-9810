package dev.android.dynamicisland.settings;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.XmlResourceParser;
import dev.android.dynamicisland.R;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/** Search metadata and safe page destinations. No page builders run while indexing. */
final class SettingsSearchCatalog {
    enum Route { NOTIFICATIONS,EVENTS,APPS,APPEARANCE,BEHAVIOR,ADVANCED,ABOUT,DIAGNOSTICS,
        POSITION,CALIBRATION,ACCENT,GLOW,RULES,SEARCH,HOME }
    static final class Row {
        final Route route;final int title,fallback;
        final SettingsSearchEngine.Document document;
        Row(Route route,int title,int fallback,SettingsSearchEngine.Document document) {
            this.route=route;this.title=title;this.fallback=fallback;this.document=document;
        }
    }
    final Map<String,Row> rows=new LinkedHashMap<>();
    final SettingsSearchEngine engine;
    private final Context context;
    private final List<Context> languages=new ArrayList<>();

    SettingsSearchCatalog(Context context) {
        this.context=context;languages.add(context);
        Set<String> tags=new LinkedHashSet<>();tags.add("en");
        try(XmlResourceParser xml=context.getResources().getXml(R.xml.locales_config)) {
            while(xml.next()!=XmlResourceParser.END_DOCUMENT)if(xml.getEventType()==XmlResourceParser.START_TAG&&"locale".equals(xml.getName())) {
                String tag=xml.getAttributeValue("http://schemas.android.com/apk/res/android","name");if(tag!=null)tags.add(tag);
            }
        }catch(Exception invalid){throw new IllegalStateException("Cannot read supported settings languages",invalid);}
        for(String tag:tags) {
            Configuration config=new Configuration(context.getResources().getConfiguration());config.setLocale(Locale.forLanguageTag(tag));
            languages.add(context.createConfigurationContext(config));
        }
        populate();
        StringBuilder stop=new StringBuilder();for(Context language:languages)stop.append(' ').append(language.getString(R.string.search_stop_words));
        List<SettingsSearchEngine.Document> documents=new ArrayList<>();for(Row row:rows.values())documents.add(row.document);
        engine=new SettingsSearchEngine(documents,stop.toString());
    }
    private void add(Route route,int title,int summary,int terms,int fallback,int... choices) {
        Map<String,SettingsSearchEngine.Field> fields=new LinkedHashMap<>();
        for(int i=0;i<languages.size();i++) {
            Context language=languages.get(i);
            field(fields,language.getString(title),i==0?100:90);
            if(summary!=0)field(fields,language.getString(summary),50);
            if(terms!=0)field(fields,language.getString(terms),70);
            field(fields,path(language,route),25);
            for(int choice:choices)field(fields,language.getString(choice),65);
        }
        String id=route.name()+":"+context.getResources().getResourceEntryName(title);
        SettingsSearchEngine.Document document=new SettingsSearchEngine.Document(id,context.getString(title),
                summary==0?"":context.getString(summary),path(context,route),new ArrayList<>(fields.values()));
        rows.put(id,new Row(route,title,fallback,document));
    }
    private static void field(Map<String,SettingsSearchEngine.Field> fields,String value,int weight) {
        String key=SettingsSearchEngine.normalize(value);if(key.isEmpty())return;
        SettingsSearchEngine.Field previous=fields.get(key);
        if(previous==null||previous.weight<weight)fields.put(key,new SettingsSearchEngine.Field(value,weight));
    }
    private static String path(Context c,Route route) {
        int root=R.string.ui_appearance,child=0;
        switch(route) {
            case NOTIFICATIONS:root=R.string.ui_notifications;break;
            case EVENTS:root=R.string.ui_notifications;child=R.string.hub_events;break;
            case RULES:root=R.string.ui_notifications;child=R.string.rules_title;break;
            case APPS:root=R.string.ui_notifications;child=R.string.apps_title;break;
            case BEHAVIOR:root=R.string.ui_behavior;break;
            case ADVANCED:root=R.string.ui_advanced;break;
            case CALIBRATION:root=R.string.ui_appearance;child=R.string.pos_title;break;
            case DIAGNOSTICS:root=R.string.ui_advanced;child=R.string.diagnostics_title;break;
            case ABOUT:root=R.string.ui_about;break;
            case SEARCH:root=R.string.search_title;break;
            case HOME:root=R.string.hub_settings;break;
            case POSITION:child=R.string.pos_title;break;
            case ACCENT:child=R.string.accent_page;break;
            case GLOW:child=R.string.glow_title;break;
            default:break;
        }
        return c.getString(root)+(child==0?"":" › "+c.getString(child));
    }
    private void populate() {
        add(Route.APPEARANCE,R.string.material_style,0,R.string.search_terms_material,0,R.string.material_classic,R.string.material_frosted);
        add(Route.APPEARANCE,R.string.transition_blur,R.string.desc_transition_blur,R.string.search_terms_transition_blur,0,R.string.blur_mode_auto,R.string.blur_mode_always,R.string.blur_mode_off);
        add(Route.APPEARANCE,R.string.pill_outline,R.string.pill_outline_desc,R.string.search_terms_shape,0,R.string.pill_outline_auto,R.string.pill_outline_none);
        add(Route.APPEARANCE,R.string.setting_card_header,R.string.setting_card_header_desc,0,0);
        add(Route.APPEARANCE,R.string.setting_color_icons,R.string.setting_color_icons_desc,R.string.search_terms_colour,0);
        add(Route.APPEARANCE,R.string.ui_event_icon_size,0,R.string.search_terms_shape,0,R.string.ui_size_large,R.string.ui_size_small);
        add(Route.APPEARANCE,R.string.ui_show_battery_icon,R.string.ui_show_battery_icon_summary,R.string.search_terms_battery,0);
        add(Route.BEHAVIOR,R.string.setting_shade_media,R.string.setting_shade_media_desc,R.string.search_terms_music,0);
        add(Route.NOTIFICATIONS,R.string.ui_notification_mode,R.string.ui_notification_scope,R.string.search_terms_notifications,0,R.string.ui_notification_off,R.string.ui_notification_banners,R.string.ui_notification_all);
        add(Route.NOTIFICATIONS,R.string.foreground_notifications,R.string.foreground_notifications_desc,R.string.search_terms_notifications,0);
        add(Route.NOTIFICATIONS,R.string.setting_progress,R.string.setting_progress_desc,R.string.search_terms_download,0);
        add(Route.NOTIFICATIONS,R.string.setting_progress_foreground,R.string.setting_progress_foreground_desc,R.string.search_terms_download,R.string.setting_progress);
        add(Route.NOTIFICATIONS,R.string.setting_progress_any,R.string.setting_progress_any_desc,R.string.search_terms_download,R.string.setting_progress);
        add(Route.NOTIFICATIONS,R.string.setting_peek_progress,R.string.setting_peek_progress_desc,R.string.search_terms_download,R.string.ui_notification_mode);
        add(Route.NOTIFICATIONS,R.string.setting_hide_progress,R.string.setting_hide_progress_desc,R.string.search_terms_download,0);
        add(Route.NOTIFICATIONS,R.string.setting_calls,R.string.setting_calls_desc,R.string.search_terms_calls,0);
        add(Route.NOTIFICATIONS,R.string.setting_otp,R.string.setting_otp_desc,R.string.search_terms_otp,0);
        add(Route.NOTIFICATIONS,R.string.setting_otp_copy,R.string.setting_otp_copy_desc,R.string.search_terms_otp,0);
        add(Route.EVENTS,R.string.setting_event_charging,R.string.setting_event_charging_desc,R.string.search_terms_battery,0);
        add(Route.EVENTS,R.string.setting_charging_info,R.string.setting_charging_info_desc,R.string.search_terms_battery,R.string.setting_event_charging);
        add(Route.EVENTS,R.string.setting_charging_stats,R.string.setting_charging_stats_desc,R.string.search_terms_battery,R.string.setting_charging_info);
        add(Route.EVENTS,R.string.setting_stock_charging_animation,R.string.setting_stock_charging_animation_desc,R.string.search_terms_charging_effect,0);
        add(Route.EVENTS,R.string.setting_event_ringer,R.string.setting_event_ringer_desc,R.string.search_terms_sound,0);
        add(Route.EVENTS,R.string.setting_event_bluetooth,R.string.setting_event_bluetooth_desc,R.string.search_terms_bluetooth,0);
        add(Route.EVENTS,R.string.setting_event_headset,R.string.setting_event_headset_desc,R.string.search_terms_bluetooth,0);
        add(Route.EVENTS,R.string.setting_headset_stay,R.string.setting_headset_stay_desc,R.string.search_terms_bluetooth,R.string.setting_event_headset);
        add(Route.EVENTS,R.string.setting_event_toggles,R.string.setting_event_toggles_desc,0,0);
        add(Route.EVENTS,R.string.setting_hotspot_card,R.string.setting_hotspot_card_desc,R.string.search_terms_hotspot,0);
        add(Route.EVENTS,R.string.setting_unlock_notice,R.string.setting_unlock_notice_desc,R.string.search_terms_unlock,0);
        add(Route.EVENTS,R.string.setting_torch_pill,R.string.setting_torch_pill_desc,R.string.search_terms_torch,0);
        add(Route.APPEARANCE,R.string.torch_style,R.string.torch_style_desc,R.string.search_terms_torch,0,
                R.string.torch_style_classic,R.string.torch_style_beam);
        add(Route.EVENTS,R.string.setting_privacy,R.string.setting_privacy_desc,R.string.search_terms_privacy,0);
        add(Route.EVENTS,R.string.setting_privacy_location,R.string.setting_privacy_location_desc,R.string.search_terms_location,R.string.setting_privacy);
        add(Route.APPS,R.string.apps_mode,R.string.apps_only_listed_desc,R.string.search_terms_apps,0,R.string.apps_blacklist,R.string.apps_whitelist);
        add(Route.APPS,R.string.ui_excluded_apps,R.string.apps_choose_sum,R.string.search_terms_apps,R.string.apps_mode);
        add(Route.APPS,R.string.ui_allowed_apps,R.string.apps_choose_sum,R.string.search_terms_apps,R.string.apps_mode);
        add(Route.BEHAVIOR,R.string.show_in_fullscreen,R.string.show_in_fullscreen_desc,0,0);
        add(Route.BEHAVIOR,R.string.low_performance_mode,R.string.low_performance_desc,R.string.search_terms_performance,0);
        add(Route.BEHAVIOR,R.string.setting_haptics,R.string.setting_haptics_desc,R.string.search_terms_haptics,0);
        add(Route.BEHAVIOR,R.string.ui_wave_motion,R.string.setting_visualizer_desc,R.string.search_terms_waveform,0,R.string.ui_wave_audio,R.string.ui_wave_demo);
        add(Route.BEHAVIOR,R.string.auto_open_cards,R.string.auto_open_cards_desc,R.string.search_terms_timing,0);
        add(Route.BEHAVIOR,R.string.ui_auto_open_time,0,R.string.search_terms_timing,R.string.auto_open_cards);
        add(Route.BEHAVIOR,R.string.setting_auto_collapse,0,R.string.search_terms_timing,0);
        add(Route.BEHAVIOR,R.string.setting_paused_timeout,0,R.string.search_terms_paused,0);
        add(Route.APPEARANCE,R.string.anim_title,R.string.anim_sum,R.string.search_terms_animation,0,R.string.anim_new,R.string.anim_legacy,R.string.imode_title,R.string.imode_desc);
        add(Route.ACCENT,R.string.accent_enabled,R.string.accent_note,R.string.search_terms_colour,0,R.string.ui_default,R.string.ui_custom);
        add(Route.ACCENT,R.string.accent_custom,R.string.accent_note,R.string.search_terms_colour,R.string.accent_enabled);
        add(Route.GLOW,R.string.glow_title,R.string.glow_summary,R.string.search_terms_glow,0);
        add(Route.GLOW,R.string.glow_visibility,0,R.string.search_terms_glow,R.string.glow_title,R.string.glow_music_only,R.string.glow_all_activities);
        add(Route.GLOW,R.string.glow_strength,0,R.string.search_terms_glow,R.string.glow_title);
        add(Route.GLOW,R.string.glow_motion_strength,R.string.glow_motion_desc,R.string.search_terms_glow,R.string.glow_title);
        add(Route.GLOW,R.string.glow_colour_source,0,R.string.search_terms_colour,R.string.glow_title,R.string.glow_follow_theme,R.string.glow_individual);
        add(Route.GLOW,R.string.glow_album,R.string.glow_album_summary,R.string.search_terms_music,R.string.glow_title);
        add(Route.APPEARANCE,R.string.card_roundness_custom,R.string.card_roundness_desc,R.string.search_terms_shape,0);
        add(Route.APPEARANCE,R.string.card_roundness,R.string.card_roundness_summary,R.string.search_terms_shape,R.string.card_roundness_custom);
        add(Route.POSITION,R.string.pos_where,R.string.pos_sum,R.string.search_terms_position,0,R.string.pos_auto,R.string.pos_center,R.string.pos_left,R.string.pos_right);
        add(Route.POSITION,R.string.pos_shift_x,0,R.string.search_terms_position,0);
        add(Route.POSITION,R.string.pos_shift_y,0,R.string.search_terms_position,0);
        add(Route.POSITION,R.string.size_height,R.string.size_note,R.string.search_terms_shape,0);
        add(Route.POSITION,R.string.size_min,0,R.string.search_terms_shape,0);
        add(Route.POSITION,R.string.size_max,0,R.string.search_terms_shape,0);
        add(Route.POSITION,R.string.size_keep,R.string.size_keep_sum,R.string.search_terms_shape,0);
        add(Route.CALIBRATION,R.string.hole_title,R.string.hole_note,R.string.search_terms_camera,0,R.string.hole_auto,R.string.hole_manual,R.string.hole_none);
        add(Route.CALIBRATION,R.string.hole_size,0,R.string.search_terms_camera,R.string.hole_title);
        add(Route.CALIBRATION,R.string.hole_x,0,R.string.search_terms_position,R.string.hole_title);
        add(Route.CALIBRATION,R.string.hole_y,0,R.string.search_terms_position,R.string.hole_title);
        add(Route.CALIBRATION,R.string.hole_text_padding,R.string.hole_text_padding_desc,R.string.search_terms_camera,R.string.hole_title);
        add(Route.ADVANCED,R.string.experimental_recovery,R.string.experimental_recovery_desc,R.string.search_terms_compatibility,0);
        add(Route.BEHAVIOR,R.string.concurrent_recording_input,R.string.concurrent_recording_input_desc,R.string.search_terms_recording,0);
        add(Route.HOME,R.string.restart_systemui,R.string.restart_systemui_sum,R.string.search_terms_restart,0);
        add(Route.DIAGNOSTICS,R.string.diagnostics_title,R.string.diagnostics_sum,R.string.search_terms_diagnostics,0);
        add(Route.HOME,R.string.ui_settings_language,R.string.ui_language_scope,R.string.search_terms_language,0);
        add(Route.ABOUT,R.string.hub_credits,R.string.hub_credits_text,0,0);
        add(Route.RULES,R.string.setting_smart_rules,R.string.setting_smart_rules_desc,R.string.search_terms_rules,0);
        add(Route.RULES,R.string.rule_new,R.string.rule_new_sum,R.string.search_terms_rules,0);
        add(Route.RULES,R.string.rule_test,R.string.rule_test_sum,R.string.search_terms_rules,0);
        add(Route.RULES,R.string.rules_export,R.string.rules_export_sum,R.string.search_terms_rules,0);
        add(Route.RULES,R.string.rules_import,R.string.rules_import_sum,R.string.search_terms_rules,0);
        int[] names={R.string.rule_name_assistant,R.string.rule_name_food,R.string.rule_name_parcel,R.string.rule_name_navigation,R.string.rule_name_taxi,
                R.string.rule_name_wearable,R.string.rule_name_battery,R.string.rule_name_device,R.string.rule_name_vpn,R.string.rule_name_relay};
        for(int name:names)add(Route.RULES,name,R.string.rules_about,R.string.search_terms_rules,R.string.setting_smart_rules);
    }
}
