package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.HapticFeedbackConstants;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Spring;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.CardBody;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * One selected activity unfolds from its own compact surface. Other activities trade places in the
 * status row while the outgoing and incoming cards move concurrently. This owns presentation only:
 * source priority, notification dismissal and the normal stack renderer remain independent.
 */
final class IMode {
    // The reference resolves its content in about 250 ms and its geometry in about 350 ms.
    static final float RESPONSE = .34f, DAMPING = .90f;
    private final IslandView view;
    private final IslandHost host;
    private final Metrics m;
    private final Scene scene;
    private final BodyFactory bodies;
    private final Director director;
    private final Map<String, Node> nodes = new LinkedHashMap<>();
    private final List<IslandItem> activities = new ArrayList<>();
    private final RectF rect = new RectF(), source = new RectF();
    private final Path clip = new Path();
    private final Path glowExclusion = new Path();
    private final RectF glowBounds = new RectF();
    private final Path outlineOcclusion=new Path(),outlineSurface=new Path();
    private final RectF outlineBounds=new RectF();
    private final Path gatherMask=new Path();
    private final RectF gatherOther=new RectF();
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private String selected;
    private String rowAnchor;
    private boolean initialized;
    private int rowCount;
    private final List<IslandItem> visible = new ArrayList<>(2);
    private Card swipeCard, swipePreview;
    private int swipeDirection;
    private float swipeStart;
    private CompactPage compactPage;
    private boolean gestureHidden;
    private final Spring outline=new Spring(1,.22f,1).setValueThreshold(.001f);

    /** Compact paging keeps one outline per slot; contents move inside it instead of crossing bodies. */
    private final class CompactPage {
        final List<Node> from, to;
        final String anchor;
        final int direction;
        final boolean header;
        final RectF fromMain=new RectF(),fromBubble=new RectF(),toMain=new RectF(),toBubble=new RectF();
        final RectF main=new RectF(),bubble=new RectF();
        final Spring progress=new Spring(0,.30f,.9f).setValueThreshold(.001f);
        final Spring pull=new Spring(0,.36f,.78f).setValueThreshold(.015f);
        final Spring load=new Spring(0,.34f,.82f).setValueThreshold(.001f);
        final ContentBlur[] blur={new ContentBlur(),new ContentBlur(),new ContentBlur(),new ContentBlur()};
        boolean released, commit;
        CompactPage(int direction) {
            this.direction=direction;header=false;from=rowNodes();
            int index=0;
            for(int i=0;i<activities.size();i++) if(activities.get(i).key.equals(from.get(0).item.key)) index=i;
            anchor=activities.get(Math.floorMod(index+direction,activities.size())).key;
            to=rowNodes(anchor);
            from.get(0).bounds(fromMain);if(from.size()>1) from.get(1).bounds(fromBubble);
            rowFrame(to,toMain,toBubble);bounds();
        }
        CompactPage(int direction,String incomingKey) {
            this.direction=direction;header=true;anchor=rowAnchor;
            from=rowNodes();to=rowNodes(rowAnchor,incomingKey);
            from.get(0).bounds(fromMain);if(from.size()>1) from.get(1).bounds(fromBubble);
            rowFrame(to,toMain,toBubble);bounds();
        }
        void bounds() {
            float p=IslandView.clamp01(progress.value());
            interpolate(fromMain,toMain,p,main);interpolate(fromBubble,toBubble,p,bubble);
            if(from.size()<2 && to.size()<2) bubble.setEmpty();
            // The shared outlines respond to the gesture too; they are not static containers.
            float tension=load.value();
            main.inset(-main.width()*.012f*tension,main.height()*.025f*tension);
            main.offset(pull.value(),-m.dp(1.2f)*tension);
            bubble.inset(bubble.width()*.015f*tension,bubble.height()*.015f*tension);
            bubble.offset(pull.value()*.65f,m.dp(.6f)*tension);
        }
        void clear() { for(ContentBlur layer:blur) layer.clear(); }
    }

    private static void interpolate(RectF a,RectF b,float p,RectF out) {
        out.set(a.left+(b.left-a.left)*p,a.top+(b.top-a.top)*p,
                a.right+(b.right-a.right)*p,a.bottom+(b.bottom-a.bottom)*p);
    }

    static final class Node {
        IslandItem item;
        CompactContent compact;
        BubbleContent bubble;
        final Spring x = geometry(), y = geometry(), w = geometry(), h = geometry();
        final Spring alpha = new Spring(0, .30f, 1).setValueThreshold(.002f);
        final Spring presence = new Spring(0,.38f,.92f).setValueThreshold(.001f);
        final Spring press = new Spring(1,.18f,.9f).setValueThreshold(.0005f);
        /** 0 = long pill content; 1 = icon-only bubble content. */
        final Spring iconOnly = new Spring(0, .28f, 1).setValueThreshold(.002f);
        final ContentBlur blur = new ContentBlur();
        final RectF target = new RectF();
        int slot = -1;
        boolean removed;
        Node(IslandView view, IslandItem item) { refresh(view, item); }
        void refresh(IslandView view, IslandItem next) {
            item = next;
            compact = new CompactContent(view, next);
            bubble = new BubbleContent(view, next);
        }
        void bounds(RectF r) {
            float appear=.48f+.52f*IslandView.clamp01(presence.value());
            float width = Math.max(1, w.value()*press.value()*appear), height = Math.max(1, h.value()*press.value()*appear);
            r.set(x.value()-width/2, y.value()-height/2, x.value()+width/2, y.value()+height/2);
        }
        boolean moving() {
            return !x.isAtRest() || !y.isAtRest() || !w.isAtRest() || !h.isAtRest()
                    || !alpha.isAtRest() || !presence.isAtRest() || !iconOnly.isAtRest() || !press.isAtRest();
        }
        boolean step(float dt) {
            return x.step(dt) | y.step(dt) | w.step(dt) | h.step(dt) | alpha.step(dt) | presence.step(dt) | iconOnly.step(dt) | press.step(dt);
        }
    }

    private static Spring geometry() {
        return new Spring(0, RESPONSE, DAMPING).setValueThreshold(.15f);
    }

    IMode(IslandView view, IslandHost host, Metrics metrics, Scene scene, BodyFactory bodies, Director director) {
        this.view=view; this.host=host; this.m=metrics; this.scene=scene;
        this.bodies=bodies; this.director=director;
        outline.snapTo(scene.pillOutlineTarget());
    }

