.class public final Lm5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll5/g;

.field public b:[Lm5/f;

.field public c:[Lm5/f;

.field public d:[Lm5/b;

.field public e:[Lm5/e;

.field public f:[Lm5/a;

.field public g:I

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public final j:Lk5/i;

.field public final k:Lk5/i;

.field public final l:Lk5/i;

.field public final m:Lk5/h;

.field public final n:Lk5/h;

.field public final o:Lw0/i;

.field public final p:Lk5/i;

.field public final q:Lk5/i;

.field public final r:Lk5/i;

.field public final s:Lk5/i;

.field public final t:Lk5/i;

.field public final u:Lk5/i;

.field public final v:Lk5/i;

.field public final w:Lk5/i;

.field public final x:Lh5/j;

.field public final y:Lk5/i;

.field public final z:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->h:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->i:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->j:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->k:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->l:Lk5/i;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lm5/d;->m:Lk5/h;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lm5/d;->n:Lk5/h;

    new-instance v0, Lw0/i;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lw0/i;-><init>(I)V

    iput-object v0, p0, Lm5/d;->o:Lw0/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->p:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->q:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->r:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->s:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->t:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->u:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->v:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->w:Lk5/i;

    new-instance v0, Lh5/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh5/j;-><init>(I)V

    iput-object v0, p0, Lm5/d;->x:Lh5/j;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->y:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/d;->z:Lk5/i;

    const/16 v0, 0x100

    new-array v1, v0, [Lm5/b;

    iput-object v1, p0, Lm5/d;->d:[Lm5/b;

    new-array v1, v0, [Lm5/e;

    iput-object v1, p0, Lm5/d;->e:[Lm5/e;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lm5/d;->d:[Lm5/b;

    new-instance v3, Lm5/b;

    invoke-direct {v3}, Lm5/b;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lm5/d;->e:[Lm5/e;

    new-instance v3, Lm5/e;

    invoke-direct {v3}, Lm5/e;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lg4/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lg4/e;->b:Ljava/lang/Object;

    check-cast v2, Ll5/g;

    iput-object v2, v0, Lm5/d;->a:Ll5/g;

    iget v2, v1, Lg4/e;->a:I

    iput v2, v0, Lm5/d;->g:I

    iget-object v3, v0, Lm5/d;->d:[Lm5/b;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    sget-object v6, Lk5/c;->d:[F

    if-le v4, v2, :cond_0

    move v2, v4

    :cond_0
    new-array v2, v2, [Lm5/b;

    iput-object v2, v0, Lm5/d;->d:[Lm5/b;

    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    :goto_0
    iget-object v3, v0, Lm5/d;->d:[Lm5/b;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    new-instance v4, Lm5/b;

    invoke-direct {v4}, Lm5/b;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lm5/d;->e:[Lm5/e;

    array-length v3, v2

    iget v4, v0, Lm5/d;->g:I

    if-ge v3, v4, :cond_3

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    sget-object v6, Lk5/c;->d:[F

    if-le v3, v4, :cond_2

    move v4, v3

    :cond_2
    new-array v3, v4, [Lm5/e;

    iput-object v3, v0, Lm5/d;->e:[Lm5/e;

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    :goto_1
    iget-object v3, v0, Lm5/d;->e:[Lm5/e;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    new-instance v4, Lm5/e;

    invoke-direct {v4}, Lm5/e;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lg4/e;->d:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    iput-object v2, v0, Lm5/d;->b:[Lm5/f;

    iget-object v2, v1, Lg4/e;->e:Ljava/lang/Object;

    check-cast v2, [Lm5/f;

    iput-object v2, v0, Lm5/d;->c:[Lm5/f;

    iget-object v1, v1, Lg4/e;->c:Ljava/lang/Object;

    check-cast v1, [Lm5/a;

    iput-object v1, v0, Lm5/d;->f:[Lm5/a;

    move v1, v5

    :goto_2
    iget v2, v0, Lm5/d;->g:I

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lm5/d;->f:[Lm5/a;

    aget-object v2, v2, v1

    iget-object v3, v2, Lm5/a;->f:Ll5/c;

    iget-object v4, v2, Lm5/a;->g:Ll5/c;

    iget-object v6, v3, Ll5/c;->d:Lj5/e;

    iget-object v7, v4, Ll5/c;->d:Lj5/e;

    iget v6, v6, Lj5/e;->b:F

    iget v7, v7, Lj5/e;->b:F

    iget-object v3, v3, Ll5/c;->c:Ll5/a;

    iget-object v4, v4, Ll5/c;->c:Ll5/a;

    iget-object v8, v2, Lm5/a;->j:Lh5/k;

    iget v9, v8, Lh5/k;->e:I

    iget-object v10, v0, Lm5/d;->e:[Lm5/e;

    aget-object v10, v10, v1

    iget v11, v2, Lm5/a;->m:F

    iput v11, v10, Lm5/e;->k:F

    iget v2, v2, Lm5/a;->n:F

    iput v2, v10, Lm5/e;->l:F

    iget v2, v3, Ll5/a;->b:I

    iput v2, v10, Lm5/e;->e:I

    iget v11, v4, Ll5/a;->b:I

    iput v11, v10, Lm5/e;->f:I

    iget v12, v3, Ll5/a;->p:F

    iput v12, v10, Lm5/e;->g:F

    iget v13, v4, Ll5/a;->p:F

    iput v13, v10, Lm5/e;->h:F

    iget v14, v3, Ll5/a;->r:F

    iput v14, v10, Lm5/e;->i:F

    iget v15, v4, Ll5/a;->r:F

    iput v15, v10, Lm5/e;->j:F

    iput v1, v10, Lm5/e;->n:I

    iput v9, v10, Lm5/e;->m:I

    iget-object v5, v10, Lm5/e;->d:Lk5/a;

    move/from16 p1, v7

    iget-object v7, v5, Lk5/a;->d:Lk5/i;

    move/from16 v16, v6

    const/4 v6, 0x0

    iput v6, v7, Lk5/i;->d:F

    iget-object v5, v5, Lk5/a;->e:Lk5/i;

    iput v6, v5, Lk5/i;->d:F

    iput v6, v7, Lk5/i;->e:F

    iput v6, v5, Lk5/i;->e:F

    iget-object v5, v10, Lm5/e;->c:Lk5/a;

    iget-object v7, v5, Lk5/a;->d:Lk5/i;

    iput v6, v7, Lk5/i;->d:F

    iget-object v5, v5, Lk5/a;->e:Lk5/i;

    iput v6, v5, Lk5/i;->d:F

    iput v6, v7, Lk5/i;->e:F

    iput v6, v5, Lk5/i;->e:F

    iget-object v5, v0, Lm5/d;->d:[Lm5/b;

    aget-object v5, v5, v1

    iput v2, v5, Lm5/b;->d:I

    iput v11, v5, Lm5/b;->e:I

    iput v12, v5, Lm5/b;->f:F

    iput v13, v5, Lm5/b;->g:F

    iget-object v2, v3, Ll5/a;->d:Lk5/f;

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget-object v3, v5, Lm5/b;->h:Lk5/i;

    iget v7, v2, Lk5/i;->d:F

    iput v7, v3, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v3, Lk5/i;->e:F

    iget-object v2, v4, Ll5/a;->d:Lk5/f;

    iget-object v2, v2, Lk5/f;->d:Lk5/i;

    iget-object v3, v5, Lm5/b;->i:Lk5/i;

    iget v4, v2, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v3, Lk5/i;->e:F

    iput v14, v5, Lm5/b;->j:F

    iput v15, v5, Lm5/b;->k:F

    iget-object v2, v5, Lm5/b;->b:Lk5/i;

    iget-object v3, v8, Lh5/k;->b:Lk5/i;

    invoke-virtual {v2, v3}, Lk5/i;->k(Lk5/i;)V

    iget-object v2, v5, Lm5/b;->c:Lk5/i;

    iget-object v3, v8, Lh5/k;->c:Lk5/i;

    invoke-virtual {v2, v3}, Lk5/i;->k(Lk5/i;)V

    iput v9, v5, Lm5/b;->o:I

    move/from16 v2, v16

    iput v2, v5, Lm5/b;->m:F

    move/from16 v2, p1

    iput v2, v5, Lm5/b;->n:F

    iget v2, v8, Lh5/k;->d:I

    iput v2, v5, Lm5/b;->l:I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_5

    iget-object v3, v8, Lh5/k;->a:[Lh5/l;

    aget-object v3, v3, v2

    iget-object v4, v10, Lm5/e;->a:[LU0/r;

    aget-object v4, v4, v2

    iget-object v7, v0, Lm5/d;->a:Ll5/g;

    iget-boolean v11, v7, Ll5/g;->f:Z

    if-eqz v11, :cond_4

    iget v7, v7, Ll5/g;->c:F

    iget v11, v3, Lh5/l;->b:F

    mul-float/2addr v11, v7

    iput v11, v4, LU0/r;->a:F

    iget v11, v3, Lh5/l;->c:F

    mul-float/2addr v7, v11

    iput v7, v4, LU0/r;->b:F

    goto :goto_4

    :cond_4
    iput v6, v4, LU0/r;->a:F

    iput v6, v4, LU0/r;->b:F

    :goto_4
    iget-object v7, v4, LU0/r;->f:Ljava/io/Serializable;

    check-cast v7, Lk5/i;

    invoke-virtual {v7}, Lk5/i;->l()V

    iget-object v7, v4, LU0/r;->g:Ljava/io/Serializable;

    check-cast v7, Lk5/i;

    invoke-virtual {v7}, Lk5/i;->l()V

    iput v6, v4, LU0/r;->c:F

    iput v6, v4, LU0/r;->d:F

    iput v6, v4, LU0/r;->e:F

    iget-object v4, v5, Lm5/b;->a:[Lk5/i;

    aget-object v4, v4, v2

    iget-object v3, v3, Lh5/l;->a:Lk5/i;

    iget v7, v3, Lk5/i;->d:F

    iput v7, v4, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v4, Lk5/i;->e:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method public final b()V
    .locals 31

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lm5/d;->g:I

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Lm5/d;->e:[Lm5/e;

    aget-object v3, v3, v2

    iget-object v4, v0, Lm5/d;->d:[Lm5/b;

    aget-object v4, v4, v2

    iget v5, v4, Lm5/b;->m:F

    iget v6, v4, Lm5/b;->n:F

    iget-object v7, v0, Lm5/d;->f:[Lm5/a;

    iget v8, v3, Lm5/e;->n:I

    aget-object v7, v7, v8

    iget-object v7, v7, Lm5/a;->j:Lh5/k;

    iget v8, v3, Lm5/e;->e:I

    iget v9, v3, Lm5/e;->f:I

    iget v10, v3, Lm5/e;->g:F

    iget v11, v3, Lm5/e;->h:F

    iget v12, v3, Lm5/e;->i:F

    iget v13, v3, Lm5/e;->j:F

    iget-object v14, v0, Lm5/d;->b:[Lm5/f;

    aget-object v15, v14, v8

    iget-object v1, v15, Lm5/f;->a:Lk5/i;

    iget v15, v15, Lm5/f;->b:F

    move/from16 v16, v2

    iget-object v2, v0, Lm5/d;->c:[Lm5/f;

    aget-object v8, v2, v8

    move/from16 v17, v13

    iget-object v13, v8, Lm5/f;->a:Lk5/i;

    iget v8, v8, Lm5/f;->b:F

    aget-object v14, v14, v9

    move/from16 v18, v8

    iget-object v8, v14, Lm5/f;->a:Lk5/i;

    iget v14, v14, Lm5/f;->b:F

    aget-object v2, v2, v9

    iget-object v9, v2, Lm5/f;->a:Lk5/i;

    iget v2, v2, Lm5/f;->b:F

    move-object/from16 v19, v13

    iget-object v13, v0, Lm5/d;->m:Lk5/h;

    move/from16 v20, v2

    iget-object v2, v13, Lk5/h;->e:Lk5/d;

    invoke-virtual {v2, v15}, Lk5/d;->c(F)V

    iget-object v2, v0, Lm5/d;->n:Lk5/h;

    iget-object v15, v2, Lk5/h;->e:Lk5/d;

    invoke-virtual {v15, v14}, Lk5/d;->c(F)V

    iget-object v14, v13, Lk5/h;->d:Lk5/i;

    iget v15, v1, Lk5/i;->d:F

    move-object/from16 v21, v9

    iget-object v9, v13, Lk5/h;->e:Lk5/d;

    move/from16 v22, v12

    iget v12, v9, Lk5/d;->e:F

    move/from16 v23, v10

    iget-object v10, v4, Lm5/b;->h:Lk5/i;

    move/from16 v24, v11

    iget v11, v10, Lk5/i;->d:F

    mul-float/2addr v11, v12

    move-object/from16 v25, v3

    iget v3, v9, Lk5/d;->d:F

    move-object/from16 v26, v9

    iget v9, v10, Lk5/i;->e:F

    mul-float v27, v3, v9

    sub-float v11, v11, v27

    sub-float/2addr v15, v11

    iput v15, v14, Lk5/i;->d:F

    iget v11, v1, Lk5/i;->e:F

    iget v10, v10, Lk5/i;->d:F

    mul-float/2addr v3, v10

    mul-float/2addr v12, v9

    add-float/2addr v12, v3

    sub-float/2addr v11, v12

    iput v11, v14, Lk5/i;->e:F

    iget-object v3, v2, Lk5/h;->d:Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    iget-object v10, v2, Lk5/h;->e:Lk5/d;

    iget v11, v10, Lk5/d;->e:F

    iget-object v4, v4, Lm5/b;->i:Lk5/i;

    iget v12, v4, Lk5/i;->d:F

    mul-float/2addr v12, v11

    iget v14, v10, Lk5/d;->d:F

    iget v15, v4, Lk5/i;->e:F

    mul-float v27, v14, v15

    sub-float v12, v12, v27

    sub-float/2addr v9, v12

    iput v9, v3, Lk5/i;->d:F

    iget v9, v8, Lk5/i;->e:F

    iget v4, v4, Lk5/i;->d:F

    mul-float/2addr v14, v4

    mul-float/2addr v11, v15

    add-float/2addr v11, v14

    sub-float/2addr v9, v11

    iput v9, v3, Lk5/i;->e:F

    iget-object v3, v0, Lm5/d;->o:Lw0/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v7, Lh5/k;->e:I

    iget-object v12, v3, Lw0/i;->e:Ljava/lang/Object;

    check-cast v12, Lk5/i;

    iget-object v14, v3, Lw0/i;->f:Ljava/lang/Object;

    check-cast v14, [Lk5/i;

    if-nez v4, :cond_1

    move-object/from16 v26, v1

    move-object/from16 v29, v8

    :cond_0
    :goto_1
    move-object/from16 v0, v25

    goto/16 :goto_4

    :cond_1
    iget v4, v7, Lh5/k;->d:I

    invoke-static {v4}, Lq/e;->c(I)I

    move-result v4

    iget-object v9, v3, Lw0/i;->h:Ljava/lang/Object;

    check-cast v9, Lk5/i;

    iget-object v3, v3, Lw0/i;->g:Ljava/lang/Object;

    check-cast v3, Lk5/i;

    iget-object v15, v7, Lh5/k;->a:[Lh5/l;

    const/high16 v28, 0x3f000000    # 0.5f

    iget-object v11, v7, Lh5/k;->c:Lk5/i;

    if-eqz v4, :cond_5

    iget-object v0, v7, Lh5/k;->b:Lk5/i;

    move-object/from16 v29, v8

    const/4 v8, 0x1

    if-eq v4, v8, :cond_4

    const/4 v8, 0x2

    if-eq v4, v8, :cond_2

    move-object/from16 v26, v1

    goto :goto_1

    :cond_2
    invoke-static {v10, v0, v12}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-static {v2, v11, v3}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    const/4 v0, 0x0

    :goto_2
    iget v2, v7, Lh5/k;->e:I

    if-ge v0, v2, :cond_3

    aget-object v2, v15, v0

    iget-object v2, v2, Lh5/l;->a:Lk5/i;

    invoke-static {v13, v2, v9}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    iget v2, v9, Lk5/i;->d:F

    iget v4, v3, Lk5/i;->d:F

    sub-float v4, v2, v4

    iget v8, v12, Lk5/i;->d:F

    mul-float/2addr v4, v8

    iget v10, v9, Lk5/i;->e:F

    iget v11, v3, Lk5/i;->e:F

    sub-float v11, v10, v11

    move-object/from16 v26, v1

    iget v1, v12, Lk5/i;->e:F

    mul-float/2addr v11, v1

    add-float/2addr v11, v4

    sub-float v4, v6, v11

    mul-float v11, v8, v4

    add-float/2addr v11, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v10

    neg-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v2

    neg-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v10

    aget-object v2, v14, v0

    add-float/2addr v8, v11

    mul-float v8, v8, v28

    iput v8, v2, Lk5/i;->d:F

    add-float/2addr v1, v4

    mul-float v1, v1, v28

    iput v1, v2, Lk5/i;->e:F

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v26

    goto :goto_2

    :cond_3
    move-object/from16 v26, v1

    iget v0, v12, Lk5/i;->d:F

    neg-float v0, v0

    iput v0, v12, Lk5/i;->d:F

    iget v0, v12, Lk5/i;->e:F

    neg-float v0, v0

    iput v0, v12, Lk5/i;->e:F

    goto :goto_1

    :cond_4
    move-object/from16 v30, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v30

    invoke-static {v1, v0, v12}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    invoke-static {v13, v11, v3}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    const/4 v0, 0x0

    :goto_3
    iget v1, v7, Lh5/k;->e:I

    if-ge v0, v1, :cond_0

    aget-object v1, v15, v0

    iget-object v1, v1, Lh5/l;->a:Lk5/i;

    invoke-static {v2, v1, v9}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    iget v1, v9, Lk5/i;->d:F

    iget v4, v3, Lk5/i;->d:F

    sub-float v4, v1, v4

    iget v8, v12, Lk5/i;->d:F

    mul-float/2addr v4, v8

    iget v10, v9, Lk5/i;->e:F

    iget v11, v3, Lk5/i;->e:F

    sub-float v11, v10, v11

    iget v13, v12, Lk5/i;->e:F

    mul-float/2addr v11, v13

    add-float/2addr v11, v4

    sub-float v4, v5, v11

    mul-float v11, v8, v4

    add-float/2addr v11, v1

    mul-float/2addr v4, v13

    add-float/2addr v4, v10

    neg-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v1

    neg-float v1, v13

    mul-float/2addr v1, v6

    add-float/2addr v1, v10

    aget-object v10, v14, v0

    add-float/2addr v11, v8

    mul-float v11, v11, v28

    iput v11, v10, Lk5/i;->d:F

    add-float/2addr v4, v1

    mul-float v4, v4, v28

    iput v4, v10, Lk5/i;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v26, v1

    move-object/from16 v29, v8

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v12, Lk5/i;->d:F

    const/4 v0, 0x0

    iput v0, v12, Lk5/i;->e:F

    invoke-static {v13, v11, v3}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    const/4 v0, 0x0

    aget-object v1, v15, v0

    iget-object v0, v1, Lh5/l;->a:Lk5/i;

    invoke-static {v2, v0, v9}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-static {v3, v9}, Lk5/c;->P(Lk5/i;Lk5/i;)F

    move-result v0

    const/high16 v1, 0x28800000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, v9, Lk5/i;->d:F

    iget v1, v3, Lk5/i;->d:F

    sub-float/2addr v0, v1

    iput v0, v12, Lk5/i;->d:F

    iget v0, v9, Lk5/i;->e:F

    iget v1, v3, Lk5/i;->e:F

    sub-float/2addr v0, v1

    iput v0, v12, Lk5/i;->e:F

    invoke-virtual {v12}, Lk5/i;->j()F

    :cond_6
    iget v0, v12, Lk5/i;->d:F

    mul-float v1, v0, v5

    iget v2, v3, Lk5/i;->d:F

    add-float/2addr v1, v2

    iget v2, v12, Lk5/i;->e:F

    mul-float/2addr v5, v2

    iget v3, v3, Lk5/i;->e:F

    add-float/2addr v5, v3

    neg-float v0, v0

    mul-float/2addr v0, v6

    iget v3, v9, Lk5/i;->d:F

    add-float/2addr v0, v3

    neg-float v2, v2

    mul-float/2addr v2, v6

    iget v3, v9, Lk5/i;->e:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    aget-object v4, v14, v3

    add-float/2addr v1, v0

    mul-float v1, v1, v28

    iput v1, v4, Lk5/i;->d:F

    add-float/2addr v5, v2

    mul-float v5, v5, v28

    iput v5, v4, Lk5/i;->e:F

    goto/16 :goto_1

    :goto_4
    iget-object v1, v0, Lm5/e;->b:Lk5/i;

    iget v2, v12, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v2, v12, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iget v2, v0, Lm5/e;->m:I

    const/4 v3, 0x0

    :goto_5
    iget-object v4, v0, Lm5/e;->a:[LU0/r;

    if-ge v3, v2, :cond_a

    aget-object v4, v4, v3

    iget-object v5, v4, LU0/r;->f:Ljava/io/Serializable;

    check-cast v5, Lk5/i;

    aget-object v6, v14, v3

    invoke-virtual {v5, v6}, Lk5/i;->k(Lk5/i;)V

    move-object/from16 v6, v26

    invoke-virtual {v5, v6}, Lk5/i;->m(Lk5/i;)V

    aget-object v5, v14, v3

    iget-object v7, v4, LU0/r;->g:Ljava/io/Serializable;

    check-cast v7, Lk5/i;

    invoke-virtual {v7, v5}, Lk5/i;->k(Lk5/i;)V

    move-object/from16 v5, v29

    invoke-virtual {v7, v5}, Lk5/i;->m(Lk5/i;)V

    iget-object v8, v4, LU0/r;->f:Ljava/io/Serializable;

    check-cast v8, Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    iget v10, v1, Lk5/i;->e:F

    mul-float v11, v9, v10

    iget v8, v8, Lk5/i;->e:F

    iget v12, v1, Lk5/i;->d:F

    mul-float v13, v8, v12

    sub-float/2addr v11, v13

    iget v13, v7, Lk5/i;->d:F

    mul-float v15, v13, v10

    iget v7, v7, Lk5/i;->e:F

    mul-float v25, v7, v12

    sub-float v15, v15, v25

    move/from16 v25, v2

    add-float v2, v23, v24

    move/from16 v5, v22

    invoke-static {v5, v11, v11, v2}, LB/a;->f(FFFF)F

    move-result v11

    move/from16 v6, v17

    invoke-static {v6, v15, v15, v11}, LB/a;->f(FFFF)F

    move-result v11

    const/4 v15, 0x0

    cmpl-float v17, v11, v15

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v17, :cond_7

    div-float v11, v15, v11

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    iput v11, v4, LU0/r;->c:F

    mul-float v11, v10, v15

    const/high16 v15, -0x40800000    # -1.0f

    mul-float v17, v12, v15

    mul-float v22, v9, v17

    mul-float v28, v8, v11

    sub-float v15, v22, v28

    mul-float v17, v17, v13

    mul-float/2addr v11, v7

    sub-float v11, v17, v11

    invoke-static {v5, v15, v15, v2}, LB/a;->f(FFFF)F

    move-result v2

    invoke-static {v6, v11, v11, v2}, LB/a;->f(FFFF)F

    move-result v2

    const/4 v11, 0x0

    cmpl-float v15, v2, v11

    if-lez v15, :cond_8

    const/high16 v15, 0x3f800000    # 1.0f

    div-float v2, v15, v2

    goto :goto_7

    :cond_8
    move v2, v11

    :goto_7
    iput v2, v4, LU0/r;->d:F

    iput v11, v4, LU0/r;->e:F

    move-object/from16 v2, v21

    iget v15, v2, Lk5/i;->d:F

    move-object/from16 v17, v14

    move/from16 v11, v20

    neg-float v14, v11

    mul-float/2addr v14, v7

    add-float/2addr v14, v15

    move-object/from16 v7, v19

    iget v15, v7, Lk5/i;->d:F

    sub-float/2addr v14, v15

    move/from16 v15, v18

    move/from16 v18, v6

    neg-float v6, v15

    mul-float/2addr v6, v8

    sub-float/2addr v14, v6

    iget v6, v2, Lk5/i;->e:F

    mul-float v8, v11, v13

    add-float/2addr v8, v6

    iget v6, v7, Lk5/i;->e:F

    sub-float/2addr v8, v6

    mul-float v6, v15, v9

    sub-float/2addr v8, v6

    mul-float/2addr v12, v14

    mul-float/2addr v10, v8

    add-float/2addr v10, v12

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v10, v6

    if-gez v6, :cond_9

    iget v6, v0, Lm5/e;->l:F

    neg-float v6, v6

    mul-float/2addr v6, v10

    iput v6, v4, LU0/r;->e:F

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v21, v2

    move/from16 v22, v5

    move-object/from16 v19, v7

    move/from16 v20, v11

    move-object/from16 v14, v17

    move/from16 v17, v18

    move/from16 v2, v25

    move/from16 v18, v15

    goto/16 :goto_5

    :cond_a
    move/from16 v18, v17

    move/from16 v5, v22

    iget v2, v0, Lm5/e;->m:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    aget-object v3, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    iget-object v6, v3, LU0/r;->f:Ljava/io/Serializable;

    check-cast v6, Lk5/i;

    invoke-static {v6, v1}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v6

    iget-object v3, v3, LU0/r;->g:Ljava/io/Serializable;

    check-cast v3, Lk5/i;

    invoke-static {v3, v1}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v3

    iget-object v7, v4, LU0/r;->f:Ljava/io/Serializable;

    check-cast v7, Lk5/i;

    invoke-static {v7, v1}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v7

    iget-object v4, v4, LU0/r;->g:Ljava/io/Serializable;

    check-cast v4, Lk5/i;

    invoke-static {v4, v1}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float v10, v23, v24

    mul-float v12, v5, v6

    mul-float/2addr v6, v12

    add-float/2addr v6, v10

    mul-float v13, v18, v3

    mul-float/2addr v3, v13

    add-float/2addr v3, v6

    invoke-static {v5, v7, v7, v10}, LB/a;->f(FFFF)F

    move-result v4

    move/from16 v5, v18

    invoke-static {v5, v1, v1, v4}, LB/a;->f(FFFF)F

    move-result v4

    mul-float/2addr v12, v7

    add-float/2addr v12, v10

    mul-float/2addr v13, v1

    add-float/2addr v13, v12

    mul-float v1, v3, v3

    mul-float v5, v3, v4

    mul-float v6, v13, v13

    sub-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    cmpg-float v1, v1, v5

    if-gez v1, :cond_b

    iget-object v1, v0, Lm5/e;->d:Lk5/a;

    iget-object v5, v1, Lk5/a;->d:Lk5/i;

    iput v3, v5, Lk5/i;->d:F

    iput v13, v5, Lk5/i;->e:F

    iget-object v1, v1, Lk5/a;->e:Lk5/i;

    iput v13, v1, Lk5/i;->d:F

    iput v4, v1, Lk5/i;->e:F

    iget v1, v5, Lk5/i;->d:F

    iget v3, v5, Lk5/i;->e:F

    mul-float v5, v1, v4

    mul-float v6, v13, v3

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v9, v6, v5

    iget-object v0, v0, Lm5/e;->c:Lk5/a;

    iget-object v5, v0, Lk5/a;->d:Lk5/i;

    mul-float/2addr v4, v9

    iput v4, v5, Lk5/i;->d:F

    neg-float v4, v9

    mul-float/2addr v13, v4

    iget-object v0, v0, Lk5/a;->e:Lk5/i;

    iput v13, v0, Lk5/i;->d:F

    mul-float/2addr v4, v3

    iput v4, v5, Lk5/i;->e:F

    mul-float/2addr v9, v1

    iput v9, v0, Lk5/i;->e:F

    goto :goto_8

    :cond_b
    const/4 v1, 0x1

    iput v1, v0, Lm5/e;->m:I

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v0, v16, 0x1

    move v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final c()V
    .locals 42

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lm5/d;->g:I

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lm5/d;->e:[Lm5/e;

    aget-object v3, v3, v2

    iget v4, v3, Lm5/e;->e:I

    iget v5, v3, Lm5/e;->f:I

    iget v6, v3, Lm5/e;->g:F

    iget v7, v3, Lm5/e;->h:F

    iget v8, v3, Lm5/e;->i:F

    iget v9, v3, Lm5/e;->j:F

    iget v10, v3, Lm5/e;->m:I

    iget-object v11, v0, Lm5/d;->c:[Lm5/f;

    aget-object v12, v11, v4

    iget-object v13, v12, Lm5/f;->a:Lk5/i;

    iget v12, v12, Lm5/f;->b:F

    aget-object v11, v11, v5

    iget-object v14, v11, Lm5/f;->a:Lk5/i;

    iget v11, v11, Lm5/f;->b:F

    iget-object v15, v3, Lm5/e;->b:Lk5/i;

    iget v1, v15, Lk5/i;->e:F

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v1, v1, v16

    move/from16 v16, v11

    iget-object v11, v0, Lm5/d;->h:Lk5/i;

    iput v1, v11, Lk5/i;->d:F

    iget v1, v15, Lk5/i;->d:F

    const/high16 v17, -0x40800000    # -1.0f

    mul-float v1, v1, v17

    iput v1, v11, Lk5/i;->e:F

    iget v1, v3, Lm5/e;->k:F

    move/from16 v18, v2

    move/from16 v19, v5

    const/4 v2, 0x0

    move/from16 v41, v16

    move/from16 v16, v12

    move/from16 v12, v41

    :goto_1
    iget-object v5, v3, Lm5/e;->a:[LU0/r;

    move/from16 v20, v4

    if-ge v2, v10, :cond_0

    aget-object v5, v5, v2

    iget-object v4, v5, LU0/r;->f:Ljava/io/Serializable;

    check-cast v4, Lk5/i;

    move/from16 v22, v10

    neg-float v10, v12

    iget-object v0, v5, LU0/r;->g:Ljava/io/Serializable;

    check-cast v0, Lk5/i;

    move-object/from16 v23, v15

    iget v15, v0, Lk5/i;->e:F

    mul-float/2addr v10, v15

    iget v15, v14, Lk5/i;->d:F

    add-float/2addr v10, v15

    iget v15, v13, Lk5/i;->d:F

    sub-float/2addr v10, v15

    iget v15, v4, Lk5/i;->e:F

    mul-float v15, v15, v16

    add-float/2addr v15, v10

    iget v10, v0, Lk5/i;->d:F

    mul-float/2addr v10, v12

    move-object/from16 v24, v3

    iget v3, v14, Lk5/i;->e:F

    add-float/2addr v10, v3

    iget v3, v13, Lk5/i;->e:F

    sub-float/2addr v10, v3

    iget v3, v4, Lk5/i;->d:F

    mul-float v3, v3, v16

    sub-float/2addr v10, v3

    iget v3, v11, Lk5/i;->d:F

    mul-float/2addr v15, v3

    iget v3, v11, Lk5/i;->e:F

    mul-float/2addr v10, v3

    add-float/2addr v10, v15

    const/4 v3, 0x0

    sub-float/2addr v10, v3

    iget v3, v5, LU0/r;->d:F

    neg-float v4, v10

    mul-float/2addr v3, v4

    iget v4, v5, LU0/r;->a:F

    mul-float/2addr v4, v1

    iget v10, v5, LU0/r;->b:F

    add-float/2addr v10, v3

    neg-float v3, v4

    invoke-static {v10, v3, v4}, Lk5/c;->N(FFF)F

    move-result v3

    iget v4, v5, LU0/r;->b:F

    sub-float v4, v3, v4

    iput v3, v5, LU0/r;->b:F

    iget v3, v11, Lk5/i;->d:F

    mul-float/2addr v3, v4

    iget v10, v11, Lk5/i;->e:F

    mul-float/2addr v10, v4

    iget v4, v13, Lk5/i;->d:F

    mul-float v15, v3, v6

    sub-float/2addr v4, v15

    iput v4, v13, Lk5/i;->d:F

    iget v4, v13, Lk5/i;->e:F

    mul-float v15, v10, v6

    sub-float/2addr v4, v15

    iput v4, v13, Lk5/i;->e:F

    iget-object v4, v5, LU0/r;->f:Ljava/io/Serializable;

    check-cast v4, Lk5/i;

    iget v5, v4, Lk5/i;->d:F

    mul-float/2addr v5, v10

    iget v4, v4, Lk5/i;->e:F

    mul-float/2addr v4, v3

    sub-float/2addr v5, v4

    mul-float/2addr v5, v8

    sub-float v16, v16, v5

    iget v4, v14, Lk5/i;->d:F

    mul-float v5, v3, v7

    add-float/2addr v5, v4

    iput v5, v14, Lk5/i;->d:F

    iget v4, v14, Lk5/i;->e:F

    mul-float v5, v10, v7

    add-float/2addr v5, v4

    iput v5, v14, Lk5/i;->e:F

    iget v4, v0, Lk5/i;->d:F

    mul-float/2addr v4, v10

    iget v0, v0, Lk5/i;->e:F

    mul-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float/2addr v4, v9

    add-float/2addr v12, v4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v20

    move/from16 v10, v22

    move-object/from16 v15, v23

    move-object/from16 v3, v24

    goto/16 :goto_1

    :cond_0
    move-object v0, v3

    move-object/from16 v23, v15

    iget v1, v0, Lm5/e;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v0, v5, v1

    neg-float v1, v12

    iget-object v2, v0, LU0/r;->g:Ljava/io/Serializable;

    check-cast v2, Lk5/i;

    iget v3, v2, Lk5/i;->e:F

    mul-float/2addr v1, v3

    iget v3, v14, Lk5/i;->d:F

    add-float/2addr v1, v3

    iget v3, v13, Lk5/i;->d:F

    sub-float/2addr v1, v3

    iget-object v4, v0, LU0/r;->f:Ljava/io/Serializable;

    check-cast v4, Lk5/i;

    iget v5, v4, Lk5/i;->e:F

    mul-float v5, v5, v16

    add-float/2addr v5, v1

    iget v1, v2, Lk5/i;->d:F

    mul-float/2addr v1, v12

    iget v10, v14, Lk5/i;->e:F

    add-float/2addr v1, v10

    iget v10, v13, Lk5/i;->e:F

    sub-float/2addr v1, v10

    iget v11, v4, Lk5/i;->d:F

    mul-float v11, v11, v16

    sub-float/2addr v1, v11

    move-object/from16 v11, v23

    iget v15, v11, Lk5/i;->d:F

    mul-float/2addr v5, v15

    iget v11, v11, Lk5/i;->e:F

    mul-float/2addr v1, v11

    add-float/2addr v1, v5

    iget v5, v0, LU0/r;->c:F

    neg-float v5, v5

    move/from16 v22, v12

    iget v12, v0, LU0/r;->e:F

    sub-float/2addr v1, v12

    mul-float/2addr v1, v5

    iget v5, v0, LU0/r;->a:F

    add-float/2addr v1, v5

    const/4 v12, 0x0

    cmpl-float v17, v1, v12

    if-lez v17, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sub-float v5, v1, v5

    iput v1, v0, LU0/r;->a:F

    mul-float/2addr v15, v5

    mul-float/2addr v11, v5

    mul-float v0, v15, v6

    sub-float/2addr v3, v0

    iput v3, v13, Lk5/i;->d:F

    mul-float/2addr v6, v11

    sub-float/2addr v10, v6

    iput v10, v13, Lk5/i;->e:F

    iget v0, v4, Lk5/i;->d:F

    mul-float/2addr v0, v11

    iget v1, v4, Lk5/i;->e:F

    mul-float/2addr v1, v15

    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    sub-float v16, v16, v0

    iget v0, v14, Lk5/i;->d:F

    mul-float v1, v15, v7

    add-float/2addr v1, v0

    iput v1, v14, Lk5/i;->d:F

    iget v0, v14, Lk5/i;->e:F

    mul-float/2addr v7, v11

    add-float/2addr v7, v0

    iput v7, v14, Lk5/i;->e:F

    iget v0, v2, Lk5/i;->d:F

    mul-float/2addr v0, v11

    iget v1, v2, Lk5/i;->e:F

    mul-float/2addr v1, v15

    sub-float/2addr v0, v1

    mul-float/2addr v0, v9

    add-float v12, v0, v22

    :goto_3
    move-object/from16 v1, p0

    :goto_4
    move/from16 v0, v16

    goto/16 :goto_5

    :cond_2
    move/from16 v22, v12

    move-object/from16 v11, v23

    const/4 v1, 0x0

    aget-object v3, v5, v1

    aget-object v2, v5, v2

    iget v4, v3, LU0/r;->a:F

    move-object/from16 v5, p0

    iget-object v10, v5, Lm5/d;->p:Lk5/i;

    iput v4, v10, Lk5/i;->d:F

    iget v4, v2, LU0/r;->a:F

    iput v4, v10, Lk5/i;->e:F

    neg-float v4, v12

    iget-object v15, v3, LU0/r;->g:Ljava/io/Serializable;

    check-cast v15, Lk5/i;

    iget v1, v15, Lk5/i;->e:F

    mul-float/2addr v1, v4

    move/from16 v22, v9

    iget v9, v14, Lk5/i;->d:F

    add-float/2addr v1, v9

    iget v9, v13, Lk5/i;->d:F

    sub-float/2addr v1, v9

    iget-object v9, v3, LU0/r;->f:Ljava/io/Serializable;

    check-cast v9, Lk5/i;

    move/from16 v23, v8

    iget v8, v9, Lk5/i;->e:F

    mul-float v8, v8, v16

    add-float/2addr v8, v1

    iget-object v1, v5, Lm5/d;->r:Lk5/i;

    iput v8, v1, Lk5/i;->d:F

    iget v8, v15, Lk5/i;->d:F

    mul-float/2addr v8, v12

    move-object/from16 v24, v15

    iget v15, v14, Lk5/i;->e:F

    add-float/2addr v8, v15

    iget v15, v13, Lk5/i;->e:F

    sub-float/2addr v8, v15

    iget v15, v9, Lk5/i;->d:F

    mul-float v15, v15, v16

    sub-float/2addr v8, v15

    iput v8, v1, Lk5/i;->e:F

    iget-object v8, v2, LU0/r;->g:Ljava/io/Serializable;

    check-cast v8, Lk5/i;

    iget v15, v8, Lk5/i;->e:F

    mul-float/2addr v4, v15

    iget v15, v14, Lk5/i;->d:F

    add-float/2addr v4, v15

    iget v15, v13, Lk5/i;->d:F

    sub-float/2addr v4, v15

    iget-object v15, v2, LU0/r;->f:Ljava/io/Serializable;

    check-cast v15, Lk5/i;

    move-object/from16 v25, v9

    iget v9, v15, Lk5/i;->e:F

    mul-float v9, v9, v16

    add-float/2addr v9, v4

    iget-object v4, v5, Lm5/d;->s:Lk5/i;

    iput v9, v4, Lk5/i;->d:F

    move/from16 v26, v7

    iget v7, v8, Lk5/i;->d:F

    mul-float/2addr v7, v12

    move/from16 v27, v12

    iget v12, v14, Lk5/i;->e:F

    add-float/2addr v7, v12

    iget v12, v13, Lk5/i;->e:F

    sub-float/2addr v7, v12

    iget v12, v15, Lk5/i;->d:F

    mul-float v12, v12, v16

    sub-float/2addr v7, v12

    iput v7, v4, Lk5/i;->e:F

    iget v4, v1, Lk5/i;->d:F

    iget v12, v11, Lk5/i;->d:F

    mul-float/2addr v4, v12

    iget v1, v1, Lk5/i;->e:F

    move-object/from16 v28, v8

    iget v8, v11, Lk5/i;->e:F

    mul-float/2addr v1, v8

    add-float/2addr v1, v4

    mul-float/2addr v9, v12

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    iget v4, v3, LU0/r;->e:F

    sub-float/2addr v1, v4

    iget-object v4, v5, Lm5/d;->q:Lk5/i;

    iput v1, v4, Lk5/i;->d:F

    iget v8, v2, LU0/r;->e:F

    sub-float/2addr v7, v8

    iput v7, v4, Lk5/i;->e:F

    iget-object v8, v0, Lm5/e;->d:Lk5/a;

    iget-object v9, v8, Lk5/a;->d:Lk5/i;

    iget v12, v9, Lk5/i;->d:F

    move-object/from16 v29, v2

    iget v2, v10, Lk5/i;->d:F

    mul-float/2addr v12, v2

    iget-object v2, v8, Lk5/a;->e:Lk5/i;

    iget v8, v2, Lk5/i;->d:F

    move-object/from16 v30, v3

    iget v3, v10, Lk5/i;->e:F

    mul-float/2addr v8, v3

    add-float/2addr v8, v12

    sub-float/2addr v1, v8

    iput v1, v4, Lk5/i;->d:F

    iget v8, v9, Lk5/i;->e:F

    iget v12, v10, Lk5/i;->d:F

    mul-float/2addr v8, v12

    iget v12, v2, Lk5/i;->e:F

    mul-float/2addr v12, v3

    add-float/2addr v12, v8

    sub-float/2addr v7, v12

    iput v7, v4, Lk5/i;->e:F

    iget-object v0, v0, Lm5/e;->c:Lk5/a;

    iget-object v3, v0, Lk5/a;->d:Lk5/i;

    iget v8, v3, Lk5/i;->d:F

    mul-float/2addr v8, v1

    iget-object v0, v0, Lk5/a;->e:Lk5/i;

    iget v1, v0, Lk5/i;->d:F

    mul-float/2addr v1, v7

    add-float/2addr v1, v8

    iget-object v8, v5, Lm5/d;->t:Lk5/i;

    iput v1, v8, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iget v12, v4, Lk5/i;->d:F

    mul-float/2addr v3, v12

    iget v0, v0, Lk5/i;->e:F

    mul-float/2addr v0, v7

    add-float/2addr v0, v3

    mul-float v1, v1, v17

    iput v1, v8, Lk5/i;->d:F

    mul-float v0, v0, v17

    iput v0, v8, Lk5/i;->e:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    iget-object v7, v5, Lm5/d;->i:Lk5/i;

    iget-object v12, v5, Lm5/d;->j:Lk5/i;

    iget-object v3, v5, Lm5/d;->u:Lk5/i;

    move-object/from16 v17, v2

    iget-object v2, v5, Lm5/d;->w:Lk5/i;

    move-object/from16 v31, v9

    iget-object v9, v5, Lm5/d;->v:Lk5/i;

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v8, Lk5/i;->d:F

    iput v0, v3, Lk5/i;->d:F

    iget v0, v8, Lk5/i;->e:F

    iput v0, v3, Lk5/i;->e:F

    invoke-virtual {v3, v10}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v11, Lk5/i;->d:F

    iput v0, v9, Lk5/i;->d:F

    iget v0, v11, Lk5/i;->e:F

    iput v0, v9, Lk5/i;->e:F

    iget v0, v3, Lk5/i;->d:F

    invoke-virtual {v9, v0}, Lk5/i;->h(F)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v11, Lk5/i;->d:F

    iput v0, v2, Lk5/i;->d:F

    iget v0, v11, Lk5/i;->e:F

    iput v0, v2, Lk5/i;->e:F

    iget v0, v3, Lk5/i;->e:F

    invoke-virtual {v2, v0}, Lk5/i;->h(F)V

    iget v0, v9, Lk5/i;->d:F

    iput v0, v7, Lk5/i;->d:F

    iget v0, v9, Lk5/i;->e:F

    iput v0, v7, Lk5/i;->e:F

    invoke-virtual {v7, v2}, Lk5/i;->b(Lk5/i;)V

    iget v0, v7, Lk5/i;->d:F

    iput v0, v12, Lk5/i;->d:F

    iget v0, v7, Lk5/i;->e:F

    iput v0, v12, Lk5/i;->e:F

    invoke-virtual {v12, v6}, Lk5/i;->h(F)V

    invoke-virtual {v13, v12}, Lk5/i;->m(Lk5/i;)V

    iget v0, v7, Lk5/i;->d:F

    iput v0, v12, Lk5/i;->d:F

    iget v0, v7, Lk5/i;->e:F

    iput v0, v12, Lk5/i;->e:F

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lk5/i;->h(F)V

    invoke-virtual {v14, v12}, Lk5/i;->b(Lk5/i;)V

    move-object/from16 v1, v25

    invoke-static {v1, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    invoke-static {v15, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v23

    sub-float v16, v16, v1

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v1, v28

    invoke-static {v1, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v22

    add-float v12, v1, v27

    iget v0, v8, Lk5/i;->d:F

    move-object/from16 v1, v30

    iput v0, v1, LU0/r;->a:F

    iget v0, v8, Lk5/i;->e:F

    move-object/from16 v1, v29

    iput v0, v1, LU0/r;->a:F

    move-object v1, v5

    goto/16 :goto_4

    :cond_3
    move-object/from16 v33, v24

    move-object/from16 v1, v25

    move/from16 v0, v26

    move-object/from16 v34, v28

    move-object/from16 v32, v29

    move-object/from16 v5, v30

    move-object/from16 v24, v15

    iget v15, v5, LU0/r;->c:F

    neg-float v15, v15

    move-object/from16 v30, v5

    iget v5, v4, Lk5/i;->d:F

    mul-float/2addr v15, v5

    iput v15, v8, Lk5/i;->d:F

    const/4 v5, 0x0

    iput v5, v8, Lk5/i;->e:F

    move-object/from16 v5, v31

    iget v5, v5, Lk5/i;->e:F

    mul-float/2addr v5, v15

    move-object/from16 v25, v1

    iget v1, v4, Lk5/i;->e:F

    add-float/2addr v5, v1

    const/16 v21, 0x0

    cmpl-float v15, v15, v21

    if-ltz v15, :cond_4

    cmpl-float v5, v5, v21

    if-ltz v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v8, Lk5/i;->d:F

    iput v1, v3, Lk5/i;->d:F

    iget v1, v8, Lk5/i;->e:F

    iput v1, v3, Lk5/i;->e:F

    invoke-virtual {v3, v10}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v11, Lk5/i;->d:F

    iput v1, v9, Lk5/i;->d:F

    iget v1, v11, Lk5/i;->e:F

    iput v1, v9, Lk5/i;->e:F

    iget v1, v3, Lk5/i;->d:F

    invoke-virtual {v9, v1}, Lk5/i;->h(F)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v11, Lk5/i;->d:F

    iput v1, v2, Lk5/i;->d:F

    iget v1, v11, Lk5/i;->e:F

    iput v1, v2, Lk5/i;->e:F

    iget v1, v3, Lk5/i;->e:F

    invoke-virtual {v2, v1}, Lk5/i;->h(F)V

    iget v1, v9, Lk5/i;->d:F

    iput v1, v7, Lk5/i;->d:F

    iget v1, v9, Lk5/i;->e:F

    iput v1, v7, Lk5/i;->e:F

    invoke-virtual {v7, v2}, Lk5/i;->b(Lk5/i;)V

    iget v1, v7, Lk5/i;->d:F

    iput v1, v12, Lk5/i;->d:F

    iget v1, v7, Lk5/i;->e:F

    iput v1, v12, Lk5/i;->e:F

    invoke-virtual {v12, v6}, Lk5/i;->h(F)V

    invoke-virtual {v13, v12}, Lk5/i;->m(Lk5/i;)V

    iget v1, v7, Lk5/i;->d:F

    iput v1, v12, Lk5/i;->d:F

    iget v1, v7, Lk5/i;->e:F

    iput v1, v12, Lk5/i;->e:F

    invoke-virtual {v12, v0}, Lk5/i;->h(F)V

    invoke-virtual {v14, v12}, Lk5/i;->b(Lk5/i;)V

    move-object/from16 v5, v25

    invoke-static {v5, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v15, v24

    invoke-static {v15, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v23

    sub-float v16, v16, v1

    move-object/from16 v0, v33

    invoke-static {v0, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v1, v34

    invoke-static {v1, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v22

    add-float v12, v1, v27

    iget v0, v8, Lk5/i;->d:F

    move-object/from16 v1, v30

    iput v0, v1, LU0/r;->a:F

    iget v0, v8, Lk5/i;->e:F

    move-object/from16 v1, v32

    iput v0, v1, LU0/r;->a:F

    goto/16 :goto_3

    :cond_4
    move-object/from16 v35, v30

    move-object/from16 v15, v32

    move-object/from16 v36, v33

    move-object/from16 v37, v34

    const/4 v5, 0x0

    iput v5, v8, Lk5/i;->d:F

    iget v5, v15, LU0/r;->c:F

    neg-float v5, v5

    mul-float/2addr v5, v1

    iput v5, v8, Lk5/i;->e:F

    move-object/from16 v1, v17

    iget v1, v1, Lk5/i;->d:F

    mul-float/2addr v1, v5

    move-object/from16 v29, v15

    iget v15, v4, Lk5/i;->d:F

    add-float/2addr v1, v15

    const/4 v15, 0x0

    cmpl-float v5, v5, v15

    if-ltz v5, :cond_5

    cmpl-float v1, v1, v15

    if-ltz v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v8, Lk5/i;->d:F

    iput v1, v3, Lk5/i;->d:F

    iget v1, v8, Lk5/i;->e:F

    iput v1, v3, Lk5/i;->e:F

    invoke-virtual {v3, v10}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v11, Lk5/i;->d:F

    iput v1, v9, Lk5/i;->d:F

    iget v1, v11, Lk5/i;->e:F

    iput v1, v9, Lk5/i;->e:F

    iget v1, v3, Lk5/i;->d:F

    invoke-virtual {v9, v1}, Lk5/i;->h(F)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v11, Lk5/i;->d:F

    iput v1, v2, Lk5/i;->d:F

    iget v1, v11, Lk5/i;->e:F

    iput v1, v2, Lk5/i;->e:F

    iget v1, v3, Lk5/i;->e:F

    invoke-virtual {v2, v1}, Lk5/i;->h(F)V

    iget v1, v9, Lk5/i;->d:F

    iput v1, v7, Lk5/i;->d:F

    iget v1, v9, Lk5/i;->e:F

    iput v1, v7, Lk5/i;->e:F

    invoke-virtual {v7, v2}, Lk5/i;->b(Lk5/i;)V

    iget v1, v7, Lk5/i;->d:F

    iput v1, v12, Lk5/i;->d:F

    iget v1, v7, Lk5/i;->e:F

    iput v1, v12, Lk5/i;->e:F

    invoke-virtual {v12, v6}, Lk5/i;->h(F)V

    invoke-virtual {v13, v12}, Lk5/i;->m(Lk5/i;)V

    iget v1, v7, Lk5/i;->d:F

    iput v1, v12, Lk5/i;->d:F

    iget v1, v7, Lk5/i;->e:F

    iput v1, v12, Lk5/i;->e:F

    invoke-virtual {v12, v0}, Lk5/i;->h(F)V

    invoke-virtual {v14, v12}, Lk5/i;->b(Lk5/i;)V

    move-object/from16 v1, v25

    invoke-static {v1, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v15, v24

    invoke-static {v15, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v23

    sub-float v16, v16, v1

    move-object/from16 v5, v36

    invoke-static {v5, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v1, v37

    invoke-static {v1, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v22

    add-float v12, v1, v27

    iget v0, v8, Lk5/i;->d:F

    move-object/from16 v1, v35

    iput v0, v1, LU0/r;->a:F

    iget v0, v8, Lk5/i;->e:F

    move-object/from16 v1, v29

    iput v0, v1, LU0/r;->a:F

    goto/16 :goto_3

    :cond_5
    move-object/from16 v15, v24

    move-object/from16 v1, v25

    move-object/from16 v39, v29

    move-object/from16 v38, v35

    move-object/from16 v40, v37

    move-object/from16 v24, v36

    const/4 v5, 0x0

    iput v5, v8, Lk5/i;->d:F

    iput v5, v8, Lk5/i;->e:F

    move-object/from16 v17, v15

    iget v15, v4, Lk5/i;->d:F

    iget v4, v4, Lk5/i;->e:F

    cmpl-float v15, v15, v5

    if-ltz v15, :cond_6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v8, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v4, v8, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    invoke-virtual {v3, v10}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v11, Lk5/i;->d:F

    iput v4, v9, Lk5/i;->d:F

    iget v4, v11, Lk5/i;->e:F

    iput v4, v9, Lk5/i;->e:F

    iget v4, v3, Lk5/i;->d:F

    invoke-virtual {v9, v4}, Lk5/i;->h(F)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v11, Lk5/i;->d:F

    iput v4, v2, Lk5/i;->d:F

    iget v4, v11, Lk5/i;->e:F

    iput v4, v2, Lk5/i;->e:F

    iget v3, v3, Lk5/i;->e:F

    invoke-virtual {v2, v3}, Lk5/i;->h(F)V

    iget v3, v9, Lk5/i;->d:F

    iput v3, v7, Lk5/i;->d:F

    iget v3, v9, Lk5/i;->e:F

    iput v3, v7, Lk5/i;->e:F

    invoke-virtual {v7, v2}, Lk5/i;->b(Lk5/i;)V

    iget v3, v7, Lk5/i;->d:F

    iput v3, v12, Lk5/i;->d:F

    iget v3, v7, Lk5/i;->e:F

    iput v3, v12, Lk5/i;->e:F

    invoke-virtual {v12, v6}, Lk5/i;->h(F)V

    invoke-virtual {v13, v12}, Lk5/i;->m(Lk5/i;)V

    iget v3, v7, Lk5/i;->d:F

    iput v3, v12, Lk5/i;->d:F

    iget v3, v7, Lk5/i;->e:F

    iput v3, v12, Lk5/i;->e:F

    invoke-virtual {v12, v0}, Lk5/i;->h(F)V

    invoke-virtual {v14, v12}, Lk5/i;->b(Lk5/i;)V

    invoke-static {v1, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v15, v17

    invoke-static {v15, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v23

    sub-float v16, v16, v1

    move-object/from16 v15, v24

    invoke-static {v15, v9}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v0

    move-object/from16 v1, v40

    invoke-static {v1, v2}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v1

    add-float/2addr v1, v0

    mul-float v1, v1, v22

    add-float v12, v1, v27

    iget v0, v8, Lk5/i;->d:F

    move-object/from16 v1, v38

    iput v0, v1, LU0/r;->a:F

    iget v0, v8, Lk5/i;->e:F

    move-object/from16 v1, v39

    iput v0, v1, LU0/r;->a:F

    goto/16 :goto_3

    :cond_6
    move-object/from16 v1, p0

    move/from16 v0, v16

    move/from16 v12, v27

    :goto_5
    iget-object v2, v1, Lm5/d;->c:[Lm5/f;

    aget-object v3, v2, v20

    iput v0, v3, Lm5/f;->b:F

    aget-object v0, v2, v19

    iput v12, v0, Lm5/f;->b:F

    add-int/lit8 v2, v18, 0x1

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
