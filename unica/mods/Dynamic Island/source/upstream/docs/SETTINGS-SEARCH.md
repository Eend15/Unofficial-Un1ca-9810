# Settings search

Settings search is an offline ranked index, not a network or generative service. The hub has a search entry, and subpage headers have a search button. Results include the destination path and description; selecting one opens the existing page, scrolls to the row and briefly highlights it. It never clicks a switch, executes a tool or enables a hidden control. Hidden/dependent rows lead to their parent option with a short explanation.

`SettingsSearchCatalog` declares searchable titles, descriptions, choice labels, related terms and safe page destinations. It reads the current locale and all languages registered in `locales_config.xml`, so English terms and translated names remain searchable regardless of the app language. New translated languages need no Java language list. Building the index never instantiates pages, starts previews, reads notification contents or changes preferences.

`SettingsSearchEngine` weights titles above descriptions and paths, combines terms across fields, normalizes spacing/full-width text/Latin diacritics, supports Korean initial-consonant queries, and uses bounded Damerau-style typo matching. All non-filler query terms must match; exact phrases rank above fuzzy matches. Very short terms do not get typo expansion. This is curated vocabulary and fuzzy retrieval, not unrestricted natural-language understanding.

`SettingsSearchScreen` debounces input for 120 ms and builds/searches the index on one worker. Generation and view checks discard obsolete results after typing, navigation or lifecycle changes. The query is retained on back navigation and saved during recreation. Queries are not stored in preferences or sent anywhere.

To index a new setting, add one catalog entry with its route, title, optional description, vocabulary group, parent fallback and choice labels. Regular OneUi rows are tagged by their displayed title; custom slider containers also need that tag for precise navigation. Do not use a mutating action as a destination. Add local synonyms to the translated `search_terms_*` strings; `search_stop_words` contains only generic filler words. Keep English as the source.

Focused tests cover intent ranking, multi-term rejection, spacing, full-width text, Turkish folding, Korean initials, typos, cross-language lookup, navigation without preference changes and query restoration. `-Prender --tests '*SettingsSearchTest'` also exports a Korean results screen to `app/build/render/settings_search_ko_results.png`.