    void update() {
        syncOutlineTarget();
        activities.clear();
        for (Node node : nodes.values()) node.removed=true;
        for (IslandItem item : scene.stackItems(Integer.MAX_VALUE)) {
            Node node=nodes.get(item.key);
            if (node!=null && !node.removed) continue; // a minimized source must not duplicate a live one
            activities.add(item);
            if (node==null) { node=new Node(view,item); seed(node); nodes.put(item.key,node); }
            else node.refresh(view,item);
            node.removed=false;
        }
        if(compactPage!=null && (compactPage.from.stream().anyMatch(n->n.removed)
                || compactPage.to.stream().anyMatch(n->n.removed))) finishCompactInteraction();
        if (scene.items.isEmpty()) {
            if(scene.mode==Mode.EXPANDED) collapse();
            selected=null;
            scene.mode=Mode.HIDDEN;
            director.cancelAutoCollapse();
            closeCards();
            layout();
            scene.springs.visibility.animateTo(0,.36f,1);
        } else {
            if (scene.mode==Mode.HIDDEN && !gestureHidden) scene.mode=Mode.COMPACT;
            scene.springs.visibility.animateTo(gestureHidden ? 0 : 1,.30f,1);
            if (selected!=null && (nodes.get(selected)==null || nodes.get(selected).removed)) {
                if (scene.peekOpen) collapse();
                else {
                    selected=null;
                    // Preserve an open presentation when its source ends; select the next remaining activity.
                    open(activities.get(0).key, false);
                }
            } else if (selected!=null) refreshCard(nodes.get(selected));
            layout();
        }
        scene.mainIn=scene.primary==null ? null : Layer.shown(new CompactContent(view,scene.primary));
        scene.bubbleIn=scene.secondary==null ? null : Layer.shown(new BubbleContent(view,scene.secondary));
        scene.mainOut=null; scene.bubbleOut=null; scene.contentHandoff=null;
        scene.springs.pillBlob.snapTo(1);
        initialized=true;
        resizeWindow();
        changed();
    }

    private void refreshCard(Node node) {
        Card card=scene.findCard(node.item.key);
        if (card==null || card.leaving) return;
        // Rebind current metadata without restarting the transition or losing a dragged control.
        {
            CardBody body=bodies.create(node.item,m.cardWidth(),false);
            if(view.seekBody==card.body && body instanceof dev.android.dynamicisland.island.view.card.MediaBody)
                view.seekBody=(dev.android.dynamicisland.island.view.card.MediaBody)body;
            if(view.sliderBody==card.body && body instanceof dev.android.dynamicisland.island.view.card.SliderBody)
                view.sliderBody=(dev.android.dynamicisland.island.view.card.SliderBody)body;
            card.item=node.item; card.body=body;
            targetExpanded(card);
        }
    }

    private void seed(Node node) {
        bubbleBounds(rect);
        if(rect.isEmpty()) rect.set(m.cx-m.pillH/2,m.cy-m.pillH/2,m.cx+m.pillH/2,m.cy+m.pillH/2);
        node.x.snapTo(rect.centerX());node.y.snapTo(rect.centerY());
        node.w.snapTo(rect.width());node.h.snapTo(rect.height());node.iconOnly.snapTo(1);
    }

    private List<Node> rowNodes() {
        return rowNodes(rowAnchor);
    }

    private List<Node> rowNodes(String anchor) {
        return rowNodes(anchor,selected);
    }
    private List<Node> rowNodes(String anchor,String exclude) {
        List<Node> row=new ArrayList<>();
        int first=0;
        if(anchor!=null) for(int i=0;i<activities.size();i++)
            if(activities.get(i).key.equals(anchor)) { first=i; break; }
        for(int i=0;i<activities.size();i++) {
            Node n=nodes.get(activities.get((first+i)%activities.size()).key);
            if(!n.item.key.equals(exclude)) row.add(n);
        }
        return row;
    }

    private void rowFrame(List<Node> row,RectF main,RectF bubble) {
        float diameter=m.bubbleR*2;
        float width=row.isEmpty() ? m.minPillW : scene.pillWidthFor(row.get(0).compact);
        float extra=row.size()>1 ? m.bubbleGap+diameter : 0;
        float margin=m.dp(8);
        width=Math.min(width,Math.max(m.pillH,m.screenW-2*margin-extra));
        float cx=Math.max(margin+width/2,Math.min(m.cx,m.screenW-margin-extra-width/2));
        float bubbleX=cx+width/2+m.bubbleGap+diameter/2;
        main.set(cx-width/2,m.cy-m.pillH/2,cx+width/2,m.cy+m.pillH/2);
        bubble.set(bubbleX-diameter/2,m.cy-diameter/2,bubbleX+diameter/2,m.cy+diameter/2);
    }

    private void layout() {
        layout(false);
    }
    private void layout(boolean preserveEntryOrigins) {
        List<Node> row=rowNodes();
        rowCount=row.size();
        scene.springs.split.snapTo(row.size()>1 ? 1 : 0);
        RectF frameMain=new RectF(),bubble=new RectF();rowFrame(row,frameMain,bubble);
        for(Node n:nodes.values()) {
            n.slot=-1;
            n.target.set(bubble);
        }
        if(!row.isEmpty()) {
            Node main=row.get(0); main.slot=0;
            main.target.set(frameMain);
        }
        if(row.size()>1) row.get(1).slot=1;
        visible.clear();
        for(Node n:nodes.values()) {
            if(n.slot>=0 && !n.removed && !gestureHidden) visible.add(n.item);
            float visible=n.slot>=0 && !n.removed && scene.mode!=Mode.HIDDEN ? 1 : 0;
            if(n.removed) {
                // Depart from the last position, rather than flying across the row to its bubble slot.
                n.target.set(n.x.value()-n.w.value()/2,n.y.value()-n.h.value()/2,
                        n.x.value()+n.w.value()/2,n.y.value()+n.h.value()/2);
            } else if(gestureHidden) {
                float diameter=Math.max(m.dp(8),m.holeD);
                n.target.set(m.cx-diameter/2,m.cy-diameter/2,m.cx+diameter/2,m.cy+diameter/2);
            }
            boolean entering=visible>0 && n.alpha.value()<.003f && n.presence.value()<.003f;
            if(!initialized || entering && !preserveEntryOrigins) {
                n.x.snapTo(n.target.centerX()); n.y.snapTo(n.target.centerY());
                n.w.snapTo(n.target.width()); n.h.snapTo(n.target.height());
                n.iconOnly.snapTo(n.slot==0 ? 0 : 1);
            }
            n.x.animateTo(n.target.centerX()); n.y.animateTo(n.target.centerY());
            n.w.animateTo(n.target.width()); n.h.animateTo(n.target.height());
            n.alpha.animateTo(visible);
            n.presence.animateTo(visible);
            if(!n.removed) n.iconOnly.animateTo(n.slot==0 ? 0 : 1);
        }
        // A departing card returns to its own newly assigned slot, including a slot that is still moving.
        for(Card card:scene.cards) if(card.iMode && card.leaving && !card.iModePaging) targetCompact(card);
    }

