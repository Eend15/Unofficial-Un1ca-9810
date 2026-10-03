.class public final LX/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:LX/a;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:Ljava/util/ArrayList;

.field public final d:[LX/d;

.field public final e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LX/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LX/a;-><init>(I)V

    sput-object v0, LX/c;->f:LX/a;

    return-void
.end method

.method public constructor <init>([I[LX/d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, v0, LX/c;->e:[F

    move-object/from16 v4, p2

    iput-object v4, v0, LX/c;->d:[LX/d;

    const v4, 0x8000

    new-array v5, v4, [I

    iput-object v5, v0, LX/c;->b:[I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v1

    const/16 v9, 0x8

    if-ge v7, v8, :cond_0

    aget v8, v1, v7

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v10, v9, v2}, LX/c;->b(III)I

    move-result v10

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v11, v9, v2}, LX/c;->b(III)I

    move-result v11

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v8, v9, v2}, LX/c;->b(III)I

    move-result v8

    shl-int/lit8 v9, v10, 0xa

    shl-int/lit8 v10, v11, 0x5

    or-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v1, v7

    aget v9, v5, v8

    add-int/2addr v9, v3

    aput v9, v5, v8

    add-int/2addr v7, v3

    goto :goto_0

    :cond_0
    move v1, v6

    move v7, v1

    :goto_1
    if-ge v1, v4, :cond_3

    aget v8, v5, v1

    if-lez v8, :cond_1

    shr-int/lit8 v8, v1, 0xa

    and-int/lit8 v8, v8, 0x1f

    shr-int/lit8 v10, v1, 0x5

    and-int/lit8 v10, v10, 0x1f

    and-int/lit8 v11, v1, 0x1f

    invoke-static {v8, v2, v9}, LX/c;->b(III)I

    move-result v8

    invoke-static {v10, v2, v9}, LX/c;->b(III)I

    move-result v10

    invoke-static {v11, v2, v9}, LX/c;->b(III)I

    move-result v11

    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    sget-object v10, LC/a;->a:Ljava/lang/ThreadLocal;

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    iget-object v12, v0, LX/c;->e:[F

    invoke-static {v10, v11, v8, v12}, LC/a;->a(III[F)V

    invoke-virtual {v0, v12}, LX/c;->c([F)Z

    move-result v8

    if-eqz v8, :cond_1

    aput v6, v5, v1

    :cond_1
    aget v8, v5, v1

    if-lez v8, :cond_2

    add-int/2addr v7, v3

    :cond_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_3
    new-array v1, v7, [I

    iput-object v1, v0, LX/c;->a:[I

    move v8, v6

    move v10, v8

    :goto_2
    if-ge v8, v4, :cond_5

    aget v11, v5, v8

    if-lez v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    aput v8, v1, v10

    move v10, v11

    :cond_4
    add-int/2addr v8, v3

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    if-gt v7, v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, LX/c;->c:Ljava/util/ArrayList;

    :goto_3
    if-ge v6, v7, :cond_10

    aget v4, v1, v6

    iget-object v8, v0, LX/c;->c:Ljava/util/ArrayList;

    new-instance v10, LX/e;

    shr-int/lit8 v11, v4, 0xa

    and-int/lit8 v11, v11, 0x1f

    shr-int/lit8 v12, v4, 0x5

    and-int/lit8 v12, v12, 0x1f

    and-int/lit8 v13, v4, 0x1f

    invoke-static {v11, v2, v9}, LX/c;->b(III)I

    move-result v11

    invoke-static {v12, v2, v9}, LX/c;->b(III)I

    move-result v12

    invoke-static {v13, v2, v9}, LX/c;->b(III)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    aget v4, v5, v4

    invoke-direct {v10, v11, v4}, LX/e;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v3

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/PriorityQueue;

    sget-object v5, LX/c;->f:LX/a;

    invoke-direct {v1, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v5, LX/b;

    iget-object v7, v0, LX/c;->a:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    invoke-direct {v5, v0, v6, v7}, LX/b;-><init>(LX/c;II)V

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-ge v5, v4, :cond_c

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX/b;

    if-eqz v5, :cond_c

    iget v7, v5, LX/b;->b:I

    add-int/lit8 v8, v7, 0x1

    iget v10, v5, LX/b;->a:I

    sub-int/2addr v8, v10

    if-le v8, v3, :cond_c

    add-int/lit8 v8, v7, 0x1

    sub-int/2addr v8, v10

    if-le v8, v3, :cond_b

    iget v8, v5, LX/b;->e:I

    iget v11, v5, LX/b;->d:I

    sub-int/2addr v8, v11

    iget v11, v5, LX/b;->g:I

    iget v12, v5, LX/b;->f:I

    sub-int/2addr v11, v12

    iget v12, v5, LX/b;->i:I

    iget v13, v5, LX/b;->h:I

    sub-int/2addr v12, v13

    if-lt v8, v11, :cond_7

    if-lt v8, v12, :cond_7

    const/4 v8, -0x3

    goto :goto_5

    :cond_7
    if-lt v11, v8, :cond_8

    if-lt v11, v12, :cond_8

    const/4 v8, -0x2

    goto :goto_5

    :cond_8
    const/4 v8, -0x1

    :goto_5
    iget-object v11, v5, LX/b;->j:LX/c;

    iget-object v12, v11, LX/c;->a:[I

    invoke-static {v12, v8, v10, v7}, LX/c;->a([IIII)V

    iget v7, v5, LX/b;->b:I

    add-int/2addr v7, v3

    invoke-static {v12, v10, v7}, Ljava/util/Arrays;->sort([III)V

    iget v7, v5, LX/b;->b:I

    invoke-static {v12, v8, v10, v7}, LX/c;->a([IIII)V

    iget v7, v5, LX/b;->c:I

    div-int/lit8 v7, v7, 0x2

    move v13, v6

    move v8, v10

    :goto_6
    iget v14, v5, LX/b;->b:I

    if-gt v8, v14, :cond_a

    aget v15, v12, v8

    iget-object v4, v11, LX/c;->b:[I

    aget v4, v4, v15

    add-int/2addr v13, v4

    if-lt v13, v7, :cond_9

    sub-int/2addr v14, v3

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_7

    :cond_9
    add-int/2addr v8, v3

    const/16 v4, 0x10

    goto :goto_6

    :cond_a
    :goto_7
    new-instance v4, LX/b;

    add-int/lit8 v7, v10, 0x1

    iget v8, v5, LX/b;->b:I

    invoke-direct {v4, v11, v7, v8}, LX/b;-><init>(LX/c;II)V

    iput v10, v5, LX/b;->b:I

    invoke-virtual {v5}, LX/b;->a()V

    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    const/16 v4, 0x10

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX/b;

    iget-object v7, v5, LX/b;->j:LX/c;

    iget-object v8, v7, LX/c;->a:[I

    iget v10, v5, LX/b;->a:I

    move v11, v6

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_9
    iget v15, v5, LX/b;->b:I

    if-gt v10, v15, :cond_d

    aget v15, v8, v10

    iget-object v6, v7, LX/c;->b:[I

    aget v6, v6, v15

    add-int/2addr v12, v6

    shr-int/lit8 v16, v15, 0xa

    and-int/lit8 v16, v16, 0x1f

    mul-int v16, v16, v6

    add-int v11, v16, v11

    shr-int/lit8 v16, v15, 0x5

    and-int/lit8 v16, v16, 0x1f

    mul-int v16, v16, v6

    add-int v13, v16, v13

    and-int/lit8 v15, v15, 0x1f

    mul-int/2addr v6, v15

    add-int/2addr v14, v6

    add-int/2addr v10, v3

    const/4 v6, 0x0

    goto :goto_9

    :cond_d
    int-to-float v5, v11

    int-to-float v6, v12

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v7, v13

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v14

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v8, LX/e;

    invoke-static {v5, v2, v9}, LX/c;->b(III)I

    move-result v5

    invoke-static {v7, v2, v9}, LX/c;->b(III)I

    move-result v7

    invoke-static {v6, v2, v9}, LX/c;->b(III)I

    move-result v6

    invoke-static {v5, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v8, v5, v12}, LX/e;-><init>(II)V

    invoke-virtual {v8}, LX/e;->b()[F

    move-result-object v5

    invoke-virtual {v0, v5}, LX/c;->c([F)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    iput-object v4, v0, LX/c;->c:Ljava/util/ArrayList;

    :cond_10
    return-void
.end method

.method public static a([IIII)V
    .locals 2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    aget p1, p0, p2

    and-int/lit8 v0, p1, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    aget p1, p0, p2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static b(III)I
    .locals 0

    if-le p2, p1, :cond_0

    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    :goto_0
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public final c([F)Z
    .locals 6

    const/4 v0, 0x0

    iget-object p0, p0, LX/c;->d:[LX/d;

    if-eqz p0, :cond_3

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    aget v3, p1, v3

    const v4, 0x3f733333    # 0.95f

    cmpl-float v4, v3, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    aget v3, p1, v0

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    const/high16 v4, 0x42140000    # 37.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, p1, v5

    const v4, 0x3f51eb85    # 0.82f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    :goto_1
    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
