.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public E:Z

.field public F:I

.field public G:[I

.field public H:[Landroid/view/View;

.field public final I:Landroid/util/SparseIntArray;

.field public final J:Landroid/util/SparseIntArray;

.field public final K:Landroidx/recyclerview/widget/a0;

.field public final L:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 13
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 14
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 15
    new-instance v0, Landroidx/recyclerview/widget/a0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/a0;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->g1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/a0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/a0;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 8
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/I;->E(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/H;

    move-result-object p1

    .line 9
    iget p1, p1, Landroidx/recyclerview/widget/H;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->g1(I)V

    return-void
.end method


# virtual methods
.method public final F(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    return p0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->c1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final I0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->g()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    invoke-virtual {p0, v6, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->d1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/J;

    iget-object v6, v6, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v6, v5}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v6, v5}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public final N(Landroid/view/View;ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object/from16 v5, p1

    :goto_0
    move-object v3, v4

    goto :goto_2

    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    iget-object v6, v6, Lw0/m;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/r;

    iget v7, v6, Landroidx/recyclerview/widget/r;->e:I

    iget v6, v6, Landroidx/recyclerview/widget/r;->f:I

    add-int/2addr v6, v7

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->N(Landroid/view/View;ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v4

    :cond_4
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(I)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    move v5, v9

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 v11, -0x1

    if-eq v5, v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v5

    sub-int/2addr v5, v9

    move v10, v11

    move v12, v10

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v5

    move v10, v5

    move v12, v9

    const/4 v5, 0x0

    :goto_4
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne v13, v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result v13

    if-eqz v13, :cond_7

    move v13, v9

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->c1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v14

    move v8, v11

    move v15, v8

    move/from16 v16, v12

    const/4 v9, 0x0

    const/4 v12, 0x0

    move v11, v5

    move-object v5, v4

    :goto_6
    if-eq v11, v10, :cond_8

    move/from16 v17, v10

    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->c1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v10

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_9

    :cond_8
    :goto_7
    move-object/from16 v21, v5

    goto/16 :goto_f

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_c

    if-eq v10, v14, :cond_c

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    :cond_b
    move/from16 v19, v9

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/r;

    iget v2, v10, Landroidx/recyclerview/widget/r;->e:I

    move-object/from16 v18, v3

    iget v3, v10, Landroidx/recyclerview/widget/r;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_d

    if-ne v2, v7, :cond_d

    if-ne v3, v6, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_10

    if-nez v5, :cond_10

    :cond_f
    move-object/from16 v21, v5

    :goto_8
    move/from16 v19, v9

    goto :goto_c

    :cond_10
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v5

    sub-int v5, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_13

    if-le v5, v9, :cond_11

    :goto_9
    goto :goto_8

    :cond_11
    if-ne v5, v9, :cond_b

    if-le v2, v15, :cond_12

    const/4 v5, 0x1

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_a
    if-ne v13, v5, :cond_b

    goto :goto_9

    :cond_13
    if-nez v4, :cond_b

    move/from16 v19, v9

    iget-object v9, v0, Landroidx/recyclerview/widget/I;->c:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/a0;->f(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v0, Landroidx/recyclerview/widget/I;->d:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/a0;->f(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_d

    :cond_14
    if-le v5, v12, :cond_15

    goto :goto_c

    :cond_15
    if-ne v5, v12, :cond_18

    if-le v2, v8, :cond_16

    const/4 v5, 0x1

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    :goto_b
    if-ne v13, v5, :cond_18

    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_17

    iget v4, v10, Landroidx/recyclerview/widget/r;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move v15, v4

    move-object/from16 v5, v21

    move-object v4, v1

    goto :goto_e

    :cond_17
    iget v5, v10, Landroidx/recyclerview/widget/r;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v12, v3, v2

    move v8, v5

    move/from16 v9, v19

    move-object v5, v1

    goto :goto_e

    :cond_18
    :goto_d
    move/from16 v9, v19

    move-object/from16 v5, v21

    :goto_e
    add-int v11, v11, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v10, v17

    move-object/from16 v3, v18

    goto/16 :goto_6

    :goto_f
    if-eqz v4, :cond_19

    goto :goto_10

    :cond_19
    move-object/from16 v4, v21

    :goto_10
    return-object v4
.end method

.method public final O0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/u;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v5}, Landroidx/emoji2/text/f;->j()I

    move-result v5

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h1()V

    :cond_2
    iget v11, v3, Landroidx/recyclerview/widget/v;->e:I

    if-ne v11, v6, :cond_3

    move v11, v6

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-nez v11, :cond_4

    iget v12, v3, Landroidx/recyclerview/widget/v;->d:I

    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->d1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v12

    iget v13, v3, Landroidx/recyclerview/widget/v;->d:I

    invoke-virtual {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->e1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    const/4 v13, 0x0

    :goto_3
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-ge v13, v14, :cond_8

    iget v14, v3, Landroidx/recyclerview/widget/v;->d:I

    if-ltz v14, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v15

    if-ge v14, v15, :cond_8

    if-lez v12, :cond_8

    iget v14, v3, Landroidx/recyclerview/widget/v;->d:I

    invoke-virtual {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->e1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v15

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-gt v15, v8, :cond_7

    sub-int/2addr v12, v15

    if-gez v12, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/M;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aput-object v8, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Item at position "

    const-string v3, " requires "

    const-string v4, " spans but GridLayoutManager has only "

    invoke-static {v14, v2, v15, v3, v4}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    const-string v3, " spans."

    invoke-static {v2, v0, v3}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_4
    if-nez v13, :cond_9

    iput-boolean v6, v4, Landroidx/recyclerview/widget/u;->b:Z

    return-void

    :cond_9
    if-eqz v11, :cond_a

    move v15, v6

    move v14, v13

    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v12, v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-eq v12, v14, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/recyclerview/widget/r;

    invoke-static {v7}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->e1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v7

    iput v7, v8, Landroidx/recyclerview/widget/r;->f:I

    iput v6, v8, Landroidx/recyclerview/widget/r;->e:I

    add-int/2addr v6, v7

    add-int/2addr v12, v15

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v2, v13, :cond_12

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v7, v7, v2

    iget-object v8, v3, Landroidx/recyclerview/widget/v;->k:Ljava/util/List;

    if-nez v8, :cond_d

    if-eqz v11, :cond_c

    const/4 v8, 0x0

    const/4 v12, -0x1

    invoke-virtual {v0, v7, v12, v8}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    const/4 v12, -0x1

    invoke-virtual {v0, v7, v8, v8}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    const/4 v12, -0x1

    if-eqz v11, :cond_e

    const/4 v14, 0x1

    invoke-virtual {v0, v7, v12, v14}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    goto :goto_8

    :cond_e
    const/4 v14, 0x1

    invoke-virtual {v0, v7, v8, v14}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    :goto_8
    iget-object v12, v0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    if-nez v12, :cond_f

    invoke-virtual {v14, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9

    :cond_f
    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9
    invoke-virtual {v0, v7, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->f1(Landroid/view/View;IZ)V

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v7}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v8

    if-le v8, v6, :cond_10

    move v6, v8

    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/r;

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v12, v7}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v7, v12

    iget v8, v8, Landroidx/recyclerview/widget/r;->f:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpl-float v8, v7, v1

    if-lez v8, :cond_11

    move v1, v7

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    if-eqz v9, :cond_14

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v13, :cond_14

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v1, v1, v8

    const/4 v2, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v5, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->f1(Landroid/view/View;IZ)V

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, v6, :cond_13

    move v6, v1

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_14
    const/4 v8, 0x0

    :goto_b
    if-ge v8, v13, :cond_18

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v1, v1, v8

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v2

    if-eq v2, v6, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/r;

    iget-object v5, v2, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v9

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v5

    iget v5, v2, Landroidx/recyclerview/widget/r;->e:I

    iget v10, v2, Landroidx/recyclerview/widget/r;->f:I

    invoke-virtual {v0, v5, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->b1(II)I

    move-result v5

    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11, v9, v2, v10}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result v2

    sub-int v5, v6, v7

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_c

    :cond_15
    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    sub-int v9, v6, v9

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v11, v7, v2, v10}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result v5

    move v2, v9

    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/J;

    invoke-virtual {v0, v1, v2, v5, v7}, Landroidx/recyclerview/widget/I;->r0(Landroid/view/View;IILandroidx/recyclerview/widget/J;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_16
    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    :cond_17
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_18
    const/4 v10, 0x0

    iput v6, v4, Landroidx/recyclerview/widget/u;->a:I

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget v1, v3, Landroidx/recyclerview/widget/v;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    iget v8, v3, Landroidx/recyclerview/widget/v;->b:I

    sub-int v1, v8, v6

    move v2, v10

    move v3, v2

    move/from16 v17, v8

    move v8, v1

    move/from16 v1, v17

    goto :goto_f

    :cond_19
    iget v8, v3, Landroidx/recyclerview/widget/v;->b:I

    add-int v1, v8, v6

    move v2, v10

    move v3, v2

    goto :goto_f

    :cond_1a
    const/4 v2, -0x1

    iget v1, v3, Landroidx/recyclerview/widget/v;->f:I

    if-ne v1, v2, :cond_1b

    iget v8, v3, Landroidx/recyclerview/widget/v;->b:I

    sub-int v1, v8, v6

    move v2, v1

    move v3, v8

    :goto_e
    move v1, v10

    move v8, v1

    goto :goto_f

    :cond_1b
    iget v8, v3, Landroidx/recyclerview/widget/v;->b:I

    add-int v1, v8, v6

    move v3, v1

    move v2, v8

    goto :goto_e

    :goto_f
    move v7, v10

    :goto_10
    if-ge v7, v13, :cond_20

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/r;

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v2

    iget-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    iget v10, v6, Landroidx/recyclerview/widget/r;->e:I

    sub-int/2addr v9, v10

    aget v3, v3, v9

    add-int/2addr v2, v3

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v5}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result v3

    sub-int v3, v2, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_11

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v2

    iget-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v9, v6, Landroidx/recyclerview/widget/r;->e:I

    aget v3, v3, v9

    add-int/2addr v2, v3

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v5}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_11

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v1

    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v9, v6, Landroidx/recyclerview/widget/r;->e:I

    aget v8, v8, v9

    add-int/2addr v1, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v5}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v1

    move/from16 v17, v8

    move v8, v1

    move/from16 v1, v17

    :goto_11
    invoke-static {v5, v2, v8, v3, v1}, Landroidx/recyclerview/widget/I;->J(Landroid/view/View;IIII)V

    iget-object v9, v6, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v9

    if-nez v9, :cond_1e

    iget-object v6, v6, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/U;->l()Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    const/4 v6, 0x1

    goto :goto_12

    :cond_1f
    const/4 v6, 0x1

    goto :goto_13

    :goto_12
    iput-boolean v6, v4, Landroidx/recyclerview/widget/u;->c:Z

    :goto_13
    iget-boolean v9, v4, Landroidx/recyclerview/widget/u;->d:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v9

    iput-boolean v5, v4, Landroidx/recyclerview/widget/u;->d:Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_10

    :cond_20
    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final P0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/t;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h1()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/t;->b:I

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->d1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Landroidx/recyclerview/widget/t;->b:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Landroidx/recyclerview/widget/t;->b:I

    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->d1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroidx/recyclerview/widget/t;->b:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->d1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/t;->b:I

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->a1()V

    return-void
.end method

.method public final Q(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroid/view/View;LL/d;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/r;

    if-nez v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/I;->P(Landroid/view/View;LL/d;)V

    return-void

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/r;

    iget-object p3, v0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/U;->b()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->c1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p0, :cond_1

    iget p0, v0, Landroidx/recyclerview/widget/r;->e:I

    iget v0, v0, Landroidx/recyclerview/widget/r;->f:I

    invoke-static {p0, v0, p1, p2, p3}, LA1/e;->S(IIIIZ)LA1/e;

    move-result-object p0

    invoke-virtual {p4, p0}, LL/d;->g(LA1/e;)V

    goto :goto_0

    :cond_1
    iget p0, v0, Landroidx/recyclerview/widget/r;->e:I

    iget v0, v0, Landroidx/recyclerview/widget/r;->f:I

    invoke-static {p1, p2, p0, v0, p3}, LA1/e;->S(IIIIZ)LA1/e;

    move-result-object p0

    invoke-virtual {p4, p0}, LL/d;->g(LA1/e;)V

    :goto_0
    return-void
.end method

.method public final R(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a0;->e()V

    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final S()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a0;->e()V

    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final T(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a0;->e()V

    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final U(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a0;->e()V

    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final V(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a0;->e()V

    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final V0(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final W(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)V
    .locals 7

    iget-boolean v0, p2, Landroidx/recyclerview/widget/S;->g:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/r;

    iget-object v5, v4, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/U;->b()I

    move-result v5

    iget v6, v4, Landroidx/recyclerview/widget/r;->f:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v4, Landroidx/recyclerview/widget/r;->e:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->W(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final X(Landroidx/recyclerview/widget/S;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->X(Landroidx/recyclerview/widget/S;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    return-void
.end method

.method public final Z0(I)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    move v5, v3

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    return-void
.end method

.method public final a1()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method public final b1(II)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    sub-int v1, p0, p1

    aget v1, v0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    add-int/2addr p2, p1

    aget p2, p0, p2

    aget p0, p0, p1

    sub-int/2addr p2, p0

    return p2
.end method

.method public final c1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 1

    iget-boolean p3, p3, Landroidx/recyclerview/widget/S;->g:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/a0;->d(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/M;->b(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Landroidx/recyclerview/widget/a0;->d(II)I

    move-result p0

    return p0
.end method

.method public final d1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 2

    iget-boolean p3, p3, Landroidx/recyclerview/widget/S;->g:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/2addr p1, p0

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/M;->b(I)I

    move-result p2

    if-ne p2, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/2addr p2, p0

    return p2
.end method

.method public final e1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 2

    iget-boolean p3, p3, Landroidx/recyclerview/widget/S;->g:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, p3, :cond_1

    return p0

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/M;->b(I)I

    move-result p0

    if-ne p0, p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final f(Landroidx/recyclerview/widget/J;)Z
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/r;

    return p0
.end method

.method public final f1(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/r;

    iget-object v1, v0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/r;->e:I

    iget v4, v0, Landroidx/recyclerview/widget/r;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->b1(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->l()I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/I;->m:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->l()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/I;->l:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/J;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/I;->r0(Landroid/view/View;IILandroidx/recyclerview/widget/J;)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/I;->p0(Landroid/view/View;IILandroidx/recyclerview/widget/J;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final g1(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/a0;->e()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Span count should be at least 1. Provided "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->a1()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->h0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final h1()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->Z0(I)V

    return-void
.end method

.method public final j0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->a1()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->j0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final k(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final l(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final m0(IILandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/I;->m0(IILandroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p2

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p1, p3, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p1, p3, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p2

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final o(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final r()Landroidx/recyclerview/widget/J;
    .locals 2

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-nez p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/r;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/r;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/r;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/r;-><init>(II)V

    return-object p0
.end method

.method public final s(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/J;
    .locals 0

    new-instance p0, Landroidx/recyclerview/widget/r;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/J;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/r;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/r;->f:I

    return-object p0
.end method

.method public final t(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/J;
    .locals 2

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/r;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/J;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v1, p0, Landroidx/recyclerview/widget/r;->e:I

    iput v0, p0, Landroidx/recyclerview/widget/r;->f:I

    return-object p0

    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/r;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/J;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p0, Landroidx/recyclerview/widget/r;->e:I

    iput v0, p0, Landroidx/recyclerview/widget/r;->f:I

    return-object p0
.end method

.method public final u0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w0(Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/o;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-ge v2, v3, :cond_0

    iget v3, p2, Landroidx/recyclerview/widget/v;->d:I

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/S;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, Landroidx/recyclerview/widget/v;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/v;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroidx/recyclerview/widget/o;->a(II)V

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    iget v3, p2, Landroidx/recyclerview/widget/v;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/v;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/v;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    return p0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->c1(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
