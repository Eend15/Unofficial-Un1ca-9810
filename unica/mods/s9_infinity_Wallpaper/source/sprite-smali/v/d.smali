.class public final Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/d;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lv/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p0, v2, :cond_2

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Ls/d;Lt/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v3, v1, Ls/d;->e0:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput v5, v2, Lt/b;->e:I

    iput v5, v2, Lt/b;->f:I

    iput v5, v2, Lt/b;->g:I

    return-void

    :cond_1
    iget-object v3, v1, Ls/d;->R:Ls/d;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, v2, Lt/b;->a:I

    iget v4, v2, Lt/b;->b:I

    iget v6, v2, Lt/b;->c:I

    iget v7, v2, Lt/b;->d:I

    iget v8, v0, Lv/d;->b:I

    iget v9, v0, Lv/d;->c:I

    add-int/2addr v8, v9

    iget v9, v0, Lv/d;->d:I

    iget-object v10, v1, Ls/d;->d0:Landroid/view/View;

    invoke-static {v3}, Lq/e;->c(I)I

    move-result v11

    iget-object v12, v1, Ls/d;->I:Ls/c;

    iget-object v13, v1, Ls/d;->G:Ls/c;

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/4 v5, 0x2

    if-eqz v11, :cond_d

    if-eq v11, v14, :cond_c

    if-eq v11, v5, :cond_6

    if-eq v11, v15, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    iget v6, v0, Lv/d;->f:I

    if-eqz v13, :cond_4

    iget v11, v13, Ls/c;->g:I

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    :goto_0
    if-eqz v12, :cond_5

    iget v15, v12, Ls/c;->g:I

    add-int/2addr v11, v15

    :cond_5
    add-int/2addr v9, v11

    const/4 v11, -0x1

    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_3

    :cond_6
    iget v6, v0, Lv/d;->f:I

    const/4 v11, -0x2

    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, Ls/d;->q:I

    if-ne v9, v14, :cond_7

    move v9, v14

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    iget v11, v2, Lt/b;->j:I

    if-eq v11, v14, :cond_8

    if-ne v11, v5, :cond_e

    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v15

    if-ne v11, v15, :cond_9

    move v11, v14

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    :goto_2
    iget v15, v2, Lt/b;->j:I

    if-eq v15, v5, :cond_b

    if-eqz v9, :cond_b

    if-eqz v9, :cond_a

    if-nez v11, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ls/d;->v()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v6

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_3

    :cond_c
    const/high16 v11, 0x40000000    # 2.0f

    iget v6, v0, Lv/d;->f:I

    const/4 v15, -0x2

    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_3

    :cond_d
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_e
    :goto_3
    invoke-static {v4}, Lq/e;->c(I)I

    move-result v9

    if-eqz v9, :cond_19

    if-eq v9, v14, :cond_18

    if-eq v9, v5, :cond_12

    const/4 v7, 0x3

    if-eq v9, v7, :cond_f

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_f
    iget v7, v0, Lv/d;->g:I

    if-eqz v13, :cond_10

    iget-object v9, v1, Ls/d;->H:Ls/c;

    iget v9, v9, Ls/c;->g:I

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    :goto_4
    if-eqz v12, :cond_11

    iget-object v11, v1, Ls/d;->J:Ls/c;

    iget v11, v11, Ls/c;->g:I

    add-int/2addr v9, v11

    :cond_11
    add-int/2addr v8, v9

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_7

    :cond_12
    iget v7, v0, Lv/d;->g:I

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v8, v1, Ls/d;->r:I

    if-ne v8, v14, :cond_13

    move v8, v14

    goto :goto_5

    :cond_13
    const/4 v8, 0x0

    :goto_5
    iget v9, v2, Lt/b;->j:I

    if-eq v9, v14, :cond_14

    if-ne v9, v5, :cond_1a

    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v11

    if-ne v9, v11, :cond_15

    move v9, v14

    goto :goto_6

    :cond_15
    const/4 v9, 0x0

    :goto_6
    iget v11, v2, Lt/b;->j:I

    if-eq v11, v5, :cond_17

    if-eqz v8, :cond_17

    if-eqz v8, :cond_16

    if-nez v9, :cond_17

    :cond_16
    invoke-virtual/range {p1 .. p1}, Ls/d;->w()Z

    move-result v8

    if-eqz v8, :cond_1a

    :cond_17
    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_7

    :cond_18
    const/high16 v9, 0x40000000    # 2.0f

    iget v7, v0, Lv/d;->g:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_7

    :cond_19
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_1a
    :goto_7
    iget-object v8, v1, Ls/d;->R:Ls/d;

    check-cast v8, Ls/e;

    iget-object v0, v0, Lv/d;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_1b

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/16 v11, 0x100

    invoke-static {v9, v11}, Ls/g;->c(II)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v11

    if-ne v9, v11, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Ls/d;->l()I

    move-result v11

    if-ge v9, v11, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v11

    if-ne v9, v11, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Ls/d;->i()I

    move-result v8

    if-ge v9, v8, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v9, v1, Ls/d;->Y:I

    if-ne v8, v9, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ls/d;->u()Z

    move-result v8

    if-nez v8, :cond_1b

    iget v8, v1, Ls/d;->E:I

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v9

    invoke-static {v8, v6, v9}, Lv/d;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget v8, v1, Ls/d;->F:I

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v9

    invoke-static {v8, v7, v9}, Lv/d;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v0

    iput v0, v2, Lt/b;->e:I

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v0

    iput v0, v2, Lt/b;->f:I

    iget v0, v1, Ls/d;->Y:I

    iput v0, v2, Lt/b;->g:I

    return-void

    :cond_1b
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1c

    move v9, v14

    goto :goto_8

    :cond_1c
    const/4 v9, 0x0

    :goto_8
    if-ne v4, v8, :cond_1d

    move v8, v14

    goto :goto_9

    :cond_1d
    const/4 v8, 0x0

    :goto_9
    const/4 v11, 0x4

    if-eq v4, v11, :cond_1f

    if-ne v4, v14, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    :goto_a
    move v4, v14

    :goto_b
    if-eq v3, v11, :cond_21

    if-ne v3, v14, :cond_20

    goto :goto_c

    :cond_20
    const/4 v3, 0x0

    goto :goto_d

    :cond_21
    :goto_c
    move v3, v14

    :goto_d
    const/4 v11, 0x0

    if-eqz v9, :cond_22

    iget v12, v1, Ls/d;->U:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_22

    move v12, v14

    goto :goto_e

    :cond_22
    const/4 v12, 0x0

    :goto_e
    if-eqz v8, :cond_23

    iget v13, v1, Ls/d;->U:F

    cmpl-float v11, v13, v11

    if-lez v11, :cond_23

    move v11, v14

    goto :goto_f

    :cond_23
    const/4 v11, 0x0

    :goto_f
    if-nez v10, :cond_24

    return-void

    :cond_24
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lv/c;

    iget v15, v2, Lt/b;->j:I

    if-eq v15, v14, :cond_26

    if-eq v15, v5, :cond_26

    if-eqz v9, :cond_26

    iget v5, v1, Ls/d;->q:I

    if-nez v5, :cond_26

    if-eqz v8, :cond_26

    iget v5, v1, Ls/d;->r:I

    if-eqz v5, :cond_25

    goto :goto_10

    :cond_25
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_16

    :cond_26
    :goto_10
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    iput v6, v1, Ls/d;->E:I

    iput v7, v1, Ls/d;->F:I

    const/4 v5, 0x0

    iput-boolean v5, v1, Ls/d;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v9

    iget v15, v1, Ls/d;->t:I

    if-lez v15, :cond_27

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_11

    :cond_27
    move v15, v5

    :goto_11
    iget v14, v1, Ls/d;->u:I

    if-lez v14, :cond_28

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_28
    iget v14, v1, Ls/d;->w:I

    if-lez v14, :cond_29

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v16, v6

    goto :goto_12

    :cond_29
    move/from16 v16, v6

    move v14, v8

    :goto_12
    iget v6, v1, Ls/d;->x:I

    if-lez v6, :cond_2a

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_2a
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v6, 0x1

    invoke-static {v0, v6}, Ls/g;->c(II)Z

    move-result v0

    if-nez v0, :cond_2c

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v12, :cond_2b

    if-eqz v4, :cond_2b

    iget v3, v1, Ls/d;->U:F

    int-to-float v4, v14

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v15, v0

    goto :goto_13

    :cond_2b
    if-eqz v11, :cond_2c

    if-eqz v3, :cond_2c

    iget v3, v1, Ls/d;->U:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v14, v0

    :cond_2c
    :goto_13
    if-ne v5, v15, :cond_2e

    if-eq v8, v14, :cond_2d

    goto :goto_14

    :cond_2d
    move v4, v9

    const/4 v0, -0x1

    const/4 v5, 0x0

    goto :goto_16

    :cond_2e
    :goto_14
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v15, :cond_2f

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_15

    :cond_2f
    move/from16 v6, v16

    :goto_15
    if-eq v8, v14, :cond_30

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_30
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    iput v6, v1, Ls/d;->E:I

    iput v7, v1, Ls/d;->F:I

    const/4 v5, 0x0

    iput-boolean v5, v1, Ls/d;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v0

    move v14, v3

    const/4 v0, -0x1

    :goto_16
    if-eq v4, v0, :cond_31

    const/4 v0, 0x1

    goto :goto_17

    :cond_31
    move v0, v5

    :goto_17
    iget v3, v2, Lt/b;->c:I

    if-ne v15, v3, :cond_32

    iget v3, v2, Lt/b;->d:I

    if-eq v14, v3, :cond_33

    :cond_32
    const/4 v5, 0x1

    :cond_33
    iput-boolean v5, v2, Lt/b;->i:Z

    iget-boolean v3, v13, Lv/c;->c0:Z

    if-eqz v3, :cond_34

    const/4 v6, 0x1

    goto :goto_18

    :cond_34
    move v6, v0

    :goto_18
    if-eqz v6, :cond_35

    const/4 v0, -0x1

    if-eq v4, v0, :cond_35

    iget v0, v1, Ls/d;->Y:I

    if-eq v0, v4, :cond_35

    const/4 v0, 0x1

    iput-boolean v0, v2, Lt/b;->i:Z

    :cond_35
    iput v15, v2, Lt/b;->e:I

    iput v14, v2, Lt/b;->f:I

    iput-boolean v6, v2, Lt/b;->h:Z

    iput v4, v2, Lt/b;->g:I

    return-void
.end method
