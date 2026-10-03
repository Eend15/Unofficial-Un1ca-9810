.class public final Lm5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lm5/a;

.field public c:Lm5/a;

.field public final d:Lw0/i;

.field public final e:Lw0/i;

.field public f:Ll5/c;

.field public g:Ll5/c;

.field public h:I

.field public i:I

.field public final j:Lh5/k;

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public final o:Lq5/c;

.field public final p:Lh5/k;

.field public final synthetic q:I


# direct methods
.method public constructor <init>(Lq5/c;I)V
    .locals 2

    iput p2, p0, Lm5/a;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lm5/a;->d:Lw0/i;

    iput-object p2, p0, Lm5/a;->e:Lw0/i;

    new-instance v0, Lh5/k;

    invoke-direct {v0}, Lh5/k;-><init>()V

    iput-object v0, p0, Lm5/a;->p:Lh5/k;

    iput-object p2, p0, Lm5/a;->f:Ll5/c;

    iput-object p2, p0, Lm5/a;->g:Ll5/c;

    new-instance p2, Lw0/i;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lw0/i;-><init>(IZ)V

    iput-object p2, p0, Lm5/a;->d:Lw0/i;

    new-instance p2, Lw0/i;

    invoke-direct {p2, v0, v1}, Lw0/i;-><init>(IZ)V

    iput-object p2, p0, Lm5/a;->e:Lw0/i;

    new-instance p2, Lh5/k;

    invoke-direct {p2}, Lh5/k;-><init>()V

    iput-object p2, p0, Lm5/a;->j:Lh5/k;

    iput-object p1, p0, Lm5/a;->o:Lq5/c;

    return-void
.end method


