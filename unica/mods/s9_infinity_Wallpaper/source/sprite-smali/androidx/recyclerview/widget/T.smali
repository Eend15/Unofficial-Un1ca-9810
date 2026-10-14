.class public final Landroidx/recyclerview/widget/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public d:I

.field public e:I

.field public f:Landroid/widget/OverScroller;

.field public g:Landroid/view/animation/Interpolator;

.field public h:Z

.field public i:Z

.field public final synthetic j:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/B;

    iput-object v0, p0, Landroidx/recyclerview/widget/T;->g:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/T;->h:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/T;->i:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/T;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/T;->i:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final b(IIILandroid/view/animation/BaseInterpolator;)V
    .locals 11

    const/high16 v0, -0x80000000

    iget-object v1, p0, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-ne p3, v0, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v6, v5

    int-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    :goto_1
    div-int/lit8 v7, v6, 0x2

    int-to-float v5, v5

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v5, v8

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v5, v9

    const v9, 0x3ef1463b

    mul-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    int-to-float p3, v4

    div-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    int-to-float p3, p3

    div-float/2addr p3, v6

    add-float/2addr p3, v8

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    :goto_3
    const/16 v0, 0x7d0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_4
    move v8, p3

    if-nez p4, :cond_5

    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->v0:Landroidx/recyclerview/widget/B;

    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/T;->g:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_6

    iput-object p4, p0, Landroidx/recyclerview/widget/T;->g:Landroid/view/animation/Interpolator;

    new-instance p3, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    :cond_6
    iput v2, p0, Landroidx/recyclerview/widget/T;->e:I

    iput v2, p0, Landroidx/recyclerview/widget/T;->d:I

    const/4 p3, 0x2

    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    iget-object v3, p0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/T;->a()V

    return-void
.end method

.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/T;->i:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/T;->h:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    iget-object v4, v0, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    iget v7, v0, Landroidx/recyclerview/widget/T;->d:I

    sub-int v7, v5, v7

    iget v8, v0, Landroidx/recyclerview/widget/T;->e:I

    sub-int v14, v6, v8

    iput v5, v0, Landroidx/recyclerview/widget/T;->d:I

    iput v6, v0, Landroidx/recyclerview/widget/T;->e:I

    iget-object v12, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    aput v2, v12, v2

    aput v2, v12, v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v8

    const/4 v13, 0x0

    const/4 v11, 0x1

    move v9, v7

    move v10, v14

    invoke-virtual/range {v8 .. v13}, LK/l;->c(III[I[I)Z

    move-result v5

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    if-eqz v5, :cond_1

    aget v5, v6, v2

    sub-int/2addr v7, v5

    aget v5, v6, v3

    sub-int/2addr v14, v5

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    invoke-virtual {v1, v7, v14}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    :cond_2
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz v5, :cond_5

    aput v2, v6, v2

    aput v2, v6, v3

    invoke-virtual {v1, v7, v14, v6}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    aget v5, v6, v2

    aget v9, v6, v3

    sub-int/2addr v7, v5

    sub-int/2addr v14, v9

    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v10, v10, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v10, :cond_6

    iget-boolean v11, v10, Landroidx/recyclerview/widget/x;->d:Z

    if-nez v11, :cond_6

    iget-boolean v11, v10, Landroidx/recyclerview/widget/x;->e:Z

    if-eqz v11, :cond_6

    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/S;->b()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->g()V

    goto :goto_0

    :cond_3
    iget v12, v10, Landroidx/recyclerview/widget/x;->a:I

    if-lt v12, v11, :cond_4

    sub-int/2addr v11, v3

    iput v11, v10, Landroidx/recyclerview/widget/x;->a:I

    invoke-virtual {v10, v5, v9}, Landroidx/recyclerview/widget/x;->e(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v10, v5, v9}, Landroidx/recyclerview/widget/x;->e(II)V

    goto :goto_0

    :cond_5
    move v5, v2

    move v9, v5

    :cond_6
    :goto_0
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    aput v2, v10, v2

    aput v2, v10, v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v16, v5

    move/from16 v17, v9

    move/from16 v18, v7

    move/from16 v19, v14

    move-object/from16 v22, v10

    invoke-virtual/range {v15 .. v22}, LK/l;->d(IIII[II[I)Z

    aget v10, v6, v2

    sub-int/2addr v7, v10

    aget v6, v6, v3

    sub-int/2addr v14, v6

    if-nez v5, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    invoke-virtual {v1, v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->r(II)V

    :cond_9
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_a
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v10

    if-ne v6, v10, :cond_b

    move v6, v3

    goto :goto_1

    :cond_b
    move v6, v2

    :goto_1
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v11

    if-ne v10, v11, :cond_c

    move v10, v3

    goto :goto_2

    :cond_c
    move v10, v2

    :goto_2
    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_f

    if-nez v6, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    if-nez v10, :cond_f

    if-eqz v14, :cond_e

    goto :goto_3

    :cond_e
    move v6, v2

    goto :goto_4

    :cond_f
    :goto_3
    move v6, v3

    :goto_4
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v10, v10, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v10, :cond_10

    iget-boolean v10, v10, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v10, :cond_10

    goto/16 :goto_9

    :cond_10
    if-eqz v6, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v5

    if-eq v5, v8, :cond_1a

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    if-gez v7, :cond_11

    neg-int v5, v4

    goto :goto_5

    :cond_11
    if-lez v7, :cond_12

    move v5, v4

    goto :goto_5

    :cond_12
    move v5, v2

    :goto_5
    if-gez v14, :cond_13

    neg-int v4, v4

    goto :goto_6

    :cond_13
    if-lez v14, :cond_14

    goto :goto_6

    :cond_14
    move v4, v2

    :goto_6
    if-gez v5, :cond_15

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    neg-int v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_7

    :cond_15
    if-lez v5, :cond_16

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_16
    :goto_7
    if-gez v4, :cond_17

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    neg-int v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_8

    :cond_17
    if-lez v4, :cond_18

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_18
    :goto_8
    if-nez v5, :cond_19

    if-eqz v4, :cond_1a

    :cond_19
    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1a
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/o;

    iget-object v5, v4, Landroidx/recyclerview/widget/o;->c:[I

    if-eqz v5, :cond_1b

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    :cond_1b
    iput v2, v4, Landroidx/recyclerview/widget/o;->d:I

    goto :goto_a

    :cond_1c
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/T;->a()V

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/q;

    if-eqz v4, :cond_1d

    invoke-virtual {v4, v1, v5, v9}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_1d
    :goto_a
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v4, v4, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v4, :cond_1e

    iget-boolean v5, v4, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v5, :cond_1e

    invoke-virtual {v4, v2, v2}, Landroidx/recyclerview/widget/x;->e(II)V

    :cond_1e
    iput-boolean v2, v0, Landroidx/recyclerview/widget/T;->h:Z

    iget-boolean v4, v0, Landroidx/recyclerview/widget/T;->i:Z

    if-eqz v4, :cond_1f

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_1f
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(I)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->I()LK/l;

    move-result-object v0

    invoke-virtual {v0, v3}, LK/l;->h(I)V

    :goto_b
    return-void
.end method
