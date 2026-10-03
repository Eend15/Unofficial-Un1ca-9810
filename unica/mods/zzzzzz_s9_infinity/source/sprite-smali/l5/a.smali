.class public final Ll5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Lk5/h;

.field public final d:Lk5/f;

.field public final e:Lk5/i;

.field public f:F

.field public final g:Lk5/i;

.field public h:F

.field public final i:Ll5/h;

.field public j:Ll5/a;

.field public k:Ll5/a;

.field public l:Ll5/c;

.field public m:Lw0/i;

.field public n:Lw0/i;

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public final s:F

.field public t:F

.field public u:Landroid/widget/FrameLayout;

.field public final v:Lj5/c;

.field public final w:Lk5/h;

.field public final x:I


# direct methods
.method public constructor <init>(Ll5/b;Ll5/h;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Ll5/a;->c:Lk5/h;

    new-instance v1, Lk5/f;

    invoke-direct {v1}, Lk5/f;-><init>()V

    iput-object v1, p0, Ll5/a;->d:Lk5/f;

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    iput-object v2, p0, Ll5/a;->e:Lk5/i;

    const/4 v3, 0x0

    iput v3, p0, Ll5/a;->f:F

    new-instance v4, Lk5/i;

    invoke-direct {v4}, Lk5/i;-><init>()V

    iput-object v4, p0, Ll5/a;->g:Lk5/i;

    iput v3, p0, Ll5/a;->h:F

    new-instance v5, Lj5/c;

    invoke-direct {v5}, Lj5/c;-><init>()V

    iput-object v5, p0, Ll5/a;->v:Lj5/c;

    new-instance v5, Lk5/h;

    invoke-direct {v5}, Lk5/h;-><init>()V

    iput-object v5, p0, Ll5/a;->w:Lk5/h;

    const/4 v5, 0x0

    iput v5, p0, Ll5/a;->a:I

    iget-boolean v5, p1, Ll5/b;->e:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    iput v5, p0, Ll5/a;->a:I

    :cond_0
    iget v5, p0, Ll5/a;->a:I

    or-int/lit8 v5, v5, 0x26

    iput v5, p0, Ll5/a;->a:I

    iput-object p2, p0, Ll5/a;->i:Ll5/h;

    iget-object p2, p1, Ll5/b;->b:Lk5/i;

    iget-object v5, v0, Lk5/h;->d:Lk5/i;

    iget v6, p2, Lk5/i;->d:F

    iput v6, v5, Lk5/i;->d:F

    iget p2, p2, Lk5/i;->e:F

    iput p2, v5, Lk5/i;->e:F

    iget-object p2, v0, Lk5/h;->e:Lk5/d;

    iget v0, p1, Ll5/b;->c:F

    invoke-virtual {p2, v0}, Lk5/d;->c(F)V

    iget-object p2, v1, Lk5/f;->d:Lk5/i;

    invoke-virtual {p2}, Lk5/i;->l()V

    iget-object p2, v1, Lk5/f;->e:Lk5/i;

    iget v0, v5, Lk5/i;->d:F

    iput v0, p2, Lk5/i;->d:F

    iget v0, v5, Lk5/i;->e:F

    iput v0, p2, Lk5/i;->e:F

    iget-object p2, v1, Lk5/f;->f:Lk5/i;

    iget v0, v5, Lk5/i;->d:F

    iput v0, p2, Lk5/i;->d:F

    iget v0, v5, Lk5/i;->e:F

    iput v0, p2, Lk5/i;->e:F

    iget p2, p1, Ll5/b;->c:F

    iput p2, v1, Lk5/f;->g:F

    iput p2, v1, Lk5/f;->h:F

    const/4 p2, 0x0

    iput-object p2, p0, Ll5/a;->m:Lw0/i;

    iput-object p2, p0, Ll5/a;->n:Lw0/i;

    iput-object p2, p0, Ll5/a;->j:Ll5/a;

    iput-object p2, p0, Ll5/a;->k:Ll5/a;

    iget-object v0, p1, Ll5/b;->d:Lk5/i;

    iget v1, v0, Lk5/i;->d:F

    iput v1, v2, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v2, Lk5/i;->e:F

    iput v3, p0, Ll5/a;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ll5/a;->s:F

    invoke-virtual {v4}, Lk5/i;->l()V

    iput v3, p0, Ll5/a;->h:F

    iput v3, p0, Ll5/a;->t:F

    iget p1, p1, Ll5/b;->a:I

    iput p1, p0, Ll5/a;->x:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iput v0, p0, Ll5/a;->o:F

    iput v0, p0, Ll5/a;->p:F

    goto :goto_0

    :cond_1
    iput v3, p0, Ll5/a;->o:F

    iput v3, p0, Ll5/a;->p:F

    :goto_0
    iput v3, p0, Ll5/a;->q:F

    iput v3, p0, Ll5/a;->r:F

    iput-object p2, p0, Ll5/a;->u:Landroid/widget/FrameLayout;

    iput-object p2, p0, Ll5/a;->l:Ll5/c;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    iget-object v0, p0, Ll5/a;->d:Lk5/f;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, v0, Lk5/f;->e:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    mul-float/2addr v3, v1

    iget-object v4, v0, Lk5/f;->f:Lk5/i;

    iget v5, v4, Lk5/i;->d:F

    mul-float/2addr v5, p1

    add-float/2addr v5, v3

    iput v5, v2, Lk5/i;->d:F

    iget v3, v2, Lk5/i;->e:F

    mul-float/2addr v3, v1

    iget v4, v4, Lk5/i;->e:F

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    iput v4, v2, Lk5/i;->e:F

    iget v2, v0, Lk5/f;->g:F

    mul-float/2addr v1, v2

    iget v2, v0, Lk5/f;->h:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    iput p1, v0, Lk5/f;->g:F

    iget-object p1, v0, Lk5/f;->f:Lk5/i;

    iget-object v1, v0, Lk5/f;->e:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iput v2, p1, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, p1, Lk5/i;->e:F

    iget v1, v0, Lk5/f;->g:F

    iput v1, v0, Lk5/f;->h:F

    iget-object p0, p0, Ll5/a;->c:Lk5/h;

    iget-object v2, p0, Lk5/h;->e:Lk5/d;

    invoke-virtual {v2, v1}, Lk5/d;->c(F)V

    iget-object v1, p0, Lk5/h;->e:Lk5/d;

    iget-object v0, v0, Lk5/f;->d:Lk5/i;

    iget-object p0, p0, Lk5/h;->d:Lk5/i;

    invoke-static {v1, v0, p0}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lk5/i;->h(F)V

    invoke-virtual {p0, p1}, Lk5/i;->b(Lk5/i;)V

    return-void
.end method

.method public final b(F)V
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Ll5/a;->x:I

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ll5/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll5/a;->f(Z)V

    :cond_1
    iget v0, p0, Ll5/a;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Ll5/a;->h:F

    return-void
.end method

.method public final c(Ll5/d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Ll5/a;->i:Ll5/h;

    invoke-virtual {v3}, Ll5/h;->f()Z

    move-result v4

    if-ne v4, v2, :cond_0

    return-void

    :cond_0
    new-instance v4, Ll5/c;

    invoke-direct {v4}, Ll5/c;-><init>()V

    iget v5, v1, Ll5/d;->b:F

    iput v5, v4, Ll5/c;->e:F

    iget v5, v1, Ll5/d;->c:F

    iput v5, v4, Ll5/c;->f:F

    iput-object v0, v4, Ll5/c;->c:Ll5/a;

    const/4 v5, 0x0

    iput-object v5, v4, Ll5/c;->b:Ll5/c;

    iget-object v6, v4, Ll5/c;->i:LK/o;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Ll5/d;->e:LK/o;

    iget v8, v7, LK/o;->a:I

    iput v8, v6, LK/o;->a:I

    iget v7, v7, LK/o;->b:I

    iput v7, v6, LK/o;->b:I

    iget-object v6, v1, Ll5/d;->a:Lj5/e;

    invoke-virtual {v6}, Lj5/e;->a()Lj5/e;

    move-result-object v6

    iput-object v6, v4, Ll5/c;->d:Lj5/e;

    iget-object v6, v4, Ll5/c;->g:[Ll5/e;

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v6, :cond_1

    new-array v6, v2, [Ll5/e;

    iput-object v6, v4, Ll5/c;->g:[Ll5/e;

    new-instance v9, Ll5/e;

    invoke-direct {v9}, Ll5/e;-><init>()V

    aput-object v9, v6, v7

    iget-object v6, v4, Ll5/c;->g:[Ll5/e;

    aget-object v6, v6, v7

    iput-object v5, v6, Ll5/e;->d:Ljava/lang/Object;

    iput v8, v6, Ll5/e;->b:I

    :cond_1
    iget-object v6, v4, Ll5/c;->g:[Ll5/e;

    array-length v9, v6

    const/4 v10, 0x2

    if-ge v9, v2, :cond_4

    array-length v9, v6

    mul-int/2addr v9, v10

    sget-object v11, Lk5/c;->d:[F

    if-le v9, v2, :cond_2

    goto :goto_0

    :cond_2
    move v9, v2

    :goto_0
    new-array v11, v9, [Ll5/e;

    iput-object v11, v4, Ll5/c;->g:[Ll5/e;

    array-length v12, v6

    invoke-static {v6, v7, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v11, v7

    :goto_1
    if-ge v11, v9, :cond_4

    array-length v12, v6

    if-lt v11, v12, :cond_3

    iget-object v12, v4, Ll5/c;->g:[Ll5/e;

    new-instance v13, Ll5/e;

    invoke-direct {v13}, Ll5/e;-><init>()V

    aput-object v13, v12, v11

    :cond_3
    iget-object v12, v4, Ll5/c;->g:[Ll5/e;

    aget-object v12, v12, v11

    iput-object v5, v12, Ll5/e;->d:Ljava/lang/Object;

    iput v8, v12, Ll5/e;->b:I

    add-int/2addr v11, v2

    goto :goto_1

    :cond_4
    iput v7, v4, Ll5/c;->h:I

    iget v1, v1, Ll5/d;->d:F

    iput v1, v4, Ll5/c;->a:F

    iget v1, v0, Ll5/a;->a:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    iget-object v6, v0, Ll5/a;->c:Lk5/h;

    if-ne v1, v5, :cond_5

    iget-object v1, v3, Ll5/h;->b:Lg4/e;

    iget-object v1, v1, Lg4/e;->b:Ljava/lang/Object;

    check-cast v1, Li5/a;

    iget-object v5, v4, Ll5/c;->d:Lj5/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, v4, Ll5/c;->h:I

    :goto_2
    iget v5, v4, Ll5/c;->h:I

    if-ge v7, v5, :cond_5

    iget-object v5, v4, Ll5/c;->g:[Ll5/e;

    aget-object v5, v5, v7

    iget-object v8, v4, Ll5/c;->d:Lj5/e;

    iget-object v9, v5, Ll5/e;->c:Ljava/lang/Object;

    check-cast v9, Lw0/l;

    invoke-virtual {v8, v9, v6}, Lj5/e;->b(Lw0/l;Lk5/h;)V

    iget-object v8, v1, Li5/a;->a:Li5/c;

    invoke-virtual {v8}, Li5/c;->a()Li5/d;

    move-result-object v9

    iget-object v11, v9, Li5/d;->a:Lw0/l;

    iget-object v12, v11, Lw0/l;->e:Ljava/lang/Object;

    check-cast v12, Lk5/i;

    iget-object v13, v5, Ll5/e;->c:Ljava/lang/Object;

    check-cast v13, Lw0/l;

    iget-object v14, v13, Lw0/l;->e:Ljava/lang/Object;

    check-cast v14, Lk5/i;

    iget v15, v14, Lk5/i;->d:F

    const v16, 0x3dcccccd    # 0.1f

    sub-float v15, v15, v16

    iput v15, v12, Lk5/i;->d:F

    iget v14, v14, Lk5/i;->e:F

    sub-float v14, v14, v16

    iput v14, v12, Lk5/i;->e:F

    iget-object v12, v13, Lw0/l;->f:Ljava/lang/Object;

    check-cast v12, Lk5/i;

    iget v13, v12, Lk5/i;->d:F

    add-float v13, v13, v16

    iget-object v11, v11, Lw0/l;->f:Ljava/lang/Object;

    check-cast v11, Lk5/i;

    iput v13, v11, Lk5/i;->d:F

    iget v12, v12, Lk5/i;->e:F

    add-float v12, v12, v16

    iput v12, v11, Lk5/i;->e:F

    iput-object v5, v9, Li5/d;->b:Ll5/e;

    iget v9, v9, Li5/d;->f:I

    invoke-virtual {v8, v9}, Li5/c;->d(I)V

    invoke-virtual {v1, v9}, Li5/a;->a(I)V

    iput v9, v5, Ll5/e;->b:I

    iput-object v4, v5, Ll5/e;->d:Ljava/lang/Object;

    iput v7, v5, Ll5/e;->a:I

    add-int/2addr v7, v2

    goto :goto_2

    :cond_5
    iget-object v1, v0, Ll5/a;->l:Ll5/c;

    iput-object v1, v4, Ll5/c;->b:Ll5/c;

    iput-object v4, v0, Ll5/a;->l:Ll5/c;

    iput-object v0, v4, Ll5/c;->c:Ll5/a;

    iget v1, v4, Ll5/c;->a:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_c

    iput v4, v0, Ll5/a;->o:F

    iput v4, v0, Ll5/a;->p:F

    iput v4, v0, Ll5/a;->q:F

    iput v4, v0, Ll5/a;->r:F

    iget-object v1, v0, Ll5/a;->d:Lk5/f;

    iget-object v5, v1, Lk5/f;->d:Lk5/i;

    invoke-virtual {v5}, Lk5/i;->l()V

    iget-object v5, v1, Lk5/f;->e:Lk5/i;

    iget-object v7, v1, Lk5/f;->f:Lk5/i;

    iget v8, v0, Ll5/a;->x:I

    if-eq v8, v2, :cond_b

    if-ne v8, v10, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v8, v3, Ll5/h;->i:Lq5/c;

    invoke-virtual {v8}, Lq5/c;->b()Lk5/i;

    move-result-object v9

    invoke-virtual {v9}, Lk5/i;->l()V

    invoke-virtual {v8}, Lq5/c;->b()Lk5/i;

    move-result-object v10

    iget-object v11, v0, Ll5/a;->l:Ll5/c;

    :goto_3
    if-eqz v11, :cond_8

    iget v12, v11, Ll5/c;->a:F

    cmpl-float v13, v12, v4

    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    iget-object v13, v11, Ll5/c;->d:Lj5/e;

    iget-object v14, v0, Ll5/a;->v:Lj5/c;

    invoke-virtual {v13, v14, v12}, Lj5/e;->c(Lj5/c;F)V

    iget v12, v0, Ll5/a;->o:F

    iget v13, v14, Lj5/c;->a:F

    add-float/2addr v12, v13

    iput v12, v0, Ll5/a;->o:F

    iget-object v12, v14, Lj5/c;->b:Lk5/i;

    invoke-virtual {v10, v12}, Lk5/i;->k(Lk5/i;)V

    iget v12, v14, Lj5/c;->a:F

    invoke-virtual {v10, v12}, Lk5/i;->h(F)V

    invoke-virtual {v9, v10}, Lk5/i;->b(Lk5/i;)V

    iget v12, v0, Ll5/a;->q:F

    iget v13, v14, Lj5/c;->c:F

    add-float/2addr v12, v13

    iput v12, v0, Ll5/a;->q:F

    :goto_4
    iget-object v11, v11, Ll5/c;->b:Ll5/c;

    goto :goto_3

    :cond_8
    iget v11, v0, Ll5/a;->o:F

    cmpl-float v12, v11, v4

    const/high16 v13, 0x3f800000    # 1.0f

    if-lez v12, :cond_9

    div-float v11, v13, v11

    iput v11, v0, Ll5/a;->p:F

    invoke-virtual {v9, v11}, Lk5/i;->h(F)V

    goto :goto_5

    :cond_9
    iput v13, v0, Ll5/a;->o:F

    iput v13, v0, Ll5/a;->p:F

    :goto_5
    iget v11, v0, Ll5/a;->q:F

    cmpl-float v12, v11, v4

    if-lez v12, :cond_a

    iget v12, v0, Ll5/a;->a:I

    and-int/lit8 v12, v12, 0x10

    if-nez v12, :cond_a

    iget v4, v0, Ll5/a;->o:F

    invoke-static {v9, v9}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v12

    mul-float/2addr v12, v4

    sub-float/2addr v11, v12

    iput v11, v0, Ll5/a;->q:F

    div-float/2addr v13, v11

    iput v13, v0, Ll5/a;->r:F

    goto :goto_6

    :cond_a
    iput v4, v0, Ll5/a;->q:F

    iput v4, v0, Ll5/a;->r:F

    :goto_6
    invoke-virtual {v8}, Lq5/c;->b()Lk5/i;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v7, Lk5/i;->d:F

    iput v11, v4, Lk5/i;->d:F

    iget v11, v7, Lk5/i;->e:F

    iput v11, v4, Lk5/i;->e:F

    iget-object v1, v1, Lk5/f;->d:Lk5/i;

    iget v11, v9, Lk5/i;->d:F

    iput v11, v1, Lk5/i;->d:F

    iget v9, v9, Lk5/i;->e:F

    iput v9, v1, Lk5/i;->e:F

    invoke-static {v6, v1, v5}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget v1, v5, Lk5/i;->d:F

    iput v1, v7, Lk5/i;->d:F

    iget v1, v5, Lk5/i;->e:F

    iput v1, v7, Lk5/i;->e:F

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v7, Lk5/i;->d:F

    iput v1, v10, Lk5/i;->d:F

    iget v1, v7, Lk5/i;->e:F

    iput v1, v10, Lk5/i;->e:F

    invoke-virtual {v10, v4}, Lk5/i;->m(Lk5/i;)V

    iget v1, v0, Ll5/a;->f:F

    invoke-static {v1, v10, v4}, Lk5/i;->e(FLk5/i;Lk5/i;)V

    iget-object v0, v0, Ll5/a;->e:Lk5/i;

    invoke-virtual {v0, v4}, Lk5/i;->b(Lk5/i;)V

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lq5/c;->c(I)V

    goto :goto_8

    :cond_b
    :goto_7
    iget-object v0, v6, Lk5/h;->d:Lk5/i;

    iget v4, v0, Lk5/i;->d:F

    iput v4, v5, Lk5/i;->d:F

    iget v4, v0, Lk5/i;->e:F

    iput v4, v5, Lk5/i;->e:F

    iget v4, v0, Lk5/i;->d:F

    iput v4, v7, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v7, Lk5/i;->e:F

    iget v0, v1, Lk5/f;->h:F

    iput v0, v1, Lk5/f;->g:F

    :cond_c
    :goto_8
    iget v0, v3, Ll5/h;->a:I

    or-int/2addr v0, v2

    iput v0, v3, Ll5/h;->a:I

    return-void
.end method

.method public final d()Z
    .locals 1

    iget p0, p0, Ll5/a;->a:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Ll5/a;->a:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Ll5/a;->a:I

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ll5/a;->a:I

    iput v0, p0, Ll5/a;->t:F

    goto :goto_0

    :cond_0
    iget p1, p0, Ll5/a;->a:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Ll5/a;->a:I

    iput v0, p0, Ll5/a;->t:F

    iget-object p1, p0, Ll5/a;->e:Lk5/i;

    invoke-virtual {p1}, Lk5/i;->l()V

    iput v0, p0, Ll5/a;->f:F

    iget-object p1, p0, Ll5/a;->g:Lk5/i;

    invoke-virtual {p1}, Lk5/i;->l()V

    iput v0, p0, Ll5/a;->h:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lk5/i;)V
    .locals 3

    iget v0, p0, Ll5/a;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p1}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ll5/a;->f(Z)V

    :cond_1
    iget-object p0, p0, Ll5/a;->e:Lk5/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lk5/i;->d:F

    iput v0, p0, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->e:F

    iput p1, p0, Lk5/i;->e:F

    return-void
.end method

.method public final h(Lk5/i;F)V
    .locals 5

    iget-object v0, p0, Ll5/a;->i:Ll5/h;

    invoke-virtual {v0}, Ll5/h;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ll5/a;->c:Lk5/h;

    iget-object v2, v1, Lk5/h;->e:Lk5/d;

    invoke-virtual {v2, p2}, Lk5/d;->c(F)V

    iget-object v2, v1, Lk5/h;->d:Lk5/i;

    iget v3, p1, Lk5/i;->d:F

    iput v3, v2, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->e:F

    iput p1, v2, Lk5/i;->e:F

    iget-object p1, p0, Ll5/a;->d:Lk5/f;

    iget-object v2, p1, Lk5/f;->d:Lk5/i;

    iget-object v3, p1, Lk5/f;->f:Lk5/i;

    invoke-static {v1, v2, v3}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iput p2, p1, Lk5/f;->h:F

    iget-object v2, p1, Lk5/f;->e:Lk5/i;

    iget v4, v3, Lk5/i;->d:F

    iput v4, v2, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v2, Lk5/i;->e:F

    iput p2, p1, Lk5/f;->g:F

    iget-object p1, v0, Ll5/h;->b:Lg4/e;

    iget-object p1, p1, Lg4/e;->b:Ljava/lang/Object;

    check-cast p1, Li5/a;

    iget-object p0, p0, Ll5/a;->l:Ll5/c;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v1, v1}, Ll5/c;->a(Li5/a;Lk5/h;Lk5/h;)V

    iget-object p0, p0, Ll5/c;->b:Ll5/c;

    goto :goto_0

    :cond_1
    iget-object p0, v0, Ll5/h;->b:Lg4/e;

    invoke-virtual {p0}, Lg4/e;->c()V

    return-void
.end method

.method public final i(Ll5/a;)Z
    .locals 3

    iget v0, p0, Ll5/a;->x:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p1, Ll5/a;->x:I

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Ll5/a;->m:Lw0/i;

    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ll5/a;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, Ln5/c;

    iget-boolean v0, v0, Ln5/c;->h:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Lw0/i;

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final j()V
    .locals 8

    iget-object v0, p0, Ll5/a;->w:Lk5/h;

    iget-object v1, v0, Lk5/h;->e:Lk5/d;

    iget-object v2, p0, Ll5/a;->d:Lk5/f;

    iget v3, v2, Lk5/f;->g:F

    sget-object v4, Lk5/c;->d:[F

    sget v4, Lk5/e;->a:I

    invoke-static {v3}, Lk5/c;->R(F)F

    move-result v3

    iput v3, v1, Lk5/d;->d:F

    iget v1, v2, Lk5/f;->g:F

    invoke-static {v1}, Lk5/c;->O(F)F

    move-result v1

    iget-object v3, v0, Lk5/h;->e:Lk5/d;

    iput v1, v3, Lk5/d;->e:F

    iget-object v1, v2, Lk5/f;->e:Lk5/i;

    iget v4, v1, Lk5/i;->d:F

    iget v5, v3, Lk5/d;->e:F

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget v6, v2, Lk5/i;->d:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget v3, v3, Lk5/d;->d:F

    iget v6, v2, Lk5/i;->e:F

    mul-float v7, v3, v6

    add-float/2addr v7, v4

    iget-object v4, v0, Lk5/h;->d:Lk5/i;

    iput v7, v4, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iget v2, v2, Lk5/i;->d:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    iput v1, v4, Lk5/i;->e:F

    iget-object v1, p0, Ll5/a;->l:Ll5/c;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Ll5/a;->i:Ll5/h;

    iget-object v2, v2, Ll5/h;->b:Lg4/e;

    iget-object v2, v2, Lg4/e;->b:Ljava/lang/Object;

    check-cast v2, Li5/a;

    iget-object v3, p0, Ll5/a;->c:Lk5/h;

    invoke-virtual {v1, v2, v0, v3}, Ll5/c;->a(Li5/a;Lk5/h;Lk5/h;)V

    iget-object v1, v1, Ll5/c;->b:Ll5/c;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 7

    iget-object v0, p0, Ll5/a;->c:Lk5/h;

    iget-object v1, v0, Lk5/h;->e:Lk5/d;

    iget-object p0, p0, Ll5/a;->d:Lk5/f;

    iget v2, p0, Lk5/f;->h:F

    sget-object v3, Lk5/c;->d:[F

    sget v3, Lk5/e;->a:I

    invoke-static {v2}, Lk5/c;->R(F)F

    move-result v2

    iput v2, v1, Lk5/d;->d:F

    iget-object v1, v0, Lk5/h;->e:Lk5/d;

    iget v2, p0, Lk5/f;->h:F

    invoke-static {v2}, Lk5/c;->O(F)F

    move-result v2

    iput v2, v1, Lk5/d;->e:F

    iget-object v1, v0, Lk5/h;->e:Lk5/d;

    iget-object v2, p0, Lk5/f;->d:Lk5/i;

    iget-object v0, v0, Lk5/h;->d:Lk5/i;

    iget-object p0, p0, Lk5/f;->f:Lk5/i;

    iget v3, p0, Lk5/i;->d:F

    iget v4, v1, Lk5/d;->e:F

    iget v5, v2, Lk5/i;->d:F

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget v1, v1, Lk5/d;->d:F

    iget v5, v2, Lk5/i;->e:F

    mul-float v6, v1, v5

    add-float/2addr v6, v3

    iput v6, v0, Lk5/i;->d:F

    iget p0, p0, Lk5/i;->e:F

    iget v2, v2, Lk5/i;->d:F

    mul-float/2addr v1, v2

    sub-float/2addr p0, v1

    mul-float/2addr v4, v5

    sub-float/2addr p0, v4

    iput p0, v0, Lk5/i;->e:F

    return-void
.end method
