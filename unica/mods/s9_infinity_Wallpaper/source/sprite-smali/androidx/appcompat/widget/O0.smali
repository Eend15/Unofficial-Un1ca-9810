.class public final Landroidx/appcompat/widget/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/v;


# instance fields
.field public d:Lk/j;

.field public e:Lk/l;

.field public final synthetic f:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/O0;->f:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final a(Lk/j;Z)V
    .locals 0

    return-void
.end method

.method public final c(Lk/l;)Z
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/O0;->f:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    const v2, 0x800003

    const/4 v3, 0x2

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lf/a;->toolbarNavigationButtonStyle:I

    invoke-direct {v1, v4, v5, v6}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->f()Landroidx/appcompat/widget/P0;

    move-result-object v1

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v2

    iput v4, v1, Landroidx/appcompat/widget/P0;->a:I

    iput v3, v1, Landroidx/appcompat/widget/P0;->b:I

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    new-instance v4, Landroidx/appcompat/app/c;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Landroidx/appcompat/app/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_2

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lk/l;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v0, :cond_4

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->f()Landroidx/appcompat/widget/P0;

    move-result-object p0

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    iput v1, p0, Landroidx/appcompat/widget/P0;->a:I

    iput v3, p0, Landroidx/appcompat/widget/P0;->b:I

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_6

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/P0;

    iget v4, v4, Landroidx/appcompat/widget/P0;->b:I

    if-eq v4, v3, :cond_5

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v2, v4, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean v1, p1, Lk/l;->C:Z

    iget-object p0, p1, Lk/l;->n:Lk/j;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk/j;->p(Z)V

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    instance-of p1, p0, Lj/c;

    if-eqz p1, :cond_7

    check-cast p0, Lj/c;

    check-cast p0, Lk/n;

    iget-object p0, p0, Lk/n;->d:Landroid/view/CollapsibleActionView;

    invoke-interface {p0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_7
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->B()V

    return v1
.end method

.method public final d(Lk/B;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lk/l;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/O0;->f:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    instance-of v2, v1, Lj/c;

    if-eqz v2, :cond_0

    check-cast v1, Lj/c;

    check-cast v1, Lk/n;

    iget-object v1, v1, Lk/n;->d:Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lk/l;->C:Z

    iget-object p1, p1, Lk/l;->n:Lk/j;

    invoke-virtual {p1, p0}, Lk/j;->p(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->B()V

    return v4
.end method

.method public final g(Landroid/content/Context;Lk/j;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/O0;->d:Lk/j;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lk/j;->d(Lk/l;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/O0;->d:Lk/j;

    return-void
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/O0;->d:Lk/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lk/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/O0;->d:Lk/j;

    invoke-virtual {v2, v1}, Lk/j;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/O0;->e(Lk/l;)Z

    :cond_2
    :goto_1
    return-void
.end method
