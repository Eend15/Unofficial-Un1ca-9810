.class public final Lk/A;
.super Lk/r;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final x:I


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lk/j;

.field public final g:Lk/g;

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:Landroidx/appcompat/widget/A0;

.field public final l:Landroidx/appcompat/widget/H;

.field public final m:Lcom/google/android/material/textfield/m;

.field public n:Lk/s;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Lk/u;

.field public r:Landroid/view/ViewTreeObserver;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lf/g;->abc_popup_menu_item_layout:I

    sput v0, Lk/A;->x:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/view/View;Lk/j;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/H;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/H;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/A;->l:Landroidx/appcompat/widget/H;

    new-instance v0, Lcom/google/android/material/textfield/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/textfield/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/A;->m:Lcom/google/android/material/textfield/m;

    const/4 v0, 0x0

    iput v0, p0, Lk/A;->v:I

    iput-object p2, p0, Lk/A;->e:Landroid/content/Context;

    iput-object p4, p0, Lk/A;->f:Lk/j;

    iput-boolean p5, p0, Lk/A;->h:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lk/g;

    sget v2, Lk/A;->x:I

    invoke-direct {v1, p4, v0, p5, v2}, Lk/g;-><init>(Lk/j;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lk/A;->g:Lk/g;

    iput p1, p0, Lk/A;->j:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lf/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lk/A;->i:I

    iput-object p3, p0, Lk/A;->o:Landroid/view/View;

    new-instance p3, Landroidx/appcompat/widget/A0;

    const/4 p5, 0x0

    invoke-direct {p3, p2, p5, p1}, Landroidx/appcompat/widget/w0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    invoke-virtual {p4, p0, p2}, Lk/j;->b(Lk/v;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lk/j;Z)V
    .locals 1

    iget-object v0, p0, Lk/A;->f:Lk/j;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lk/A;->dismiss()V

    iget-object p0, p0, Lk/A;->q:Lk/u;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lk/u;->a(Lk/j;Z)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lk/A;->s:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Lk/B;)Z
    .locals 8

    invoke-virtual {p1}, Lk/j;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lk/t;

    iget-object v5, p0, Lk/A;->p:Landroid/view/View;

    iget-object v4, p0, Lk/A;->e:Landroid/content/Context;

    iget-boolean v7, p0, Lk/A;->h:Z

    iget v3, p0, Lk/A;->j:I

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lk/t;-><init>(ILandroid/content/Context;Landroid/view/View;Lk/j;Z)V

    iget-object v2, p0, Lk/A;->q:Lk/u;

    iput-object v2, v0, Lk/t;->h:Lk/u;

    iget-object v3, v0, Lk/t;->i:Lk/r;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lk/v;->k(Lk/u;)V

    :cond_0
    invoke-static {p1}, Lk/r;->u(Lk/j;)Z

    move-result v2

    iput-boolean v2, v0, Lk/t;->g:Z

    iget-object v3, v0, Lk/t;->i:Lk/r;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lk/r;->o(Z)V

    :cond_1
    iget-object v2, p0, Lk/A;->n:Lk/s;

    iput-object v2, v0, Lk/t;->j:Lk/s;

    const/4 v2, 0x0

    iput-object v2, p0, Lk/A;->n:Lk/s;

    iget-object v2, p0, Lk/A;->f:Lk/j;

    invoke-virtual {v2, v1}, Lk/j;->c(Z)V

    iget-object v2, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    iget v3, v2, Landroidx/appcompat/widget/w0;->i:I

    invoke-virtual {v2}, Landroidx/appcompat/widget/w0;->g()I

    move-result v2

    iget v4, p0, Lk/A;->v:I

    iget-object v5, p0, Lk/A;->o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lk/A;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    invoke-virtual {v0}, Lk/t;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lk/t;->e:Landroid/view/View;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Lk/t;->d(IIZZ)V

    :goto_0
    iget-object p0, p0, Lk/A;->q:Lk/u;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lk/u;->b(Lk/j;)Z

    :cond_5
    return v5

    :cond_6
    :goto_1
    return v1
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lk/A;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    invoke-virtual {p0}, Landroidx/appcompat/widget/w0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 7

    invoke-virtual {p0}, Lk/A;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lk/A;->s:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lk/A;->o:Landroid/view/View;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lk/A;->p:Landroid/view/View;

    iget-object v0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    iget-object v1, v0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p0, v0, Landroidx/appcompat/widget/w0;->s:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/w0;->A:Z

    iget-object v2, v0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, p0, Lk/A;->p:Landroid/view/View;

    iget-object v3, p0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lk/A;->l:Landroidx/appcompat/widget/H;

    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v3, p0, Lk/A;->m:Lcom/google/android/material/textfield/m;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v2, v0, Landroidx/appcompat/widget/w0;->r:Landroid/view/View;

    iget v2, p0, Lk/A;->v:I

    iput v2, v0, Landroidx/appcompat/widget/w0;->o:I

    iget-boolean v2, p0, Lk/A;->t:Z

    iget-object v3, p0, Lk/A;->e:Landroid/content/Context;

    iget-object v5, p0, Lk/A;->g:Lk/g;

    if-nez v2, :cond_3

    iget v2, p0, Lk/A;->i:I

    invoke-static {v5, v3, v2}, Lk/r;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lk/A;->u:I

    iput-boolean v1, p0, Lk/A;->t:Z

    :cond_3
    iget v1, p0, Lk/A;->u:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->p(I)V

    const/4 v1, 0x2

    iget-object v2, v0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lk/r;->d:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    iput-object v6, v0, Landroidx/appcompat/widget/w0;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->f()V

    iget-object v1, v0, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v6, p0, Lk/A;->w:Z

    if-eqz v6, :cond_6

    iget-object p0, p0, Lk/A;->f:Lk/j;

    iget-object v6, p0, Lk/j;->m:Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lf/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v3, v6, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v6, 0x1020016

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object p0, p0, Lk/j;->m:Ljava/lang/CharSequence;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/w0;->n(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->f()V

    :goto_2
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/A;->t:Z

    iget-object p0, p0, Lk/A;->g:Lk/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final j()Landroidx/appcompat/widget/k0;
    .locals 0

    iget-object p0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->f:Landroidx/appcompat/widget/k0;

    return-object p0
.end method

.method public final k(Lk/u;)V
    .locals 0

    iput-object p1, p0, Lk/A;->q:Lk/u;

    return-void
.end method

.method public final l(Lk/j;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lk/A;->o:Landroid/view/View;

    return-void
.end method

.method public final o(Z)V
    .locals 0

    iget-object p0, p0, Lk/A;->g:Lk/g;

    iput-boolean p1, p0, Lk/g;->c:Z

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/A;->s:Z

    iget-object v1, p0, Lk/A;->f:Lk/j;

    invoke-virtual {v1, v0}, Lk/j;->c(Z)V

    iget-object v0, p0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/A;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lk/A;->l:Landroidx/appcompat/widget/H;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lk/A;->p:Landroid/view/View;

    iget-object v1, p0, Lk/A;->m:Lcom/google/android/material/textfield/m;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lk/A;->n:Lk/s;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lk/s;->onDismiss()V

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

    invoke-virtual {p0}, Lk/A;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lk/A;->v:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iget-object p0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    iput p1, p0, Landroidx/appcompat/widget/w0;->i:I

    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    check-cast p1, Lk/s;

    iput-object p1, p0, Lk/A;->n:Lk/s;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Lk/A;->w:Z

    return-void
.end method

.method public final t(I)V
    .locals 0

    iget-object p0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/w0;->m(I)V

    return-void
.end method
