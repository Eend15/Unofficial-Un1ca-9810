.class public final Landroidx/recyclerview/widget/V;
.super LK/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/V;->d:I

    .line 1
    invoke-direct {p0}, LK/b;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/V;

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/V;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/V;-><init>(Landroidx/recyclerview/widget/V;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/V;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/V;->d:I

    .line 6
    invoke-direct {p0}, LK/b;-><init>()V

    .line 7
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, LK/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LK/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LK/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)LA1/e;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LK/b;->b(Landroid/view/View;)LA1/e;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LK/b;->b(Landroid/view/View;)LA1/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LK/b;->b(Landroid/view/View;)LA1/e;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, LK/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    move-result p0

    if-nez p0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/I;->O(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, LK/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, LK/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;LL/d;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p0, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, LL/d;->a(I)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, LL/d;->a(I)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/I;->F(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p2

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/I;->x(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p2, p0, p1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/V;

    iget-object v1, v0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    move-result v1

    iget-object v2, p0, LK/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget-object v3, p2, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_6

    iget-object v0, v0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/I;->P(Landroid/view/View;LL/d;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK/b;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2}, LK/b;->d(Landroid/view/View;LL/d;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2, p1, v3}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, LK/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LK/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, LK/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, LK/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, LK/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LK/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, LK/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz p0, :cond_7

    iget-object p1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    const/16 v1, 0x1000

    if-eq p2, v1, :cond_4

    const/16 v1, 0x2000

    if-eq p2, v1, :cond_1

    move p1, v0

    move p2, p1

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result v1

    sub-int/2addr p1, v1

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v1

    sub-int/2addr p2, v1

    neg-int p2, p2

    goto :goto_2

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    iget-object p2, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v1

    sub-int/2addr p2, v1

    :goto_2
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->c0(ZII)V

    goto :goto_4

    :cond_7
    :goto_3
    move p3, v0

    :goto_4
    return p3

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/V;

    iget-object v1, v0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v0, v0, Landroidx/recyclerview/widget/V;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1, p2, p3}, LK/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_8
    invoke-super {p0, p1, p2, p3}, LK/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_9
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    invoke-super {p0, p1, p2, p3}, LK/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, LK/b;->h(Landroid/view/View;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LK/b;->h(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, LK/b;->h(Landroid/view/View;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/V;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, LK/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/V;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LK/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, LK/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
