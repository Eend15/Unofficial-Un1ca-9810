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
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Tracks the active media sessions and offers the one worth showing as a media card: the playing
 * session that was active last, or a paused one for a while after it stopped. Keeps a memory of
 * each player's album art so the card does not flicker between tracks. Main thread only.
 */
public final class MediaSource {
    /** How long the previous cover stays while a player has dropped it for a new track. */
    private static final long ART_GRACE_MS = 1500;
    /** At most this many custom playback actions (like, shuffle ...) are put on the card. */
    private static final int MAX_CUSTOM_ACTIONS = 2;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
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
        sessions.clear();
        sessions.putAll(next);
        forgetGonePlayers();
        onChange.run();
    }

    /** Cover memory and cached action icons of players without a session are let go. */
    private void forgetGonePlayers() {
        Set<String> live = new HashSet<>();
        for (Session s : sessions.values()) {
            live.add(s.controller.getPackageName());
        }
        covers.keySet().retainAll(live);
        assets.retainActionIconsOf(live);
    }

    /** Adds the card of the session worth showing, or notes it in {@code hiddenByForeground} when its app is on screen. */
    public void collect(List<IslandItem> out, String foreground, Set<String> hiddenByForeground, Collection<String> packages) {
        long now = SystemClock.uptimeMillis();
        Session shown = pickSession(now);
        if (shown == null) {
            return;
        }
        if (!shown.isPlaying()) {
            // come back when the paused card is due to leave
            long remaining = ModuleSettings.pausedTimeoutMs() - (now - shown.lastActive);
            main.removeCallbacks(tick);
            main.postDelayed(tick, Math.max(50L, remaining + 50));
        }
        String pkg = shown.controller.getPackageName();
        packages.add(pkg);
        IslandItem card = shown.card();
        if (pkg.equals(foreground)) {
            hiddenByForeground.add(card.key);
        } else {
            out.add(card);
        }
    }

    /** The most recently active playing session; failing that the most recent one paused within the timeout. */
    private Session pickSession(long now) {
        Session playing = null;
        Session paused = null;
        for (Session s : sessions.values()) {
            if (!s.hasContent()) {
                continue;
            }
            if (s.isPlaying()) {
                if (playing == null || s.lastActive > playing.lastActive) {
                    playing = s;
                }
            } else if (s.lastActive > 0 && now - s.lastActive < ModuleSettings.pausedTimeoutMs()
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
            return s.hasContent() ? s.card() : null;
        }
        return retired.get(token);
    }

    /**
     * Album art to show for a track. Some players briefly drop the bitmap while switching tracks, so
     * the previous art is kept for {@link #ART_GRACE_MS} before falling back to the app icon.
     */
    public Bitmap resolveArt(String pkg, Bitmap art, String track) {
        Cover cover = covers.computeIfAbsent(pkg, p -> new Cover());
        if (art != null) {
            if (cover.art != null && cover.art != art && looksIdentical(cover.art, art)) {
                art = cover.art; // keep the instance already analysed
            }
            if (art != cover.art) {
                cover.art = art;
                cover.accent = CoverAccent.of(art);
            }
            cover.track = track;
            cover.pendingTrack = null;
            return art;
        }
        if (cover.art == null) {
            return null;
        }
        if (track.equals(cover.track)) {
            return cover.art;
        }
        long now = SystemClock.uptimeMillis();
        if (!track.equals(cover.pendingTrack)) {
            cover.pendingTrack = track;
            cover.pendingSince = now;
        }
        long left = ART_GRACE_MS - (now - cover.pendingSince);
        if (left <= 0) {
            return null;
        }
        main.postDelayed(() -> rebuildCards(pkg), 20 + left);
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
    private static final class Cover {
        Bitmap art;
        int accent = -1;
        String track;
        /** Track that arrived without art, and since when we have been waiting for it. */
        String pendingTrack;
        long pendingSince;
    }

    /** One media session with the latest playback state and metadata it reported. */
    private final class Session extends MediaController.Callback {
        final MediaController controller;
        MediaMetadata meta;
        PlaybackState state;
        long lastActive;
        /** The card for the current state; null when it must be rebuilt. */
        IslandItem card;
        private Bitmap accentArt;
        private int accent = -1;

        Session(MediaController controller) {
            this.controller = controller;
            state = controller.getPlaybackState();
            meta = controller.getMetadata();
            if (isPlaying()) {
                lastActive = SystemClock.uptimeMillis();
            }
            controller.registerCallback(this, main);
        }

        /** Stops listening and keeps the last card for the shade, which may still show this player. */
        void retire() {
            if (hasContent()) {
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

        @Override
        public void onPlaybackStateChanged(PlaybackState newState) {
            boolean wasPlaying = isPlaying();
            state = newState;
            if (wasPlaying || isPlaying()) {
                lastActive = SystemClock.uptimeMillis();
            }
            card = null;
            onChange.run();
        }

        @Override
        public void onMetadataChanged(MediaMetadata newMeta) {
            meta = newMeta;
            card = null;
            onChange.run();
        }

        @Override
        public void onSessionDestroyed() {
            if (sessions.remove(controller.getSessionToken()) != null) {
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
            if (art != accentArt) {
                accentArt = art;
                Cover cover = covers.get(pkg);
                accent = art == null ? -1 : (cover == null || cover.art != art) ? CoverAccent.of(art) : cover.accent;
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
            it.accent = accent;
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
