.class public final Landroidx/appcompat/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/v;


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Landroid/content/Context;

.field public f:Lk/j;

.field public final g:Landroid/view/LayoutInflater;

.field public h:Lk/u;

.field public final i:I

.field public final j:I

.field public k:Lk/x;

.field public l:Landroidx/appcompat/widget/j;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public final s:Landroid/util/SparseBooleanArray;

.field public t:Landroidx/appcompat/widget/f;

.field public u:Landroidx/appcompat/widget/f;

.field public v:Landroidx/appcompat/widget/h;

.field public w:Landroidx/appcompat/widget/g;

.field public final x:Landroidx/appcompat/widget/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lf/g;->abc_action_menu_layout:I

    sget v1, Lf/g;->abc_action_menu_item_layout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/l;->g:Landroid/view/LayoutInflater;

    iput v0, p0, Landroidx/appcompat/widget/l;->i:I

    iput v1, p0, Landroidx/appcompat/widget/l;->j:I

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->s:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/appcompat/widget/g;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/g;-><init>(Landroidx/appcompat/widget/l;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->x:Landroidx/appcompat/widget/g;

    return-void
.end method


# virtual methods
.method public final a(Lk/j;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->f()Z

    iget-object v0, p0, Landroidx/appcompat/widget/l;->u:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lk/t;->i:Lk/r;

    invoke-interface {v0}, Lk/z;->dismiss()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/l;->h:Lk/u;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lk/u;->a(Lk/j;Z)V

    :cond_1
    return-void
.end method

.method public final b(Lk/l;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Lk/l;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lk/l;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    instance-of v0, p2, Lk/w;

    if-eqz v0, :cond_1

    check-cast p2, Lk/w;

    goto :goto_0

    :cond_1
    iget p2, p0, Landroidx/appcompat/widget/l;->j:I

    iget-object v0, p0, Landroidx/appcompat/widget/l;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lk/w;

    :goto_0
    invoke-interface {p2, p1}, Lk/w;->c(Lk/l;)V

    iget-object v0, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iput-object v0, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Lk/i;

    iget-object v0, p0, Landroidx/appcompat/widget/l;->w:Landroidx/appcompat/widget/g;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/g;-><init>(Landroidx/appcompat/widget/l;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->w:Landroidx/appcompat/widget/g;

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/l;->w:Landroidx/appcompat/widget/g;

    iput-object p0, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Landroidx/appcompat/widget/g;

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    :cond_3
    iget-boolean p0, p1, Lk/l;->C:Z

    if-eqz p0, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Landroidx/appcompat/widget/o;

    if-nez p1, :cond_5

    invoke-static {p0}, Landroidx/appcompat/widget/ActionMenuView;->l(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/o;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object v0
.end method

.method public final c(Lk/l;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lk/B;)Z
    .locals 9

    invoke-virtual {p1}, Lk/j;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v2, v0, Lk/B;->z:Lk/j;

    iget-object v3, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eq v2, v3, :cond_1

    move-object v0, v2

    check-cast v0, Lk/B;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lk/w;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lk/w;

    invoke-interface {v7}, Lk/w;->b()Lk/l;

    move-result-object v7

    iget-object v8, v0, Lk/B;->A:Lk/l;

    if-ne v7, v8, :cond_3

    move-object v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v0, p1, Lk/B;->A:Lk/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lk/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_3
    const/4 v4, 0x1

    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Lk/j;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    move v0, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_4
    new-instance v2, Landroidx/appcompat/widget/f;

    iget-object v5, p0, Landroidx/appcompat/widget/l;->e:Landroid/content/Context;

    invoke-direct {v2, p0, v5, p1, v3}, Landroidx/appcompat/widget/f;-><init>(Landroidx/appcompat/widget/l;Landroid/content/Context;Lk/B;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/l;->u:Landroidx/appcompat/widget/f;

    iput-boolean v0, v2, Lk/t;->g:Z

    iget-object v2, v2, Lk/t;->i:Lk/r;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Lk/r;->o(Z)V

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/l;->u:Landroidx/appcompat/widget/f;

    invoke-virtual {v0}, Lk/t;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lk/t;->e:Landroid/view/View;

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1, v1, v1, v1}, Lk/t;->d(IIZZ)V

    :goto_5
    iget-object p0, p0, Landroidx/appcompat/widget/l;->h:Lk/u;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1}, Lk/u;->b(Lk/j;)Z

    :cond_a
    return v4

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lk/l;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/l;->t:Landroidx/appcompat/widget/f;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lk/t;->i:Lk/r;

    invoke-interface {p0}, Lk/z;->dismiss()V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Landroid/content/Context;Lk/j;)V
    .locals 4

    iput-object p1, p0, Landroidx/appcompat/widget/l;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/l;->m:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/l;->o:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt p1, v3, :cond_6

    if-gt v0, v3, :cond_6

    const/16 p1, 0x2d0

    const/16 v3, 0x3c0

    if-le v0, v3, :cond_1

    if-gt v2, p1, :cond_6

    :cond_1
    if-le v0, p1, :cond_2

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_5

    const/16 p1, 0x1e0

    const/16 v3, 0x280

    if-le v0, v3, :cond_3

    if-gt v2, p1, :cond_5

    :cond_3
    if-le v0, p1, :cond_4

    if-le v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x168

    if-lt v0, p1, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x5

    :cond_7
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/l;->q:I

    iget p1, p0, Landroidx/appcompat/widget/l;->o:I

    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    if-nez v0, :cond_8

    new-instance v0, Landroidx/appcompat/widget/j;

    iget-object v1, p0, Landroidx/appcompat/widget/l;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/j;-><init>(Landroidx/appcompat/widget/l;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/l;->p:I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final h()Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/l;->f:Lk/j;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lk/j;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    const/4 v1, 0x0

    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/l;->q:I

    iget v6, v0, Landroidx/appcompat/widget/l;->p:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v9, v4, :cond_4

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lk/l;

    iget v3, v15, Lk/l;->y:I

    and-int/lit8 v2, v3, 0x2

    if-ne v2, v13, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    and-int/lit8 v2, v3, 0x1

    if-ne v2, v14, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    move v10, v14

    :goto_2
    iget-boolean v2, v0, Landroidx/appcompat/widget/l;->r:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v15, Lk/l;->C:Z

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v2, v0, Landroidx/appcompat/widget/l;->m:Z

    if-eqz v2, :cond_6

    if-nez v10, :cond_5

    add-int/2addr v12, v11

    if-le v12, v5, :cond_6

    :cond_5
    add-int/lit8 v5, v5, -0x1

    :cond_6
    sub-int/2addr v5, v11

    iget-object v2, v0, Landroidx/appcompat/widget/l;->s:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v3, v4, :cond_16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk/l;

    iget v11, v10, Lk/l;->y:I

    and-int/lit8 v12, v11, 0x2

    if-ne v12, v13, :cond_7

    move v12, v14

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    iget v15, v10, Lk/l;->b:I

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v8}, Landroidx/appcompat/widget/l;->b(Lk/l;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v6, v11

    if-nez v9, :cond_8

    move v9, v11

    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_9
    invoke-virtual {v10, v14}, Lk/l;->g(Z)V

    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_a

    :cond_a
    and-int/lit8 v11, v11, 0x1

    if-ne v11, v14, :cond_15

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-gtz v5, :cond_b

    if-eqz v11, :cond_c

    :cond_b
    if-lez v6, :cond_c

    move v12, v14

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x0

    if-eqz v12, :cond_f

    invoke-virtual {v0, v10, v13, v8}, Landroidx/appcompat/widget/l;->b(Lk/l;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v6, v14

    if-nez v9, :cond_d

    move v9, v14

    :cond_d
    add-int v14, v6, v9

    if-lez v14, :cond_e

    const/4 v14, 0x1

    goto :goto_7

    :cond_e
    const/4 v14, 0x0

    :goto_7
    and-int/2addr v12, v14

    :cond_f
    if-eqz v12, :cond_10

    if-eqz v15, :cond_10

    const/4 v14, 0x1

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9

    :cond_10
    if-eqz v11, :cond_13

    const/4 v11, 0x0

    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v3, :cond_13

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lk/l;

    iget v13, v14, Lk/l;->b:I

    if-ne v13, v15, :cond_12

    invoke-virtual {v14}, Lk/l;->f()Z

    move-result v13

    if-eqz v13, :cond_11

    add-int/lit8 v5, v5, 0x1

    :cond_11
    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Lk/l;->g(Z)V

    :cond_12
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    goto :goto_8

    :cond_13
    :goto_9
    if-eqz v12, :cond_14

    add-int/lit8 v5, v5, -0x1

    :cond_14
    invoke-virtual {v10, v12}, Lk/l;->g(Z)V

    goto :goto_5

    :cond_15
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lk/l;->g(Z)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_16
    move v3, v14

    return v3
.end method

.method public final i()V
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lk/j;->i()V

    iget-object v3, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    invoke-virtual {v3}, Lk/j;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/l;

    invoke-virtual {v7}, Lk/l;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lk/w;

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Lk/w;

    invoke-interface {v9}, Lk/w;->b()Lk/l;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Landroidx/appcompat/widget/l;->b(Lk/l;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    if-eq v7, v9, :cond_2

    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v10, v8, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v6, v2

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_9

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    if-ne v3, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lk/j;->i()V

    iget-object v0, v0, Lk/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/l;

    iget-object v5, v5, Lk/l;->A:Lk/m;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lk/j;->i()V

    iget-object v1, v0, Lk/j;->j:Ljava/util/ArrayList;

    :cond_b
    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->m:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/l;

    iget-boolean v0, v0, Lk/l;->C:Z

    xor-int/lit8 v2, v0, 0x1

    goto :goto_5

    :cond_c
    if-lez v0, :cond_d

    move v2, v3

    :cond_d
    :goto_5
    if-eqz v2, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    if-nez v0, :cond_e

    new-instance v0, Landroidx/appcompat/widget/j;

    iget-object v1, p0, Landroidx/appcompat/widget/l;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/j;-><init>(Landroidx/appcompat/widget/l;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    iget-object v0, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->k()Landroidx/appcompat/widget/o;

    move-result-object v2

    iput-boolean v3, v2, Landroidx/appcompat/widget/o;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    if-ne v0, v1, :cond_11

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    :goto_6
    iget-object v0, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/l;->m:Z

    iput-boolean p0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    return-void
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/l;->t:Landroidx/appcompat/widget/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lk/u;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/l;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lk/j;->i()V

    iget-object v0, v0, Lk/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/f;

    iget-object v1, p0, Landroidx/appcompat/widget/l;->e:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    iget-object v3, p0, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/f;-><init>(Landroidx/appcompat/widget/l;Landroid/content/Context;Lk/j;Landroid/view/View;)V

    new-instance v1, Landroidx/appcompat/widget/h;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/h;-><init>(Landroidx/appcompat/widget/l;Landroidx/appcompat/widget/f;)V

    iput-object v1, p0, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    iget-object p0, p0, Landroidx/appcompat/widget/l;->k:Lk/x;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