    void open(String key, boolean manual) {
        if(gestureHidden) return;
        finishCompactInteraction();
        abortSwipe();
        Node node=nodes.get(key);
        if(node==null || node.removed || scene.sleeping || scene.suppressed || scene.held) return;
        if(key.equals(selected)) { refreshCard(node); changed(); return; }
        boolean wasExpanded=scene.mode==Mode.EXPANDED;
        node.bounds(source);
        float iconOnly=node.iconOnly.value();
        if(manual) {
            if(scene.peekOpen) host.onPeekClosed(director.clearPeek());
            scene.peekOpen=false;
        }
        selected=key;
        scene.mode=Mode.EXPANDED;
        Card incoming=scene.findCard(key);
        if(incoming==null) {
            incoming=new Card(node.item,bodies.create(node.item,m.cardWidth(),false));
            incoming.iMode=true;
            incoming.cx.snapTo(source.centerX()); incoming.cy.snapTo(source.centerY());
            incoming.w.snapTo(source.width()); incoming.h.snapTo(source.height());
            incoming.iModeRole.snapTo(iconOnly);
            incoming.handoff=ContentHandoff.iMode(null,true,IslandView.now());
            scene.cards.add(incoming);
        } else {
            incoming.item=node.item;
            incoming.body=bodies.create(node.item,m.cardWidth(),false);
            incoming.leaving=false;
            incoming.handoff=ContentHandoff.iMode(incoming.handoff,true,IslandView.now());
        }
        incoming.iModeOpacity.animateTo(1,.16f,1);
        incoming.startAt=IslandView.now(); incoming.contentStart=incoming.startAt;
        incoming.launched=true;
        incoming.dx.animateTo(0,.2f,1);
        view.seekBody=null;
        if(view.sliderBody!=null) view.sliderBody.onSliderEnd();
        view.sliderBody=null;
        scene.springs.stackDx.snapTo(0); scene.springs.stackDy.snapTo(0);
        for(Card card:scene.cards) if(card!=incoming && !card.leaving) leave(card);
        // Keep each activity's visual plane while two surfaces exchange places.
        scene.cards.remove(incoming); scene.cards.add(incoming);
        layout(); targetExpanded(incoming);
        sortSurfaces();
        trimDepartures(); resizeWindow();
        director.scheduleAutoCollapse(ModuleSettings.autoCollapseMs());
        if(!wasExpanded) host.onExpandedChanged(true);
        if(manual) Haptics.perform(view,HapticFeedbackConstants.CONTEXT_CLICK);
        changed();
    }

    void peek(IslandItem item) {
        Node node=nodes.get(item.key);
        if(node==null) { node=new Node(view,item); seed(node); nodes.put(item.key,node); activities.add(item); }
        else node.refresh(view,item);
        boolean listed=false;
        for(int i=0;i<activities.size();i++) if(activities.get(i).key.equals(item.key)) {
            activities.set(i,item);listed=true;break;
        }
        if(!listed) activities.add(item);
        node.removed=false;
        if(!initialized) layout();
        open(item.key,false);
    }

    void next(int direction) {
        if(activities.size()<2 || scene.held || gestureHidden) return;
        if(selected!=null) {
            dragPage(direction>0 ? -1 : 1);
            finishPage(direction>0 ? -1000 : 1000);
        } else {
            if(dragCompact(direction>0 ? -1 : 1)) {
                finishCompactPage(direction>0 ? -m.dp(1000) : m.dp(1000));
            } else {
                // A swipe during the tail of a card's fold still changes the destination row.
                List<Node> row=rowNodes();if(row.isEmpty()) return;
                int index=0;
                for(int i=0;i<activities.size();i++) if(activities.get(i).key.equals(row.get(0).item.key)) index=i;
                rowAnchor=activities.get(Math.floorMod(index+direction,activities.size())).key;layout();changed();
            }
        }
    }

    boolean dragCompact(float distance) {
        if(selected!=null || activities.size()<2 || scene.mode!=Mode.COMPACT || !scene.cards.isEmpty()) return false;
        int direction=distance<0 ? 1 : -1;
        if(compactPage!=null && compactPage.released) finishCompactInteraction();
        if(compactPage==null || compactPage.direction!=direction) {
            if(compactPage!=null) compactPage.clear();
            compactPage=new CompactPage(direction);
        }
        compactPage.progress.snapTo(Math.min(1,Math.abs(distance)/Math.max(m.dp(70),compactPage.fromMain.width())));
        float tension=(float)Math.tanh(Math.abs(distance)/m.dp(65));
        compactPage.pull.snapTo(Math.signum(distance)*m.dp(9)*tension);
        compactPage.load.snapTo(tension);
        compactPage.bounds();changed();return true;
    }
    boolean hasCompactDrag() { return compactPage!=null && !compactPage.header && !compactPage.released; }
    void finishCompactPage(float velocity) {
        if(!hasCompactDrag()) return;
        CompactPage page=compactPage;
        page.commit=Math.abs(velocity)>m.dp(600) ? velocity*page.direction<0 : page.progress.value()>.24f;
        page.released=true;
        float travel=Math.max(m.dp(70),page.fromMain.width());
        float speed=Math.max(-5,Math.min(5,-velocity*page.direction/travel));
        page.progress.impulse(speed-page.progress.velocity());page.progress.animateTo(page.commit ? 1 : 0);
        page.pull.animateTo(0);page.load.animateTo(0);
        if(page.commit) Haptics.perform(view,HapticFeedbackConstants.CONTEXT_CLICK);
        changed();
    }
    void cancelCompactPage() {
        if(!hasCompactDrag()) return;
        compactPage.released=true;compactPage.commit=false;compactPage.progress.animateTo(0);
        compactPage.pull.animateTo(0);compactPage.load.animateTo(0);changed();
    }
    /** Preserve the currently painted slot bounds if a new interaction interrupts the settle. */
    void finishCompactInteraction() {
        if(compactPage==null) return;
        CompactPage page=compactPage;compactPage=null;
        if(!page.header && (page.released ? page.commit : page.progress.value()>=.5f)
                && nodes.containsKey(page.anchor) && !nodes.get(page.anchor).removed) rowAnchor=page.anchor;
        layout();
        for(Node node:nodes.values()) {
            RectF r=node.slot==0 ? page.main : page.bubble;
            boolean represented=!r.isEmpty();if(!represented) r=node.target;
            node.x.snapTo(r.centerX());node.y.snapTo(r.centerY());node.w.snapTo(r.width());node.h.snapTo(r.height());
            float visible=node.slot>=0 && !node.removed && !gestureHidden ? 1 : 0;
            node.alpha.snapTo(represented ? visible : 0);node.iconOnly.snapTo(node.slot==0 ? 0 : 1);
            node.presence.snapTo(node.alpha.value());
            node.alpha.animateTo(visible);node.presence.animateTo(visible);
            node.press.snapTo(1);
            node.x.animateTo(node.target.centerX());node.y.animateTo(node.target.centerY());
            node.w.animateTo(node.target.width());node.h.animateTo(node.target.height());
        }
        page.clear();changed();
    }

