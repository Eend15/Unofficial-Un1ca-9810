.class public final Ln5/e;
.super Ln5/c;
.source "SourceFile"


# instance fields
.field public A:F

.field public final B:Lk5/b;

.field public C:F

.field public D:I

.field public final j:Lk5/i;

.field public final k:Lk5/i;

.field public final l:Lk5/j;

.field public m:F

.field public final n:Z

.field public final o:F

.field public final p:F

.field public final q:F

.field public r:I

.field public s:I

.field public final t:Lk5/i;

.field public final u:Lk5/i;

.field public final v:Lk5/i;

.field public final w:Lk5/i;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Lq5/c;Ln5/f;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Ln5/c;-><init>(Lq5/c;Ln5/d;)V

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Ln5/e;->j:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Ln5/e;->k:Lk5/i;

    new-instance v1, Lk5/j;

    invoke-direct {v1}, Lk5/j;-><init>()V

    iput-object v1, p0, Ln5/e;->l:Lk5/j;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Ln5/e;->t:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Ln5/e;->u:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Ln5/e;->v:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Ln5/e;->w:Lk5/i;

    new-instance v1, Lk5/b;

    invoke-direct {v1}, Lk5/b;-><init>()V

    iput-object v1, p0, Ln5/e;->B:Lk5/b;

    iget-object v1, p2, Ln5/f;->e:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iput v2, p1, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, p1, Lk5/i;->e:F

    iget-object p1, p2, Ln5/f;->f:Lk5/i;

    iget v1, p1, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->e:F

    iput p1, v0, Lk5/i;->e:F

    iget p1, p2, Ln5/f;->g:F

    iput p1, p0, Ln5/e;->o:F

    const/4 p1, 0x0

    iput p1, p0, Ln5/e;->m:F

    iget p1, p2, Ln5/f;->i:F

    iput p1, p0, Ln5/e;->p:F

    iget p1, p2, Ln5/f;->j:F

    iput p1, p0, Ln5/e;->q:F

    iget-boolean p1, p2, Ln5/f;->h:Z

    iput-boolean p1, p0, Ln5/e;->n:Z

    const/4 p1, 0x1

    iput p1, p0, Ln5/e;->D:I

    return-void
.end method


