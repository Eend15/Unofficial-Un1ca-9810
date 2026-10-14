.class public final Landroidx/appcompat/widget/z0;
.super Landroidx/appcompat/widget/k0;
.source "SourceFile"


# instance fields
.field public final p:I

.field public final q:I

.field public r:Landroidx/appcompat/widget/A0;

.field public s:Lk/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/k0;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/16 v0, 0x16

    const/16 v1, 0x15

    if-ne p2, p1, :cond_0

    iput v1, p0, Landroidx/appcompat/widget/z0;->p:I

    iput v0, p0, Landroidx/appcompat/widget/z0;->q:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/z0;->p:I

    iput v1, p0, Landroidx/appcompat/widget/z0;->q:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/widget/z0;->r:Landroidx/appcompat/widget/A0;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lk/g;

    goto :goto_0

    :cond_0
    check-cast v0, Lk/g;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sub-int/2addr v2, v1

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lk/g;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lk/g;->b(I)Lk/l;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/z0;->s:Lk/l;

    if-eq v2, v1, :cond_7

    iget-object v0, v0, Lk/g;->a:Lk/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/z0;->r:Landroidx/appcompat/widget/A0;

    iget-object v2, v2, Landroidx/appcompat/widget/A0;->C:Landroidx/recyclerview/widget/y;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v2, Lk/d;

    iget-object v2, v2, Lk/d;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Landroidx/appcompat/widget/z0;->s:Lk/l;

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroidx/appcompat/widget/z0;->r:Landroidx/appcompat/widget/A0;

    iget-object v2, v2, Landroidx/appcompat/widget/A0;->C:Landroidx/recyclerview/widget/y;

    if-eqz v2, :cond_7

    iget-object v3, v2, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v3, Lk/d;

    iget-object v4, v3, Lk/d;->i:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, v3, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    const/4 v8, -0x1

    if-ge v7, v6, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk/c;

    iget-object v9, v9, Lk/c;->b:Lk/j;

    if-ne v0, v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_3
    if-ne v7, v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_6

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lk/c;

    :cond_6
    new-instance v4, Lk/b;

    invoke-direct {v4, v2, v5, v1, v0}, Lk/b;-><init>(Landroidx/recyclerview/widget/y;Lk/c;Lk/l;Lk/j;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0xc8

    add-long/2addr v1, v5

    iget-object v3, v3, Lk/d;->i:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_7
    :goto_4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/k0;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/z0;->p:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    invoke-virtual {p1}, Lk/l;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/z0;->q:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    instance-of p1, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lk/g;

    goto :goto_0

    :cond_2
    check-cast p0, Lk/g;

    :goto_0
    iget-object p0, p0, Lk/g;->a:Lk/j;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk/j;->c(Z)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