    /**
     * Folds the cards into the pill and lets them leave with the speed of the swipe that closed them: they were
     * moving up, and the pill is above them.
     */
    void collapse(float upwardSpeed) {
        collapse();
        float kick=Math.min(upwardSpeed,m.dp(3000))*.5f;
        if(kick<=0) return;
        for(Card card:scene.cards) if(card.leaving) card.cy.impulse(-kick);
    }

    void collapse() {
        if(scene.mode!=Mode.EXPANDED) return;
        finishCompactInteraction();
        abortSwipe();
        boolean peek=scene.peekOpen;
        String closed=director.clearPeek();
        scene.peekOpen=false; scene.held=false;
        director.cancelAutoCollapse();
        selected=null; scene.mode=scene.items.isEmpty() ? Mode.HIDDEN : Mode.COMPACT;
        closeCards(); layout();
        if(peek) host.onPeekClosed(closed);
        host.onExpandedChanged(false);
        changed();
    }

    boolean hiddenByGesture() { return gestureHidden; }
    void hideByGesture() { hideByGesture(0); }
    /** @param upwardSpeed how fast the swipe was moving up (px/s): the pill leaves faster the faster it was thrown */
    void hideByGesture(float upwardSpeed) {
        if(gestureHidden || scene.sleeping || scene.suppressed || scene.held) return;
        finishCompactInteraction();abortSwipe();
        boolean expanded=scene.mode==Mode.EXPANDED;
        if(scene.peekOpen) host.onPeekClosed(director.clearPeek());
        scene.peekOpen=false;selected=null;gestureHidden=true;scene.mode=Mode.HIDDEN;
        director.cancelAutoCollapse();closeCards();layout();
        scene.springs.stackDx.animateTo(0);scene.springs.stackDy.animateTo(0);
        float hurry=Math.max(0,Math.min(1,upwardSpeed/m.dp(2500)));
        scene.springs.visibility.animateTo(0,.36f-.14f*hurry,1);
        if(expanded) host.onExpandedChanged(false);
        Haptics.perform(view,HapticFeedbackConstants.CONTEXT_CLICK);changed();
    }
    void restoreByGesture() {
        if(!gestureHidden || scene.sleeping || scene.suppressed) return;
        syncOutlineTarget();
        gestureHidden=false;selected=null;
        scene.mode=scene.items.isEmpty() ? Mode.HIDDEN : Mode.COMPACT;
        layout(true);scene.springs.visibility.animateTo(scene.items.isEmpty() ? 0 : 1,.30f,1);
        resizeWindow();Haptics.perform(view,HapticFeedbackConstants.CONTEXT_CLICK);changed();
    }

    private void closeCards() { for(Card card:scene.cards) if(!card.leaving) leave(card); }
    private void leave(Card card) {
        // A fold following a partly completed page starts from the painted position, not the old centre.
        if(card.dx.value()!=0) {
            float velocity=card.cx.velocity()+card.dx.velocity();
            card.cx.snapTo(card.cx.value()+card.dx.value());card.cx.impulse(velocity);card.dx.snapTo(0);
        }
        card.iModePreview=false;card.iModePaging=false;
        card.handoff=ContentHandoff.iMode(card.handoff,false,IslandView.now());
        card.leaving=true; card.leaveAt=IslandView.now();
        card.leaveFromH=card.h.value(); card.leaveFromW=card.w.value();
        card.launched=true;
    }
    private void targetExpanded(Card c) {
        float width=m.cardWidth();
        c.targetW=width; c.targetH=c.body.h; c.targetCy=m.stackTop()+c.body.h/2;
        c.cx.animateTo(m.centredLeft(width)+width/2,.36f,.90f);
        c.cy.animateTo(c.targetCy,.42f,.88f);
        c.w.animateTo(width,.42f,.90f);
        // The reference's height settles with a small rebound while its width barely overshoots.
        c.h.animateTo(c.targetH,.39f,.76f);
    }
    private void targetCompact(Card c) {
        Node n=nodes.get(c.item.key);
        if(n==null) return;
        RectF end=n.target;
        c.targetW=end.width(); c.targetH=end.height(); c.targetCy=end.centerY();
        c.cx.animateTo(end.centerX(),.36f,.90f); c.cy.animateTo(end.centerY(),.36f,.90f);
        c.w.animateTo(end.width(),.36f,.90f); c.h.animateTo(end.height(),.34f,.86f);
        c.iModeRole.animateTo(n.slot==0 ? 0 : 1);
        c.iModeOpacity.animateTo(n.slot>=0 && !n.removed && scene.mode!=Mode.HIDDEN ? 1 : 0,.24f,1);
    }
    private void trimDepartures() {
        // Repeated taps cannot accumulate expensive RemoteViews, GPU materials or native blur windows.
        while(scene.cards.size()>3) {
            Card oldest=null;
            for(Card card:scene.cards) if(card.leaving && !card.iModePreview && card!=swipeCard
                    && (oldest==null || card.leaveAt<oldest.leaveAt)) oldest=card;
            if(oldest==null) break;
            release(oldest);
        }
    }
    private void sortSurfaces() {
        // The blur slots and RemoteViews both consume this same front-to-back ordering.
        scene.cards.sort((a,b)->{
            int plane=Integer.compare(plane(b),plane(a));
            return plane!=0 ? plane : Float.compare(a.cy.value(),b.cy.value());
        });
    }
    private static int plane(Card card) {
        // In the reference, the timer remains above media, and native widgets remain above app content.
        if(card.item.kind==IslandItem.Kind.CALL) return 3;
        if(card.body instanceof dev.android.dynamicisland.island.view.card.TimerBody
                || card.body instanceof dev.android.dynamicisland.island.view.card.RecordingBody) return 2;
        return card.item.isMedia ? 1 : 0;
    }

    static boolean paintsRemoteInSurface(Card card,long time) {
        return card.iMode && (card.leaving || card.iModePaging || card.iModePreview || card.handoff!=null && !card.handoff.finished(time)
                || !card.cx.isAtRest() || !card.cy.isAtRest() || !card.w.isAtRest() || !card.h.isAtRest());
    }
    private void release(Card card) {
        if(scene.blur!=null) scene.blur.release(card);
        card.material.clear();card.contentBlur.clear();card.iModeCompactBlur.clear();
        scene.cards.remove(card);
    }