# virtual methods
.method public a(Ll5/c;ILl5/c;I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lm5/a;->a:I

    iput-object p1, p0, Lm5/a;->f:Ll5/c;

    iput-object p3, p0, Lm5/a;->g:Ll5/c;

    iput p2, p0, Lm5/a;->h:I

    iput p4, p0, Lm5/a;->i:I

    iget-object p2, p0, Lm5/a;->j:Lh5/k;

    iput v0, p2, Lh5/k;->e:I

    const/4 p2, 0x0

    iput-object p2, p0, Lm5/a;->b:Lm5/a;

    iput-object p2, p0, Lm5/a;->c:Lm5/a;

    iget-object p4, p0, Lm5/a;->d:Lw0/i;

    iput-object p2, p4, Lw0/i;->f:Ljava/lang/Object;

    iput-object p2, p4, Lw0/i;->g:Ljava/lang/Object;

    iput-object p2, p4, Lw0/i;->h:Ljava/lang/Object;

    iput-object p2, p4, Lw0/i;->e:Ljava/lang/Object;

    iget-object p4, p0, Lm5/a;->e:Lw0/i;

    iput-object p2, p4, Lw0/i;->f:Ljava/lang/Object;

    iput-object p2, p4, Lw0/i;->g:Ljava/lang/Object;

    iput-object p2, p4, Lw0/i;->h:Ljava/lang/Object;

    iput-object p2, p4, Lw0/i;->e:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lm5/a;->k:F

    iget p2, p1, Ll5/c;->e:F

    iget p4, p3, Ll5/c;->e:F

    mul-float/2addr p2, p4

    sget-object p4, Lk5/c;->d:[F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lm5/a;->m:F

    iget p1, p1, Ll5/c;->f:F

    iget p2, p3, Ll5/c;->f:F

    cmpl-float p3, p1, p2

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lm5/a;->n:F

    return-void
.end method

.method public final b(Lg5/a;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lm5/a;->p:Lh5/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lm5/a;->j:Lh5/k;

    iget v6, v5, Lh5/k;->e:I

    iget-object v7, v2, Lh5/k;->a:[Lh5/l;

    iget-object v8, v5, Lh5/k;->a:[Lh5/l;

    if-ge v4, v6, :cond_0

    aget-object v5, v7, v4

    aget-object v6, v8, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lh5/l;->a:Lk5/i;

    iget-object v8, v5, Lh5/l;->a:Lk5/i;

    iget v9, v7, Lk5/i;->d:F

    iput v9, v8, Lk5/i;->d:F

    iget v7, v7, Lk5/i;->e:F

    iput v7, v8, Lk5/i;->e:F

    iget v7, v6, Lh5/l;->b:F

    iput v7, v5, Lh5/l;->b:F

    iget v7, v6, Lh5/l;->c:F

    iput v7, v5, Lh5/l;->c:F

    iget-object v5, v5, Lh5/l;->d:Lh5/e;

    iget-object v6, v6, Lh5/l;->d:Lh5/e;

    invoke-virtual {v5, v6}, Lh5/e;->b(Lh5/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v4, v5, Lh5/k;->d:I

    iput v4, v2, Lh5/k;->d:I

    iget-object v4, v2, Lh5/k;->b:Lk5/i;

    iget-object v6, v5, Lh5/k;->b:Lk5/i;

    invoke-virtual {v4, v6}, Lk5/i;->k(Lk5/i;)V

    iget-object v4, v2, Lh5/k;->c:Lk5/i;

    iget-object v6, v5, Lh5/k;->c:Lk5/i;

    invoke-virtual {v4, v6}, Lk5/i;->k(Lk5/i;)V

    iget v4, v5, Lh5/k;->e:I

    iput v4, v2, Lh5/k;->e:I

    iget v4, v0, Lm5/a;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lm5/a;->a:I

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v10, v0, Lm5/a;->f:Ll5/c;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lm5/a;->g:Ll5/c;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lm5/a;->f:Ll5/c;

    iget-object v10, v10, Ll5/c;->c:Ll5/a;

    iget-object v11, v0, Lm5/a;->g:Ll5/c;

    iget-object v11, v11, Ll5/c;->c:Ll5/a;

    iget-object v12, v10, Ll5/a;->c:Lk5/h;

    iget-object v13, v11, Ll5/a;->c:Lk5/h;

    iget v14, v0, Lm5/a;->q:I

    packed-switch v14, :pswitch_data_0

    iget-object v14, v0, Lm5/a;->o:Lq5/c;

    iget-object v14, v14, Lq5/c;->m:Lh5/d;

    iget-object v15, v0, Lm5/a;->f:Ll5/c;

    iget-object v15, v15, Ll5/c;->d:Lj5/e;

    check-cast v15, Lj5/d;

    iget-object v3, v0, Lm5/a;->g:Ll5/c;

    iget-object v3, v3, Ll5/c;->d:Lj5/e;

    check-cast v3, Lj5/d;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    iput v6, v5, Lh5/k;->e:I

    iget v9, v15, Lj5/e;->b:F

    iget v6, v3, Lj5/e;->b:F

    add-float/2addr v9, v6

    iget-object v6, v14, Lh5/d;->b:LA1/c;

    invoke-static {v6, v15, v12, v3, v13}, Lh5/d;->c(LA1/c;Lj5/d;Lk5/h;Lj5/d;Lk5/h;)V

    iget v1, v6, LA1/c;->a:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_2

    :goto_2
    move-object/from16 v24, v2

    move/from16 v22, v4

    move-object v1, v5

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    goto/16 :goto_a

    :cond_2
    iget-object v1, v14, Lh5/d;->c:LA1/c;

    invoke-static {v1, v3, v13, v15, v12}, Lh5/d;->c(LA1/c;Lj5/d;Lk5/h;Lj5/d;Lk5/h;)V

    move-object/from16 v17, v3

    iget v3, v1, LA1/c;->a:F

    cmpl-float v18, v3, v9

    if-lez v18, :cond_3

    goto :goto_2

    :cond_3
    const v18, 0x3f7ae148    # 0.98f

    move-object/from16 v19, v15

    iget v15, v6, LA1/c;->a:F

    mul-float v15, v15, v18

    const v18, 0x3a83126f    # 0.001f

    add-float v15, v15, v18

    cmpl-float v3, v3, v15

    if-lez v3, :cond_4

    iget v1, v1, LA1/c;->b:I

    const/4 v3, 0x3

    iput v3, v5, Lh5/k;->d:I

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    const/16 v17, 0x1

    move-object/from16 v36, v13

    move-object v13, v12

    move-object/from16 v12, v36

    goto :goto_3

    :cond_4
    iget v1, v6, LA1/c;->b:I

    const/4 v3, 0x2

    iput v3, v5, Lh5/k;->d:I

    move-object/from16 v6, v17

    move-object/from16 v3, v19

    const/16 v17, 0x0

    :goto_3
    iget v15, v6, Lj5/d;->f:I

    move-object/from16 v20, v11

    iget-object v11, v14, Lh5/d;->d:[Lo1/b;

    move-object/from16 v21, v10

    const/16 v16, 0x0

    aget-object v10, v11, v16

    move/from16 v22, v4

    const/16 v19, 0x1

    aget-object v4, v11, v19

    move-object/from16 v23, v7

    iget-object v7, v3, Lj5/d;->e:[Lk5/i;

    aget-object v7, v7, v1

    move-object/from16 v24, v2

    iget-object v2, v12, Lk5/h;->e:Lk5/d;

    move-object/from16 v25, v8

    iget v8, v2, Lk5/d;->e:F

    iget v0, v7, Lk5/i;->d:F

    mul-float v26, v8, v0

    move-object/from16 v27, v5

    iget v5, v2, Lk5/d;->d:F

    iget v7, v7, Lk5/i;->e:F

    mul-float v28, v5, v7

    sub-float v26, v26, v28

    mul-float/2addr v5, v0

    mul-float/2addr v8, v7

    add-float/2addr v8, v5

    iget-object v0, v13, Lk5/h;->e:Lk5/d;

    iget v5, v0, Lk5/d;->e:F

    mul-float v7, v5, v26

    move-object/from16 v28, v11

    iget v11, v0, Lk5/d;->d:F

    mul-float v29, v11, v8

    add-float v29, v29, v7

    neg-float v7, v11

    mul-float v7, v7, v26

    mul-float/2addr v5, v8

    add-float/2addr v5, v7

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v8, v15, :cond_6

    move/from16 v26, v9

    iget-object v9, v6, Lj5/d;->e:[Lk5/i;

    aget-object v9, v9, v8

    move-object/from16 v30, v12

    iget v12, v9, Lk5/i;->d:F

    mul-float v12, v12, v29

    iget v9, v9, Lk5/i;->e:F

    mul-float/2addr v9, v5

    add-float/2addr v9, v12

    cmpg-float v12, v9, v7

    if-gez v12, :cond_5

    move v11, v8

    move v7, v9

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v26

    move-object/from16 v12, v30

    goto :goto_4

    :cond_6
    move/from16 v26, v9

    move-object/from16 v30, v12

    add-int/lit8 v5, v11, 0x1

    if-ge v5, v15, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v6, Lj5/d;->d:[Lk5/i;

    aget-object v7, v6, v11

    iget-object v8, v10, Lo1/b;->c:Ljava/lang/Object;

    check-cast v8, Lk5/i;

    iget v9, v0, Lk5/d;->e:F

    iget v12, v7, Lk5/i;->d:F

    mul-float/2addr v12, v9

    iget v15, v0, Lk5/d;->d:F

    move-object/from16 v29, v0

    iget v0, v7, Lk5/i;->e:F

    mul-float v31, v15, v0

    sub-float v12, v12, v31

    iget-object v13, v13, Lk5/h;->d:Lk5/i;

    move-object/from16 v31, v2

    iget v2, v13, Lk5/i;->d:F

    add-float/2addr v12, v2

    iput v12, v8, Lk5/i;->d:F

    iget v2, v7, Lk5/i;->d:F

    mul-float/2addr v2, v15

    mul-float/2addr v0, v9

    add-float/2addr v0, v2

    iget v2, v13, Lk5/i;->e:F

    add-float/2addr v0, v2

    iput v0, v8, Lk5/i;->e:F

    int-to-byte v0, v1

    iget-object v2, v10, Lo1/b;->d:Ljava/lang/Object;

    check-cast v2, Lh5/e;

    iput-byte v0, v2, Lh5/e;->d:B

    int-to-byte v7, v11

    iput-byte v7, v2, Lh5/e;->e:B

    const/4 v7, 0x1

    int-to-byte v7, v7

    iput-byte v7, v2, Lh5/e;->f:B

    const/4 v8, 0x0

    int-to-byte v10, v8

    iput-byte v10, v2, Lh5/e;->g:B

    aget-object v2, v6, v5

    iget-object v6, v4, Lo1/b;->c:Ljava/lang/Object;

    check-cast v6, Lk5/i;

    iget v11, v2, Lk5/i;->d:F

    mul-float/2addr v11, v9

    iget v12, v2, Lk5/i;->e:F

    mul-float v16, v15, v12

    sub-float v11, v11, v16

    iget v8, v13, Lk5/i;->d:F

    add-float/2addr v11, v8

    iput v11, v6, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->d:F

    mul-float/2addr v15, v2

    mul-float/2addr v9, v12

    add-float/2addr v9, v15

    iget v2, v13, Lk5/i;->e:F

    add-float/2addr v9, v2

    iput v9, v6, Lk5/i;->e:F

    iget-object v2, v4, Lo1/b;->d:Ljava/lang/Object;

    check-cast v2, Lh5/e;

    iput-byte v0, v2, Lh5/e;->d:B

    int-to-byte v0, v5

    iput-byte v0, v2, Lh5/e;->e:B

    iput-byte v7, v2, Lh5/e;->f:B

    iput-byte v10, v2, Lh5/e;->g:B

    iget v0, v3, Lj5/d;->f:I

    add-int/lit8 v2, v1, 0x1

    if-ge v2, v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    iget-object v0, v3, Lj5/d;->d:[Lk5/i;

    aget-object v3, v0, v1

    iget-object v4, v14, Lh5/d;->i:Lk5/i;

    invoke-virtual {v4, v3}, Lk5/i;->k(Lk5/i;)V

    aget-object v0, v0, v2

    iget-object v3, v14, Lh5/d;->j:Lk5/i;

    invoke-virtual {v3, v0}, Lk5/i;->k(Lk5/i;)V

    iget v0, v3, Lk5/i;->d:F

    iget v5, v4, Lk5/i;->d:F

    sub-float/2addr v0, v5

    iget-object v5, v14, Lh5/d;->e:Lk5/i;

    iput v0, v5, Lk5/i;->d:F

    iget v0, v3, Lk5/i;->e:F

    iget v6, v4, Lk5/i;->e:F

    sub-float/2addr v0, v6

    iput v0, v5, Lk5/i;->e:F

    invoke-virtual {v5}, Lk5/i;->j()F

    iget v0, v5, Lk5/i;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    iget-object v7, v14, Lh5/d;->f:Lk5/i;

    iput v0, v7, Lk5/i;->d:F

    iget v0, v5, Lk5/i;->d:F

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v0, v8

    iput v0, v7, Lk5/i;->e:F

    iget v0, v4, Lk5/i;->d:F

    iget v9, v3, Lk5/i;->d:F

    add-float/2addr v0, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    iget-object v10, v14, Lh5/d;->g:Lk5/i;

    iput v0, v10, Lk5/i;->d:F

    iget v0, v4, Lk5/i;->e:F

    iget v11, v3, Lk5/i;->e:F

    add-float/2addr v0, v11

    mul-float/2addr v0, v9

    iput v0, v10, Lk5/i;->e:F

    move-object/from16 v0, v31

    iget v9, v0, Lk5/d;->e:F

    iget v11, v5, Lk5/i;->d:F

    mul-float/2addr v11, v9

    iget v0, v0, Lk5/d;->d:F

    iget v12, v5, Lk5/i;->e:F

    mul-float v15, v0, v12

    sub-float/2addr v11, v15

    iget-object v15, v14, Lh5/d;->h:Lk5/i;

    iput v11, v15, Lk5/i;->d:F

    iget v5, v5, Lk5/i;->d:F

    mul-float/2addr v0, v5

    mul-float/2addr v9, v12

    add-float/2addr v9, v0

    iput v9, v15, Lk5/i;->e:F

    mul-float/2addr v9, v6

    mul-float/2addr v11, v8

    move-object/from16 v12, v30

    invoke-static {v12, v4, v4}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    invoke-static {v12, v3, v3}, Lk5/h;->a(Lk5/h;Lk5/i;Lk5/i;)V

    iget v0, v4, Lk5/i;->d:F

    mul-float v5, v9, v0

    iget v4, v4, Lk5/i;->e:F

    mul-float v6, v11, v4

    add-float/2addr v6, v5

    iget v5, v15, Lk5/i;->d:F

    mul-float/2addr v0, v5

    iget v8, v15, Lk5/i;->e:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    neg-float v0, v4

    add-float v0, v0, v26

    iget v4, v3, Lk5/i;->d:F

    mul-float/2addr v5, v4

    iget v3, v3, Lk5/i;->e:F

    mul-float/2addr v8, v3

    add-float/2addr v8, v5

    add-float v8, v8, v26

    invoke-virtual {v15}, Lk5/i;->i()V

    iget-object v3, v14, Lh5/d;->k:[Lo1/b;

    move-object/from16 v4, v28

    invoke-static {v3, v4, v15, v0, v1}, Lh5/d;->a([Lo1/b;[Lo1/b;Lk5/i;FI)I

    move-result v0

    invoke-virtual {v15}, Lk5/i;->i()V

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    :goto_7
    move-object/from16 v1, v27

    goto/16 :goto_a

    :cond_9
    iget-object v0, v14, Lh5/d;->l:[Lo1/b;

    invoke-static {v0, v3, v15, v8, v2}, Lh5/d;->a([Lo1/b;[Lo1/b;Lk5/i;FI)I

    move-result v2

    if-ge v2, v1, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v1, v27

    iget-object v2, v1, Lh5/k;->b:Lk5/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v7, Lk5/i;->d:F

    iput v3, v2, Lk5/i;->d:F

    iget v3, v7, Lk5/i;->e:F

    iput v3, v2, Lk5/i;->e:F

    iget-object v2, v1, Lh5/k;->c:Lk5/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v10, Lk5/i;->d:F

    iput v3, v2, Lk5/i;->d:F

    iget v3, v10, Lk5/i;->e:F

    iput v3, v2, Lk5/i;->e:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v2, v4, :cond_d

    aget-object v5, v0, v2

    iget-object v7, v5, Lo1/b;->c:Ljava/lang/Object;

    check-cast v7, Lk5/i;

    iget v8, v7, Lk5/i;->d:F

    mul-float v10, v9, v8

    iget v7, v7, Lk5/i;->e:F

    mul-float v12, v11, v7

    add-float/2addr v12, v10

    sub-float/2addr v12, v6

    cmpg-float v10, v12, v26

    if-gtz v10, :cond_c

    iget-object v10, v1, Lh5/k;->a:[Lh5/l;

    aget-object v10, v10, v3

    iget-object v12, v10, Lh5/l;->a:Lk5/i;

    iget v14, v13, Lk5/i;->d:F

    sub-float/2addr v8, v14

    iget v14, v13, Lk5/i;->e:F

    sub-float/2addr v7, v14

    move-object/from16 v14, v29

    iget v15, v14, Lk5/d;->e:F

    mul-float v16, v15, v8

    iget v4, v14, Lk5/d;->d:F

    mul-float v19, v4, v7

    move-object/from16 v27, v0

    add-float v0, v19, v16

    iput v0, v12, Lk5/i;->d:F

    neg-float v0, v4

    mul-float/2addr v0, v8

    mul-float/2addr v15, v7

    add-float/2addr v15, v0

    iput v15, v12, Lk5/i;->e:F

    iget-object v0, v10, Lh5/l;->d:Lh5/e;

    iget-object v4, v5, Lo1/b;->d:Ljava/lang/Object;

    check-cast v4, Lh5/e;

    invoke-virtual {v0, v4}, Lh5/e;->b(Lh5/e;)V

    if-eqz v17, :cond_b

    iget-byte v4, v0, Lh5/e;->d:B

    iget-byte v5, v0, Lh5/e;->e:B

    iput-byte v5, v0, Lh5/e;->d:B

    iput-byte v4, v0, Lh5/e;->e:B

    iget-byte v4, v0, Lh5/e;->f:B

    iget-byte v5, v0, Lh5/e;->g:B

    iput-byte v5, v0, Lh5/e;->f:B

    iput-byte v4, v0, Lh5/e;->g:B

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    move-object/from16 v27, v0

    move-object/from16 v14, v29

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v14

    move-object/from16 v0, v27

    goto :goto_8

    :cond_d
    iput v3, v1, Lh5/k;->e:I

    :goto_a
    move-object/from16 v0, p0

    move-object v6, v1

    goto/16 :goto_20

    :pswitch_0
    move-object/from16 v24, v2

    move/from16 v22, v4

    move-object v1, v5

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    iget-object v2, v0, Lm5/a;->o:Lq5/c;

    iget-object v2, v2, Lq5/c;->m:Lh5/d;

    iget-object v3, v0, Lm5/a;->f:Ll5/c;

    iget-object v3, v3, Ll5/c;->d:Lj5/e;

    check-cast v3, Lj5/d;

    iget-object v4, v0, Lm5/a;->g:Ll5/c;

    iget-object v4, v4, Ll5/c;->d:Lj5/e;

    check-cast v4, Lj5/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput v2, v1, Lh5/k;->e:I

    iget-object v5, v4, Lj5/a;->c:Lk5/i;

    iget-object v6, v13, Lk5/h;->e:Lk5/d;

    iget-object v7, v12, Lk5/h;->e:Lk5/d;

    iget v8, v6, Lk5/d;->e:F

    iget v9, v5, Lk5/i;->d:F

    mul-float v10, v8, v9

    iget v6, v6, Lk5/d;->d:F

    iget v11, v5, Lk5/i;->e:F

    mul-float v14, v6, v11

    sub-float/2addr v10, v14

    iget-object v13, v13, Lk5/h;->d:Lk5/i;

    iget v14, v13, Lk5/i;->d:F

    add-float/2addr v10, v14

    mul-float/2addr v6, v9

    mul-float/2addr v8, v11

    add-float/2addr v8, v6

    iget v6, v13, Lk5/i;->e:F

    add-float/2addr v8, v6

    iget-object v6, v12, Lk5/h;->d:Lk5/i;

    iget v9, v6, Lk5/i;->d:F

    sub-float/2addr v10, v9

    iget v6, v6, Lk5/i;->e:F

    sub-float/2addr v8, v6

    iget v6, v7, Lk5/d;->e:F

    mul-float v9, v6, v10

    iget v7, v7, Lk5/d;->d:F

    mul-float v11, v7, v8

    add-float/2addr v11, v9

    neg-float v7, v7

    mul-float/2addr v7, v10

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget v7, v3, Lj5/e;->b:F

    iget v4, v4, Lj5/e;->b:F

    add-float/2addr v7, v4

    iget v4, v3, Lj5/d;->f:I

    const v8, -0x800001

    move v9, v2

    move v10, v9

    :goto_b
    iget-object v12, v3, Lj5/d;->d:[Lk5/i;

    iget-object v13, v3, Lj5/d;->e:[Lk5/i;

    if-ge v9, v4, :cond_10

    aget-object v12, v12, v9

    iget v14, v12, Lk5/i;->d:F

    sub-float v14, v11, v14

    iget v12, v12, Lk5/i;->e:F

    sub-float v12, v6, v12

    aget-object v13, v13, v9

    iget v15, v13, Lk5/i;->d:F

    mul-float/2addr v15, v14

    iget v13, v13, Lk5/i;->e:F

    mul-float/2addr v13, v12

    add-float/2addr v13, v15

    cmpl-float v12, v13, v7

    if-lez v12, :cond_e

    goto/16 :goto_a

    :cond_e
    cmpl-float v12, v13, v8

    if-lez v12, :cond_f

    move v10, v9

    move v8, v13

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v3, v10, 0x1

    if-ge v3, v4, :cond_11

    goto :goto_c

    :cond_11
    move v3, v2

    :goto_c
    aget-object v4, v12, v10

    aget-object v3, v12, v3

    const/high16 v9, 0x34000000

    cmpg-float v8, v8, v9

    iget-object v9, v1, Lh5/k;->a:[Lh5/l;

    const/4 v12, 0x1

    const/4 v14, 0x2

    iget-object v2, v1, Lh5/k;->c:Lk5/i;

    iget-object v15, v1, Lh5/k;->b:Lk5/i;

    if-gez v8, :cond_12

    iput v12, v1, Lh5/k;->e:I

    iput v14, v1, Lh5/k;->d:I

    aget-object v6, v13, v10

    iget v7, v6, Lk5/i;->d:F

    iput v7, v15, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iput v6, v15, Lk5/i;->e:F

    iget v6, v4, Lk5/i;->d:F

    iget v7, v3, Lk5/i;->d:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iput v6, v2, Lk5/i;->d:F

    iget v4, v4, Lk5/i;->e:F

    iget v3, v3, Lk5/i;->e:F

    add-float/2addr v4, v3

    mul-float/2addr v4, v7

    iput v4, v2, Lk5/i;->e:F

    const/4 v2, 0x0

    aget-object v3, v9, v2

    iget-object v4, v3, Lh5/l;->a:Lk5/i;

    iget v6, v5, Lk5/i;->d:F

    iput v6, v4, Lk5/i;->d:F

    iget v5, v5, Lk5/i;->e:F

    iput v5, v4, Lk5/i;->e:F

    iget-object v3, v3, Lh5/l;->d:Lh5/e;

    iput-byte v2, v3, Lh5/e;->d:B

    iput-byte v2, v3, Lh5/e;->e:B

    iput-byte v2, v3, Lh5/e;->f:B

    iput-byte v2, v3, Lh5/e;->g:B

    goto/16 :goto_a

    :cond_12
    iget v8, v4, Lk5/i;->d:F

    sub-float v14, v11, v8

    iget v12, v4, Lk5/i;->e:F

    sub-float v0, v6, v12

    move/from16 v26, v10

    iget v10, v3, Lk5/i;->d:F

    sub-float v27, v10, v8

    move-object/from16 v28, v13

    iget v13, v3, Lk5/i;->e:F

    sub-float v29, v13, v12

    mul-float v27, v27, v14

    mul-float v29, v29, v0

    add-float v29, v29, v27

    move-object/from16 v27, v3

    sub-float v3, v11, v10

    move/from16 v30, v11

    sub-float v11, v6, v13

    sub-float v31, v8, v10

    sub-float v32, v12, v13

    mul-float v31, v31, v3

    mul-float v32, v32, v11

    add-float v32, v32, v31

    const/16 v31, 0x0

    cmpg-float v29, v29, v31

    if-gtz v29, :cond_14

    mul-float v3, v14, v14

    mul-float v6, v0, v0

    add-float/2addr v6, v3

    mul-float/2addr v7, v7

    cmpl-float v3, v6, v7

    if-lez v3, :cond_13

    goto/16 :goto_a

    :cond_13
    const/4 v3, 0x1

    iput v3, v1, Lh5/k;->e:I

    const/4 v3, 0x2

    iput v3, v1, Lh5/k;->d:I

    iput v14, v15, Lk5/i;->d:F

    iput v0, v15, Lk5/i;->e:F

    invoke-virtual {v15}, Lk5/i;->j()F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v4, Lk5/i;->d:F

    iput v0, v2, Lk5/i;->d:F

    iget v0, v4, Lk5/i;->e:F

    iput v0, v2, Lk5/i;->e:F

    const/4 v0, 0x0

    aget-object v2, v9, v0

    iget-object v3, v2, Lh5/l;->a:Lk5/i;

    iget v4, v5, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v4, v5, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    iget-object v2, v2, Lh5/l;->d:Lh5/e;

    iput-byte v0, v2, Lh5/e;->d:B

    iput-byte v0, v2, Lh5/e;->e:B

    iput-byte v0, v2, Lh5/e;->f:B

    iput-byte v0, v2, Lh5/e;->g:B

    goto/16 :goto_a

    :cond_14
    cmpg-float v0, v32, v31

    if-gtz v0, :cond_16

    mul-float v0, v3, v3

    mul-float v4, v11, v11

    add-float/2addr v4, v0

    mul-float/2addr v7, v7

    cmpl-float v0, v4, v7

    if-lez v0, :cond_15

    goto/16 :goto_a

    :cond_15
    const/4 v0, 0x1

    iput v0, v1, Lh5/k;->e:I

    const/4 v0, 0x2

    iput v0, v1, Lh5/k;->d:I

    iput v3, v15, Lk5/i;->d:F

    iput v11, v15, Lk5/i;->e:F

    invoke-virtual {v15}, Lk5/i;->j()F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v27

    iget v3, v0, Lk5/i;->d:F

    iput v3, v2, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v2, Lk5/i;->e:F

    const/4 v0, 0x0

    aget-object v2, v9, v0

    iget-object v3, v2, Lh5/l;->a:Lk5/i;

    iget v4, v5, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v4, v5, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    iget-object v2, v2, Lh5/l;->d:Lh5/e;

    iput-byte v0, v2, Lh5/e;->d:B

    iput-byte v0, v2, Lh5/e;->e:B

    iput-byte v0, v2, Lh5/e;->f:B

    iput-byte v0, v2, Lh5/e;->g:B

    goto/16 :goto_a

    :cond_16
    add-float/2addr v8, v10

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v8, v0

    add-float/2addr v12, v13

    mul-float/2addr v12, v0

    sub-float v11, v30, v8

    sub-float/2addr v6, v12

    aget-object v0, v28, v26

    iget v3, v0, Lk5/i;->d:F

    mul-float/2addr v11, v3

    iget v3, v0, Lk5/i;->e:F

    mul-float/2addr v6, v3

    add-float/2addr v6, v11

    cmpl-float v3, v6, v7

    if-lez v3, :cond_17

    goto/16 :goto_a

    :cond_17
    const/4 v3, 0x1

    iput v3, v1, Lh5/k;->e:I

    const/4 v3, 0x2

    iput v3, v1, Lh5/k;->d:I

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lk5/i;->d:F

    iput v3, v15, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v15, Lk5/i;->e:F

    iput v8, v2, Lk5/i;->d:F

    iput v12, v2, Lk5/i;->e:F

    const/4 v0, 0x0

    aget-object v2, v9, v0

    iget-object v3, v2, Lh5/l;->a:Lk5/i;

    iget v4, v5, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v4, v5, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    iget-object v2, v2, Lh5/l;->d:Lh5/e;

    iput-byte v0, v2, Lh5/e;->d:B

    iput-byte v0, v2, Lh5/e;->e:B

    iput-byte v0, v2, Lh5/e;->f:B

    iput-byte v0, v2, Lh5/e;->g:B

    goto/16 :goto_a

    :pswitch_1
    move-object/from16 v24, v2

    move/from16 v22, v4

    move-object v1, v5

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    iget-object v2, v0, Lm5/a;->o:Lq5/c;

    iget-object v2, v2, Lq5/c;->m:Lh5/d;

    iget-object v3, v0, Lm5/a;->f:Ll5/c;

    iget-object v3, v3, Ll5/c;->d:Lj5/e;

    check-cast v3, Lj5/b;

    iget-object v4, v0, Lm5/a;->g:Ll5/c;

    iget-object v4, v4, Ll5/c;->d:Lj5/e;

    check-cast v4, Lj5/d;

    iget-object v2, v2, Lh5/d;->r:Lh5/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v12, Lk5/h;->e:Lk5/d;

    iget-object v6, v13, Lk5/h;->e:Lk5/d;

    iget-object v7, v2, Lh5/b;->b:Lk5/h;

    iget-object v8, v7, Lk5/h;->e:Lk5/d;

    iget v9, v5, Lk5/d;->e:F

    iget v10, v6, Lk5/d;->d:F

    mul-float/2addr v10, v9

    iget v11, v5, Lk5/d;->d:F

    iget v14, v6, Lk5/d;->e:F

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    iput v10, v8, Lk5/d;->d:F

    mul-float/2addr v9, v14

    iget v5, v5, Lk5/d;->d:F

    iget v6, v6, Lk5/d;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    iput v5, v8, Lk5/d;->e:F

    sget-object v5, Lk5/h;->f:Lk5/i;

    iget-object v6, v13, Lk5/h;->d:Lk5/i;

    iget v8, v6, Lk5/i;->d:F

    iput v8, v5, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    iput v6, v5, Lk5/i;->e:F

    iget-object v6, v12, Lk5/h;->d:Lk5/i;

    invoke-virtual {v5, v6}, Lk5/i;->m(Lk5/i;)V

    iget-object v6, v7, Lk5/h;->d:Lk5/i;

    iget-object v8, v12, Lk5/h;->e:Lk5/d;

    invoke-static {v8, v5, v6}, Lk5/d;->b(Lk5/d;Lk5/i;Lk5/i;)V

    iget-object v5, v4, Lj5/d;->c:Lk5/i;

    iget-object v6, v2, Lh5/b;->c:Lk5/i;

    invoke-static {v7, v5, v6}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v5, v3, Lj5/b;->e:Lk5/i;

    iget-object v5, v3, Lj5/b;->c:Lk5/i;

    iput-object v5, v2, Lh5/b;->d:Lk5/i;

    iget-object v3, v3, Lj5/b;->d:Lk5/i;

    iput-object v3, v2, Lh5/b;->e:Lk5/i;

    iget-object v5, v2, Lh5/b;->l:Lk5/i;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v3, Lk5/i;->d:F

    iput v8, v5, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v5, Lk5/i;->e:F

    iget-object v3, v2, Lh5/b;->d:Lk5/i;

    invoke-virtual {v5, v3}, Lk5/i;->m(Lk5/i;)V

    invoke-virtual {v5}, Lk5/i;->j()F

    iget v3, v5, Lk5/i;->e:F

    iget v5, v5, Lk5/i;->d:F

    neg-float v5, v5

    iget-object v8, v2, Lh5/b;->f:Lk5/i;

    iput v3, v8, Lk5/i;->d:F

    iput v5, v8, Lk5/i;->e:F

    iget-object v3, v2, Lh5/b;->m:Lk5/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v6, Lk5/i;->d:F

    iput v5, v3, Lk5/i;->d:F

    iget v5, v6, Lk5/i;->e:F

    iput v5, v3, Lk5/i;->e:F

    iget-object v5, v2, Lh5/b;->d:Lk5/i;

    invoke-virtual {v3, v5}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v8, v3}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    :goto_d
    iput-boolean v5, v2, Lh5/b;->k:Z

    iget-object v11, v2, Lh5/b;->i:Lk5/i;

    iget-object v12, v2, Lh5/b;->h:Lk5/i;

    iget-object v13, v2, Lh5/b;->g:Lk5/i;

    if-eqz v5, :cond_19

    iget v5, v8, Lk5/i;->d:F

    iput v5, v13, Lk5/i;->d:F

    iget v5, v8, Lk5/i;->e:F

    iput v5, v13, Lk5/i;->e:F

    iget v5, v8, Lk5/i;->d:F

    neg-float v5, v5

    iput v5, v12, Lk5/i;->d:F

    iget v5, v8, Lk5/i;->e:F

    neg-float v5, v5

    iput v5, v12, Lk5/i;->e:F

    iget v5, v8, Lk5/i;->d:F

    neg-float v5, v5

    iput v5, v11, Lk5/i;->d:F

    iget v5, v8, Lk5/i;->e:F

    neg-float v5, v5

    iput v5, v11, Lk5/i;->e:F

    goto :goto_e

    :cond_19
    iget v5, v8, Lk5/i;->d:F

    neg-float v5, v5

    iput v5, v13, Lk5/i;->d:F

    iget v5, v8, Lk5/i;->e:F

    neg-float v5, v5

    iput v5, v13, Lk5/i;->e:F

    iget v5, v8, Lk5/i;->d:F

    iput v5, v12, Lk5/i;->d:F

    iget v5, v8, Lk5/i;->e:F

    iput v5, v12, Lk5/i;->e:F

    iget v5, v8, Lk5/i;->d:F

    iput v5, v11, Lk5/i;->d:F

    iget v5, v8, Lk5/i;->e:F

    iput v5, v11, Lk5/i;->e:F

    :goto_e
    iget v5, v4, Lj5/d;->f:I

    iget-object v14, v2, Lh5/b;->a:La0/l;

    iput v5, v14, La0/l;->a:I

    const/4 v5, 0x0

    :goto_f
    iget v15, v4, Lj5/d;->f:I

    iget-object v6, v4, Lj5/d;->e:[Lk5/i;

    iget-object v9, v14, La0/l;->c:Ljava/lang/Object;

    check-cast v9, [Lk5/i;

    iget-object v10, v14, La0/l;->b:Ljava/lang/Object;

    check-cast v10, [Lk5/i;

    iget-object v0, v4, Lj5/d;->d:[Lk5/i;

    if-ge v5, v15, :cond_1a

    aget-object v0, v0, v5

    aget-object v10, v10, v5

    invoke-static {v7, v0, v10}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    aget-object v0, v6, v5

    aget-object v6, v9, v5

    iget-object v9, v7, Lk5/h;->e:Lk5/d;

    invoke-static {v9, v0, v6}, Lk5/d;->a(Lk5/d;Lk5/i;Lk5/i;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    goto :goto_f

    :cond_1a
    const v4, 0x3ca3d70a    # 0.02f

    iput v4, v2, Lh5/b;->j:F

    const/4 v4, 0x0

    iput v4, v1, Lh5/k;->e:I

    iget-object v4, v2, Lh5/b;->r:Lh5/a;

    const/4 v5, 0x2

    iput v5, v4, Lh5/a;->a:I

    iget-boolean v15, v2, Lh5/b;->k:Z

    const/16 v17, 0x1

    xor-int/lit8 v15, v15, 0x1

    iput v15, v4, Lh5/a;->b:I

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    iput v15, v4, Lh5/a;->c:F

    iget v15, v13, Lk5/i;->d:F

    iget v5, v13, Lk5/i;->e:F

    move-object/from16 v27, v0

    move-object/from16 v26, v7

    const/4 v7, 0x0

    :goto_10
    iget v0, v14, La0/l;->a:I

    if-ge v7, v0, :cond_1c

    aget-object v0, v10, v7

    move-object/from16 v28, v6

    iget v6, v0, Lk5/i;->d:F

    move-object/from16 v29, v8

    iget-object v8, v2, Lh5/b;->d:Lk5/i;

    move-object/from16 v30, v1

    iget v1, v8, Lk5/i;->d:F

    sub-float/2addr v6, v1

    iget v0, v0, Lk5/i;->e:F

    iget v1, v8, Lk5/i;->e:F

    sub-float/2addr v0, v1

    mul-float/2addr v6, v15

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    iget v1, v4, Lh5/a;->c:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1b

    iput v0, v4, Lh5/a;->c:F

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    move-object/from16 v1, v30

    goto :goto_10

    :cond_1c
    move-object/from16 v30, v1

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    iget v0, v4, Lh5/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    :goto_11
    move-object/from16 v6, v30

    goto/16 :goto_1f

    :cond_1d
    iget v0, v4, Lh5/a;->c:F

    iget v5, v2, Lh5/b;->j:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1e

    goto :goto_11

    :cond_1e
    iget-object v0, v2, Lh5/b;->s:Lh5/a;

    iput v1, v0, Lh5/a;->a:I

    const/4 v1, -0x1

    iput v1, v0, Lh5/a;->b:I

    const v1, -0x800001

    iput v1, v0, Lh5/a;->c:F

    iget v1, v13, Lk5/i;->e:F

    neg-float v1, v1

    iget-object v5, v2, Lh5/b;->t:Lk5/i;

    iput v1, v5, Lk5/i;->d:F

    iget v1, v13, Lk5/i;->d:F

    iput v1, v5, Lk5/i;->e:F

    const/4 v1, 0x0

    :goto_12
    iget v6, v14, La0/l;->a:I

    if-ge v1, v6, :cond_23

    aget-object v6, v9, v1

    aget-object v8, v10, v1

    iget v15, v6, Lk5/i;->d:F

    neg-float v15, v15

    iget-object v7, v2, Lh5/b;->u:Lk5/i;

    iput v15, v7, Lk5/i;->d:F

    iget v6, v6, Lk5/i;->e:F

    neg-float v6, v6

    iput v6, v7, Lk5/i;->e:F

    move-object/from16 v32, v10

    iget v10, v8, Lk5/i;->d:F

    move-object/from16 v33, v14

    iget-object v14, v2, Lh5/b;->d:Lk5/i;

    move-object/from16 v34, v9

    iget v9, v14, Lk5/i;->d:F

    sub-float v9, v10, v9

    iget v8, v8, Lk5/i;->e:F

    iget v14, v14, Lk5/i;->e:F

    sub-float v14, v8, v14

    mul-float/2addr v9, v15

    mul-float/2addr v14, v6

    add-float/2addr v14, v9

    iget-object v9, v2, Lh5/b;->e:Lk5/i;

    move-object/from16 v35, v4

    iget v4, v9, Lk5/i;->d:F

    sub-float/2addr v10, v4

    iget v4, v9, Lk5/i;->e:F

    sub-float/2addr v8, v4

    mul-float/2addr v15, v10

    mul-float/2addr v6, v8

    add-float/2addr v6, v15

    invoke-static {v14, v6}, Lk5/c;->Q(FF)F

    move-result v4

    iget v6, v2, Lh5/b;->j:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1f

    const/4 v6, 0x3

    iput v6, v0, Lh5/a;->a:I

    iput v1, v0, Lh5/a;->b:I

    iput v4, v0, Lh5/a;->c:F

    goto :goto_14

    :cond_1f
    iget v6, v7, Lk5/i;->d:F

    iget v8, v5, Lk5/i;->d:F

    mul-float/2addr v8, v6

    iget v7, v7, Lk5/i;->e:F

    iget v9, v5, Lk5/i;->e:F

    mul-float/2addr v9, v7

    add-float/2addr v9, v8

    const/4 v8, 0x0

    cmpl-float v9, v9, v8

    const v10, -0x42f105ca

    if-ltz v9, :cond_20

    iput v6, v3, Lk5/i;->d:F

    iput v7, v3, Lk5/i;->e:F

    invoke-virtual {v3, v11}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v3, v13}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_21

    goto :goto_13

    :cond_20
    iput v6, v3, Lk5/i;->d:F

    iput v7, v3, Lk5/i;->e:F

    invoke-virtual {v3, v12}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v3, v13}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_21

    goto :goto_13

    :cond_21
    iget v6, v0, Lh5/a;->c:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_22

    const/4 v6, 0x3

    iput v6, v0, Lh5/a;->a:I

    iput v1, v0, Lh5/a;->b:I

    iput v4, v0, Lh5/a;->c:F

    :cond_22
    :goto_13
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, v32

    move-object/from16 v14, v33

    move-object/from16 v9, v34

    move-object/from16 v4, v35

    goto/16 :goto_12

    :cond_23
    move-object/from16 v35, v4

    move-object/from16 v34, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v14

    :goto_14
    iget v1, v0, Lh5/a;->a:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_24

    iget v5, v0, Lh5/a;->c:F

    iget v6, v2, Lh5/b;->j:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_24

    goto/16 :goto_11

    :cond_24
    if-ne v1, v4, :cond_25

    move-object/from16 v4, v35

    goto :goto_15

    :cond_25
    iget v1, v0, Lh5/a;->c:F

    const v4, 0x3f7ae148    # 0.98f

    move-object/from16 v5, v35

    iget v6, v5, Lh5/a;->c:F

    mul-float/2addr v6, v4

    const v4, 0x3a83126f    # 0.001f

    add-float/2addr v6, v4

    cmpl-float v1, v1, v6

    if-lez v1, :cond_26

    move-object v4, v0

    goto :goto_15

    :cond_26
    move-object v4, v5

    :goto_15
    iget-object v0, v2, Lh5/b;->n:[Lo1/b;

    const/4 v1, 0x0

    aget-object v5, v0, v1

    const/4 v6, 0x1

    aget-object v7, v0, v6

    iget v6, v4, Lh5/a;->a:I

    iget-object v8, v2, Lh5/b;->q:Lh5/c;

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2b

    move-object/from16 v6, v30

    iput v9, v6, Lh5/k;->d:I

    aget-object v9, v34, v1

    invoke-static {v13, v9}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    move-object/from16 v11, v33

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_16
    iget v12, v11, La0/l;->a:I

    if-ge v9, v12, :cond_28

    aget-object v12, v34, v9

    invoke-static {v13, v12}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v12

    cmpg-float v14, v12, v1

    if-gez v14, :cond_27

    move v10, v9

    move v1, v12

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_28
    add-int/lit8 v1, v10, 0x1

    if-ge v1, v12, :cond_29

    goto :goto_17

    :cond_29
    const/4 v1, 0x0

    :goto_17
    iget-object v9, v5, Lo1/b;->c:Ljava/lang/Object;

    check-cast v9, Lk5/i;

    aget-object v11, v32, v10

    invoke-virtual {v9, v11}, Lk5/i;->k(Lk5/i;)V

    iget-object v5, v5, Lo1/b;->d:Ljava/lang/Object;

    check-cast v5, Lh5/e;

    const/4 v9, 0x0

    iput-byte v9, v5, Lh5/e;->d:B

    int-to-byte v10, v10

    iput-byte v10, v5, Lh5/e;->e:B

    const/4 v10, 0x1

    int-to-byte v11, v10

    iput-byte v11, v5, Lh5/e;->f:B

    int-to-byte v10, v9

    iput-byte v10, v5, Lh5/e;->g:B

    iget-object v5, v7, Lo1/b;->c:Ljava/lang/Object;

    check-cast v5, Lk5/i;

    aget-object v12, v32, v1

    invoke-virtual {v5, v12}, Lk5/i;->k(Lk5/i;)V

    iget-object v5, v7, Lo1/b;->d:Ljava/lang/Object;

    check-cast v5, Lh5/e;

    iput-byte v9, v5, Lh5/e;->d:B

    int-to-byte v1, v1

    iput-byte v1, v5, Lh5/e;->e:B

    iput-byte v11, v5, Lh5/e;->f:B

    iput-byte v10, v5, Lh5/e;->g:B

    iget-boolean v1, v2, Lh5/b;->k:Z

    if-eqz v1, :cond_2a

    iput v9, v8, Lh5/c;->a:I

    const/4 v1, 0x1

    iput v1, v8, Lh5/c;->b:I

    iget-object v1, v8, Lh5/c;->c:Lk5/i;

    iget-object v5, v2, Lh5/b;->d:Lk5/i;

    invoke-virtual {v1, v5}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v8, Lh5/c;->d:Lk5/i;

    iget-object v5, v2, Lh5/b;->e:Lk5/i;

    invoke-virtual {v1, v5}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v8, Lh5/c;->e:Lk5/i;

    move-object/from16 v5, v29

    iget v7, v5, Lk5/i;->d:F

    iput v7, v1, Lk5/i;->d:F

    iget v5, v5, Lk5/i;->e:F

    iput v5, v1, Lk5/i;->e:F

    goto :goto_18

    :cond_2a
    move-object/from16 v5, v29

    const/4 v1, 0x1

    iput v1, v8, Lh5/c;->a:I

    const/4 v1, 0x0

    iput v1, v8, Lh5/c;->b:I

    iget-object v1, v8, Lh5/c;->c:Lk5/i;

    iget-object v7, v2, Lh5/b;->e:Lk5/i;

    invoke-virtual {v1, v7}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v8, Lh5/c;->d:Lk5/i;

    iget-object v7, v2, Lh5/b;->d:Lk5/i;

    invoke-virtual {v1, v7}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v8, Lh5/c;->e:Lk5/i;

    iget v7, v5, Lk5/i;->d:F

    iput v7, v1, Lk5/i;->d:F

    iget v5, v5, Lk5/i;->e:F

    iput v5, v1, Lk5/i;->e:F

    invoke-virtual {v1}, Lk5/i;->i()V

    :goto_18
    const/4 v5, 0x0

    goto :goto_1a

    :cond_2b
    move-object/from16 v6, v30

    move-object/from16 v11, v33

    const/4 v1, 0x3

    iput v1, v6, Lh5/k;->d:I

    iget-object v1, v5, Lo1/b;->c:Ljava/lang/Object;

    check-cast v1, Lk5/i;

    iget-object v9, v2, Lh5/b;->d:Lk5/i;

    invoke-virtual {v1, v9}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v5, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Lh5/e;

    const/4 v5, 0x0

    iput-byte v5, v1, Lh5/e;->d:B

    iget v9, v4, Lh5/a;->b:I

    int-to-byte v9, v9

    iput-byte v9, v1, Lh5/e;->e:B

    int-to-byte v9, v5

    iput-byte v9, v1, Lh5/e;->f:B

    const/4 v10, 0x1

    int-to-byte v10, v10

    iput-byte v10, v1, Lh5/e;->g:B

    iget-object v1, v7, Lo1/b;->c:Ljava/lang/Object;

    check-cast v1, Lk5/i;

    iget-object v12, v2, Lh5/b;->e:Lk5/i;

    invoke-virtual {v1, v12}, Lk5/i;->k(Lk5/i;)V

    iget-object v1, v7, Lo1/b;->d:Ljava/lang/Object;

    check-cast v1, Lh5/e;

    iput-byte v5, v1, Lh5/e;->d:B

    iget v7, v4, Lh5/a;->b:I

    int-to-byte v12, v7

    iput-byte v12, v1, Lh5/e;->e:B

    iput-byte v9, v1, Lh5/e;->f:B

    iput-byte v10, v1, Lh5/e;->g:B

    iput v7, v8, Lh5/c;->a:I

    add-int/lit8 v1, v7, 0x1

    iget v9, v11, La0/l;->a:I

    if-ge v1, v9, :cond_2c

    goto :goto_19

    :cond_2c
    move v1, v5

    :goto_19
    iput v1, v8, Lh5/c;->b:I

    iget-object v1, v8, Lh5/c;->c:Lk5/i;

    aget-object v7, v32, v7

    invoke-virtual {v1, v7}, Lk5/i;->k(Lk5/i;)V

    iget v1, v8, Lh5/c;->b:I

    aget-object v1, v32, v1

    iget-object v7, v8, Lh5/c;->d:Lk5/i;

    invoke-virtual {v7, v1}, Lk5/i;->k(Lk5/i;)V

    iget v1, v8, Lh5/c;->a:I

    aget-object v1, v34, v1

    iget-object v7, v8, Lh5/c;->e:Lk5/i;

    invoke-virtual {v7, v1}, Lk5/i;->k(Lk5/i;)V

    :goto_1a
    iget-object v1, v8, Lh5/c;->f:Lk5/i;

    iget-object v7, v8, Lh5/c;->e:Lk5/i;

    iget v9, v7, Lk5/i;->e:F

    iget v10, v7, Lk5/i;->d:F

    neg-float v10, v10

    iput v9, v1, Lk5/i;->d:F

    iput v10, v1, Lk5/i;->e:F

    iget-object v1, v8, Lh5/c;->h:Lk5/i;

    iput v9, v1, Lk5/i;->d:F

    iput v10, v1, Lk5/i;->e:F

    invoke-virtual {v1}, Lk5/i;->i()V

    iget-object v9, v8, Lh5/c;->f:Lk5/i;

    iget-object v10, v8, Lh5/c;->c:Lk5/i;

    invoke-static {v9, v10}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v11

    iput v11, v8, Lh5/c;->g:F

    iget-object v11, v8, Lh5/c;->d:Lk5/i;

    invoke-static {v1, v11}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v11

    iput v11, v8, Lh5/c;->i:F

    iget v11, v8, Lh5/c;->g:F

    iget v12, v8, Lh5/c;->a:I

    iget-object v13, v2, Lh5/b;->o:[Lo1/b;

    invoke-static {v13, v0, v9, v11, v12}, Lh5/d;->a([Lo1/b;[Lo1/b;Lk5/i;FI)I

    move-result v0

    const/4 v9, 0x2

    if-ge v0, v9, :cond_2d

    goto/16 :goto_1f

    :cond_2d
    iget v0, v8, Lh5/c;->i:F

    iget v11, v8, Lh5/c;->b:I

    iget-object v12, v2, Lh5/b;->p:[Lo1/b;

    invoke-static {v12, v13, v1, v0, v11}, Lh5/d;->a([Lo1/b;[Lo1/b;Lk5/i;FI)I

    move-result v0

    if-ge v0, v9, :cond_2e

    goto/16 :goto_1f

    :cond_2e
    iget v0, v4, Lh5/a;->a:I

    iget-object v1, v6, Lh5/k;->c:Lk5/i;

    iget-object v11, v6, Lh5/k;->b:Lk5/i;

    if-ne v0, v9, :cond_2f

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v7, Lk5/i;->d:F

    iput v0, v11, Lk5/i;->d:F

    iget v0, v7, Lk5/i;->e:F

    iput v0, v11, Lk5/i;->e:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v10, Lk5/i;->d:F

    iput v0, v1, Lk5/i;->d:F

    iget v0, v10, Lk5/i;->e:F

    iput v0, v1, Lk5/i;->e:F

    goto :goto_1b

    :cond_2f
    iget v0, v8, Lh5/c;->a:I

    aget-object v0, v28, v0

    invoke-virtual {v11, v0}, Lk5/i;->k(Lk5/i;)V

    iget v0, v8, Lh5/c;->a:I

    aget-object v0, v27, v0

    invoke-virtual {v1, v0}, Lk5/i;->k(Lk5/i;)V

    :goto_1b
    move v0, v5

    const/4 v1, 0x2

    :goto_1c
    if-ge v5, v1, :cond_32

    aget-object v1, v12, v5

    iget-object v1, v1, Lo1/b;->c:Ljava/lang/Object;

    check-cast v1, Lk5/i;

    iget v8, v1, Lk5/i;->d:F

    iput v8, v3, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v3, Lk5/i;->e:F

    invoke-virtual {v3, v10}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v7, v3}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    iget v8, v2, Lh5/b;->j:F

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_31

    iget-object v1, v6, Lh5/k;->a:[Lh5/l;

    aget-object v1, v1, v0

    iget v8, v4, Lh5/a;->a:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_30

    aget-object v8, v12, v5

    iget-object v8, v8, Lo1/b;->c:Ljava/lang/Object;

    check-cast v8, Lk5/i;

    iget-object v11, v1, Lh5/l;->a:Lk5/i;

    move-object/from16 v13, v26

    invoke-static {v13, v8, v11}, Lk5/h;->c(Lk5/h;Lk5/i;Lk5/i;)V

    aget-object v8, v12, v5

    iget-object v8, v8, Lo1/b;->d:Ljava/lang/Object;

    check-cast v8, Lh5/e;

    iget-object v1, v1, Lh5/l;->d:Lh5/e;

    invoke-virtual {v1, v8}, Lh5/e;->b(Lh5/e;)V

    goto :goto_1d

    :cond_30
    move-object/from16 v13, v26

    iget-object v8, v1, Lh5/l;->a:Lk5/i;

    aget-object v11, v12, v5

    iget-object v14, v11, Lo1/b;->c:Ljava/lang/Object;

    check-cast v14, Lk5/i;

    iget v15, v14, Lk5/i;->d:F

    iput v15, v8, Lk5/i;->d:F

    iget v14, v14, Lk5/i;->e:F

    iput v14, v8, Lk5/i;->e:F

    iget-object v8, v11, Lo1/b;->d:Ljava/lang/Object;

    check-cast v8, Lh5/e;

    iget-byte v11, v8, Lh5/e;->g:B

    iget-object v1, v1, Lh5/l;->d:Lh5/e;

    iput-byte v11, v1, Lh5/e;->f:B

    iget-byte v11, v8, Lh5/e;->f:B

    iput-byte v11, v1, Lh5/e;->g:B

    iget-byte v11, v8, Lh5/e;->e:B

    iput-byte v11, v1, Lh5/e;->d:B

    iget-byte v8, v8, Lh5/e;->d:B

    iput-byte v8, v1, Lh5/e;->e:B

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_31
    move-object/from16 v13, v26

    const/4 v9, 0x2

    :goto_1e
    add-int/lit8 v5, v5, 0x1

    move v1, v9

    move-object/from16 v26, v13

    goto :goto_1c

    :cond_32
    iput v0, v6, Lh5/k;->e:I

    :goto_1f
    move-object/from16 v0, p0

    goto/16 :goto_20

    :pswitch_2
    move-object/from16 v24, v2

    move/from16 v22, v4

    move-object v6, v5

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    iget-object v1, v0, Lm5/a;->o:Lq5/c;

    iget-object v1, v1, Lq5/c;->m:Lh5/d;

    iget-object v2, v0, Lm5/a;->f:Ll5/c;

    iget-object v2, v2, Ll5/c;->d:Lj5/e;

    check-cast v2, Lj5/b;

    iget-object v3, v0, Lm5/a;->g:Ll5/c;

    iget-object v3, v3, Ll5/c;->d:Lj5/e;

    check-cast v3, Lj5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iput v4, v6, Lh5/k;->e:I

    iget-object v5, v3, Lj5/a;->c:Lk5/i;

    iget-object v7, v1, Lh5/d;->a:Lk5/i;

    invoke-static {v13, v5, v7}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v5, v1, Lh5/d;->m:Lk5/i;

    invoke-static {v12, v7, v5}, Lk5/h;->c(Lk5/h;Lk5/i;Lk5/i;)V

    iget-object v8, v2, Lj5/b;->c:Lk5/i;

    iget-object v9, v2, Lj5/b;->d:Lk5/i;

    iget-object v10, v1, Lh5/d;->n:Lk5/i;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v9, Lk5/i;->d:F

    iput v11, v10, Lk5/i;->d:F

    iget v11, v9, Lk5/i;->e:F

    iput v11, v10, Lk5/i;->e:F

    invoke-virtual {v10, v8}, Lk5/i;->m(Lk5/i;)V

    iget v11, v9, Lk5/i;->d:F

    iput v11, v7, Lk5/i;->d:F

    iget v11, v9, Lk5/i;->e:F

    iput v11, v7, Lk5/i;->e:F

    invoke-virtual {v7, v5}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v10, v7}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v11

    iget v12, v5, Lk5/i;->d:F

    iput v12, v7, Lk5/i;->d:F

    iget v12, v5, Lk5/i;->e:F

    iput v12, v7, Lk5/i;->e:F

    invoke-virtual {v7, v8}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v10, v7}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v12

    iget v2, v2, Lj5/e;->b:F

    iget v13, v3, Lj5/e;->b:F

    add-float/2addr v2, v13

    iget-object v13, v1, Lh5/d;->o:Lh5/e;

    iput-byte v4, v13, Lh5/e;->e:B

    int-to-byte v14, v4

    iput-byte v14, v13, Lh5/e;->g:B

    const/4 v15, 0x0

    cmpg-float v16, v12, v15

    sget-object v15, Lh5/d;->s:Lk5/i;

    iget-object v4, v6, Lh5/k;->a:[Lh5/l;

    iget-object v3, v3, Lj5/a;->c:Lk5/i;

    iget-object v0, v6, Lh5/k;->c:Lk5/i;

    move/from16 v26, v12

    iget-object v12, v6, Lh5/k;->b:Lk5/i;

    if-gtz v16, :cond_34

    iget v1, v5, Lk5/i;->d:F

    iput v1, v15, Lk5/i;->d:F

    iget v1, v5, Lk5/i;->e:F

    iput v1, v15, Lk5/i;->e:F

    invoke-virtual {v15, v8}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v15, v15}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    mul-float/2addr v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_33

    goto/16 :goto_1f

    :cond_33
    const/4 v1, 0x0

    iput-byte v1, v13, Lh5/e;->d:B

    iput-byte v14, v13, Lh5/e;->f:B

    const/4 v1, 0x1

    iput v1, v6, Lh5/k;->e:I

    iput v1, v6, Lh5/k;->d:I

    invoke-virtual {v12}, Lk5/i;->l()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v8, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget v1, v8, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    const/4 v0, 0x0

    aget-object v1, v4, v0

    iget-object v1, v1, Lh5/l;->d:Lh5/e;

    invoke-virtual {v1, v13}, Lh5/e;->b(Lh5/e;)V

    aget-object v0, v4, v0

    iget-object v0, v0, Lh5/l;->a:Lk5/i;

    iget v1, v3, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget v1, v3, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    goto/16 :goto_1f

    :cond_34
    const/16 v16, 0x0

    cmpg-float v27, v11, v16

    if-gtz v27, :cond_36

    iget v1, v5, Lk5/i;->d:F

    iput v1, v15, Lk5/i;->d:F

    iget v1, v5, Lk5/i;->e:F

    iput v1, v15, Lk5/i;->e:F

    invoke-virtual {v15, v9}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v15, v15}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v1

    mul-float/2addr v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_35

    goto/16 :goto_1f

    :cond_35
    const/4 v1, 0x1

    iput-byte v1, v13, Lh5/e;->d:B

    iput-byte v14, v13, Lh5/e;->f:B

    iput v1, v6, Lh5/k;->e:I

    iput v1, v6, Lh5/k;->d:I

    invoke-virtual {v12}, Lk5/i;->l()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v9, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget v1, v9, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    const/4 v0, 0x0

    aget-object v1, v4, v0

    iget-object v1, v1, Lh5/l;->d:Lh5/e;

    invoke-virtual {v1, v13}, Lh5/e;->b(Lh5/e;)V

    aget-object v0, v4, v0

    iget-object v0, v0, Lh5/l;->a:Lk5/i;

    iget v1, v3, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget v1, v3, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    goto/16 :goto_1f

    :cond_36
    invoke-static {v10, v10}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v14

    move-object/from16 v16, v3

    iget-object v3, v1, Lh5/d;->p:Lk5/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v27, v4

    iget v4, v8, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v4, v8, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    invoke-virtual {v3, v11}, Lk5/i;->h(F)V

    iget v4, v9, Lk5/i;->d:F

    iput v4, v7, Lk5/i;->d:F

    iget v4, v9, Lk5/i;->e:F

    iput v4, v7, Lk5/i;->e:F

    move/from16 v4, v26

    invoke-virtual {v7, v4}, Lk5/i;->h(F)V

    invoke-virtual {v3, v7}, Lk5/i;->b(Lk5/i;)V

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v14

    invoke-virtual {v3, v4}, Lk5/i;->h(F)V

    iget v4, v5, Lk5/i;->d:F

    iput v4, v15, Lk5/i;->d:F

    iget v4, v5, Lk5/i;->e:F

    iput v4, v15, Lk5/i;->e:F

    invoke-virtual {v15, v3}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v15, v15}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v3

    mul-float/2addr v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_37

    goto/16 :goto_1f

    :cond_37
    iget v2, v10, Lk5/i;->e:F

    neg-float v2, v2

    iget-object v1, v1, Lh5/d;->q:Lk5/i;

    iput v2, v1, Lk5/i;->d:F

    iget v2, v10, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->e:F

    iget v2, v5, Lk5/i;->d:F

    iput v2, v7, Lk5/i;->d:F

    iget v2, v5, Lk5/i;->e:F

    iput v2, v7, Lk5/i;->e:F

    invoke-virtual {v7, v8}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v1, v7}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_38

    iget v2, v1, Lk5/i;->d:F

    neg-float v2, v2

    iget v3, v1, Lk5/i;->e:F

    neg-float v3, v3

    iput v2, v1, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->e:F

    :cond_38
    invoke-virtual {v1}, Lk5/i;->j()F

    const/4 v2, 0x0

    iput-byte v2, v13, Lh5/e;->d:B

    const/4 v2, 0x1

    int-to-byte v3, v2

    iput-byte v3, v13, Lh5/e;->f:B

    iput v2, v6, Lh5/k;->e:I

    const/4 v2, 0x2

    iput v2, v6, Lh5/k;->d:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lk5/i;->d:F

    iput v2, v12, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v12, Lk5/i;->e:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v8, Lk5/i;->d:F

    iput v1, v0, Lk5/i;->d:F

    iget v1, v8, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    const/4 v0, 0x0

    aget-object v1, v27, v0

    iget-object v1, v1, Lh5/l;->d:Lh5/e;

    invoke-virtual {v1, v13}, Lh5/e;->b(Lh5/e;)V

    aget-object v0, v27, v0

    iget-object v0, v0, Lh5/l;->a:Lk5/i;

    move-object/from16 v1, v16

    iget v2, v1, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    goto/16 :goto_1f

    :pswitch_3
    move-object/from16 v24, v2

    move/from16 v22, v4

    move-object v6, v5

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    iget-object v1, v0, Lm5/a;->o:Lq5/c;

    iget-object v1, v1, Lq5/c;->m:Lh5/d;

    iget-object v2, v0, Lm5/a;->f:Ll5/c;

    iget-object v2, v2, Ll5/c;->d:Lj5/e;

    check-cast v2, Lj5/a;

    iget-object v3, v0, Lm5/a;->g:Ll5/c;

    iget-object v3, v3, Ll5/c;->d:Lj5/e;

    check-cast v3, Lj5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput v1, v6, Lh5/k;->e:I

    iget-object v4, v2, Lj5/a;->c:Lk5/i;

    iget-object v5, v3, Lj5/a;->c:Lk5/i;

    iget-object v7, v12, Lk5/h;->e:Lk5/d;

    iget v8, v7, Lk5/d;->e:F

    iget v9, v4, Lk5/i;->d:F

    mul-float v10, v8, v9

    iget v7, v7, Lk5/d;->d:F

    iget v11, v4, Lk5/i;->e:F

    mul-float v14, v7, v11

    sub-float/2addr v10, v14

    iget-object v12, v12, Lk5/h;->d:Lk5/i;

    iget v14, v12, Lk5/i;->d:F

    add-float/2addr v10, v14

    mul-float/2addr v7, v9

    mul-float/2addr v8, v11

    add-float/2addr v8, v7

    iget v7, v12, Lk5/i;->e:F

    add-float/2addr v8, v7

    iget-object v7, v13, Lk5/h;->e:Lk5/d;

    iget v9, v7, Lk5/d;->e:F

    iget v11, v5, Lk5/i;->d:F

    mul-float v12, v9, v11

    iget v7, v7, Lk5/d;->d:F

    iget v14, v5, Lk5/i;->e:F

    mul-float v15, v7, v14

    sub-float/2addr v12, v15

    iget-object v13, v13, Lk5/h;->d:Lk5/i;

    iget v15, v13, Lk5/i;->d:F

    add-float/2addr v12, v15

    mul-float/2addr v7, v11

    mul-float/2addr v9, v14

    add-float/2addr v9, v7

    iget v7, v13, Lk5/i;->e:F

    add-float/2addr v9, v7

    sub-float/2addr v12, v10

    sub-float/2addr v9, v8

    mul-float/2addr v12, v12

    mul-float/2addr v9, v9

    add-float/2addr v9, v12

    iget v2, v2, Lj5/e;->b:F

    iget v3, v3, Lj5/e;->b:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v2

    cmpl-float v2, v9, v2

    if-lez v2, :cond_39

    goto :goto_20

    :cond_39
    const/4 v2, 0x1

    iput v2, v6, Lh5/k;->d:I

    iget-object v3, v6, Lh5/k;->c:Lk5/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v4, Lk5/i;->d:F

    iput v7, v3, Lk5/i;->d:F

    iget v4, v4, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    iget-object v3, v6, Lh5/k;->b:Lk5/i;

    invoke-virtual {v3}, Lk5/i;->l()V

    iput v2, v6, Lh5/k;->e:I

    iget-object v2, v6, Lh5/k;->a:[Lh5/l;

    aget-object v2, v2, v1

    iget-object v3, v2, Lh5/l;->a:Lk5/i;

    iget v4, v5, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v4, v5, Lk5/i;->e:F

    iput v4, v3, Lk5/i;->e:F

    iget-object v2, v2, Lh5/l;->d:Lh5/e;

    iput-byte v1, v2, Lh5/e;->d:B

    iput-byte v1, v2, Lh5/e;->e:B

    iput-byte v1, v2, Lh5/e;->f:B

    iput-byte v1, v2, Lh5/e;->g:B

    :goto_20
    iget v1, v6, Lh5/k;->e:I

    if-lez v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_21

    :cond_3a
    const/4 v1, 0x0

    :goto_21
    const/4 v2, 0x0

    :goto_22
    iget v3, v6, Lh5/k;->e:I

    if-ge v2, v3, :cond_3d

    aget-object v3, v25, v2

    const/4 v4, 0x0

    iput v4, v3, Lh5/l;->b:F

    iput v4, v3, Lh5/l;->c:F

    move-object/from16 v4, v24

    const/4 v5, 0x0

    :goto_23
    iget v7, v4, Lh5/k;->e:I

    if-ge v5, v7, :cond_3c

    aget-object v7, v23, v5

    iget-object v8, v7, Lh5/l;->d:Lh5/e;

    invoke-virtual {v8}, Lh5/e;->a()I

    move-result v8

    iget-object v9, v3, Lh5/l;->d:Lh5/e;

    invoke-virtual {v9}, Lh5/e;->a()I

    move-result v9

    if-ne v8, v9, :cond_3b

    iget v5, v7, Lh5/l;->b:F

    iput v5, v3, Lh5/l;->b:F

    iget v5, v7, Lh5/l;->c:F

    iput v5, v3, Lh5/l;->c:F

    goto :goto_24

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_3c
    :goto_24
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v4

    goto :goto_22

    :cond_3d
    move/from16 v3, v22

    if-eq v1, v3, :cond_3e

    move-object/from16 v4, v21

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ll5/a;->f(Z)V

    move-object/from16 v4, v20

    invoke-virtual {v4, v2}, Ll5/a;->f(Z)V

    :cond_3e
    if-eqz v1, :cond_3f

    iget v2, v0, Lm5/a;->a:I

    const/4 v4, 0x2

    or-int/2addr v2, v4

    iput v2, v0, Lm5/a;->a:I

    :goto_25
    move-object/from16 v2, p1

    goto :goto_26

    :cond_3f
    iget v2, v0, Lm5/a;->a:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lm5/a;->a:I

    goto :goto_25

    :goto_26
    if-nez v2, :cond_40

    return-void

    :cond_40
    if-nez v3, :cond_41

    const/4 v3, 0x1

    if-ne v1, v3, :cond_41

    invoke-interface {v2, v0}, Lg5/a;->d(Lm5/a;)V

    :cond_41
    return-void

    :pswitch_4
    iget-object v0, v0, Lm5/a;->f:Ll5/c;

    iget-object v0, v0, Ll5/c;->d:Lj5/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_5
    iget-object v0, v0, Lm5/a;->f:Ll5/c;

    iget-object v0, v0, Ll5/c;->d:Lj5/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
