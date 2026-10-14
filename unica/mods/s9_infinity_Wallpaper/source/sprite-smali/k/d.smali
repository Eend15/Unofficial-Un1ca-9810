.class public final Lk/d;
.super Lk/r;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field public static final D:I


# instance fields
.field public A:Landroid/view/ViewTreeObserver;

.field public B:Lk/s;

.field public C:Z

.field public final e:Landroid/content/Context;

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Landroid/os/Handler;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Landroidx/appcompat/widget/H;

.field public final m:Lcom/google/android/material/textfield/m;

.field public final n:Landroidx/recyclerview/widget/y;

.field public o:I

.field public p:I

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Lk/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lf/g;->abc_cascading_menu_item_layout:I

    sput v0, Lk/d;->D:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/d;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/d;->k:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/widget/H;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/H;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/d;->l:Landroidx/appcompat/widget/H;

    new-instance v0, Lcom/google/android/material/textfield/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/textfield/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/d;->m:Lcom/google/android/material/textfield/m;

    new-instance v0, Landroidx/recyclerview/widget/y;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/d;->n:Landroidx/recyclerview/widget/y;

    const/4 v0, 0x0

    iput v0, p0, Lk/d;->o:I

    iput v0, p0, Lk/d;->p:I

    iput-object p1, p0, Lk/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lk/d;->q:Landroid/view/View;

    iput p3, p0, Lk/d;->g:I

    iput-boolean p4, p0, Lk/d;->h:Z

    iput-boolean v0, p0, Lk/d;->x:Z

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lk/d;->s:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lf/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lk/d;->f:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lk/d;->i:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lk/j;Z)V
    .locals 6

    iget-object v0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    iget-object v4, v4, Lk/c;->b:Lk/j;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-object v1, v1, Lk/c;->b:Lk/j;

    invoke-virtual {v1, v2}, Lk/j;->c(Z)V

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-object v3, v1, Lk/c;->b:Lk/j;

    invoke-virtual {v3, p0}, Lk/j;->r(Lk/v;)V

    iget-boolean v3, p0, Lk/d;->C:Z

    iget-object v1, v1, Lk/c;->a:Landroidx/appcompat/widget/A0;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-static {v3, v4}, Landroidx/appcompat/widget/x0;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    iget-object v3, v1, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/w0;->dismiss()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_5

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/c;

    iget v5, v5, Lk/c;->c:I

    iput v5, p0, Lk/d;->s:I

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lk/d;->q:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v3, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    iput v5, p0, Lk/d;->s:I

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0}, Lk/d;->dismiss()V

    iget-object p2, p0, Lk/d;->z:Lk/u;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v3}, Lk/u;->a(Lk/j;Z)V

    :cond_7
    iget-object p1, p0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lk/d;->l:Landroidx/appcompat/widget/H;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v4, p0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Lk/d;->r:Landroid/view/View;

    iget-object p2, p0, Lk/d;->m:Lcom/google/android/material/textfield/m;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lk/d;->B:Lk/s;

    invoke-virtual {p0}, Lk/s;->onDismiss()V

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/c;

    iget-object p0, p0, Lk/c;->b:Lk/j;

    invoke-virtual {p0, v2}, Lk/j;->c(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/c;

    iget-object p0, p0, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final d(Lk/B;)Z
    .locals 4

    iget-object v0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-object v3, v1, Lk/c;->b:Lk/j;

    if-ne p1, v3, :cond_0

    iget-object p0, v1, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, Lk/j;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lk/d;->l(Lk/j;)V

    iget-object p0, p0, Lk/d;->z:Lk/u;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lk/u;->b(Lk/j;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final dismiss()V
    .locals 3

    iget-object p0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [Lk/c;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lk/c;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    iget-object v2, v1, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object v2, v2, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lk/c;->a:Landroidx/appcompat/widget/A0;

    invoke-virtual {v1}, Landroidx/appcompat/widget/w0;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lk/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lk/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/j;

    invoke-virtual {p0, v2}, Lk/d;->v(Lk/j;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lk/d;->q:Landroid/view/View;

    iput-object v0, p0, Lk/d;->r:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lk/d;->l:Landroidx/appcompat/widget/H;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lk/d;->r:Landroid/view/View;

    iget-object p0, p0, Lk/d;->m:Lcom/google/android/material/textfield/m;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 2

    iget-object p0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iget-object v0, v0, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lk/g;

    goto :goto_1

    :cond_0
    check-cast v0, Lk/g;

    :goto_1
    invoke-virtual {v0}, Lk/g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()Landroidx/appcompat/widget/k0;
    .locals 1

    iget-object p0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/c;

    iget-object p0, p0, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    :goto_0
    return-object p0
.end method

.method public final k(Lk/u;)V
    .locals 0

    iput-object p1, p0, Lk/d;->z:Lk/u;

    return-void
.end method

.method public final l(Lk/j;)V
    .locals 1

    iget-object v0, p0, Lk/d;->e:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lk/j;->b(Lk/v;Landroid/content/Context;)V

    invoke-virtual {p0}, Lk/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lk/d;->v(Lk/j;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk/d;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lk/d;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lk/d;->q:Landroid/view/View;

    iget v0, p0, Lk/d;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lk/d;->p:I

    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lk/d;->x:Z

    return-void
.end method

.method public final onDismiss()V
    .locals 5

    iget-object p0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    iget-object v4, v3, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object v4, v4, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object p0, v3, Lk/c;->b:Lk/j;

    invoke-virtual {p0, v1}, Lk/j;->c(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lk/d;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(I)V
    .locals 1

    iget v0, p0, Lk/d;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lk/d;->o:I

    iget-object v0, p0, Lk/d;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lk/d;->p:I

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/d;->t:Z

    iput p1, p0, Lk/d;->v:I

    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    check-cast p1, Lk/s;

    iput-object p1, p0, Lk/d;->B:Lk/s;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Lk/d;->y:Z

    return-void
.end method

.method public final t(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/d;->u:Z

    iput p1, p0, Lk/d;->w:I

    return-void
.end method

.method public final v(Lk/j;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lk/d;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Lk/g;

    iget-boolean v5, v0, Lk/d;->h:Z

    sget v6, Lk/d;->D:I

    invoke-direct {v4, v1, v3, v5, v6}, Lk/g;-><init>(Lk/j;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Lk/d;->b()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lk/d;->x:Z

    if-eqz v5, :cond_0

    iput-boolean v6, v4, Lk/g;->c:Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lk/d;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Lk/r;->u(Lk/j;)Z

    move-result v5

    iput-boolean v5, v4, Lk/g;->c:Z

    :cond_1
    :goto_0
    iget v5, v0, Lk/d;->f:I

    invoke-static {v4, v2, v5}, Lk/r;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v5

    new-instance v7, Landroidx/appcompat/widget/A0;

    iget v8, v0, Lk/d;->g:I

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v8}, Landroidx/appcompat/widget/w0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v2, v0, Lk/d;->n:Landroidx/recyclerview/widget/y;

    iput-object v2, v7, Landroidx/appcompat/widget/A0;->C:Landroidx/recyclerview/widget/y;

    iput-object v0, v7, Landroidx/appcompat/widget/w0;->s:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, v7, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v2, v0, Lk/d;->q:Landroid/view/View;

    iput-object v2, v7, Landroidx/appcompat/widget/w0;->r:Landroid/view/View;

    iget v2, v0, Lk/d;->p:I

    iput v2, v7, Landroidx/appcompat/widget/w0;->o:I

    iput-boolean v6, v7, Landroidx/appcompat/widget/w0;->A:Z

    iget-object v2, v7, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, v7, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/w0;->n(Landroid/widget/ListAdapter;)V

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/w0;->p(I)V

    iget v2, v0, Lk/d;->p:I

    iput v2, v7, Landroidx/appcompat/widget/w0;->o:I

    iget-object v2, v0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x0

    if-lez v4, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    iget-object v11, v4, Lk/c;->b:Lk/j;

    iget-object v12, v11, Lk/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v10

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Lk/j;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v15

    if-ne v1, v15, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object v14, v9

    :goto_2
    if-nez v14, :cond_4

    move-object v6, v9

    goto :goto_7

    :cond_4
    iget-object v11, v4, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object v11, v11, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_5

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Lk/g;

    goto :goto_3

    :cond_5
    check-cast v12, Lk/g;

    move v13, v10

    :goto_3
    invoke-virtual {v12}, Lk/g;->getCount()I

    move-result v15

    move v8, v10

    :goto_4
    const/4 v6, -0x1

    if-ge v8, v15, :cond_7

    invoke-virtual {v12, v8}, Lk/g;->b(I)Lk/l;

    move-result-object v9

    if-ne v14, v9, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    move v8, v6

    :goto_5
    if-ne v8, v6, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v8, v13

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v8, v6

    if-ltz v8, :cond_b

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v8, v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_13

    iget-object v8, v7, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-static {v8, v10}, Landroidx/appcompat/widget/y0;->a(Landroid/widget/PopupWindow;Z)V

    iget-object v8, v7, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroidx/appcompat/widget/x0;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/c;

    iget-object v8, v8, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-object v8, v8, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lk/d;->r:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v12, v0, Lk/d;->s:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    aget v9, v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    iget v9, v11, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_d

    :cond_c
    move v9, v10

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    aget v8, v9, v10

    sub-int/2addr v8, v5

    if-gez v8, :cond_c

    goto :goto_8

    :goto_9
    if-ne v9, v8, :cond_f

    const/4 v8, 0x1

    goto :goto_a

    :cond_f
    move v8, v10

    :goto_a
    iput v9, v0, Lk/d;->s:I

    iput-object v6, v7, Landroidx/appcompat/widget/w0;->r:Landroid/view/View;

    iget v9, v0, Lk/d;->p:I

    const/4 v11, 0x5

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_11

    if-eqz v8, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    goto :goto_b

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_b

    :cond_12
    rsub-int/lit8 v5, v5, 0x0

    :goto_b
    iput v5, v7, Landroidx/appcompat/widget/w0;->i:I

    const/4 v5, 0x1

    iput-boolean v5, v7, Landroidx/appcompat/widget/w0;->n:Z

    iput-boolean v5, v7, Landroidx/appcompat/widget/w0;->m:Z

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/w0;->m(I)V

    goto :goto_d

    :cond_13
    iget-boolean v5, v0, Lk/d;->t:Z

    if-eqz v5, :cond_14

    iget v5, v0, Lk/d;->v:I

    iput v5, v7, Landroidx/appcompat/widget/w0;->i:I

    :cond_14
    iget-boolean v5, v0, Lk/d;->u:Z

    if-eqz v5, :cond_15

    iget v5, v0, Lk/d;->w:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/w0;->m(I)V

    :cond_15
    iget-object v5, v0, Lk/r;->d:Landroid/graphics/Rect;

    if-eqz v5, :cond_16

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_c

    :cond_16
    const/4 v9, 0x0

    :goto_c
    iput-object v9, v7, Landroidx/appcompat/widget/w0;->z:Landroid/graphics/Rect;

    :goto_d
    new-instance v5, Lk/c;

    iget v6, v0, Lk/d;->s:I

    invoke-direct {v5, v7, v1, v6}, Lk/c;-><init>(Landroidx/appcompat/widget/A0;Lk/j;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/appcompat/widget/w0;->f()V

    iget-object v2, v7, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v4, :cond_17

    iget-boolean v0, v0, Lk/d;->y:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, Lk/j;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    sget v0, Lf/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v3, v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v1, Lk/j;->m:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v7}, Landroidx/appcompat/widget/w0;->f()V

    :cond_17
    return-void
.end method
