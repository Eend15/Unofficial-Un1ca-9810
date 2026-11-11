# Translating Dynamic Island

English is the source of truth. The app currently supports English (`en`), Korean (`ko`), Japanese (`ja`), Simplified Chinese (`zh`), Russian (`ru`) and Turkish (`tr`).

## Files translators edit

- **English source:** [`app/src/main/res/values/strings.xml`](../app/src/main/res/values/strings.xml).
- **Your translation:** `app/src/main/res/values-<language>/strings.xml`.
- **Supported-language list:** [`app/src/main/res/xml/locales_config.xml`](../app/src/main/res/xml/locales_config.xml). This also registers languages with Android's per-app language settings.
- **Unfinished languages:** [`scripts/partial-languages.txt`](../scripts/partial-languages.txt).

All settings, module-owned status-bar/card text (`island_*`) and built-in stage names (`stage_label_*`) live in these files. There is no separate Java translation table or language-specific label JSON to edit. Build output under `app/build/generated/localization/` is generated and must not be committed.

Text and app/device names received from other apps are displayed as supplied. Translations do not add notification-content detection patterns: those remain in the English/Korean rule dictionaries. A translator can contribute detection rules separately.

## Add a language

1. Create a commented template using an ISO language code, or a language-region tag when the region matters:

   ```sh
   python3 scripts/translations.py init de
   python3 scripts/translations.py init pt-BR
   ```

   The template contains English source comments and values to translate. Do not edit resource names. A region tag such as `pt-BR` is stored as `values-pt-rBR` (Android's qualifier) and listed as `pt-BR` in `locales_config.xml`.
2. Translate values in the generated file. Preserve existing XML attributes and formatting placeholders. Product names and technical examples marked `translatable="false"` are inherited from English and omitted from the template.
3. Add `<locale android:name="de" />` to `locales_config.xml`. No Java changes are required. Keep English first. A base language (`de`) also serves its regional variants (`de-DE`, `de-AT`); add a region tag only when that region needs its own wording. The current Chinese translation is Simplified Chinese.
4. Run:

   ```sh
   python3 scripts/translations.py check
   ./gradlew testReleaseUnitTest assembleRelease
   ```

### Unfinished translations are welcome

A translation does not have to be complete to be registered. Delete the entries you have not translated (or leave them out), register the language in `locales_config.xml`, and add its tag on its own line to [`scripts/partial-languages.txt`](../scripts/partial-languages.txt). Android and SystemUI show English for every string the language lacks, so the app keeps working and more strings can be added in later pull requests. Remove the line from `partial-languages.txt` once the language is complete; from then on the check requires every string again.

Partial languages are still checked for mistakes: unknown keys, empty values and format placeholders that differ from English are errors. Only "this string is not translated yet" is allowed.

The check reports missing, empty, unknown and duplicate keys and incompatible format placeholders. CI and release builds run it. Android and SystemUI fall back to English if a locale or key is unavailable, so a language that is not listed in `partial-languages.txt` is nevertheless required to be complete before merging.

## Formatting and context

- `%1$s` is text, `%1$d` an integer, and `%%` a literal percent sign. Indexed arguments can be reordered; preserve their indices and types. For example, `Reply to %1$s` and `%1$sに返信` are both valid.
- Use Android escapes: `\n` for a line break, `\'` for an apostrophe and `\"` for a literal double quote. XML characters use `&amp;` and `&lt;`. Quote the entire value to retain intentional leading/trailing spaces.
- `island_setting_on`/`island_setting_off` take a setting name. `island_more_apps` is a suffix after app names. `stage_label_food_1` means the food-delivery preparation stage, not notification detection wording.
- Keep titles concise and descriptions natural. Do not translate package names, colour codes, URLs, regex examples or user handles such as `@UnkilBonki`.
- `search_terms_*` contains search vocabulary, not a visible label: use common local synonyms and alternate names. `search_stop_words` contains only generic filler words. The search index automatically includes each registered language and its translated setting names.
- SystemUI text follows the device locale; Android's per-app language selection controls the settings app. Both use the same translations.

## How it is built

[`gradle/localization.gradle`](../gradle/localization.gradle) reads registered Android resource files and generates UTF-8 JVM catalogs and stage-label JSON. It also compiles those outputs and the built-in Korean/English rule dictionaries into generated Java bytecode. Settings use normal Android resource selection; the module inside SystemUI reads the embedded data even when an in-memory LSPosed/Vector loader does not expose APK resources. New language files therefore do not require resource-context reflection or a hand-maintained Java translation table inside SystemUI.

The localization tests compare Android strings with the generated catalogs, exercise format arguments and English fallback, and protect custom rule labels. A resource-blind classloader test checks the same lookup failure reported on Nothing OS, including flashlight On/Off labels, all six languages, English fallback, formatting and built-in rules. To review settings in all six languages, run `./gradlew testReleaseUnitTest -Prender --tests '*SettingsCaptureTest' --tests '*SettingsRenderTest'`. Build screenshots are under `app/build/render/` and are review aids, not real-device screenshots.
