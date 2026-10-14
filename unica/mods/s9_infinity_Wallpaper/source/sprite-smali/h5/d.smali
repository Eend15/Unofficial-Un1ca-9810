.class public final Lh5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:Lk5/i;


# instance fields
.field public final a:Lk5/i;

.field public final b:LA1/c;

.field public final c:LA1/c;

.field public final d:[Lo1/b;

.field public final e:Lk5/i;

.field public final f:Lk5/i;

.field public final g:Lk5/i;

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public final j:Lk5/i;

.field public final k:[Lo1/b;

.field public final l:[Lo1/b;

.field public final m:Lk5/i;

.field public final n:Lk5/i;

.field public final o:Lh5/e;

.field public final p:Lk5/i;

.field public final q:Lk5/i;

.field public final r:Lh5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    sput-object v0, Lh5/d;->s:Lk5/i;

    return-void
.end method

.method public constructor <init>(Lq5/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lh5/f;

    invoke-direct {p1}, Lh5/f;-><init>()V

    new-instance p1, Lh5/f;

    invoke-direct {p1}, Lh5/f;-><init>()V

    new-instance p1, Lk5/h;

    invoke-direct {p1}, Lk5/h;-><init>()V

    new-instance p1, Lk5/h;

    invoke-direct {p1}, Lk5/h;-><init>()V

    new-instance p1, Lh5/h;

    invoke-direct {p1}, Lh5/h;-><init>()V

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/d;->a:Lk5/i;

    new-instance p1, LA1/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/d;->b:LA1/c;

    new-instance p1, LA1/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/d;->c:LA1/c;

    const/4 p1, 0x2

    new-array v0, p1, [Lo1/b;

    iput-object v0, p0, Lh5/d;->d:[Lo1/b;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/d;->e:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/d;->f:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/d;->g:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/d;->h:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/d;->i:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/d;->j:Lk5/i;

    new-array v1, p1, [Lo1/b;

    iput-object v1, p0, Lh5/d;->k:[Lo1/b;

    new-array p1, p1, [Lo1/b;

    iput-object p1, p0, Lh5/d;->l:[Lo1/b;

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    iput-object v2, p0, Lh5/d;->m:Lk5/i;

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    iput-object v2, p0, Lh5/d;->n:Lk5/i;

    new-instance v2, Lh5/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lh5/d;->o:Lh5/e;

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    iput-object v2, p0, Lh5/d;->p:Lk5/i;

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    iput-object v2, p0, Lh5/d;->q:Lk5/i;

    new-instance v2, Lh5/b;

    invoke-direct {v2}, Lh5/b;-><init>()V

    iput-object v2, p0, Lh5/d;->r:Lh5/b;

    new-instance p0, Lo1/b;

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lo1/b;-><init>(I)V

    const/4 v2, 0x0

    aput-object p0, v0, v2

    new-instance p0, Lo1/b;

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lo1/b;-><init>(I)V

    const/4 v3, 0x1

    aput-object p0, v0, v3

    new-instance p0, Lo1/b;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo1/b;-><init>(I)V

    aput-object p0, v1, v2

    new-instance p0, Lo1/b;

    invoke-direct {p0, v0}, Lo1/b;-><init>(I)V

    aput-object p0, v1, v3

    new-instance p0, Lo1/b;

    invoke-direct {p0, v0}, Lo1/b;-><init>(I)V

    aput-object p0, p1, v2

    new-instance p0, Lo1/b;

    invoke-direct {p0, v0}, Lo1/b;-><init>(I)V

    aput-object p0, p1, v3

    return-void
.end method

.method public static final a([Lo1/b;[Lo1/b;Lk5/i;FI)I
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    iget-object v3, v1, Lo1/b;->c:Ljava/lang/Object;

    check-cast v3, Lk5/i;

    iget-object v4, p1, Lo1/b;->c:Ljava/lang/Object;

    check-cast v4, Lk5/i;

    invoke-static {p2, v3}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v5

    sub-float/2addr v5, p3

    invoke-static {p2, v4}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result p2

    sub-float/2addr p2, p3

    const/4 p3, 0x0

    cmpg-float v6, v5, p3

    if-gtz v6, :cond_0

    aget-object v6, p0, v0

    invoke-virtual {v6, v1}, Lo1/b;->g(Lo1/b;)V

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    cmpg-float v7, p2, p3

    if-gtz v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6, p1}, Lo1/b;->g(Lo1/b;)V

    move v6, v7

    :cond_1
    mul-float p1, v5, p2

    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    sub-float p1, v5, p2

    div-float/2addr v5, p1

    aget-object p0, p0, v6

    iget-object p1, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast p1, Lk5/i;

    iget p2, v3, Lk5/i;->d:F

    iget p3, v4, Lk5/i;->d:F

    invoke-static {p3, p2, v5, p2}, Li4/b;->b(FFFF)F

    move-result p2

    iput p2, p1, Lk5/i;->d:F

    iget p2, v3, Lk5/i;->e:F

    iget p3, v4, Lk5/i;->e:F

    invoke-static {p3, p2, v5, p2}, Li4/b;->b(FFFF)F

    move-result p2

    iput p2, p1, Lk5/i;->e:F

    int-to-byte p1, p4

    iget-object p0, p0, Lo1/b;->d:Ljava/lang/Object;

    check-cast p0, Lh5/e;

    iput-byte p1, p0, Lh5/e;->d:B

    iget-object p1, v1, Lo1/b;->d:Ljava/lang/Object;

    check-cast p1, Lh5/e;

    iget-byte p1, p1, Lh5/e;->e:B

    iput-byte p1, p0, Lh5/e;->e:B

    int-to-byte p1, v0

    iput-byte p1, p0, Lh5/e;->f:B

    int-to-byte p1, v2

    iput-byte p1, p0, Lh5/e;->g:B

    add-int/lit8 v6, v6, 0x1

    :cond_2
    return v6
.end method

.method public static b(Lj5/d;Lk5/h;ILj5/d;Lk5/h;)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v4, v0, Lj5/d;->f:I

    iget v4, v2, Lj5/d;->f:I

    iget-object v5, v1, Lk5/h;->e:Lk5/d;

    iget-object v6, v3, Lk5/h;->e:Lk5/d;

    iget-object v7, v0, Lj5/d;->e:[Lk5/i;

    aget-object v7, v7, p2

    iget v8, v5, Lk5/d;->e:F

    iget v9, v7, Lk5/i;->d:F

    mul-float v10, v8, v9

    iget v11, v5, Lk5/d;->d:F

    iget v7, v7, Lk5/i;->e:F

    mul-float v12, v11, v7

    sub-float/2addr v10, v12

    mul-float/2addr v11, v9

    mul-float/2addr v8, v7

    add-float/2addr v8, v11

    iget v7, v6, Lk5/d;->e:F

    mul-float v9, v7, v10

    iget v11, v6, Lk5/d;->d:F

    mul-float v12, v11, v8

    add-float/2addr v12, v9

    neg-float v9, v11

    mul-float/2addr v9, v10

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    const/4 v9, 0x0

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move v13, v11

    move v11, v9

    :goto_0
    iget-object v14, v2, Lj5/d;->d:[Lk5/i;

    if-ge v9, v4, :cond_1

    aget-object v14, v14, v9

    iget v15, v14, Lk5/i;->d:F

    mul-float/2addr v15, v12

    iget v14, v14, Lk5/i;->e:F

    mul-float/2addr v14, v7

    add-float/2addr v14, v15

    cmpg-float v15, v14, v13

    if-gez v15, :cond_0

    move v11, v9

    move v13, v14

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lj5/d;->d:[Lk5/i;

    aget-object v0, v0, p2

    iget v2, v5, Lk5/d;->e:F

    iget v4, v0, Lk5/i;->d:F

    mul-float v7, v2, v4

    iget v5, v5, Lk5/d;->d:F

    iget v0, v0, Lk5/i;->e:F

    mul-float v9, v5, v0

    sub-float/2addr v7, v9

    iget-object v1, v1, Lk5/h;->d:Lk5/i;

    iget v9, v1, Lk5/i;->d:F

    add-float/2addr v7, v9

    mul-float/2addr v5, v4

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    iget v0, v1, Lk5/i;->e:F

    add-float/2addr v2, v0

    aget-object v0, v14, v11

    iget v1, v6, Lk5/d;->e:F

    iget v4, v0, Lk5/i;->d:F

    mul-float v5, v1, v4

    iget v6, v6, Lk5/d;->d:F

    iget v0, v0, Lk5/i;->e:F

    mul-float v9, v6, v0

    sub-float/2addr v5, v9

    iget-object v3, v3, Lk5/h;->d:Lk5/i;

    iget v9, v3, Lk5/i;->d:F

    add-float/2addr v5, v9

    sub-float/2addr v5, v7

    mul-float/2addr v6, v4

    mul-float/2addr v1, v0

    add-float/2addr v1, v6

    iget v0, v3, Lk5/i;->e:F

    add-float/2addr v1, v0

    sub-float/2addr v1, v2

    mul-float/2addr v5, v10

    mul-float/2addr v1, v8

    add-float/2addr v1, v5

    return v1
.end method

.method public static c(LA1/c;Lj5/d;Lk5/h;Lj5/d;Lk5/h;)V
    .locals 10

    iget v0, p1, Lj5/d;->f:I

    iget-object v1, p3, Lj5/d;->c:Lk5/i;

    iget-object v2, p4, Lk5/h;->e:Lk5/d;

    iget-object v3, p2, Lk5/h;->e:Lk5/d;

    iget v4, v2, Lk5/d;->e:F

    iget v5, v1, Lk5/i;->d:F

    mul-float v6, v4, v5

    iget v2, v2, Lk5/d;->d:F

    iget v1, v1, Lk5/i;->e:F

    mul-float v7, v2, v1

    sub-float/2addr v6, v7

    iget-object v7, p4, Lk5/h;->d:Lk5/i;

    iget v8, v7, Lk5/i;->d:F

    add-float/2addr v6, v8

    mul-float/2addr v2, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    iget v1, v7, Lk5/i;->e:F

    add-float/2addr v4, v1

    iget v1, v3, Lk5/d;->e:F

    iget-object v2, p1, Lj5/d;->c:Lk5/i;

    iget v5, v2, Lk5/i;->d:F

    mul-float v7, v1, v5

    iget v3, v3, Lk5/d;->d:F

    iget v2, v2, Lk5/i;->e:F

    mul-float v8, v3, v2

    sub-float/2addr v7, v8

    iget-object v8, p2, Lk5/h;->d:Lk5/i;

    iget v9, v8, Lk5/i;->d:F

    add-float/2addr v7, v9

    sub-float/2addr v6, v7

    mul-float/2addr v5, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    iget v5, v8, Lk5/i;->e:F

    add-float/2addr v2, v5

    sub-float/2addr v4, v2

    mul-float v2, v1, v6

    mul-float v5, v3, v4

    add-float/2addr v5, v2

    neg-float v2, v3

    mul-float/2addr v2, v6

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const v3, -0x800001

    move v4, v2

    move v6, v4

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v7, p1, Lj5/d;->e:[Lk5/i;

    aget-object v7, v7, v4

    iget v8, v7, Lk5/i;->d:F

    mul-float/2addr v8, v5

    iget v7, v7, Lk5/i;->e:F

    mul-float/2addr v7, v1

    add-float/2addr v7, v8

    cmpl-float v8, v7, v3

    if-lez v8, :cond_0

    move v6, v4

    move v3, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, v6, p3, p4}, Lh5/d;->b(Lj5/d;Lk5/h;ILj5/d;Lk5/h;)F

    move-result v1

    add-int/lit8 v3, v6, -0x1

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, -0x1

    :goto_1
    invoke-static {p1, p2, v3, p3, p4}, Lh5/d;->b(Lj5/d;Lk5/h;ILj5/d;Lk5/h;)F

    move-result v4

    add-int/lit8 v5, v6, 0x1

    if-ge v5, v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-static {p1, p2, v5, p3, p4}, Lh5/d;->b(Lj5/d;Lk5/h;ILj5/d;Lk5/h;)F

    move-result v7

    cmpl-float v8, v4, v1

    const/4 v9, -0x1

    if-lez v8, :cond_4

    cmpl-float v8, v4, v7

    if-lez v8, :cond_4

    move v1, v9

    goto :goto_3

    :cond_4
    cmpl-float v3, v7, v1

    if-lez v3, :cond_9

    const/4 v1, 0x1

    move v3, v5

    move v4, v7

    :goto_3
    if-ne v1, v9, :cond_6

    add-int/lit8 v5, v3, -0x1

    if-ltz v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v0, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v0, :cond_7

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    invoke-static {p1, p2, v5, p3, p4}, Lh5/d;->b(Lj5/d;Lk5/h;ILj5/d;Lk5/h;)F

    move-result v6

    cmpl-float v7, v6, v4

    if-lez v7, :cond_8

    move v3, v5

    move v4, v6

    goto :goto_3

    :cond_8
    iput v3, p0, LA1/c;->b:I

    iput v4, p0, LA1/c;->a:F

    return-void

    :cond_9
    iput v6, p0, LA1/c;->b:I

    iput v1, p0, LA1/c;->a:F

    return-void
.end method
