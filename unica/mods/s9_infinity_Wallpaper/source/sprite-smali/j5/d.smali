.class public final Lj5/d;
.super Lj5/e;
.source "SourceFile"


# instance fields
.field public final c:Lk5/i;

.field public final d:[Lk5/i;

.field public final e:[Lk5/i;

.field public f:I

.field public final g:Lk5/i;

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public final j:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lj5/e;-><init>(I)V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/d;->c:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/d;->g:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/d;->h:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/d;->i:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lj5/d;->j:Lk5/i;

    const/4 v0, 0x0

    iput v0, p0, Lj5/d;->f:I

    const/16 v1, 0x8

    new-array v2, v1, [Lk5/i;

    iput-object v2, p0, Lj5/d;->d:[Lk5/i;

    move v2, v0

    :goto_0
    iget-object v3, p0, Lj5/d;->d:[Lk5/i;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    new-instance v4, Lk5/i;

    invoke-direct {v4}, Lk5/i;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v1, [Lk5/i;

    iput-object v1, p0, Lj5/d;->e:[Lk5/i;

    :goto_1
    iget-object v1, p0, Lj5/d;->e:[Lk5/i;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lj5/e;->b:F

    iget-object p0, p0, Lj5/d;->c:Lk5/i;

    invoke-virtual {p0}, Lk5/i;->l()V

    return-void
.end method


# virtual methods
.method public final a()Lj5/e;
    .locals 4

    new-instance v0, Lj5/d;

    invoke-direct {v0}, Lj5/d;-><init>()V

    iget-object v1, v0, Lj5/d;->c:Lk5/i;

    iget-object v2, p0, Lj5/d;->c:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lj5/d;->e:[Lk5/i;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, p0, Lj5/d;->e:[Lk5/i;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lk5/i;->k(Lk5/i;)V

    iget-object v2, v0, Lj5/d;->d:[Lk5/i;

    aget-object v2, v2, v1

    iget-object v3, p0, Lj5/d;->d:[Lk5/i;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lk5/i;->k(Lk5/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lj5/e;->b:F

    iput v1, v0, Lj5/e;->b:F

    iget p0, p0, Lj5/d;->f:I

    iput p0, v0, Lj5/d;->f:I

    return-object v0
.end method

.method public final b(Lw0/l;Lk5/h;)V
    .locals 10

    iget-object v0, p1, Lw0/l;->e:Ljava/lang/Object;

    check-cast v0, Lk5/i;

    iget-object v1, p0, Lj5/d;->d:[Lk5/i;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v3, p2, Lk5/h;->e:Lk5/d;

    iget v4, v3, Lk5/d;->e:F

    iget v5, v2, Lk5/i;->d:F

    mul-float/2addr v5, v4

    iget v6, v3, Lk5/d;->d:F

    iget v7, v2, Lk5/i;->e:F

    mul-float v8, v6, v7

    sub-float/2addr v5, v8

    iget-object p2, p2, Lk5/h;->d:Lk5/i;

    iget v8, p2, Lk5/i;->d:F

    add-float/2addr v5, v8

    iput v5, v0, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->d:F

    mul-float/2addr v6, v2

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    iget v2, p2, Lk5/i;->e:F

    add-float/2addr v4, v2

    iput v4, v0, Lk5/i;->e:F

    iget-object p1, p1, Lw0/l;->f:Ljava/lang/Object;

    check-cast p1, Lk5/i;

    iput v5, p1, Lk5/i;->d:F

    iput v4, p1, Lk5/i;->e:F

    const/4 v2, 0x1

    :goto_0
    iget v4, p0, Lj5/d;->f:I

    if-ge v2, v4, :cond_4

    aget-object v4, v1, v2

    iget v5, v3, Lk5/d;->e:F

    iget v6, v4, Lk5/i;->d:F

    mul-float v7, v5, v6

    iget v8, v3, Lk5/d;->d:F

    iget v4, v4, Lk5/i;->e:F

    mul-float v9, v8, v4

    sub-float/2addr v7, v9

    iget v9, p2, Lk5/i;->d:F

    add-float/2addr v7, v9

    mul-float/2addr v8, v6

    mul-float/2addr v5, v4

    add-float/2addr v5, v8

    iget v4, p2, Lk5/i;->e:F

    add-float/2addr v5, v4

    iget v4, v0, Lk5/i;->d:F

    cmpg-float v6, v4, v7

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v7

    :goto_1
    iput v4, v0, Lk5/i;->d:F

    iget v4, v0, Lk5/i;->e:F

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    iput v4, v0, Lk5/i;->e:F

    iget v4, p1, Lk5/i;->d:F

    cmpl-float v6, v4, v7

    if-lez v6, :cond_2

    move v7, v4

    :cond_2
    iput v7, p1, Lk5/i;->d:F

    iget v4, p1, Lk5/i;->e:F

    cmpl-float v6, v4, v5

    if-lez v6, :cond_3

    move v5, v4

    :cond_3
    iput v5, p1, Lk5/i;->e:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget p2, v0, Lk5/i;->d:F

    iget p0, p0, Lj5/e;->b:F

    sub-float/2addr p2, p0

    iput p2, v0, Lk5/i;->d:F

    iget p2, v0, Lk5/i;->e:F

    sub-float/2addr p2, p0

    iput p2, v0, Lk5/i;->e:F

    iget p2, p1, Lk5/i;->d:F

    add-float/2addr p2, p0

    iput p2, p1, Lk5/i;->d:F

    iget p2, p1, Lk5/i;->e:F

    add-float/2addr p2, p0

    iput p2, p1, Lk5/i;->e:F

    return-void
.end method

.method public final c(Lj5/c;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lj5/d;->g:Lk5/i;

    invoke-virtual {v2}, Lk5/i;->l()V

    iget-object v3, v0, Lj5/d;->h:Lk5/i;

    invoke-virtual {v3}, Lk5/i;->l()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, v0, Lj5/d;->f:I

    iget-object v7, v0, Lj5/d;->d:[Lk5/i;

    if-ge v5, v6, :cond_0

    aget-object v6, v7, v5

    invoke-virtual {v3, v6}, Lk5/i;->b(Lk5/i;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    int-to-float v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    invoke-virtual {v3, v5}, Lk5/i;->h(F)V

    const/4 v5, 0x0

    move v9, v4

    move v8, v5

    :goto_1
    iget v10, v0, Lj5/d;->f:I

    if-ge v9, v10, :cond_2

    aget-object v10, v7, v9

    iget-object v11, v0, Lj5/d;->i:Lk5/i;

    invoke-virtual {v11, v10}, Lk5/i;->k(Lk5/i;)V

    invoke-virtual {v11, v3}, Lk5/i;->m(Lk5/i;)V

    iget-object v10, v0, Lj5/d;->j:Lk5/i;

    iget v12, v3, Lk5/i;->d:F

    iput v12, v10, Lk5/i;->d:F

    iget v12, v3, Lk5/i;->e:F

    iput v12, v10, Lk5/i;->e:F

    invoke-virtual {v10}, Lk5/i;->i()V

    add-int/lit8 v9, v9, 0x1

    iget v12, v0, Lj5/d;->f:I

    if-ge v9, v12, :cond_1

    aget-object v12, v7, v9

    goto :goto_2

    :cond_1
    aget-object v12, v7, v4

    :goto_2
    invoke-virtual {v10, v12}, Lk5/i;->b(Lk5/i;)V

    invoke-static {v11, v10}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v13, v12

    add-float/2addr v5, v13

    iget v14, v2, Lk5/i;->d:F

    const v15, 0x3eaaaaab

    mul-float/2addr v13, v15

    iget v15, v11, Lk5/i;->d:F

    iget v4, v10, Lk5/i;->d:F

    add-float/2addr v15, v4

    mul-float/2addr v15, v13

    add-float/2addr v15, v14

    iput v15, v2, Lk5/i;->d:F

    iget v4, v2, Lk5/i;->e:F

    iget v14, v11, Lk5/i;->e:F

    iget v15, v10, Lk5/i;->e:F

    add-float/2addr v14, v15

    mul-float/2addr v14, v13

    add-float/2addr v14, v4

    iput v14, v2, Lk5/i;->e:F

    iget v4, v11, Lk5/i;->d:F

    iget v11, v11, Lk5/i;->e:F

    iget v13, v10, Lk5/i;->d:F

    iget v10, v10, Lk5/i;->e:F

    mul-float v14, v4, v4

    mul-float/2addr v4, v13

    add-float/2addr v4, v14

    mul-float/2addr v13, v13

    add-float/2addr v13, v4

    mul-float v4, v11, v11

    mul-float/2addr v11, v10

    add-float/2addr v11, v4

    mul-float/2addr v10, v10

    add-float/2addr v10, v11

    const v4, 0x3daaaaab

    mul-float/2addr v12, v4

    add-float/2addr v13, v10

    mul-float/2addr v13, v12

    add-float/2addr v8, v13

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    mul-float v0, p2, v5

    iput v0, v1, Lj5/c;->a:F

    div-float/2addr v6, v5

    invoke-virtual {v2, v6}, Lk5/i;->h(F)V

    iget-object v0, v1, Lj5/c;->b:Lk5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lk5/i;->d:F

    iput v4, v0, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v0, Lk5/i;->e:F

    invoke-virtual {v0, v3}, Lk5/i;->b(Lk5/i;)V

    mul-float v8, v8, p2

    iput v8, v1, Lj5/c;->c:F

    iget v2, v1, Lj5/c;->a:F

    invoke-static {v0, v0}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    iput v0, v1, Lj5/c;->c:F

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj5/d;->a()Lj5/e;

    move-result-object p0

    return-object p0
.end method

.method public final d(FF)V
    .locals 6

    const/4 v0, 0x4

    iput v0, p0, Lj5/d;->f:I

    iget-object v0, p0, Lj5/d;->d:[Lk5/i;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    neg-float v3, p1

    neg-float v4, p2

    iput v3, v2, Lk5/i;->d:F

    iput v4, v2, Lk5/i;->e:F

    const/4 v2, 0x1

    aget-object v5, v0, v2

    iput p1, v5, Lk5/i;->d:F

    iput v4, v5, Lk5/i;->e:F

    const/4 v4, 0x2

    aget-object v5, v0, v4

    iput p1, v5, Lk5/i;->d:F

    iput p2, v5, Lk5/i;->e:F

    const/4 p1, 0x3

    aget-object v0, v0, p1

    iput v3, v0, Lk5/i;->d:F

    iput p2, v0, Lk5/i;->e:F

    iget-object p2, p0, Lj5/d;->e:[Lk5/i;

    aget-object v0, p2, v1

    const/4 v1, 0x0

    iput v1, v0, Lk5/i;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lk5/i;->e:F

    aget-object v0, p2, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->e:F

    aget-object v0, p2, v4

    iput v1, v0, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->e:F

    aget-object p1, p2, p1

    iput v3, p1, Lk5/i;->d:F

    iput v1, p1, Lk5/i;->e:F

    iget-object p0, p0, Lj5/d;->c:Lk5/i;

    invoke-virtual {p0}, Lk5/i;->l()V

    return-void
.end method
