# Release recommendations

The home page shows one feature card directly below settings search. `ReleaseHighlights` is the
curated content registry: each release family supplies stable feature IDs, translated title/summary
resources, artwork and an existing settings destination. Add the next release here when preparing it;
unknown release families show no stale recommendations. Stable and development versions of a family
share its list, while history and dismissal are keyed by the exact installed version name.

The 0.1.14 list contains five cards: iMotion, its hide/restore gestures, expanding-beam flashlight,
settings search and the explicitly experimental frosted material. Both iMotion cards open the animation
setting; none changes the selected animation style.

The 0.1.16 list contains nine cards: always-visible island, hiding gestures,
individual performance options, wallpaper colours, pull down to open, popup time,
wide charging popup, charging details as text, and privacy indicators for the app
on screen. Each points to an existing setting. The charging-text card explains
that charging details must be on first; the privacy card explains its master
switch. Wide charging points to the Samsung charging-effect option and explicitly
describes the off state. Automatic fixes and maintenance actions are kept in the
release notes rather than presented as settings to enable.

Candidates are chosen randomly without replacement. After every candidate has been shown, a new
cycle starts without immediately repeating the last feature. A normal home-page redraw, navigation
back from settings or activity recreation preserves the current card. There is no automatic timer.
“Next suggestion” chooses another candidate; “Explore” opens and locates its real setting. Features
are never enabled automatically.

The close button hides recommendations for that exact version. The next installed release can show
its own card again; **About → What’s new** also restores the current version’s banner. Selection
history uses a private `release_recommendations` preferences file, separate from module settings and
SystemUI change notifications. All user-facing copy comes from Android resource catalogs,
with English as the source and fallback for unfinished community translations.

Local review APKs can use `-PlocalVersionName=0.1.14-dev24-imotion-test8` to make the installed module
identifiable in diagnostics without changing the repository’s normal release version.
