.class public final Ln5/a;
.super Ln5/c;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public final j:F

.field public final k:F

.field public l:F

.field public final m:Lk5/i;

.field public final n:Lk5/i;

.field public o:F

.field public p:F

.field public final q:F

.field public r:I

.field public s:I

.field public final t:Lk5/i;

.field public final u:Lk5/i;

.field public final v:Lk5/i;

.field public final w:Lk5/i;

.field public final x:Lk5/i;

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Lq5/c;Ln5/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ln5/c;-><init>(Lq5/c;Ln5/d;)V

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Ln5/a;->t:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Ln5/a;->u:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Ln5/a;->v:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Ln5/a;->w:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Ln5/a;->x:Lk5/i;

    iget-object p1, p2, Ln5/b;->e:Lk5/i;

    invoke-virtual {p1}, Lk5/i;->c()Lk5/i;

    move-result-object p1

    iput-object p1, p0, Ln5/a;->m:Lk5/i;

    iget-object p1, p2, Ln5/b;->f:Lk5/i;

    invoke-virtual {p1}, Lk5/i;->c()Lk5/i;

    move-result-object p1

    iput-object p1, p0, Ln5/a;->n:Lk5/i;

    iget p1, p2, Ln5/b;->g:F

    iput p1, p0, Ln5/a;->q:F

    const/4 p1, 0x0

    iput p1, p0, Ln5/a;->p:F

    iget v0, p2, Ln5/b;->h:F

    iput v0, p0, Ln5/a;->j:F

    iget p2, p2, Ln5/b;->i:F

    iput p2, p0, Ln5/a;->k:F

    iput p1, p0, Ln5/a;->o:F

    iput p1, p0, Ln5/a;->l:F

    return-void
.end method