# virtual methods
.method public final a(Lw0/m;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ln5/c;->e:Ll5/a;

    iget v3, v2, Ll5/a;->b:I

    iput v3, v0, Ln5/e;->r:I

    iget-object v3, v0, Ln5/c;->f:Ll5/a;

    iget v3, v3, Ll5/a;->b:I

    iput v3, v0, Ln5/e;->s:I

    iget-object v2, v2, Ll5/a;->d:Lk5/f;

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget-object v3, v0, Ln5/e;->v:Lk5/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v3, Lk5/i;->e:F

    iget-object v2, v0, Ln5/c;->f:Ll5/a;

    iget-object v2, v2, Ll5/a;->d:Lk5/f;

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget-object v4, v0, Ln5/e;->w:Lk5/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lk5/i;->d:F

    iput v5, v4, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v4, Lk5/i;->e:F

    iget-object v2, v0, Ln5/c;->e:Ll5/a;

    iget v5, v2, Ll5/a;->p:F

    iput v5, v0, Ln5/e;->x:F

    iget-object v5, v0, Ln5/c;->f:Ll5/a;

    iget v6, v5, Ll5/a;->p:F

    iput v6, v0, Ln5/e;->y:F

    iget v2, v2, Ll5/a;->r:F

    iput v2, v0, Ln5/e;->z:F

    iget v2, v5, Ll5/a;->r:F

    iput v2, v0, Ln5/e;->A:F

    iget-object v2, v1, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    iget v5, v0, Ln5/e;->r:I

    aget-object v6, v2, v5

    iget v6, v6, Lm5/f;->b:F

    iget-object v7, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v7, [Lm5/f;

    aget-object v5, v7, v5

    iget-object v8, v5, Lm5/f;->a:Lk5/i;

    iget v5, v5, Lm5/f;->b:F

    iget v9, v0, Ln5/e;->s:I

    aget-object v2, v2, v9

    iget v2, v2, Lm5/f;->b:F

    aget-object v7, v7, v9

    iget-object v9, v7, Lm5/f;->a:Lk5/i;

    iget v7, v7, Lm5/f;->b:F

    iget-object v10, v0, Ln5/c;->i:Lq5/c;

    invoke-virtual {v10}, Lq5/c;->a()Lk5/d;

    move-result-object v11

    invoke-virtual {v10}, Lq5/c;->a()Lk5/d;

    move-result-object v12

    invoke-virtual {v10}, Lq5/c;->b()Lk5/i;

    move-result-object v13

    invoke-virtual {v11, v6}, Lk5/d;->c(F)V

    invoke-virtual {v12, v2}, Lk5/d;->c(F)V

    iget-object v14, v0, Ln5/e;->j:Lk5/i;

    invoke-virtual {v13, v14}, Lk5/i;->k(Lk5/i;)V

    invoke-virtual {v13, v3}, Lk5/i;->m(Lk5/i;)V

    iget-object v3, v0, Ln5/e;->t:Lk5/i;

    invoke-static {v11, v13, v3}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget-object v11, v0, Ln5/e;->k:Lk5/i;

    invoke-virtual {v13, v11}, Lk5/i;->k(Lk5/i;)V

    invoke-virtual {v13, v4}, Lk5/i;->m(Lk5/i;)V

    iget-object v4, v0, Ln5/e;->u:Lk5/i;

    invoke-static {v12, v13, v4}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget v11, v0, Ln5/e;->x:F

    iget v12, v0, Ln5/e;->y:F

    iget v13, v0, Ln5/e;->z:F

    iget v14, v0, Ln5/e;->A:F

    add-float v15, v13, v14

    move/from16 v16, v7

    const/4 v7, 0x0

    cmpl-float v17, v15, v7

    if-nez v17, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    const/16 v18, 0x0

    :goto_0
    iget-object v7, v0, Ln5/e;->B:Lk5/b;

    move-object/from16 v19, v9

    iget-object v9, v7, Lk5/b;->d:Lk5/j;

    move/from16 v20, v5

    add-float v5, v11, v12

    move/from16 v21, v12

    iget v12, v3, Lk5/i;->e:F

    move/from16 v22, v11

    invoke-static {v12, v12, v13, v5}, LB/a;->f(FFFF)F

    move-result v11

    move-object/from16 v23, v8

    iget v8, v4, Lk5/i;->e:F

    invoke-static {v8, v8, v14, v11}, LB/a;->f(FFFF)F

    move-result v11

    iput v11, v9, Lk5/j;->d:F

    neg-float v11, v12

    iget v12, v3, Lk5/i;->d:F

    mul-float v24, v11, v12

    mul-float v24, v24, v13

    move-object/from16 v25, v3

    iget v3, v4, Lk5/i;->d:F

    mul-float v26, v8, v3

    mul-float v26, v26, v14

    move-object/from16 v27, v4

    sub-float v4, v24, v26

    move-object/from16 v24, v10

    iget-object v10, v7, Lk5/b;->e:Lk5/j;

    iput v4, v10, Lk5/j;->d:F

    mul-float/2addr v11, v13

    mul-float/2addr v8, v14

    sub-float/2addr v11, v8

    iget-object v4, v7, Lk5/b;->f:Lk5/j;

    iput v11, v4, Lk5/j;->d:F

    iget v7, v10, Lk5/j;->d:F

    iput v7, v9, Lk5/j;->e:F

    invoke-static {v12, v12, v13, v5}, LB/a;->f(FFFF)F

    move-result v5

    invoke-static {v3, v3, v14, v5}, LB/a;->f(FFFF)F

    move-result v5

    iput v5, v10, Lk5/j;->e:F

    mul-float/2addr v12, v13

    mul-float/2addr v3, v14

    add-float/2addr v3, v12

    iput v3, v4, Lk5/j;->e:F

    iput v11, v9, Lk5/j;->f:F

    iput v3, v10, Lk5/j;->f:F

    iput v15, v4, Lk5/j;->f:F

    iput v15, v0, Ln5/e;->C:F

    if-lez v17, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v15

    iput v3, v0, Ln5/e;->C:F

    :cond_1
    const/4 v3, 0x0

    iput v3, v0, Ln5/e;->m:F

    iget-boolean v3, v0, Ln5/e;->n:Z

    const/4 v4, 0x2

    iget-object v5, v0, Ln5/e;->l:Lk5/j;

    if-eqz v3, :cond_7

    if-nez v18, :cond_7

    sub-float/2addr v2, v6

    iget v3, v0, Ln5/e;->o:F

    sub-float/2addr v2, v3

    iget v3, v0, Ln5/e;->q:F

    iget v6, v0, Ln5/e;->p:F

    sub-float v7, v3, v6

    invoke-static {v7}, Lk5/c;->M(F)F

    move-result v7

    const v8, 0x3d8efa36

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    const/4 v2, 0x4

    iput v2, v0, Ln5/e;->D:I

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    iget v2, v0, Ln5/e;->D:I

    const/4 v6, 0x0

    if-eq v2, v4, :cond_3

    iput v6, v5, Lk5/j;->f:F

    :cond_3
    iput v4, v0, Ln5/e;->D:I

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v2, v0, Ln5/e;->D:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iput v6, v5, Lk5/j;->f:F

    :cond_5
    iput v3, v0, Ln5/e;->D:I

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    iput v2, v0, Ln5/e;->D:I

    iput v6, v5, Lk5/j;->f:F

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    iput v2, v0, Ln5/e;->D:I

    :goto_2
    iget-object v2, v1, Lw0/m;->b:Ljava/lang/Object;

    check-cast v2, Ll5/g;

    iget-boolean v2, v2, Ll5/g;->f:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {v24 .. v24}, Lq5/c;->b()Lk5/i;

    move-result-object v2

    iget v3, v5, Lk5/j;->d:F

    iget-object v6, v1, Lw0/m;->b:Ljava/lang/Object;

    check-cast v6, Ll5/g;

    iget v6, v6, Ll5/g;->c:F

    mul-float/2addr v3, v6

    iput v3, v5, Lk5/j;->d:F

    iget v7, v5, Lk5/j;->e:F

    mul-float/2addr v7, v6

    iput v7, v5, Lk5/j;->e:F

    iget v8, v0, Ln5/e;->m:F

    mul-float/2addr v8, v6

    iput v8, v0, Ln5/e;->m:F

    iput v3, v2, Lk5/i;->d:F

    iput v7, v2, Lk5/i;->e:F

    move-object/from16 v6, v23

    iget v8, v6, Lk5/i;->d:F

    mul-float v11, v22, v3

    sub-float/2addr v8, v11

    iput v8, v6, Lk5/i;->d:F

    iget v3, v6, Lk5/i;->e:F

    mul-float v11, v22, v7

    sub-float/2addr v3, v11

    iput v3, v6, Lk5/i;->e:F

    move-object/from16 v3, v25

    invoke-static {v3, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v3

    iget v6, v0, Ln5/e;->m:F

    add-float/2addr v3, v6

    iget v6, v5, Lk5/j;->f:F

    add-float/2addr v3, v6

    mul-float/2addr v3, v13

    sub-float v3, v20, v3

    move-object/from16 v6, v19

    iget v7, v6, Lk5/i;->d:F

    iget v8, v2, Lk5/i;->d:F

    mul-float v12, v21, v8

    add-float/2addr v12, v7

    iput v12, v6, Lk5/i;->d:F

    iget v7, v6, Lk5/i;->e:F

    iget v8, v2, Lk5/i;->e:F

    mul-float v12, v21, v8

    add-float/2addr v12, v7

    iput v12, v6, Lk5/i;->e:F

    move-object/from16 v6, v27

    invoke-static {v6, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v2

    iget v6, v0, Ln5/e;->m:F

    add-float/2addr v2, v6

    iget v5, v5, Lk5/j;->f:F

    add-float/2addr v2, v5

    mul-float/2addr v2, v14

    add-float v7, v2, v16

    move-object/from16 v2, v24

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lq5/c;->c(I)V

    move v5, v3

    goto :goto_3

    :cond_8
    move-object/from16 v2, v24

    const/4 v3, 0x0

    iput v3, v5, Lk5/j;->d:F

    iput v3, v5, Lk5/j;->e:F

    iput v3, v5, Lk5/j;->f:F

    iput v3, v0, Ln5/e;->m:F

    move/from16 v7, v16

    move/from16 v5, v20

    :goto_3
    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, [Lm5/f;

    iget v3, v0, Ln5/e;->r:I

    aget-object v3, v1, v3

    iput v5, v3, Lm5/f;->b:F

    iget v0, v0, Ln5/e;->s:I

    aget-object v0, v1, v0

    iput v7, v0, Lm5/f;->b:F

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lq5/c;->c(I)V

    iget-object v0, v2, Lq5/c;->d:Lq5/a;

    iget v1, v0, Landroidx/emoji2/text/f;->a:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroidx/emoji2/text/f;->a:I

    return-void
.end method

.method public final b(Lw0/m;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ln5/c;->i:Lq5/c;

    invoke-virtual {v2}, Lq5/c;->a()Lk5/d;

    move-result-object v3

    invoke-virtual {v2}, Lq5/c;->a()Lk5/d;

    move-result-object v4

    iget-object v5, v1, Lw0/m;->c:Ljava/lang/Object;

    check-cast v5, [Lm5/f;

    iget v6, v0, Ln5/e;->r:I

    aget-object v6, v5, v6

    iget-object v7, v6, Lm5/f;->a:Lk5/i;

    iget v6, v6, Lm5/f;->b:F

    iget v8, v0, Ln5/e;->s:I

    aget-object v5, v5, v8

    iget-object v8, v5, Lm5/f;->a:Lk5/i;

    iget v5, v5, Lm5/f;->b:F

    invoke-virtual {v3, v6}, Lk5/d;->c(F)V

    invoke-virtual {v4, v5}, Lk5/d;->c(F)V

    iget v9, v0, Ln5/e;->z:F

    iget v10, v0, Ln5/e;->A:F

    add-float/2addr v9, v10

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/4 v12, 0x1

    if-nez v9, :cond_0

    move v9, v12

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-boolean v13, v0, Ln5/e;->n:Z

    const/4 v14, 0x2

    const/4 v15, 0x4

    const v16, 0x3d0efa36

    if-eqz v13, :cond_4

    iget v13, v0, Ln5/e;->D:I

    if-eq v13, v12, :cond_4

    if-nez v9, :cond_4

    sub-float v9, v5, v6

    iget v11, v0, Ln5/e;->o:F

    sub-float/2addr v9, v11

    iget v11, v0, Ln5/e;->p:F

    const v12, 0x3e0efa36

    const v10, -0x41f105ca

    if-ne v13, v15, :cond_1

    sub-float/2addr v9, v11

    invoke-static {v9, v10, v12}, Lk5/c;->N(FFF)F

    move-result v9

    iget v10, v0, Ln5/e;->C:F

    neg-float v10, v10

    mul-float/2addr v10, v9

    invoke-static {v9}, Lk5/c;->M(F)F

    move-result v9

    goto :goto_1

    :cond_1
    if-ne v13, v14, :cond_2

    sub-float/2addr v9, v11

    neg-float v11, v9

    add-float v9, v9, v16

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Lk5/c;->N(FFF)F

    move-result v9

    iget v10, v0, Ln5/e;->C:F

    neg-float v10, v10

    mul-float v17, v10, v9

    move v9, v11

    move/from16 v10, v17

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x3

    if-ne v13, v11, :cond_3

    iget v11, v0, Ln5/e;->q:F

    sub-float/2addr v9, v11

    sub-float v11, v9, v16

    invoke-static {v11, v10, v12}, Lk5/c;->N(FFF)F

    move-result v11

    iget v10, v0, Ln5/e;->C:F

    neg-float v10, v10

    mul-float/2addr v10, v11

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    iget v11, v0, Ln5/e;->z:F

    mul-float/2addr v11, v10

    sub-float/2addr v6, v11

    iget v11, v0, Ln5/e;->A:F

    mul-float/2addr v11, v10

    add-float/2addr v5, v11

    move v12, v9

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Lk5/d;->c(F)V

    invoke-virtual {v4, v5}, Lk5/d;->c(F)V

    invoke-virtual {v2}, Lq5/c;->b()Lk5/i;

    move-result-object v9

    invoke-virtual {v2}, Lq5/c;->b()Lk5/i;

    move-result-object v10

    invoke-virtual {v2}, Lq5/c;->b()Lk5/i;

    move-result-object v11

    invoke-virtual {v2}, Lq5/c;->b()Lk5/i;

    move-result-object v13

    iget-object v14, v0, Ln5/e;->j:Lk5/i;

    invoke-virtual {v11, v14}, Lk5/i;->k(Lk5/i;)V

    iget-object v14, v0, Ln5/e;->v:Lk5/i;

    invoke-virtual {v11, v14}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v3, v11, v9}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget-object v3, v0, Ln5/e;->k:Lk5/i;

    invoke-virtual {v11, v3}, Lk5/i;->k(Lk5/i;)V

    iget-object v3, v0, Ln5/e;->w:Lk5/i;

    invoke-virtual {v11, v3}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v4, v11, v10}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    iget v3, v8, Lk5/i;->d:F

    iput v3, v11, Lk5/i;->d:F

    iget v3, v8, Lk5/i;->e:F

    iput v3, v11, Lk5/i;->e:F

    invoke-virtual {v11, v10}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v11, v7}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v11, v9}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v11}, Lk5/i;->g()F

    move-result v3

    iget v4, v0, Ln5/e;->x:F

    iget v14, v0, Ln5/e;->y:F

    iget v15, v0, Ln5/e;->z:F

    move/from16 v18, v12

    iget v12, v0, Ln5/e;->A:F

    move/from16 v19, v3

    iget-object v3, v2, Lq5/c;->c:Lq5/a;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->r()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/a;

    iget-object v0, v3, Lk5/a;->d:Lk5/i;

    add-float v1, v4, v14

    move-object/from16 v20, v2

    iget v2, v9, Lk5/i;->e:F

    move/from16 v21, v5

    invoke-static {v15, v2, v2, v1}, LB/a;->f(FFFF)F

    move-result v5

    move/from16 v22, v14

    iget v14, v10, Lk5/i;->e:F

    invoke-static {v12, v14, v14, v5}, LB/a;->f(FFFF)F

    move-result v5

    iput v5, v0, Lk5/i;->d:F

    neg-float v5, v15

    move-object/from16 v23, v8

    iget v8, v9, Lk5/i;->d:F

    mul-float/2addr v5, v8

    mul-float/2addr v5, v2

    iget v2, v10, Lk5/i;->d:F

    mul-float/2addr v2, v12

    mul-float/2addr v2, v14

    sub-float/2addr v5, v2

    iput v5, v0, Lk5/i;->e:F

    iget-object v2, v3, Lk5/a;->e:Lk5/i;

    iput v5, v2, Lk5/i;->d:F

    iget v3, v9, Lk5/i;->d:F

    invoke-static {v15, v3, v3, v1}, LB/a;->f(FFFF)F

    move-result v1

    iget v3, v10, Lk5/i;->d:F

    invoke-static {v12, v3, v3, v1}, LB/a;->f(FFFF)F

    move-result v1

    iput v1, v2, Lk5/i;->e:F

    iget v2, v0, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    mul-float v3, v2, v1

    mul-float v8, v5, v0

    sub-float/2addr v3, v8

    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v3, v8, v3

    :cond_5
    iget v8, v11, Lk5/i;->e:F

    mul-float/2addr v2, v8

    iget v11, v11, Lk5/i;->d:F

    mul-float/2addr v0, v11

    sub-float/2addr v2, v0

    mul-float/2addr v2, v3

    mul-float/2addr v1, v11

    mul-float/2addr v5, v8

    sub-float/2addr v1, v5

    mul-float/2addr v1, v3

    iput v1, v13, Lk5/i;->d:F

    iput v2, v13, Lk5/i;->e:F

    invoke-virtual {v13}, Lk5/i;->i()V

    iget v0, v7, Lk5/i;->d:F

    iget v1, v13, Lk5/i;->d:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, v7, Lk5/i;->d:F

    iget v0, v7, Lk5/i;->e:F

    iget v1, v13, Lk5/i;->e:F

    mul-float/2addr v4, v1

    sub-float/2addr v0, v4

    iput v0, v7, Lk5/i;->e:F

    invoke-static {v9, v13}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    mul-float/2addr v0, v15

    sub-float/2addr v6, v0

    move-object/from16 v0, v23

    iget v1, v0, Lk5/i;->d:F

    iget v2, v13, Lk5/i;->d:F

    mul-float v14, v22, v2

    add-float/2addr v14, v1

    iput v14, v0, Lk5/i;->d:F

    iget v1, v0, Lk5/i;->e:F

    iget v2, v13, Lk5/i;->e:F

    mul-float v14, v22, v2

    add-float/2addr v14, v1

    iput v14, v0, Lk5/i;->e:F

    invoke-static {v10, v13}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    mul-float/2addr v0, v12

    add-float v0, v0, v21

    move-object/from16 v1, v20

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lq5/c;->c(I)V

    iget-object v2, v1, Lq5/c;->c:Lq5/a;

    iget v3, v2, Landroidx/emoji2/text/f;->a:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/emoji2/text/f;->a:I

    move-object/from16 v2, p1

    iget-object v2, v2, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    move-object/from16 v3, p0

    iget v5, v3, Ln5/e;->r:I

    aget-object v5, v2, v5

    iput v6, v5, Lm5/f;->b:F

    iget v3, v3, Ln5/e;->s:I

    aget-object v2, v2, v3

    iput v0, v2, Lm5/f;->b:F

    iget-object v0, v1, Lq5/c;->d:Lq5/a;

    iget v1, v0, Landroidx/emoji2/text/f;->a:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/emoji2/text/f;->a:I

    const v0, 0x3ba3d70a    # 0.005f

    cmpg-float v0, v19, v0

    if-gtz v0, :cond_6

    cmpg-float v0, v18, v16

    if-gtz v0, :cond_6

    move v11, v4

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    return v11
.end method

.method public final c(Lw0/m;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    iget v3, v0, Ln5/e;->r:I

    aget-object v3, v2, v3

    iget-object v4, v3, Lm5/f;->a:Lk5/i;

    iget v3, v3, Lm5/f;->b:F

    iget v5, v0, Ln5/e;->s:I

    aget-object v2, v2, v5

    iget-object v5, v2, Lm5/f;->a:Lk5/i;

    iget v2, v2, Lm5/f;->b:F

    iget v6, v0, Ln5/e;->x:F

    iget v7, v0, Ln5/e;->y:F

    iget v8, v0, Ln5/e;->z:F

    iget v9, v0, Ln5/e;->A:F

    add-float v10, v8, v9

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-object v13, v0, Ln5/c;->i:Lq5/c;

    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v14

    iget-boolean v15, v0, Ln5/e;->n:Z

    iget-object v11, v0, Ln5/e;->u:Lk5/i;

    iget-object v12, v0, Ln5/e;->t:Lk5/i;

    iget-object v1, v0, Ln5/e;->B:Lk5/b;

    move/from16 v17, v9

    iget-object v9, v0, Ln5/e;->l:Lk5/j;

    if-eqz v15, :cond_8

    iget v15, v0, Ln5/e;->D:I

    move/from16 v18, v7

    const/4 v7, 0x1

    if-eq v15, v7, :cond_7

    if-nez v10, :cond_7

    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v7

    iget-object v10, v13, Lq5/c;->b:Lq5/a;

    invoke-virtual {v10}, Landroidx/emoji2/text/f;->r()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk5/j;

    invoke-static {v3, v12, v14}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    invoke-static {v2, v11, v7}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    invoke-virtual {v7, v5}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v7, v4}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v7, v14}, Lk5/i;->m(Lk5/i;)V

    sub-float v15, v2, v3

    move/from16 v19, v2

    iget v2, v7, Lk5/i;->d:F

    move-object/from16 v20, v11

    iget v11, v7, Lk5/i;->e:F

    iput v2, v10, Lk5/j;->d:F

    iput v11, v10, Lk5/j;->e:F

    iput v15, v10, Lk5/j;->f:F

    iget-object v2, v13, Lq5/c;->b:Lq5/a;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->r()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/j;

    iget-object v11, v1, Lk5/b;->e:Lk5/j;

    iget-object v15, v1, Lk5/b;->f:Lk5/j;

    invoke-static {v11, v15, v2}, Lk5/j;->c(Lk5/j;Lk5/j;Lk5/j;)V

    move-object/from16 v21, v5

    iget-object v5, v1, Lk5/b;->d:Lk5/j;

    invoke-static {v5, v2}, Lk5/j;->d(Lk5/j;Lk5/j;)F

    move-result v22

    const/16 v16, 0x0

    cmpl-float v23, v22, v16

    if-eqz v23, :cond_1

    const/high16 v23, 0x3f800000    # 1.0f

    div-float v22, v23, v22

    :cond_1
    invoke-static {v11, v15, v2}, Lk5/j;->c(Lk5/j;Lk5/j;Lk5/j;)V

    invoke-static {v10, v2}, Lk5/j;->d(Lk5/j;Lk5/j;)F

    move-result v23

    move/from16 v24, v3

    mul-float v3, v23, v22

    invoke-static {v10, v15, v2}, Lk5/j;->c(Lk5/j;Lk5/j;Lk5/j;)V

    invoke-static {v5, v2}, Lk5/j;->d(Lk5/j;Lk5/j;)F

    move-result v23

    move/from16 v25, v8

    mul-float v8, v23, v22

    invoke-static {v11, v10, v2}, Lk5/j;->c(Lk5/j;Lk5/j;Lk5/j;)V

    invoke-static {v5, v2}, Lk5/j;->d(Lk5/j;Lk5/j;)F

    move-result v5

    mul-float v5, v5, v22

    neg-float v3, v3

    iput v3, v2, Lk5/j;->d:F

    neg-float v3, v8

    iput v3, v2, Lk5/j;->e:F

    neg-float v3, v5

    iput v3, v2, Lk5/j;->f:F

    iget v5, v0, Ln5/e;->D:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_2

    invoke-virtual {v9, v2}, Lk5/j;->a(Lk5/j;)V

    goto/16 :goto_1

    :cond_2
    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    iget v5, v9, Lk5/j;->f:F

    add-float/2addr v5, v3

    const/4 v3, 0x0

    cmpg-float v5, v5, v3

    if-gez v5, :cond_3

    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v3

    iget v5, v15, Lk5/j;->d:F

    iget v8, v15, Lk5/j;->e:F

    iput v5, v3, Lk5/i;->d:F

    iput v8, v3, Lk5/i;->e:F

    iget v5, v9, Lk5/j;->f:F

    invoke-virtual {v3, v5}, Lk5/i;->h(F)V

    invoke-virtual {v3, v7}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v1, v3, v14}, Lk5/b;->a(Lk5/i;Lk5/i;)V

    iget v1, v14, Lk5/i;->d:F

    iput v1, v2, Lk5/j;->d:F

    iget v3, v14, Lk5/i;->e:F

    iput v3, v2, Lk5/j;->e:F

    iget v5, v9, Lk5/j;->f:F

    neg-float v5, v5

    iput v5, v2, Lk5/j;->f:F

    iget v5, v9, Lk5/j;->d:F

    add-float/2addr v5, v1

    iput v5, v9, Lk5/j;->d:F

    iget v1, v9, Lk5/j;->e:F

    add-float/2addr v1, v3

    iput v1, v9, Lk5/j;->e:F

    const/4 v8, 0x0

    iput v8, v9, Lk5/j;->f:F

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lq5/c;->c(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9, v2}, Lk5/j;->a(Lk5/j;)V

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    const/4 v10, 0x3

    if-ne v5, v10, :cond_6

    iget v5, v9, Lk5/j;->f:F

    add-float/2addr v5, v3

    cmpl-float v3, v5, v8

    if-lez v3, :cond_5

    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v3

    iget v5, v15, Lk5/j;->d:F

    iget v8, v15, Lk5/j;->e:F

    iput v5, v3, Lk5/i;->d:F

    iput v8, v3, Lk5/i;->e:F

    iget v5, v9, Lk5/j;->f:F

    invoke-virtual {v3, v5}, Lk5/i;->h(F)V

    invoke-virtual {v3, v7}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v1, v3, v14}, Lk5/b;->a(Lk5/i;Lk5/i;)V

    iget v1, v14, Lk5/i;->d:F

    iput v1, v2, Lk5/j;->d:F

    iget v3, v14, Lk5/i;->e:F

    iput v3, v2, Lk5/j;->e:F

    iget v5, v9, Lk5/j;->f:F

    neg-float v5, v5

    iput v5, v2, Lk5/j;->f:F

    iget v5, v9, Lk5/j;->d:F

    add-float/2addr v5, v1

    iput v5, v9, Lk5/j;->d:F

    iget v1, v9, Lk5/j;->e:F

    add-float/2addr v1, v3

    iput v1, v9, Lk5/j;->e:F

    const/4 v1, 0x0

    iput v1, v9, Lk5/j;->f:F

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lq5/c;->c(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v9, v2}, Lk5/j;->a(Lk5/j;)V

    :cond_6
    :goto_1
    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v1

    iget v3, v2, Lk5/j;->d:F

    iget v5, v2, Lk5/j;->e:F

    iput v3, v1, Lk5/i;->d:F

    iput v5, v1, Lk5/i;->e:F

    iget v7, v4, Lk5/i;->d:F

    mul-float/2addr v3, v6

    sub-float/2addr v7, v3

    iput v7, v4, Lk5/i;->d:F

    iget v3, v4, Lk5/i;->e:F

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    iput v3, v4, Lk5/i;->e:F

    invoke-static {v12, v1}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v3

    iget v4, v2, Lk5/j;->f:F

    add-float/2addr v3, v4

    mul-float v3, v3, v25

    sub-float v3, v24, v3

    move-object/from16 v5, v21

    iget v4, v5, Lk5/i;->d:F

    iget v6, v1, Lk5/i;->d:F

    mul-float v7, v18, v6

    add-float/2addr v7, v4

    iput v7, v5, Lk5/i;->d:F

    iget v4, v5, Lk5/i;->e:F

    iget v6, v1, Lk5/i;->e:F

    mul-float v7, v18, v6

    add-float/2addr v7, v4

    iput v7, v5, Lk5/i;->e:F

    move-object/from16 v7, v20

    invoke-static {v7, v1}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    iget v2, v2, Lk5/j;->f:F

    add-float/2addr v1, v2

    mul-float v1, v1, v17

    add-float v1, v1, v19

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Lq5/c;->c(I)V

    iget-object v4, v13, Lq5/c;->b:Lq5/a;

    iget v5, v4, Landroidx/emoji2/text/f;->a:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroidx/emoji2/text/f;->a:I

    :goto_2
    move-object/from16 v2, p1

    goto/16 :goto_5

    :cond_7
    move/from16 v19, v2

    move/from16 v24, v3

    :goto_3
    move/from16 v25, v8

    move-object v7, v11

    goto :goto_4

    :cond_8
    move/from16 v19, v2

    move/from16 v24, v3

    move/from16 v18, v7

    goto :goto_3

    :goto_4
    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v2

    invoke-virtual {v13}, Lq5/c;->b()Lk5/i;

    move-result-object v3

    move/from16 v8, v24

    invoke-static {v8, v12, v14}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    move/from16 v10, v19

    invoke-static {v10, v7, v2}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    invoke-virtual {v2, v5}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {v2, v4}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v2, v14}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v2}, Lk5/i;->i()V

    invoke-virtual {v1, v2, v3}, Lk5/b;->a(Lk5/i;Lk5/i;)V

    iget v1, v9, Lk5/j;->d:F

    iget v2, v3, Lk5/i;->d:F

    add-float/2addr v1, v2

    iput v1, v9, Lk5/j;->d:F

    iget v1, v9, Lk5/j;->e:F

    iget v11, v3, Lk5/i;->e:F

    add-float/2addr v1, v11

    iput v1, v9, Lk5/j;->e:F

    iget v1, v4, Lk5/i;->d:F

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v4, Lk5/i;->d:F

    iget v1, v4, Lk5/i;->e:F

    mul-float/2addr v6, v11

    sub-float/2addr v1, v6

    iput v1, v4, Lk5/i;->e:F

    invoke-static {v12, v3}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    mul-float v1, v1, v25

    sub-float v1, v8, v1

    iget v2, v5, Lk5/i;->d:F

    iget v4, v3, Lk5/i;->d:F

    mul-float v4, v4, v18

    add-float/2addr v4, v2

    iput v4, v5, Lk5/i;->d:F

    iget v2, v5, Lk5/i;->e:F

    iget v4, v3, Lk5/i;->e:F

    mul-float v4, v4, v18

    add-float/2addr v4, v2

    iput v4, v5, Lk5/i;->e:F

    invoke-static {v7, v3}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v2

    mul-float v2, v2, v17

    add-float/2addr v2, v10

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Lq5/c;->c(I)V

    move v3, v1

    move v1, v2

    goto :goto_2

    :goto_5
    iget-object v2, v2, Lw0/m;->d:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    iget v4, v0, Ln5/e;->r:I

    aget-object v4, v2, v4

    iput v3, v4, Lm5/f;->b:F

    iget v0, v0, Ln5/e;->s:I

    aget-object v0, v2, v0

    iput v1, v0, Lm5/f;->b:F

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lq5/c;->c(I)V

    return-void
.end method