    /** A drag is a real neighbouring page; it never replays a tap's unfolding-from-the-status-row animation. */
    void dragPage(float distance) {
        if(selected==null || activities.size()<2 || scene.held) return;
        if(swipeCard==null && compactPage!=null) finishCompactInteraction();
        int direction=distance<0 ? 1 : -1;
        if(swipeCard==null) {
            swipeCard=scene.findCard(selected);
            if(swipeCard==null || swipeCard.leaving) { swipeCard=null;return; }
            swipeStart=swipeCard.dx.value();swipeCard.iModePaging=true;
        }
        if(swipePreview==null || direction!=swipeDirection) {
            if(swipePreview!=null) release(swipePreview);
            int index=0;
            for(int i=0;i<activities.size();i++) if(activities.get(i).key.equals(selected)) index=i;
            IslandItem next=activities.get(Math.floorMod(index+direction,activities.size()));
            Card previous=scene.findCard(next.key);
            if(previous!=null && previous!=swipeCard) release(previous);
            swipePreview=new Card(next,bodies.create(next,m.cardWidth(),false));
            swipePreview.iMode=true;swipePreview.iModePreview=true;swipePreview.iModePaging=true;
            swipePreview.leaving=true;swipePreview.launched=true;
            targetExpanded(swipePreview);
            swipePreview.cx.snapTo(swipePreview.cx.target());swipePreview.cy.snapTo(swipePreview.cy.target());
            swipePreview.w.snapTo(swipePreview.targetW);swipePreview.h.snapTo(swipePreview.targetH);
            swipePreview.handoff=ContentHandoff.iMode(null,true,IslandView.now()-1000);
            scene.cards.add(swipePreview);swipeDirection=direction;
            if(compactPage!=null) compactPage.clear();
            compactPage=new CompactPage(direction,next.key);
        }
        float travel=m.cardWidth()+m.dp(12);
        float offset=Math.max(-travel,Math.min(travel,swipeStart+distance));
        swipeCard.dx.snapTo(offset);
        swipePreview.dx.snapTo(offset+swipeDirection*travel);
        if(compactPage!=null && compactPage.header) {
            compactPage.progress.snapTo(IslandView.clamp01(-swipeDirection*offset/travel));
            float tension=(float)Math.tanh(Math.abs(offset)/travel);
            compactPage.pull.snapTo(Math.signum(offset)*m.dp(3)*tension);compactPage.load.snapTo(.45f*tension);
            compactPage.bounds();
        }
        trimDepartures();sortSurfaces();resizeWindow();changed();
    }

    boolean hasPageDrag() { return swipeCard!=null; }
    void finishPage(float velocity) {
        if(swipeCard==null || swipePreview==null) return;
        Node nextSource=nodes.get(swipePreview.item.key);
        if(nextSource==null || nextSource.removed) { settlePage(false,0);return; }
        float offset=swipeCard.dx.value();
        boolean commit=Math.abs(velocity)>m.dp(600) ? velocity*swipeDirection<0
                : Math.abs(offset)>Math.min(m.dp(64),m.cardWidth()*.18f);
        settlePage(commit,velocity);
    }
    void cancelPage() { if(swipeCard!=null && swipePreview!=null) settlePage(false,0); }
    private void settlePage(boolean commit,float velocity) {
        Card old=swipeCard,next=swipePreview;
        swipeCard=null;swipePreview=null;
        float speed=Math.max(-m.dp(2200),Math.min(m.dp(2200),velocity));
        old.dx.impulse(speed-old.dx.velocity());next.dx.impulse(speed-next.dx.velocity());
        if(compactPage!=null && compactPage.header) {
            compactPage.released=true;compactPage.commit=commit;
            float normalized=-speed*swipeDirection/(m.cardWidth()+m.dp(12));
            compactPage.progress.impulse(normalized-compactPage.progress.velocity());
            compactPage.progress.animateTo(commit ? 1 : 0,.34f,.9f);
            compactPage.pull.animateTo(0);compactPage.load.animateTo(0);
        }
        if(commit) {
            if(scene.peekOpen) host.onPeekClosed(director.clearPeek());
            scene.peekOpen=false;
            selected=next.item.key;
            old.leaving=true;old.leaveAt=IslandView.now();old.iModePaging=true;
            next.leaving=false;next.iModePreview=false;next.iModePaging=true;
            old.dx.animateTo(-swipeDirection*(m.cardWidth()+m.dp(12)),.34f,.9f);
            next.dx.animateTo(0,.34f,.9f);
            layout();
            Haptics.perform(view,HapticFeedbackConstants.CONTEXT_CLICK);
        } else {
            old.dx.animateTo(0,.3f,.9f);
            next.iModePreview=false;next.leaveAt=IslandView.now();
            next.dx.animateTo(swipeDirection*(m.cardWidth()+m.dp(12)),.3f,.9f);
        }
        director.scheduleAutoCollapse(ModuleSettings.autoCollapseMs());changed();
    }

    void abortSwipe() {
        if(swipeCard!=null) swipeCard.dx.animateTo(0,.3f,.9f);
        if(swipePreview!=null) release(swipePreview);
        swipeCard=null;swipePreview=null;
    }

    boolean step(float dt,long time) {
        syncOutlineTarget();
        boolean active=outline.step(dt);
        if(compactPage!=null) {
            active|=compactPage.progress.step(dt)|compactPage.pull.step(dt)|compactPage.load.step(dt);compactPage.bounds();
            if(compactPage.released && compactPage.progress.isAtRest() && compactPage.pull.isAtRest()
                    && compactPage.load.isAtRest()) finishCompactInteraction();
        }
        for(Node n:nodes.values()) active|=n.step(dt);
        for(int i=scene.cards.size()-1;i>=0;i--) {
            Card c=scene.cards.get(i);
            boolean moving=c.cx.step(dt)|c.cy.step(dt)|c.w.step(dt)|c.h.step(dt)|c.dx.step(dt)|c.iModeOpacity.step(dt)|c.iModeRole.step(dt);
            active|=moving || c.handoff!=null && !c.handoff.finished(time) || c.material.animating(time);
            if(c.iModePaging && !c.iModePreview && c!=swipeCard && c.dx.isAtRest()) {
                if(c.leaving) release(c);else c.iModePaging=false;
            } else if(c.leaving && !c.iModePreview && !c.iModePaging && !moving && (c.handoff==null || c.handoff.finished(time))) release(c);
        }
        sortSurfaces();
        nodes.values().removeIf(n->{
            boolean gone=n.removed && n.alpha.isAtRest() && n.alpha.value()<.003f && scene.findCard(n.item.key)==null;
            if(gone) n.blur.clear();
            return gone;
        });
        if(scene.cards.isEmpty() && scene.mode!=Mode.EXPANDED) host.onWindowHeightNeeded(m.compactWindowHeight());
        return active;
    }
    void remeasure() {
        boolean changed=false;
        for(Node n:nodes.values()) if(n.slot==0) changed|=n.compact.remeasure();
        if(changed) { layout(); changed(); }
    }
    boolean animating() {
        if(!outline.isAtRest()) return true;
        if(compactPage!=null && (!compactPage.progress.isAtRest() || !compactPage.pull.isAtRest()
                || !compactPage.load.isAtRest())) return true;
        for(Node n:nodes.values()) if(n.moving()) return true;
        return false;
    }
    void press(String key) {
        for(Node node:nodes.values()) node.press.animateTo(node.item.key.equals(key) ? .965f : 1,.18f,.9f);
        changed();
    }
    void releasePress() {
        for(Node node:nodes.values()) node.press.animateTo(1,.26f,.88f);
    }
    void relayout() {
        finishCompactInteraction();
        for(Node n:nodes.values()) n.refresh(view,n.item);
        layout();
        for(Card c:scene.cards) if(!c.leaving) {
            c.body=bodies.create(c.item,m.cardWidth(),false); targetExpanded(c);
        }
        resizeWindow(); changed();
    }
    private void resizeWindow() {
        float bottom=m.cy+m.pillH/2;
        for(Card c:scene.cards) bottom=Math.max(bottom,Math.max(c.cy.value()+c.h.value()/2,
                c.leaving ? 0 : c.targetCy+c.targetH/2));
        host.onWindowHeightNeeded(m.windowHeightFor(bottom));
    }
    private void changed() { view.scheduleFrame(); view.scheduleTick(); view.notifyHost(); }