# virtual methods
.method public final a(Lw0/m;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ln5/c;->e:Ll5/a;

    iget v3, v2, Ll5/a;->b:I

    iput v3, v0, Ln5/a;->r:I

    iget-object v3, v0, Ln5/c;->f:Ll5/a;

    iget v3, v3, Ll5/a;->b:I

    iput v3, v0, Ln5/a;->s:I

    iget-object v2, v2, Ll5/a;->d:Lk5/f;

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget-object v3, v0, Ln5/a;->w:Lk5/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v3, Lk5/i;->e:F

    iget-object v2, v0, Ln5/c;->f:Ll5/a;

    iget-object v2, v2, Ll5/a;->d:Lk5/f;

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget-object v4, v0, Ln5/a;->x:Lk5/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lk5/i;->d:F

    iput v5, v4, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v4, Lk5/i;->e:F

    iget-object v2, v0, Ln5/c;->e:Ll5/a;

    iget v5, v2, Ll5/a;->p:F

    iput v5, v0, Ln5/a;->y:F

    iget-object v5, v0, Ln5/c;->f:Ll5/a;

    iget v6, v5, Ll5/a;->p:F

    iput v6, v0, Ln5/a;->z:F

    iget v2, v2, Ll5/a;->r:F

    iput v2, v0, Ln5/a;->A:F

    iget v2, v5, Ll5/a;->r:F

    iput v2, v0, Ln5/a;->B:F

    iget-object v2, v1, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    iget v5, v0, Ln5/a;->r:I

    aget-object v6, v2, v5

    iget-object v7, v6, Lm5/f;->a:Lk5/i;

    iget v6, v6, Lm5/f;->b:F

    iget-object v8, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v8, [Lm5/f;

    aget-object v5, v8, v5

    iget-object v9, v5, Lm5/f;->a:Lk5/i;

    iget v5, v5, Lm5/f;->b:F

    iget v10, v0, Ln5/a;->s:I

    aget-object v2, v2, v10

    iget-object v11, v2, Lm5/f;->a:Lk5/i;

    iget v2, v2, Lm5/f;->b:F

    aget-object v8, v8, v10

    iget-object v10, v8, Lm5/f;->a:Lk5/i;

    iget v8, v8, Lm5/f;->b:F

    iget-object v12, v0, Ln5/c;->i:Lq5/c;

    invoke-virtual {v12}, Lq5/c;->a()Lk5/d;

    move-result-object v13

    invoke-virtual {v12}, Lq5/c;->a()Lk5/d;

    move-result-object v14

    invoke-virtual {v13, v6}, Lk5/d;->c(F)V

    invoke-virtual {v14, v2}, Lk5/d;->c(F)V

    iget-object v2, v0, Ln5/a;->t:Lk5/i;

    iget-object v6, v0, Ln5/a;->m:Lk5/i;

    invoke-virtual {v2, v6}, Lk5/i;->k(Lk5/i;)V

    invoke-virtual {v2, v3}, Lk5/i;->m(Lk5/i;)V

    iget-object v3, v0, Ln5/a;->u:Lk5/i;

    invoke-static {v13, v2, v3}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget-object v6, v0, Ln5/a;->n:Lk5/i;

    invoke-virtual {v2, v6}, Lk5/i;->k(Lk5/i;)V

    invoke-virtual {v2, v4}, Lk5/i;->m(Lk5/i;)V

    iget-object v4, v0, Ln5/a;->v:Lk5/i;

    invoke-static {v14, v2, v4}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget v6, v11, Lk5/i;->d:F

    iput v6, v2, Lk5/i;->d:F

    iget v6, v11, Lk5/i;->e:F

    iput v6, v2, Lk5/i;->e:F

    invoke-virtual {v2, v4}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v2, v7}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v2, v3}, Lk5/i;->m(Lk5/i;)V

    iget-object v6, v12, Lq5/c;->d:Lq5/a;

    iget v7, v6, Landroidx/emoji2/text/f;->a:I

    add-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroidx/emoji2/text/f;->a:I

    invoke-virtual {v2}, Lk5/i;->g()F

    move-result v6

    const v7, 0x3ba3d70a    # 0.005f

    cmpl-float v7, v6, v7

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-lez v7, :cond_0

    iget v7, v2, Lk5/i;->d:F

    div-float v14, v11, v6

    mul-float/2addr v7, v14

    iput v7, v2, Lk5/i;->d:F

    iget v7, v2, Lk5/i;->e:F

    mul-float/2addr v7, v14

    iput v7, v2, Lk5/i;->e:F

    goto :goto_0

    :cond_0
    iput v13, v2, Lk5/i;->d:F

    iput v13, v2, Lk5/i;->e:F

    :goto_0
    invoke-static {v3, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v7

    invoke-static {v4, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v14

    iget v15, v0, Ln5/a;->y:F

    iget v11, v0, Ln5/a;->A:F

    invoke-static {v11, v7, v7, v15}, LB/a;->f(FFFF)F

    move-result v7

    iget v11, v0, Ln5/a;->z:F

    add-float/2addr v7, v11

    iget v11, v0, Ln5/a;->B:F

    invoke-static {v11, v14, v14, v7}, LB/a;->f(FFFF)F

    move-result v7

    cmpl-float v11, v7, v13

    if-eqz v11, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v14, v11, v7

    goto :goto_1

    :cond_1
    move v14, v13

    :goto_1
    iput v14, v0, Ln5/a;->C:F

    iget v11, v0, Ln5/a;->j:F

    cmpl-float v15, v11, v13

    if-lez v15, :cond_4

    iget v15, v0, Ln5/a;->q:F

    sub-float/2addr v6, v15

    const v15, 0x40c90fdb

    mul-float/2addr v11, v15

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v14

    iget v13, v0, Ln5/a;->k:F

    mul-float/2addr v15, v13

    mul-float/2addr v15, v11

    mul-float/2addr v14, v11

    mul-float/2addr v14, v11

    iget-object v11, v1, Lw0/m;->b:Ljava/lang/Object;

    check-cast v11, Ll5/g;

    iget v11, v11, Ll5/g;->a:F

    mul-float v13, v11, v14

    add-float/2addr v13, v15

    mul-float/2addr v13, v11

    iput v13, v0, Ln5/a;->o:F

    const/4 v15, 0x0

    cmpl-float v17, v13, v15

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v17, :cond_2

    div-float v17, v16, v13

    move/from16 v13, v17

    goto :goto_2

    :cond_2
    move v13, v15

    :goto_2
    iput v13, v0, Ln5/a;->o:F

    mul-float/2addr v6, v11

    mul-float/2addr v6, v14

    mul-float/2addr v6, v13

    iput v6, v0, Ln5/a;->l:F

    add-float/2addr v7, v13

    cmpl-float v6, v7, v15

    if-eqz v6, :cond_3

    div-float v17, v16, v7

    move/from16 v6, v17

    goto :goto_3

    :cond_3
    move v6, v15

    :goto_3
    iput v6, v0, Ln5/a;->C:F

    goto :goto_4

    :cond_4
    move v15, v13

    iput v15, v0, Ln5/a;->o:F

    iput v15, v0, Ln5/a;->l:F

    :goto_4
    iget-object v6, v1, Lw0/m;->b:Ljava/lang/Object;

    check-cast v6, Ll5/g;

    iget-boolean v7, v6, Ll5/g;->f:Z

    if-eqz v7, :cond_5

    iget v7, v0, Ln5/a;->p:F

    iget v6, v6, Ll5/g;->c:F

    mul-float/2addr v7, v6

    iput v7, v0, Ln5/a;->p:F

    invoke-virtual {v12}, Lq5/c;->b()Lk5/i;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v2, Lk5/i;->d:F

    iput v7, v6, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v6, Lk5/i;->e:F

    iget v2, v0, Ln5/a;->p:F

    invoke-virtual {v6, v2}, Lk5/i;->h(F)V

    iget v2, v9, Lk5/i;->d:F

    iget v7, v0, Ln5/a;->y:F

    iget v11, v6, Lk5/i;->d:F

    mul-float/2addr v11, v7

    sub-float/2addr v2, v11

    iput v2, v9, Lk5/i;->d:F

    iget v2, v9, Lk5/i;->e:F

    iget v11, v6, Lk5/i;->e:F

    mul-float/2addr v7, v11

    sub-float/2addr v2, v7

    iput v2, v9, Lk5/i;->e:F

    iget v2, v0, Ln5/a;->A:F

    invoke-static {v3, v6}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v5, v3

    iget v2, v10, Lk5/i;->d:F

    iget v3, v0, Ln5/a;->z:F

    iget v7, v6, Lk5/i;->d:F

    mul-float/2addr v7, v3

    add-float/2addr v7, v2

    iput v7, v10, Lk5/i;->d:F

    iget v2, v10, Lk5/i;->e:F

    iget v7, v6, Lk5/i;->e:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    iput v3, v10, Lk5/i;->e:F

    iget v2, v0, Ln5/a;->B:F

    invoke-static {v4, v6}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v8, v3

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lq5/c;->c(I)V

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    iput v2, v0, Ln5/a;->p:F

    :goto_5
    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, [Lm5/f;

    iget v2, v0, Ln5/a;->r:I

    aget-object v2, v1, v2

    iput v5, v2, Lm5/f;->b:F

    iget v0, v0, Ln5/a;->s:I

    aget-object v0, v1, v0

    iput v8, v0, Lm5/f;->b:F

    return-void
.end method

.method public final b(Lw0/m;)Z
    .locals 14

    iget v0, p0, Ln5/a;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ln5/c;->i:Lq5/c;

    invoke-virtual {v0}, Lq5/c;->a()Lk5/d;

    move-result-object v2

    invoke-virtual {v0}, Lq5/c;->a()Lk5/d;

    move-result-object v3

    invoke-virtual {v0}, Lq5/c;->b()Lk5/i;

    move-result-object v4

    invoke-virtual {v0}, Lq5/c;->b()Lk5/i;

    move-result-object v5

    invoke-virtual {v0}, Lq5/c;->b()Lk5/i;

    move-result-object v6

    iget-object v7, p1, Lw0/m;->c:Ljava/lang/Object;

    check-cast v7, [Lm5/f;

    iget v8, p0, Ln5/a;->r:I

    aget-object v8, v7, v8

    iget-object v9, v8, Lm5/f;->a:Lk5/i;

    iget v8, v8, Lm5/f;->b:F

    iget v10, p0, Ln5/a;->s:I

    aget-object v7, v7, v10

    iget-object v10, v7, Lm5/f;->a:Lk5/i;

    iget v7, v7, Lm5/f;->b:F

    invoke-virtual {v2, v8}, Lk5/d;->c(F)V

    invoke-virtual {v3, v7}, Lk5/d;->c(F)V

    iget-object v11, p0, Ln5/a;->m:Lk5/i;

    invoke-virtual {v6, v11}, Lk5/i;->k(Lk5/i;)V

    iget-object v11, p0, Ln5/a;->w:Lk5/i;

    invoke-virtual {v6, v11}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v2, v6, v4}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget-object v2, p0, Ln5/a;->n:Lk5/i;

    invoke-virtual {v6, v2}, Lk5/i;->k(Lk5/i;)V

    iget-object v2, p0, Ln5/a;->x:Lk5/i;

    invoke-virtual {v6, v2}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v3, v6, v5}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget v2, v10, Lk5/i;->d:F

    iput v2, v6, Lk5/i;->d:F

    iget v2, v10, Lk5/i;->e:F

    iput v2, v6, Lk5/i;->e:F

    invoke-virtual {v6, v5}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v6, v9}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v6, v4}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v6}, Lk5/i;->j()F

    move-result v2

    iget v3, p0, Ln5/a;->q:F

    sub-float/2addr v2, v3

    const v3, -0x41b33333    # -0.2f

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v3, v11}, Lk5/c;->N(FFF)F

    move-result v2

    iget v3, p0, Ln5/a;->C:F

    neg-float v3, v3

    mul-float/2addr v3, v2

    iget v11, v6, Lk5/i;->d:F

    mul-float/2addr v11, v3

    iget v6, v6, Lk5/i;->e:F

    mul-float/2addr v3, v6

    iget v6, v9, Lk5/i;->d:F

    iget v12, p0, Ln5/a;->y:F

    mul-float v13, v12, v11

    sub-float/2addr v6, v13

    iput v6, v9, Lk5/i;->d:F

    iget v6, v9, Lk5/i;->e:F

    mul-float/2addr v12, v3

    sub-float/2addr v6, v12

    iput v6, v9, Lk5/i;->e:F

    iget v6, p0, Ln5/a;->A:F

    iget v9, v4, Lk5/i;->d:F

    mul-float/2addr v9, v3

    iget v4, v4, Lk5/i;->e:F

    mul-float/2addr v4, v11

    sub-float/2addr v9, v4

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    iget v4, v10, Lk5/i;->d:F

    iget v6, p0, Ln5/a;->z:F

    mul-float v9, v6, v11

    add-float/2addr v9, v4

    iput v9, v10, Lk5/i;->d:F

    iget v4, v10, Lk5/i;->e:F

    mul-float/2addr v6, v3

    add-float/2addr v6, v4

    iput v6, v10, Lk5/i;->e:F

    iget v4, p0, Ln5/a;->B:F

    iget v6, v5, Lk5/i;->d:F

    mul-float/2addr v6, v3

    iget v3, v5, Lk5/i;->e:F

    mul-float/2addr v3, v11

    sub-float/2addr v6, v3

    mul-float/2addr v6, v4

    add-float/2addr v6, v7

    iget-object p1, p1, Lw0/m;->c:Ljava/lang/Object;

    check-cast p1, [Lm5/f;

    iget v3, p0, Ln5/a;->r:I

    aget-object v3, p1, v3

    iput v8, v3, Lm5/f;->b:F

    iget p0, p0, Ln5/a;->s:I

    aget-object p0, p1, p0

    iput v6, p0, Lm5/f;->b:F

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lq5/c;->c(I)V

    iget-object p0, v0, Lq5/c;->d:Lq5/a;

    iget p1, p0, Landroidx/emoji2/text/f;->a:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/emoji2/text/f;->a:I

    invoke-static {v2}, Lk5/c;->M(F)F

    move-result p0

    const p1, 0x3ba3d70a    # 0.005f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Lw0/m;)V
    .locals 12

    iget-object v0, p1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, [Lm5/f;

    iget v1, p0, Ln5/a;->r:I

    aget-object v1, v0, v1

    iget-object v2, v1, Lm5/f;->a:Lk5/i;

    iget v1, v1, Lm5/f;->b:F

    iget v3, p0, Ln5/a;->s:I

    aget-object v0, v0, v3

    iget-object v3, v0, Lm5/f;->a:Lk5/i;

    iget v0, v0, Lm5/f;->b:F

    iget-object v4, p0, Ln5/c;->i:Lq5/c;

    invoke-virtual {v4}, Lq5/c;->b()Lk5/i;

    move-result-object v5

    invoke-virtual {v4}, Lq5/c;->b()Lk5/i;

    move-result-object v6

    iget-object v7, p0, Ln5/a;->u:Lk5/i;

    invoke-static {v1, v7, v5}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    invoke-virtual {v5, v2}, Lk5/i;->b(Lk5/i;)V

    iget-object v8, p0, Ln5/a;->v:Lk5/i;

    invoke-static {v0, v8, v6}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    invoke-virtual {v6, v3}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v6, v5}, Lk5/i;->m(Lk5/i;)V

    iget-object v5, p0, Ln5/a;->t:Lk5/i;

    invoke-static {v5, v6}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v6

    iget v9, p0, Ln5/a;->C:F

    neg-float v9, v9

    iget v10, p0, Ln5/a;->l:F

    add-float/2addr v6, v10

    iget v10, p0, Ln5/a;->o:F

    iget v11, p0, Ln5/a;->p:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v10, v9

    add-float/2addr v11, v10

    iput v11, p0, Ln5/a;->p:F

    iget v6, v5, Lk5/i;->d:F

    mul-float/2addr v6, v10

    iget v5, v5, Lk5/i;->e:F

    mul-float/2addr v10, v5

    iget v5, v2, Lk5/i;->d:F

    iget v9, p0, Ln5/a;->y:F

    mul-float v11, v9, v6

    sub-float/2addr v5, v11

    iput v5, v2, Lk5/i;->d:F

    iget v5, v2, Lk5/i;->e:F

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    iput v5, v2, Lk5/i;->e:F

    iget v2, p0, Ln5/a;->A:F

    iget v5, v7, Lk5/i;->d:F

    mul-float/2addr v5, v10

    iget v7, v7, Lk5/i;->e:F

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    iget v2, v3, Lk5/i;->d:F

    iget v5, p0, Ln5/a;->z:F

    mul-float v7, v5, v6

    add-float/2addr v7, v2

    iput v7, v3, Lk5/i;->d:F

    iget v2, v3, Lk5/i;->e:F

    mul-float/2addr v5, v10

    add-float/2addr v5, v2

    iput v5, v3, Lk5/i;->e:F

    iget v2, p0, Ln5/a;->B:F

    iget v3, v8, Lk5/i;->d:F

    mul-float/2addr v3, v10

    iget v5, v8, Lk5/i;->e:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    iget-object p1, p1, Lw0/m;->d:Ljava/lang/Object;

    check-cast p1, [Lm5/f;

    iget v0, p0, Ln5/a;->r:I

    aget-object v0, p1, v0

    iput v1, v0, Lm5/f;->b:F

    iget p0, p0, Ln5/a;->s:I

    aget-object p0, p1, p0

    iput v3, p0, Lm5/f;->b:F

    const/4 p0, 0x2

    invoke-virtual {v4, p0}, Lq5/c;->c(I)V

    return-void
.end method
