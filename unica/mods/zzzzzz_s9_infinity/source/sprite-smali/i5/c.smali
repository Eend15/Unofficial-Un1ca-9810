.class public final Li5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li5/d;

.field public b:[Li5/d;

.field public c:I

.field public d:I

.field public e:I

.field public final f:[Lk5/i;

.field public final g:Li5/b;

.field public final h:Lw0/l;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lk5/i;

    iput-object v0, p0, Li5/c;->f:[Lk5/i;

    new-instance v0, Li5/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    new-array v2, v1, [Li5/d;

    iput-object v2, v0, Li5/b;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v0, Li5/b;->b:I

    iput v1, v0, Li5/b;->a:I

    iput-object v0, p0, Li5/c;->g:Li5/b;

    new-instance v0, Lw0/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/l;-><init>(I)V

    iput-object v0, p0, Li5/c;->h:Lw0/l;

    new-instance v0, LU0/e;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LU0/e;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Li5/c;->a:Li5/d;

    iput v2, p0, Li5/c;->c:I

    const/16 v1, 0x10

    iput v1, p0, Li5/c;->d:I

    new-array v1, v1, [Li5/d;

    iput-object v1, p0, Li5/c;->b:[Li5/d;

    const/16 v1, 0xf

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Li5/c;->b:[Li5/d;

    new-instance v4, Li5/d;

    invoke-direct {v4, v1}, Li5/d;-><init>(I)V

    aput-object v4, v3, v1

    iget-object v3, p0, Li5/c;->b:[Li5/d;

    aget-object v4, v3, v1

    iget v5, p0, Li5/c;->d:I

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_0

    move-object v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x1

    aget-object v3, v3, v5

    :goto_1
    iput-object v3, v4, Li5/d;->c:Li5/d;

    const/4 v3, -0x1

    iput v3, v4, Li5/d;->g:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Li5/c;->e:I

    :goto_2
    iget-object v0, p0, Li5/c;->f:[Lk5/i;

    array-length v1, v0

    if-ge v2, v1, :cond_2

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Li5/d;
    .locals 7

    iget v0, p0, Li5/c;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Li5/c;->b:[Li5/d;

    iget v4, p0, Li5/c;->d:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Li5/c;->d:I

    new-array v4, v4, [Li5/d;

    iput-object v4, p0, Li5/c;->b:[Li5/d;

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Li5/c;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v4, p0, Li5/c;->c:I

    if-lt v0, v4, :cond_1

    iget-object v4, p0, Li5/c;->b:[Li5/d;

    new-instance v5, Li5/d;

    invoke-direct {v5, v0}, Li5/d;-><init>(I)V

    aput-object v5, v4, v0

    iget-object v4, p0, Li5/c;->b:[Li5/d;

    aget-object v5, v4, v0

    iget v6, p0, Li5/c;->d:I

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v0, 0x1

    aget-object v4, v4, v6

    :goto_1
    iput-object v4, v5, Li5/d;->c:Li5/d;

    iput v3, v5, Li5/d;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Li5/c;->e:I

    :cond_2
    iget v0, p0, Li5/c;->e:I

    iget-object v4, p0, Li5/c;->b:[Li5/d;

    aget-object v0, v4, v0

    iget-object v4, v0, Li5/d;->c:Li5/d;

    if-eqz v4, :cond_3

    iget v3, v4, Li5/d;->f:I

    :cond_3
    iput v3, p0, Li5/c;->e:I

    iput-object v2, v0, Li5/d;->c:Li5/d;

    iput-object v2, v0, Li5/d;->d:Li5/d;

    iput-object v2, v0, Li5/d;->e:Li5/d;

    iput v1, v0, Li5/d;->g:I

    iput-object v2, v0, Li5/d;->b:Ll5/e;

    iget v1, p0, Li5/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li5/c;->c:I

    return-object v0
.end method

.method public final b(Li5/d;)Li5/d;
    .locals 11

    iget-object v0, p1, Li5/d;->d:Li5/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Li5/d;->g:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    iget-object v1, p1, Li5/d;->e:Li5/d;

    iget v2, v1, Li5/d;->g:I

    iget v3, v0, Li5/d;->g:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Li5/d;->a:Lw0/l;

    iget-object v5, v1, Li5/d;->a:Lw0/l;

    iget-object v6, v0, Li5/d;->a:Lw0/l;

    if-le v2, v3, :cond_9

    iget-object v2, v1, Li5/d;->d:Li5/d;

    iget-object v7, v1, Li5/d;->e:Li5/d;

    iput-object p1, v1, Li5/d;->d:Li5/d;

    iget-object v8, p1, Li5/d;->c:Li5/d;

    iput-object v8, v1, Li5/d;->c:Li5/d;

    iput-object v1, p1, Li5/d;->c:Li5/d;

    iget-object v8, v1, Li5/d;->c:Li5/d;

    if-eqz v8, :cond_3

    iget-object p0, v8, Li5/d;->d:Li5/d;

    if-ne p0, p1, :cond_2

    iput-object v1, v8, Li5/d;->d:Li5/d;

    goto :goto_1

    :cond_2
    iput-object v1, v8, Li5/d;->e:Li5/d;

    goto :goto_1

    :cond_3
    iput-object v1, p0, Li5/c;->a:Li5/d;

    :goto_1
    iget p0, v2, Li5/d;->g:I

    iget v8, v7, Li5/d;->g:I

    iget-object v9, v2, Li5/d;->a:Lw0/l;

    iget-object v10, v7, Li5/d;->a:Lw0/l;

    if-le p0, v8, :cond_6

    iput-object v2, v1, Li5/d;->e:Li5/d;

    iput-object v7, p1, Li5/d;->e:Li5/d;

    iput-object p1, v7, Li5/d;->c:Li5/d;

    invoke-virtual {v4, v6, v10}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v5, v4, v9}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget p0, v0, Li5/d;->g:I

    iget v0, v7, Li5/d;->g:I

    sget-object v4, Lk5/c;->d:[F

    if-le p0, v0, :cond_4

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    add-int/2addr p0, v3

    iput p0, p1, Li5/d;->g:I

    iget p1, v2, Li5/d;->g:I

    if-le p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move p0, p1

    :goto_3
    add-int/2addr p0, v3

    iput p0, v1, Li5/d;->g:I

    goto :goto_6

    :cond_6
    iput-object v7, v1, Li5/d;->e:Li5/d;

    iput-object v2, p1, Li5/d;->e:Li5/d;

    iput-object p1, v2, Li5/d;->c:Li5/d;

    invoke-virtual {v4, v6, v9}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v5, v4, v10}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget p0, v0, Li5/d;->g:I

    iget v0, v2, Li5/d;->g:I

    sget-object v2, Lk5/c;->d:[F

    if-le p0, v0, :cond_7

    goto :goto_4

    :cond_7
    move p0, v0

    :goto_4
    add-int/2addr p0, v3

    iput p0, p1, Li5/d;->g:I

    iget p1, v7, Li5/d;->g:I

    if-le p0, p1, :cond_8

    goto :goto_5

    :cond_8
    move p0, p1

    :goto_5
    add-int/2addr p0, v3

    iput p0, v1, Li5/d;->g:I

    :goto_6
    return-object v1

    :cond_9
    const/4 v7, -0x1

    if-ge v2, v7, :cond_11

    iget-object v2, v0, Li5/d;->d:Li5/d;

    iget-object v7, v0, Li5/d;->e:Li5/d;

    iput-object p1, v0, Li5/d;->d:Li5/d;

    iget-object v8, p1, Li5/d;->c:Li5/d;

    iput-object v8, v0, Li5/d;->c:Li5/d;

    iput-object v0, p1, Li5/d;->c:Li5/d;

    iget-object v8, v0, Li5/d;->c:Li5/d;

    if-eqz v8, :cond_b

    iget-object p0, v8, Li5/d;->d:Li5/d;

    if-ne p0, p1, :cond_a

    iput-object v0, v8, Li5/d;->d:Li5/d;

    goto :goto_7

    :cond_a
    iput-object v0, v8, Li5/d;->e:Li5/d;

    goto :goto_7

    :cond_b
    iput-object v0, p0, Li5/c;->a:Li5/d;

    :goto_7
    iget p0, v2, Li5/d;->g:I

    iget v8, v7, Li5/d;->g:I

    iget-object v9, v2, Li5/d;->a:Lw0/l;

    iget-object v10, v7, Li5/d;->a:Lw0/l;

    if-le p0, v8, :cond_e

    iput-object v2, v0, Li5/d;->e:Li5/d;

    iput-object v7, p1, Li5/d;->d:Li5/d;

    iput-object p1, v7, Li5/d;->c:Li5/d;

    invoke-virtual {v4, v5, v10}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v6, v4, v9}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget p0, v1, Li5/d;->g:I

    iget v1, v7, Li5/d;->g:I

    sget-object v4, Lk5/c;->d:[F

    if-le p0, v1, :cond_c

    goto :goto_8

    :cond_c
    move p0, v1

    :goto_8
    add-int/2addr p0, v3

    iput p0, p1, Li5/d;->g:I

    iget p1, v2, Li5/d;->g:I

    if-le p0, p1, :cond_d

    goto :goto_9

    :cond_d
    move p0, p1

    :goto_9
    add-int/2addr p0, v3

    iput p0, v0, Li5/d;->g:I

    goto :goto_c

    :cond_e
    iput-object v7, v0, Li5/d;->e:Li5/d;

    iput-object v2, p1, Li5/d;->d:Li5/d;

    iput-object p1, v2, Li5/d;->c:Li5/d;

    invoke-virtual {v4, v5, v9}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v6, v4, v10}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget p0, v1, Li5/d;->g:I

    iget v1, v2, Li5/d;->g:I

    sget-object v2, Lk5/c;->d:[F

    if-le p0, v1, :cond_f

    goto :goto_a

    :cond_f
    move p0, v1

    :goto_a
    add-int/2addr p0, v3

    iput p0, p1, Li5/d;->g:I

    iget p1, v7, Li5/d;->g:I

    if-le p0, p1, :cond_10

    goto :goto_b

    :cond_10
    move p0, p1

    :goto_b
    add-int/2addr p0, v3

    iput p0, v0, Li5/d;->g:I

    :goto_c
    return-object v0

    :cond_11
    return-object p1
.end method

.method public final c(Li5/d;)V
    .locals 3

    iget v0, p0, Li5/c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Li5/c;->b:[Li5/d;

    aget-object v0, v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Li5/d;->c:Li5/d;

    iput v1, p1, Li5/d;->g:I

    iget p1, p1, Li5/d;->f:I

    iput p1, p0, Li5/c;->e:I

    iget p1, p0, Li5/c;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Li5/c;->c:I

    return-void
.end method

.method public final d(I)V
    .locals 13

    iget-object v0, p0, Li5/c;->b:[Li5/d;

    aget-object p1, v0, p1

    iget-object v0, p0, Li5/c;->a:Li5/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Li5/c;->a:Li5/d;

    iput-object v1, p1, Li5/d;->c:Li5/d;

    return-void

    :cond_0
    iget-object v2, p1, Li5/d;->a:Lw0/l;

    :goto_0
    iget-object v3, v0, Li5/d;->d:Li5/d;

    const/4 v4, 0x1

    iget-object v5, v0, Li5/d;->a:Lw0/l;

    if-eqz v3, :cond_7

    iget-object v6, v0, Li5/d;->e:Li5/d;

    invoke-virtual {v5}, Lw0/l;->f()F

    move-result v7

    iget-object v8, p0, Li5/c;->h:Lw0/l;

    invoke-virtual {v8, v5, v2}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v8}, Lw0/l;->f()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v9, v10

    sub-float/2addr v9, v7

    mul-float/2addr v9, v10

    iget-object v7, v3, Li5/d;->d:Li5/d;

    const/4 v10, 0x0

    if-nez v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v10

    :goto_1
    iget-object v12, v3, Li5/d;->a:Lw0/l;

    if-eqz v7, :cond_2

    invoke-virtual {v8, v2, v12}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v8}, Lw0/l;->f()F

    move-result v7

    add-float/2addr v7, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v2, v12}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v12}, Lw0/l;->f()F

    move-result v7

    invoke-virtual {v8}, Lw0/l;->f()F

    move-result v12

    sub-float/2addr v12, v7

    add-float v7, v12, v9

    :goto_2
    iget-object v12, v6, Li5/d;->d:Li5/d;

    if-nez v12, :cond_3

    move v10, v4

    :cond_3
    iget-object v12, v6, Li5/d;->a:Lw0/l;

    if-eqz v10, :cond_4

    invoke-virtual {v8, v2, v12}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v8}, Lw0/l;->f()F

    move-result v8

    :goto_3
    add-float/2addr v8, v9

    goto :goto_4

    :cond_4
    invoke-virtual {v8, v2, v12}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    invoke-virtual {v12}, Lw0/l;->f()F

    move-result v10

    invoke-virtual {v8}, Lw0/l;->f()F

    move-result v8

    sub-float/2addr v8, v10

    goto :goto_3

    :goto_4
    cmpg-float v9, v11, v7

    if-gez v9, :cond_5

    cmpg-float v9, v11, v8

    if-gez v9, :cond_5

    goto :goto_5

    :cond_5
    cmpg-float v0, v7, v8

    if-gez v0, :cond_6

    move-object v0, v3

    goto :goto_0

    :cond_6
    move-object v0, v6

    goto :goto_0

    :cond_7
    :goto_5
    iget-object v3, p0, Li5/c;->b:[Li5/d;

    iget v6, v0, Li5/d;->f:I

    aget-object v3, v3, v6

    iget-object v3, v3, Li5/d;->c:Li5/d;

    invoke-virtual {p0}, Li5/c;->a()Li5/d;

    move-result-object v6

    iput-object v3, v6, Li5/d;->c:Li5/d;

    iput-object v1, v6, Li5/d;->b:Ll5/e;

    iget-object v1, v6, Li5/d;->a:Lw0/l;

    invoke-virtual {v1, v2, v5}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget v1, v0, Li5/d;->g:I

    add-int/2addr v1, v4

    iput v1, v6, Li5/d;->g:I

    if-eqz v3, :cond_9

    iget-object v1, v3, Li5/d;->d:Li5/d;

    if-ne v1, v0, :cond_8

    iput-object v6, v3, Li5/d;->d:Li5/d;

    goto :goto_6

    :cond_8
    iput-object v6, v3, Li5/d;->e:Li5/d;

    :goto_6
    iput-object v0, v6, Li5/d;->d:Li5/d;

    iput-object p1, v6, Li5/d;->e:Li5/d;

    iput-object v6, v0, Li5/d;->c:Li5/d;

    iput-object v6, p1, Li5/d;->c:Li5/d;

    goto :goto_7

    :cond_9
    iput-object v0, v6, Li5/d;->d:Li5/d;

    iput-object p1, v6, Li5/d;->e:Li5/d;

    iput-object v6, v0, Li5/d;->c:Li5/d;

    iput-object v6, p1, Li5/d;->c:Li5/d;

    iput-object v6, p0, Li5/c;->a:Li5/d;

    :goto_7
    iget-object p1, p1, Li5/d;->c:Li5/d;

    :goto_8
    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Li5/c;->b(Li5/d;)Li5/d;

    move-result-object p1

    iget-object v0, p1, Li5/d;->d:Li5/d;

    iget-object v1, p1, Li5/d;->e:Li5/d;

    iget v2, v0, Li5/d;->g:I

    iget v3, v1, Li5/d;->g:I

    sget-object v5, Lk5/c;->d:[F

    if-le v2, v3, :cond_a

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    add-int/2addr v2, v4

    iput v2, p1, Li5/d;->g:I

    iget-object v1, v1, Li5/d;->a:Lw0/l;

    iget-object v2, p1, Li5/d;->a:Lw0/l;

    iget-object v0, v0, Li5/d;->a:Lw0/l;

    invoke-virtual {v2, v0, v1}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget-object p1, p1, Li5/d;->c:Li5/d;

    goto :goto_8

    :cond_b
    return-void
.end method

.method public final e(Li5/d;)V
    .locals 5

    iget-object v0, p0, Li5/c;->a:Li5/d;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Li5/c;->a:Li5/d;

    return-void

    :cond_0
    iget-object v0, p1, Li5/d;->c:Li5/d;

    iget-object v2, v0, Li5/d;->c:Li5/d;

    iget-object v3, v0, Li5/d;->d:Li5/d;

    if-ne v3, p1, :cond_1

    iget-object v3, v0, Li5/d;->e:Li5/d;

    :cond_1
    if-eqz v2, :cond_4

    iget-object p1, v2, Li5/d;->d:Li5/d;

    if-ne p1, v0, :cond_2

    iput-object v3, v2, Li5/d;->d:Li5/d;

    goto :goto_0

    :cond_2
    iput-object v3, v2, Li5/d;->e:Li5/d;

    :goto_0
    iput-object v2, v3, Li5/d;->c:Li5/d;

    invoke-virtual {p0, v0}, Li5/c;->c(Li5/d;)V

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Li5/c;->b(Li5/d;)Li5/d;

    move-result-object p1

    iget-object v0, p1, Li5/d;->d:Li5/d;

    iget-object v1, p1, Li5/d;->e:Li5/d;

    iget-object v2, v0, Li5/d;->a:Lw0/l;

    iget-object v3, v1, Li5/d;->a:Lw0/l;

    iget-object v4, p1, Li5/d;->a:Lw0/l;

    invoke-virtual {v4, v2, v3}, Lw0/l;->b(Lw0/l;Lw0/l;)V

    iget v0, v0, Li5/d;->g:I

    iget v1, v1, Li5/d;->g:I

    sget-object v2, Lk5/c;->d:[F

    if-le v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Li5/d;->g:I

    iget-object v2, p1, Li5/d;->c:Li5/d;

    goto :goto_1

    :cond_4
    iput-object v3, p0, Li5/c;->a:Li5/d;

    iput-object v1, v3, Li5/d;->c:Li5/d;

    invoke-virtual {p0, v0}, Li5/c;->c(Li5/d;)V

    :cond_5
    return-void
.end method