    String selectedKey() { return selected; }
    float outlineOpacity() {
        int mode=ModuleSettings.pillOutlineMode();
        return mode==1 ? 1 : mode==2 ? 0 : IslandView.clamp01(outline.value());
    }
    void syncOutlineTarget() {
        float target=scene.pillOutlineTarget();
        // An invisible island has no contrast transition to animate. Do not leave a half-finished
        // outline spring parked until the next appearance or camera-hole restore.
        if(scene.visibleAlpha()<=IslandView.MIN_VISIBLE_ALPHA) outline.snapTo(target);
        else outline.animateTo(target,target>outline.value() ? .10f : .22f,1);
    }
    /** Keep one sampling registration, including when empty, ready for every possible compact slot. */
    void outlineSamplingBounds(RectF out) {
        float margin=m.dp(8),extra=m.bubbleGap+m.bubbleR*2;
        float width=Math.min(m.maxPillW,m.screenW-margin*2-extra);
        float cx=Math.max(margin+width/2,Math.min(m.cx,m.screenW-margin-extra-width/2));
        out.set(cx-width/2,m.cy-m.pillH/2,cx+width/2+extra,m.cy+m.pillH/2);
    }
    int count() { return activities.size(); }
    List<IslandItem> visibleItems() { return visible; }
    String hit(float x,float y,float pad) {
        if(compactPage!=null) {
            List<Node> row=compactPage.progress.value()<.5f ? compactPage.from : compactPage.to;
            rect.set(compactPage.main);rect.inset(-pad,-pad);
            if(rect.contains(x,y)) return row.get(0).item.key;
            rect.set(compactPage.bubble);rect.inset(-pad,-pad);
            if(row.size()>1 && !compactPage.bubble.isEmpty() && rect.contains(x,y)) return row.get(1).item.key;
            return null;
        }
        for(Node n:nodes.values()) {
            if(n.slot<0 || n.alpha.value()<.4f) continue;
            Card returning=scene.findCard(n.item.key);
            if(returning!=null && !returning.iModePreview && !returning.iModePaging) {
                if(!returning.leaving) continue;
                rect.set(returning.cx.value()-returning.w.value()/2,returning.cy.value()-returning.h.value()/2,
                        returning.cx.value()+returning.w.value()/2,returning.cy.value()+returning.h.value()/2);
                rect.bottom=Math.min(rect.bottom,m.cy+m.pillH/2+pad);
            } else n.bounds(rect);
            rect.inset(-pad,-pad);
            if(rect.contains(x,y)) return n.item.key;
        }
        return null;
    }
    void mainBounds(RectF out) {
        if(compactPage!=null) { out.set(compactPage.main);return; }
        for(Node n:nodes.values()) if(n.slot==0) { n.bounds(out); return; }
        out.set(m.cx-m.pillH/2,m.cy-m.pillH/2,m.cx+m.pillH/2,m.cy+m.pillH/2);
    }
    void bubbleBounds(RectF out) {
        if(compactPage!=null) { out.set(compactPage.bubble);return; }
        for(Node n:nodes.values()) if(n.slot==1) { n.bounds(out); return; }
        out.setEmpty();
    }
    /** Both status-row slots travel into the camera-hole anchor, rather than shrinking in place. */
    void shadeBounds(RectF from,RectF out) {
        if(from.isEmpty()) { out.setEmpty();return; }
        float gate=IslandView.clamp01(scene.springs.shadeGate.value());
        float width=from.height()*.65f+(from.width()-from.height()*.65f)*gate;
        float height=from.height()*(.65f+.35f*gate);
        float cx=m.cx+(from.centerX()-m.cx)*gate;
        float cy=m.cy+(from.centerY()-m.cy)*gate;
        out.set(cx-width/2,cy-height/2,cx+width/2,cy+height/2);
    }
    private boolean ownsSurface(String key) {
        Card card=scene.findCard(key);
        return card!=null && !card.iModePreview && !card.iModePaging;
    }

