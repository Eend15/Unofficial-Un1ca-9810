.class public final Lv/c;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:F

.field public F:F

.field public G:Ljava/lang/String;

.field public H:F

.field public I:F

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:F

.field public S:F

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Ljava/lang/String;

.field public Z:I

.field public a:I

.field public a0:Z

.field public b:I

.field public b0:Z

.field public c:F

.field public c0:Z

.field public d:Z

.field public d0:Z

.field public e:I

.field public e0:Z

.field public f:I

.field public f0:I

.field public g:I

.field public g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:I

.field public k:I

.field public k0:I

.field public l:I

.field public l0:F

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public o0:F

.field public p:I

.field public p0:Ls/d;

.field public q:I

.field public r:F

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/c;->d0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lv/c;->a0:Z

    iput-boolean v1, p0, Lv/c;->b0:Z

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v4, p0, Lv/c;->W:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p0, Lv/c;->a0:Z

    iget v4, p0, Lv/c;->L:I

    if-nez v4, :cond_0

    iput v1, p0, Lv/c;->L:I

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v3, :cond_1

    iget-boolean v5, p0, Lv/c;->X:Z

    if-eqz v5, :cond_1

    iput-boolean v0, p0, Lv/c;->b0:Z

    iget v5, p0, Lv/c;->M:I

    if-nez v5, :cond_1

    iput v1, p0, Lv/c;->M:I

    :cond_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    iput-boolean v0, p0, Lv/c;->a0:Z

    if-nez v2, :cond_3

    iget v2, p0, Lv/c;->L:I

    if-ne v2, v1, :cond_3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v1, p0, Lv/c;->W:Z

    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    iput-boolean v0, p0, Lv/c;->b0:Z

    if-nez v4, :cond_5

    iget v0, p0, Lv/c;->M:I

    if-ne v0, v1, :cond_5

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v1, p0, Lv/c;->X:Z

    :cond_5
    iget v0, p0, Lv/c;->c:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lv/c;->a:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Lv/c;->b:I

    if-eq v0, v5, :cond_8

    :cond_6
    iput-boolean v1, p0, Lv/c;->d0:Z

    iput-boolean v1, p0, Lv/c;->a0:Z

    iput-boolean v1, p0, Lv/c;->b0:Z

    iget-object v0, p0, Lv/c;->p0:Ls/d;

    instance-of v0, v0, Ls/f;

    if-nez v0, :cond_7

    new-instance v0, Ls/f;

    invoke-direct {v0}, Ls/f;-><init>()V

    iput-object v0, p0, Lv/c;->p0:Ls/d;

    :cond_7
    iget-object v0, p0, Lv/c;->p0:Ls/d;

    check-cast v0, Ls/f;

    iget p0, p0, Lv/c;->V:I

    invoke-virtual {v0, p0}, Ls/f;->J(I)V

    :cond_8
    return-void
.end method

.method public final resolveLayoutDirection(I)V
    .locals 10

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lv/c;->h0:I

    iput v4, p0, Lv/c;->i0:I

    iput v4, p0, Lv/c;->f0:I

    iput v4, p0, Lv/c;->g0:I

    iget v5, p0, Lv/c;->w:I

    iput v5, p0, Lv/c;->j0:I

    iget v5, p0, Lv/c;->y:I

    iput v5, p0, Lv/c;->k0:I

    iget v5, p0, Lv/c;->E:F

    iput v5, p0, Lv/c;->l0:F

    iget v6, p0, Lv/c;->a:I

    iput v6, p0, Lv/c;->m0:I

    iget v7, p0, Lv/c;->b:I

    iput v7, p0, Lv/c;->n0:I

    iget v8, p0, Lv/c;->c:F

    iput v8, p0, Lv/c;->o0:F

    const/high16 v9, -0x80000000

    if-eqz p1, :cond_a

    iget p1, p0, Lv/c;->s:I

    if-eq p1, v4, :cond_1

    iput p1, p0, Lv/c;->h0:I

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    iget p1, p0, Lv/c;->t:I

    if-eq p1, v4, :cond_2

    iput p1, p0, Lv/c;->i0:I

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lv/c;->u:I

    if-eq p1, v4, :cond_3

    iput p1, p0, Lv/c;->g0:I

    move v2, v3

    :cond_3
    iget p1, p0, Lv/c;->v:I

    if-eq p1, v4, :cond_4

    iput p1, p0, Lv/c;->f0:I

    move v2, v3

    :cond_4
    iget p1, p0, Lv/c;->A:I

    if-eq p1, v9, :cond_5

    iput p1, p0, Lv/c;->k0:I

    :cond_5
    iget p1, p0, Lv/c;->B:I

    if-eq p1, v9, :cond_6

    iput p1, p0, Lv/c;->j0:I

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_7

    sub-float v2, p1, v5

    iput v2, p0, Lv/c;->l0:F

    :cond_7
    iget-boolean v2, p0, Lv/c;->d0:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lv/c;->V:I

    if-ne v2, v3, :cond_10

    iget-boolean v2, p0, Lv/c;->d:Z

    if-eqz v2, :cond_10

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v8, v2

    if-eqz v3, :cond_8

    sub-float/2addr p1, v8

    iput p1, p0, Lv/c;->o0:F

    iput v4, p0, Lv/c;->m0:I

    iput v4, p0, Lv/c;->n0:I

    goto :goto_3

    :cond_8
    if-eq v6, v4, :cond_9

    iput v6, p0, Lv/c;->n0:I

    iput v4, p0, Lv/c;->m0:I

    iput v2, p0, Lv/c;->o0:F

    goto :goto_3

    :cond_9
    if-eq v7, v4, :cond_10

    iput v7, p0, Lv/c;->m0:I

    iput v4, p0, Lv/c;->n0:I

    iput v2, p0, Lv/c;->o0:F

    goto :goto_3

    :cond_a
    iget p1, p0, Lv/c;->s:I

    if-eq p1, v4, :cond_b

    iput p1, p0, Lv/c;->g0:I

    :cond_b
    iget p1, p0, Lv/c;->t:I

    if-eq p1, v4, :cond_c

    iput p1, p0, Lv/c;->f0:I

    :cond_c
    iget p1, p0, Lv/c;->u:I

    if-eq p1, v4, :cond_d

    iput p1, p0, Lv/c;->h0:I

    :cond_d
    iget p1, p0, Lv/c;->v:I

    if-eq p1, v4, :cond_e

    iput p1, p0, Lv/c;->i0:I

    :cond_e
    iget p1, p0, Lv/c;->A:I

    if-eq p1, v9, :cond_f

    iput p1, p0, Lv/c;->j0:I

    :cond_f
    iget p1, p0, Lv/c;->B:I

    if-eq p1, v9, :cond_10

    iput p1, p0, Lv/c;->k0:I

    :cond_10
    :goto_3
    iget p1, p0, Lv/c;->u:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lv/c;->v:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lv/c;->t:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lv/c;->s:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lv/c;->g:I

    if-eq p1, v4, :cond_11

    iput p1, p0, Lv/c;->h0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_11
    iget p1, p0, Lv/c;->h:I

    if-eq p1, v4, :cond_12

    iput p1, p0, Lv/c;->i0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_12
    :goto_4
    iget p1, p0, Lv/c;->e:I

    if-eq p1, v4, :cond_13

    iput p1, p0, Lv/c;->f0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    :cond_13
    iget p1, p0, Lv/c;->f:I

    if-eq p1, v4, :cond_14

    iput p1, p0, Lv/c;->g0:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_14
    :goto_5
    return-void
.end method
