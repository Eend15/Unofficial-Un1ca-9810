package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.DeadlineGate;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.xposed.Refl;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiPredicate;

/**
 * Tracks the active media sessions and offers the one worth showing as a media card: the playing
 * session that was active last, or a paused one for a while after it stopped. Keeps a memory of
 * each player's album art so the card does not flicker between tracks. Main thread only.
 */
public final class MediaSource {
    /** How long the previous cover stays while a player has dropped it for a new track. */
    private static final long ART_GRACE_MS = 1500;
    /** Rapid track changes cannot retain the previous song's cover indefinitely. */
    private static final long MAX_MISSING_ART_MS = ART_GRACE_MS * 2;
    /** At most this many custom playback actions (like, shuffle ...) are put on the card. */
    private static final int MAX_CUSTOM_ACTIONS = 2;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private final MediaForegroundGate foregroundGate = new MediaForegroundGate();
    private MediaSession.Token foregroundRetryToken;
    private final Runnable foregroundRetry = new Runnable() {
        @Override
        public void run() {
            MediaSession.Token expected = foregroundRetryToken;
            foregroundRetryToken = null;
            if (expected != null && foregroundGate.owns(expected) && sessions.containsKey(expected)) {
                onChange.run(); // gather again with fresh task information, never replay an old card
            }
        }
    };
    /** This source's own delayed refresh: sharing {@code onChange} would let another source cancel it. */
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            onChange.run();
        }
    };
    private static final int MAX_RETIRED = 4;
    private final AppAssets assets;
    private final Map<MediaSession.Token, Session> sessions = new HashMap<>();
    /**
     * The last card of players whose session ended (a stopped song): the notification shade keeps showing their player
     * for a while, and it should keep its look instead of falling back to the stock one.
     */
    private final Map<MediaSession.Token, IslandItem> retired = new java.util.LinkedHashMap<MediaSession.Token, IslandItem>() {
        @Override
        protected boolean removeEldestEntry(Map.Entry<MediaSession.Token, IslandItem> eldest) {
            return size() > MAX_RETIRED;
        }
    };
    private final Map<String, Cover> covers = new HashMap<>();
    private final MediaSessionManager.OnActiveSessionsChangedListener sessionsListener = this::sync;
    private OutputSource output;
    private BiPredicate<String, Integer> recordingFilter = (pkg, userId) -> false;
    /** Ended recording sessions must not reappear as stock shade players through the retired cache. */
    private final Map<MediaSession.Token, Boolean> retiredRecordings = new java.util.LinkedHashMap<MediaSession.Token, Boolean>() {
        @Override
        protected boolean removeEldestEntry(Map.Entry<MediaSession.Token, Boolean> eldest) {
            return size() > MAX_RETIRED;
        }
    };

    public void setRecordingFilter(BiPredicate<String, Integer> filter) {
        recordingFilter = filter;
    }

    /** Whether this session is a recording rather than playback, including a just-ended recording. */
    public boolean isRecordingSession(MediaSession.Token token) {
        Session session = sessions.get(token);
        if (session != null) {
            return session.blockedByRecording();
        }
        IslandItem previous = retired.get(token);
        return retiredRecordings.containsKey(token) || (previous != null
                && recordingFilter.test(previous.packageName, previous.userId));
    }

    public MediaSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
        this.assets = new AppAssets(ctx);
    }

    public void start() {
        output = new OutputSource(ctx, main, () -> {
            for (Session s : sessions.values()) {
                s.card = null; // rebuilt with the new output device
            }
            onChange.run();
        });
        output.start();
        try {
            MediaSessionManager manager = ctx.getSystemService(MediaSessionManager.class);
            manager.addOnActiveSessionsChangedListener(sessionsListener, null, main);
            sync(manager.getActiveSessions(null));
        } catch (Throwable t) {
            XLog.e("media sessions unavailable", t);
        }
    }

    /** Replaces the tracked sessions with {@code controllers}, keeping the state of those still active. */
    public void sync(List<MediaController> controllers) {
        // A prior paused player's deadline must not wake an idle source after
        // its session disappears or transitions to a new player.
        main.removeCallbacks(tick);
        Map<MediaSession.Token, Session> next = new HashMap<>();
        if (controllers != null) {
            for (MediaController controller : controllers) {
                Session known = sessions.remove(controller.getSessionToken());
                next.put(controller.getSessionToken(), known != null ? known : new Session(controller));
            }
        }
        for (Map.Entry<MediaSession.Token, Session> gone : sessions.entrySet()) {
            gone.getValue().retire();
        }
        retired.keySet().removeAll(next.keySet());
        retiredRecordings.keySet().removeAll(next.keySet());
        sessions.clear();
        sessions.putAll(next);
        if (!sessions.containsKey(foregroundGate.token())) {
            cancelForegroundRetry();
            foregroundGate.clear();
        }
        forgetGonePlayers();
        onChange.run();
    }

    /** Cancel old pause/artwork deadlines before disabling this runtime. */
    public void cancelPending() {
        main.removeCallbacks(tick);
        for (Cover cover : covers.values()) {
            cover.cancelExpiry();
        }
    }

    /** Cover memory and cached action icons of players without a session are let go. */
    private void forgetGonePlayers() {
        Set<String> live = new HashSet<>();
        for (Session s : sessions.values()) {
            live.add(s.controller.getPackageName());
        }
        for (Map.Entry<String, Cover> entry : covers.entrySet()) {
            if (!live.contains(entry.getKey())) {
                entry.getValue().cancelExpiry();
            }
        }
        covers.keySet().retainAll(live);
        assets.retainActionIconsOf(live);
    }

    /** Existing callers already supply their foreground decision; null means no filtering. */
    public void collect(List<IslandItem> out, String foreground, Set<String> hiddenByForeground, Collection<String> packages) {
        collect(out, foreground, true, hiddenByForeground, packages);
    }

    /** A cached/unknown foreground is rechecked before a newly selected session is admitted. */
    public void collect(List<IslandItem> out, String foreground, boolean confirmedForeground,
            Set<String> hiddenByForeground, Collection<String> packages) {
        cancelForegroundRetry();
        main.removeCallbacks(tick);
        long now = SystemClock.uptimeMillis();
        Session shown = pickSession(now);
        if (shown == null) {
            foregroundGate.clear();
            return;
        }
        if (!shown.isPlaying()) {
            long remaining = ModuleSettings.pausedTimeoutMs() - (now - shown.lastActive);
            main.postDelayed(tick, Math.max(50L, remaining + 50));
        }
        String pkg = shown.controller.getPackageName();
        MediaSession.Token token = shown.controller.getSessionToken();
        packages.add(pkg);
        IslandItem card = shown.card();
        if (foregroundGate.shouldHide(token, pkg, foreground, confirmedForeground, now)) {
            hiddenByForeground.add(card.key);
            long deadline = foregroundGate.retryAt();
            if (deadline > now) {
                foregroundRetryToken = token;
                main.postDelayed(foregroundRetry, deadline - now);
            }
        } else {
            out.add(card);
        }
    }

    private void cancelForegroundRetry() {
        main.removeCallbacks(foregroundRetry);
        foregroundRetryToken = null;
    }

    /** The most recently active playing session; failing that the most recent one paused within the timeout. */
    private Session pickSession(long now) {
        return pickSession(now, false);
    }

    /** Glow follows a real session even while its pill is hidden or its paused-card timeout has elapsed. */
    public IslandItem glowSession() {
        Session session = pickSession(SystemClock.uptimeMillis(), true);
        return session == null ? null : session.card();
    }

    private Session pickSession(long now, boolean forGlow) {
        Session playing = null;
        Session paused = null;
        for (Session s : sessions.values()) {
            if (s.blockedByRecording() || !s.hasContent()) {
                continue;
            }
            if (s.isPlaying()) {
                if (playing == null || s.lastActive > playing.lastActive) {
                    playing = s;
                }
            } else if (((forGlow && s.state != null && (s.state.getState() == PlaybackState.STATE_PAUSED
                    || s.state.getState() == PlaybackState.STATE_STOPPED))
                    || (s.lastActive > 0 && now - s.lastActive < ModuleSettings.pausedTimeoutMs()))
                    && (paused == null || s.lastActive > paused.lastActive)) {
                paused = s;
            }
        }
        return playing != null ? playing : paused;
    }

    /** Card for one media session (the shade's media tile), or null when it has nothing to show. */
    public IslandItem itemForSession(MediaSession.Token token) {
        Session s = sessions.get(token);
        if (s != null) {
            return !s.blockedByRecording() && s.hasContent() ? s.card() : null;
        }
        return isRecordingSession(token) ? null : retired.get(token);
    }

    /**
     * Album art to show for a track. Some players briefly drop the bitmap while switching tracks, so
     * the previous art is kept for {@link #ART_GRACE_MS} before falling back to the app icon.
     */
    public Bitmap resolveArt(String pkg, Bitmap art, String track) {
        Cover cover = covers.computeIfAbsent(pkg, p -> new Cover(p));
        if (art != null) {
            cover.cancelExpiry();
            if (cover.art != null && cover.art != art && looksIdentical(cover.art, art)) {
                art = cover.art; // keep the instance already analysed
            }
            if (art != cover.art) {
                cover.art = art;
                cover.palette = CoverAccent.palette(art);
            }
            cover.track = track;
            cover.pendingTrack = null;
            cover.missingSince = 0L;
            return art;
        }
        if (cover.art == null) {
            cover.cancelExpiry();
            cover.missingSince = 0L;
            return null;
        }
        if (track.equals(cover.track)) {
            cover.cancelExpiry();
            cover.pendingTrack = null;
            cover.missingSince = 0L;
            return cover.art;
        }
        long now = SystemClock.uptimeMillis();
        if (cover.missingSince == 0L) {
            cover.missingSince = now;
        }
        if (!track.equals(cover.pendingTrack)) {
            cover.cancelExpiry();
            cover.pendingTrack = track;
            cover.pendingSince = now;
        }
        long deadline = Math.min(cover.pendingSince + ART_GRACE_MS,
                cover.missingSince + MAX_MISSING_ART_MS);
        long left = deadline - now;
        if (left <= 0) {
            cover.cancelExpiry();
            cover.art = null;
            cover.pendingTrack = null;
            cover.missingSince = 0L;
            return null;
        }
        // Repeated metadata callbacks in this 1.5s interval must not queue
        // redundant refreshes for exactly the same pending artwork.
        cover.expiry.scheduleLatest(deadline + 20);
        return cover.art;
    }

    /** Drops the cached cards of a player so they are rebuilt (its art grace period is over). */
    private void rebuildCards(String pkg) {
        for (Session s : sessions.values()) {
            if (s.controller.getPackageName().equals(pkg)) {
                s.card = null;
            }
        }
        onChange.run();
    }

    private static boolean looksIdentical(Bitmap a, Bitmap b) {
        try {
            return a.getWidth() == b.getWidth() && a.getHeight() == b.getHeight() && a.sameAs(b);
        } catch (Throwable t) {
            return false;
        }
    }

    public String appLabel(String pkg) {
        return assets.label(pkg);
    }

    public Drawable appIcon(String pkg) {
        return assets.icon(pkg);
    }

    /** Accent colour of a cover, see {@link CoverAccent#of}. */
    static int vibrant(Bitmap art) {
        return CoverAccent.of(art);
    }

    /** The last cover of one player and the track it belonged to. */
    private final class Cover {
        final DeadlineGate expiry;
        Bitmap art;
        ArtworkPalette palette;
        String track;
        /** Track that arrived without art, and since when we have been waiting for it. */
        String pendingTrack;
        long pendingSince;
        /** First artwork-free track in the current burst, not reset on each track switch. */
        long missingSince;
        Cover(String pkg) {
            expiry = new DeadlineGate(new DeadlineGate.Scheduler() {
                @Override public boolean postAtTime(Runnable r, long uptime) {
                    return main.postAtTime(r, uptime);
                }
                @Override public void removeCallbacks(Runnable r) {
                    main.removeCallbacks(r);
                }
            }, () -> rebuildCards(pkg));
        }

        void cancelExpiry() {
            expiry.cancel();
        }
    }

    /** One media session with the latest playback state and metadata it reported. */
    private final class Session extends MediaController.Callback {
        final MediaController controller;
        final int userId;
        /** Cleared only by a fresh playback event after the raw recording activity goes away. */
        boolean recorded;
        /** Saved-file metadata can arrive just before the old ongoing activity is removed. */
        boolean playbackPending;
        MediaMetadata meta;
        PlaybackState state;
        long lastActive;
        /** The card for the current state; null when it must be rebuilt. */
        IslandItem card;
        private Bitmap paletteArt;
        private ArtworkPalette palette;

        Session(MediaController controller) {
            this.controller = controller;
            int uid = Refl.getInt(controller.getSessionToken(), "mUid", -1);
            userId = uid < 0 ? -1 : uid / 100_000;
            state = controller.getPlaybackState();
            meta = controller.getMetadata();
            if (isPlaying()) {
                lastActive = SystemClock.uptimeMillis();
            }
            controller.registerCallback(this, main);
        }

        /** Stops listening and keeps the last card for the shade, which may still show this player. */
        void retire() {
            if (blockedByRecording()) {
                retired.remove(controller.getSessionToken());
                retiredRecordings.put(controller.getSessionToken(), Boolean.TRUE);
            } else if (hasContent()) {
                IslandItem last = card();
                last.playing = false;
                retired.put(controller.getSessionToken(), last);
            }
            release();
        }

        void release() {
            try {
                controller.unregisterCallback(this);
            } catch (Throwable t) {
                // already unregistered
            }
        }

        boolean isPlaying() {
            if (state == null) {
                return false;
            }
            switch (state.getState()) {
                case PlaybackState.STATE_PLAYING:
                case PlaybackState.STATE_BUFFERING:
                case PlaybackState.STATE_FAST_FORWARDING:
                case PlaybackState.STATE_REWINDING:
                case PlaybackState.STATE_SKIPPING_TO_NEXT:
                case PlaybackState.STATE_SKIPPING_TO_PREVIOUS:
                case PlaybackState.STATE_SKIPPING_TO_QUEUE_ITEM:
                    return true; // changing track: the glow must not dim for the moment it takes
                default:
                    return false;
            }
        }

        boolean hasContent() {
            return meta != null && (meta.getString(MediaMetadata.METADATA_KEY_TITLE) != null
                    || meta.getString(MediaMetadata.METADATA_KEY_DISPLAY_TITLE) != null);
        }

        boolean recordingNow() {
            return recordingFilter.test(controller.getPackageName(), userId);
        }

        boolean blockedByRecording() {
            if (recordingNow()) {
                if (!recorded) {
                    playbackPending = false;
                }
                recorded = true;
                card = null;
                retired.remove(controller.getSessionToken());
            } else if (recorded && playbackPending && isPlaying()) {
                recorded = false;
                playbackPending = false;
            }
            return recorded;
        }

        /** A stale STATE_PLAYING or blank recording title alone must not revive a stopped recorder. */
        void allowFreshPlayback() {
            if (isPlaying() && meta != null) {
                CharSequence title = firstText(MediaMetadata.METADATA_KEY_TITLE, MediaMetadata.METADATA_KEY_DISPLAY_TITLE);
                if (title != null && !title.toString().trim().isEmpty()) {
                    if (!recordingNow()) {
                        recorded = false;
                        playbackPending = false;
                    } else if (recorded && meta.getLong(MediaMetadata.METADATA_KEY_DURATION) > 0) {
                        playbackPending = true;
                    }
                }
            }
        }

        @Override
        public void onPlaybackStateChanged(PlaybackState newState) {
            blockedByRecording();
            boolean wasPlaying = isPlaying();
            state = newState;
            allowFreshPlayback();
            if (wasPlaying || isPlaying()) {
                lastActive = SystemClock.uptimeMillis();
            }
            card = null;
            onChange.run();
        }

        @Override
        public void onMetadataChanged(MediaMetadata newMeta) {
            blockedByRecording();
            meta = newMeta;
            allowFreshPlayback();
            card = null;
            onChange.run();
        }

        @Override
        public void onSessionDestroyed() {
            if (sessions.remove(controller.getSessionToken()) != null) {
                if (foregroundGate.owns(controller.getSessionToken())) {
                    cancelForegroundRetry();
                    foregroundGate.clear();
                }
                retire();
            }
            release();
            forgetGonePlayers();
            onChange.run();
        }

        /** The card of this session, rebuilt only after the state, metadata or output device changed. */
        IslandItem card() {
            if (card == null) {
                card = buildCard();
            }
            return card;
        }

        private IslandItem buildCard() {
            String pkg = controller.getPackageName();
            IslandItem it = new IslandItem("media:" + pkg);
            it.kind = IslandItem.Kind.MEDIA;
            it.isMedia = true;
            it.packageName = pkg;
            it.userId = userId;
            it.playing = isPlaying();
            it.appName = assets.label(pkg);
            it.trailing = IslandItem.Trailing.WAVEFORM;
            it.postTime = lastActive;
            it.contentIntent = controller.getSessionActivity();

            CharSequence title = firstText(MediaMetadata.METADATA_KEY_TITLE, MediaMetadata.METADATA_KEY_DISPLAY_TITLE);
            CharSequence artist = firstText(MediaMetadata.METADATA_KEY_ARTIST, MediaMetadata.METADATA_KEY_ALBUM_ARTIST,
                    MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE);
            it.title = title;
            it.subtitle = artist;
            bindImages(it, pkg, title + "|" + artist);
            bindOutput(it);
            bindPlayback(it);
            bindCustomActions(it, pkg);
            return it;
        }

        private CharSequence firstText(String... keys) {
            for (String key : keys) {
                CharSequence value = meta.getText(key);
                if (value != null) {
                    return value;
                }
            }
            return null;
        }

        private void bindImages(IslandItem it, String pkg, String track) {
            Bitmap fromMeta = null;
            for (String key : new String[]{MediaMetadata.METADATA_KEY_ALBUM_ART, MediaMetadata.METADATA_KEY_ART,
                    MediaMetadata.METADATA_KEY_DISPLAY_ICON}) {
                fromMeta = meta.getBitmap(key);
                if (fromMeta != null) {
                    break;
                }
            }
            Bitmap art = resolveArt(pkg, fromMeta, track);
            if (art != paletteArt) {
                paletteArt = art;
                Cover cover = covers.get(pkg);
                palette = art == null ? null : (cover == null || cover.art != art)
                        ? CoverAccent.palette(art) : cover.palette;
            }
            Drawable appIcon = assets.icon(pkg);
            it.art = art;
            if (art != null) {
                it.icon = new BitmapDrawable(ctx.getResources(), art);
                it.cardImage = new BitmapDrawable(ctx.getResources(), art);
            } else {
                it.icon = appIcon;
                it.cardImage = appIcon;
            }
            it.iconIsImage = true;
            it.cardImageIsImage = true;
            it.mediaPalette = palette;
            it.accent = palette == null ? -1 : palette.primary;
            it.appIcon = appIcon;
            if (appIcon instanceof AdaptiveIconDrawable) {
                Drawable monochrome = ((AdaptiveIconDrawable) appIcon).getMonochrome();
                if (monochrome != null) {
                    it.appGlyph = monochrome.mutate();
                }
            }
        }

        private void bindOutput(IslandItem it) {
            OutputSource.Output current = output == null ? null : output.current();
            if (current != null && current.name != null) {
                it.mediaOutput = current.name;
                it.mediaOutputIcon = GlyphIcon.of(current.icon);
                it.mediaOutputBattery = current.battery;
            }
        }

        private void bindPlayback(IslandItem it) {
            long duration = meta.getLong(MediaMetadata.METADATA_KEY_DURATION);
            it.mediaDuration = duration > 0 ? duration : -1L;
            MediaController.TransportControls controls = controller.getTransportControls();
            it.mediaPrev = controls::skipToPrevious;
            it.mediaNext = controls::skipToNext;
            it.mediaPlayPause = () -> {
                if (isPlaying()) {
                    controls.pause();
                } else {
                    controls.play();
                }
            };
            if (state == null) {
                return;
            }
            it.mediaPosition = state.getPosition();
            it.mediaPositionUpdateTime = state.getLastPositionUpdateTime();
            it.mediaSpeed = state.getPlaybackSpeed() == 0.0f ? 1.0f : state.getPlaybackSpeed();
            if ((state.getActions() & PlaybackState.ACTION_SEEK_TO) != 0) {
                it.mediaSeek = controls::seekTo;
            }
        }

        private void bindCustomActions(IslandItem it, String pkg) {
            if (state == null || state.getCustomActions() == null) {
                return;
            }
            MediaController.TransportControls controls = controller.getTransportControls();
            for (PlaybackState.CustomAction custom : state.getCustomActions()) {
                Drawable icon;
                try {
                    icon = assets.actionIcon(pkg, custom.getIcon());
                } catch (Throwable t) {
                    icon = null;
                }
                it.mediaCustom.add(new IslandItem.Action(custom.getName(), icon, null,
                        () -> controls.sendCustomAction(custom.getAction(), custom.getExtras()), false));
                if (it.mediaCustom.size() == MAX_CUSTOM_ACTIONS) {
                    break;
                }
            }
        }
    }
}