    void draw(Canvas canvas,long time) {
        drawMovingGlows(canvas);
        drawMovingOutlines(canvas);
        if(activities.size()>3 && scene.mode==Mode.EXPANDED && selected!=null) {
            Card card=scene.findCard(selected);
            if(card!=null) {
                float a=card.handoff==null ? 1 : card.handoff.expanded(time);
                paint.setStyle(Paint.Style.FILL);paint.setColor(Colors.withAlpha(Colors.WHITE,.6f*a));
                paint.setTextAlign(Paint.Align.CENTER);paint.setTypeface(android.graphics.Typeface.DEFAULT);
                paint.setTextSize(m.dp(10));
                int index=0;
                for(int i=0;i<activities.size();i++) if(activities.get(i).key.equals(selected)) index=i;
                canvas.drawText((index+1)+" / "+activities.size(),m.cx,
                        card.cy.value()+card.h.value()/2+m.dp(16),paint);
            }
        }
        if(compactPage!=null) { drawCompactPage(canvas);return; }
        float gate=IslandView.clamp01(scene.springs.shadeGate.value());
        float contentAlpha=IslandView.clamp01((gate-.45f)/.4f);
        for(Node n:nodes.values()) {
            float alpha=IslandView.clamp01(n.alpha.value());
            if(alpha<.003f || ownsSurface(n.item.key)) continue;
            n.bounds(rect);
            shadeBounds(rect,rect);
            view.drawCompactGlow(canvas,rect,alpha*contentAlpha);
            int save=canvas.saveLayerAlpha(rect.left-m.dp(2),rect.top-m.dp(2),rect.right+m.dp(2),rect.bottom+m.dp(2),Math.round(alpha*255));
            float radius=rect.height()/2;
            paint.setStyle(Paint.Style.FILL); paint.setColor(Colors.BLACK);
            canvas.drawRoundRect(rect,radius,radius,paint);
            if(scene.pillOutlineOpacity()>.01f) {
                int strokeSave=canvas.save();
                if(gate<.999f) {
                    gatherMask.reset();
                    for(Node other:nodes.values()) if(other!=n && other.alpha.value()>.95f && !ownsSurface(other.item.key)) {
                        other.bounds(gatherOther);shadeBounds(gatherOther,gatherOther);
                        outlineSurface.reset();outlineSurface.addRoundRect(gatherOther,gatherOther.height()/2,gatherOther.height()/2,Path.Direction.CW);
                        gatherMask.op(outlineSurface,Path.Op.UNION);
                    }
                    canvas.clipOutPath(gatherMask);
                }
                paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(m.outlineW);
                paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE,scene.pillOutlineOpacity()));
                canvas.drawRoundRect(rect,radius,radius,paint);paint.setStyle(Paint.Style.FILL);
                canvas.restoreToCount(strokeSave);
            }
            clip.reset();clip.addRoundRect(rect,radius,radius,Path.Direction.CW);canvas.clipPath(clip);
            float role=IslandView.clamp01(n.iconOnly.value());
            float speed=Math.max(Math.max(Math.abs(n.x.velocity()),Math.abs(n.y.velocity())),
                    Math.max(Math.abs(n.w.velocity()),Math.abs(n.h.velocity())));
            float motionBlur=IslandView.clamp01(speed/m.dp(600));
            motionBlur*=motionBlur;
            float blur=Math.max(1-IslandView.clamp01(n.presence.value()),
                    Math.max(motionBlur,Math.max(1-contentAlpha,Math.abs(n.iconOnly.target()-role))));
            Canvas content=n.blur.begin(canvas,rect,blur,m.dp(ContentBlur.RADIUS_DP));
            try { drawCompact(content,n,rect,role,contentAlpha); }
            finally { n.blur.end(canvas,content); }
            if(n.slot==1 && rowCount>2 && contentAlpha>.01f) drawOverflow(canvas,rect,rowCount-2,contentAlpha);
            canvas.restoreToCount(save);
        }
    }
    private void drawCompactPage(Canvas canvas) {
        CompactPage page=compactPage;
        drawPageCell(canvas,page,page.main,0);
        if(page.from.size()>1 && page.to.size()>1) drawPageCell(canvas,page,page.bubble,1);
    }
    private void drawPageCell(Canvas canvas,CompactPage page,RectF frame,int slot) {
        float gate=IslandView.clamp01(scene.springs.shadeGate.value());
        float contentAlpha=IslandView.clamp01((gate-.45f)/.4f);
        RectF bounds=new RectF();shadeBounds(frame,bounds);
        view.drawCompactGlow(canvas,bounds,contentAlpha);
        float radius=bounds.height()/2;
        paint.setStyle(Paint.Style.FILL);paint.setColor(Colors.BLACK);canvas.drawRoundRect(bounds,radius,radius,paint);
        if(scene.pillOutlineOpacity()>.01f) {
            int strokeSave=canvas.save();
            if(gate<.999f) {
                RectF other=slot==0 ? page.bubble : page.main;
                if(!other.isEmpty()) {
                    shadeBounds(other,gatherOther);gatherMask.reset();
                    gatherMask.addRoundRect(gatherOther,gatherOther.height()/2,gatherOther.height()/2,Path.Direction.CW);canvas.clipOutPath(gatherMask);
                }
            }
            paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(m.outlineW);
            paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE,scene.pillOutlineOpacity()));
            canvas.drawRoundRect(bounds,radius,radius,paint);paint.setStyle(Paint.Style.FILL);
            canvas.restoreToCount(strokeSave);
        }
        int save=canvas.save();clip.reset();clip.addRoundRect(bounds,radius,radius,Path.Direction.CW);canvas.clipPath(clip);
        float p=IslandView.clamp01(page.progress.value());
        boolean unchanged=page.from.get(slot).item.key.equals(page.to.get(slot).item.key);
        float blur=Math.max(1-contentAlpha,unchanged ? 0 : 4*p*(1-p)*.65f);
        for(int incoming=0;incoming<(unchanged ? 1 : 2);incoming++) {
            float alpha=contentAlpha*(unchanged ? 1 : incoming==1 ? p : 1-p);
            if(alpha<.002f) continue;
            Node node=(incoming==1 ? page.to : page.from).get(slot);
            Canvas layer=page.blur[slot*2+incoming].begin(canvas,bounds,blur,m.dp(ContentBlur.RADIUS_DP));
            int shift=layer.save();
            if(!unchanged) layer.translate(page.direction*m.dp(slot==0 ? 22 : 8)*(incoming==1 ? 1-p : -p),0);
            drawCompact(layer,node,bounds,slot,alpha);
            layer.restoreToCount(shift);page.blur[slot*2+incoming].end(canvas,layer);
        }
        if(slot==1 && page.to.size()>2) drawOverflow(canvas,bounds,page.to.size()-2,contentAlpha);
        canvas.restoreToCount(save);
    }
    private void drawMovingGlows(Canvas canvas) {
        if(!ModuleSettings.ambientGlow() || scene.cards.isEmpty()) return;
        int save=canvas.save();
        glowExclusion.reset();
        for(Card card:scene.cards) {
            view.computeCard(card,glowBounds);
            float corner=corner(card,glowBounds,m.pillH,m.cardRadius);
            glowExclusion.addRoundRect(glowBounds,corner,corner,Path.Direction.CW);
        }
        // This layer is above native card slots. A halo must never tint their opaque foregrounds.
        canvas.clipOutPath(glowExclusion);
        for(Card card:scene.cards) {
            view.computeCard(card,glowBounds);
            float progress=IslandView.clamp01((card.h.value()-m.pillH)/Math.max(1,card.body.h-m.pillH));
            float density=Math.min(1,m.pillH/Math.max(1,glowBounds.height()));
            float alpha=(1-progress)*density*density*IslandView.clamp01(card.iModeOpacity.value())*scene.shadeAlpha();
            // Carry the existing compact halo from the first unfolding frame to the last returning frame.
            // Its energy declines continuously as the surface grows into a full card.
            view.drawCompactGlow(canvas,glowBounds,alpha);
        }
        canvas.restoreToCount(save);
    }
    private void drawMovingOutlines(Canvas canvas) {
        float contrast=outlineOpacity();
        if(contrast<.002f || scene.cards.isEmpty()) return;
        outlineOcclusion.reset();
        for(Card card:scene.cards) {
            view.computeCard(card,outlineBounds);
            float opacity=IslandView.clamp01(card.iModeOpacity.value());
            if(!card.iMode || opacity<.003f) continue;
            float corner=corner(card,outlineBounds,m.pillH,m.cardRadius);
            boolean frosted=dev.android.dynamicisland.island.material.FrostedSurface.requested();
            if(frosted) dev.android.dynamicisland.island.material.MaterialShape.path(outlineSurface,outlineBounds,corner,materialPower(card,m.pillH));
            else { outlineSurface.reset();outlineSurface.addRoundRect(outlineBounds,corner,corner,Path.Direction.CW); }
            float opening=IslandView.clamp01((card.h.value()-m.pillH)/Math.max(1,card.body.h-m.pillH));
            // A material's intrinsic rim is separate from this pill contrast outline. Keep the
            // latter on the same exterior contour before, during and after the native card slot.
            float alpha=contrast*opacity*(1-opening);
            if(alpha>.002f) {
                int save=canvas.save();canvas.clipOutPath(outlineOcclusion);
                paint.setShader(null);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(m.outlineW);
                paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE,alpha));
                canvas.drawPath(outlineSurface,paint);
                paint.setStyle(Paint.Style.FILL);canvas.restoreToCount(save);
            }
            // Native slots are painted below this overlay; do not put a departing card's edge
            // on top of a nearer card while they overlap.
            outlineOcclusion.op(outlineSurface,Path.Op.UNION);
        }
    }
    private void drawCompact(Canvas canvas,Node n,RectF r,float iconOnly,float alpha) {
        if(iconOnly<.999f) {
            // A wider capsule adds space between its leading/trailing contents. It must not widen
            // the artwork, glyphs, digits or waveform. Only shrink uniformly while returning to a bubble.
            float scale=Math.max(.001f,Math.min(1,Math.min(r.height()/m.pillH,r.width()/n.compact.desiredWidth())));
            float width=r.width()/scale;
            RectF natural=new RectF(r.centerX()-width/2,r.centerY()-m.pillH/2,r.centerX()+width/2,r.centerY()+m.pillH/2);
            int save=canvas.save();canvas.scale(scale,scale,r.centerX(),r.centerY());
            n.compact.draw(canvas,natural,alpha*(1-iconOnly),1000);canvas.restoreToCount(save);
        }
        if(iconOnly>.001f) {
            float d=Math.min(r.width(),r.height());
            RectF bubble=new RectF(r.centerX()-d/2,r.centerY()-d/2,r.centerX()+d/2,r.centerY()+d/2);
            n.bubble.draw(canvas,bubble,alpha*iconOnly,1000);
        }
    }
    private void drawOverflow(Canvas canvas,RectF r,int extra,float alpha) {
        paint.setStyle(Paint.Style.FILL);paint.setColor(Colors.withAlpha(Colors.BLACK,.9f*alpha));
        canvas.drawRoundRect(r.centerX()-m.dp(10),r.bottom-m.dp(12),r.centerX()+m.dp(10),r.bottom-m.dp(1),m.dp(5),m.dp(5),paint);
        paint.setTextAlign(Paint.Align.CENTER);paint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        paint.setTextSize(m.dp(8));paint.setColor(Colors.withAlpha(Colors.WHITE,alpha));
        canvas.drawText("+"+extra,r.centerX(),r.bottom-m.dp(3),paint);
    }
    /** Drawn inside the same moving surface as expanded content, so there is no blank handoff. */
    void drawCompactCard(Canvas canvas,Card card,RectF r,long time) {
        Node n=nodes.get(card.item.key);
        if(n==null || card.handoff==null) return;
        float compact=card.handoff.compact(time);
        if(compact<.002f) return;
        float blur=Math.max(motionBlur(card,m.dp(1000)),
                (float)Math.min(1,1.5*Math.sqrt(card.handoff.compactBlur(time))));
        Canvas target=card.iModeCompactBlur.begin(canvas,r,blur,m.dp(ContentBlur.RADIUS_DP));
        try { drawCompact(target,n,r,IslandView.clamp01(card.iModeRole.value()),compact); }
        finally { card.iModeCompactBlur.end(canvas,target); }
    }
    static float motionBlur(Card card,float fullSpeed) {
        float speed=Math.max(Math.max(Math.abs(card.cx.velocity()),Math.abs(card.cy.velocity())),
                Math.max(Math.abs(card.w.velocity()),Math.abs(card.h.velocity())));
        float amount=IslandView.clamp01(speed/Math.max(1,fullSpeed));
        return amount*amount;
    }

    static float corner(Card card,RectF r,float pillHeight,float maximum) {
        float progress=IslandView.clamp01((card.h.value()-pillHeight)/Math.max(1,card.body.h-pillHeight));
        float compact=Math.min(r.width(),r.height())/2;
        float expanded=card.body.cornerRadius(maximum,card.body.h);
        return Math.min(compact,compact+(expanded-compact)*progress);
    }
    static float materialPower(Card card,float pillHeight) {
        float p=IslandView.clamp01((card.h.value()-pillHeight)/Math.max(1,card.body.h-pillHeight));
        return 2+.4f*p*p*(3-2*p);
    }

    void dispose() {
        if(compactPage!=null) { compactPage.clear();compactPage=null; }
        swipeCard=null;swipePreview=null;
        for(Card c:new ArrayList<>(scene.cards)) release(c);
        for(Node node:nodes.values()) node.blur.clear();
        nodes.clear();activities.clear();visible.clear();
    }

    void finishSleeping() {
        if(compactPage!=null) { compactPage.clear();compactPage=null; }
        swipeCard=null;swipePreview=null;
        selected=null;
        for(Card c:new ArrayList<>(scene.cards)) release(c);
        scene.mode=scene.items.isEmpty() || gestureHidden ? Mode.HIDDEN : Mode.COMPACT;
        layout();
        for(Node n:nodes.values()) {
            n.x.snapTo(n.target.centerX());n.y.snapTo(n.target.centerY());
            n.w.snapTo(n.target.width());n.h.snapTo(n.target.height());
            n.alpha.snapTo(n.slot>=0 && !n.removed && !gestureHidden ? 1 : 0);n.iconOnly.snapTo(n.slot==0 ? 0 : 1);
            n.presence.snapTo(n.alpha.value());
            n.press.snapTo(1);
        }
    }
}
