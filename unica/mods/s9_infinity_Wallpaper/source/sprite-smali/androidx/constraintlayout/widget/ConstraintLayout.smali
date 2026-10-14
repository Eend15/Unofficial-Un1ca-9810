.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final d:Landroid/util/SparseArray;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ls/e;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:Lv/l;

.field public n:I

.field public o:Ljava/util/HashMap;

.field public final p:Landroid/util/SparseArray;

.field public final q:Lv/d;

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ls/e;

    invoke-direct {p1}, Ls/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ls/e;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Lv/d;

    invoke-direct {v0, p0, p0}, Lv/d;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Lv/d;

    .line 16
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 18
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Ls/e;

    invoke-direct {p1}, Ls/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ls/e;

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const v0, 0x7fffffff

    .line 25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    const/16 v0, 0x101

    .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Lv/d;

    invoke-direct {v0, p0, p0}, Lv/d;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Lv/d;

    .line 34
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 35
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 36
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static g()Lv/c;
    .locals 8

    new-instance v0, Lv/c;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, -0x1

    iput v1, v0, Lv/c;->a:I

    iput v1, v0, Lv/c;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lv/c;->c:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lv/c;->d:Z

    iput v1, v0, Lv/c;->e:I

    iput v1, v0, Lv/c;->f:I

    iput v1, v0, Lv/c;->g:I

    iput v1, v0, Lv/c;->h:I

    iput v1, v0, Lv/c;->i:I

    iput v1, v0, Lv/c;->j:I

    iput v1, v0, Lv/c;->k:I

    iput v1, v0, Lv/c;->l:I

    iput v1, v0, Lv/c;->m:I

    iput v1, v0, Lv/c;->n:I

    iput v1, v0, Lv/c;->o:I

    iput v1, v0, Lv/c;->p:I

    const/4 v4, 0x0

    iput v4, v0, Lv/c;->q:I

    const/4 v5, 0x0

    iput v5, v0, Lv/c;->r:F

    iput v1, v0, Lv/c;->s:I

    iput v1, v0, Lv/c;->t:I

    iput v1, v0, Lv/c;->u:I

    iput v1, v0, Lv/c;->v:I

    const/high16 v5, -0x80000000

    iput v5, v0, Lv/c;->w:I

    iput v5, v0, Lv/c;->x:I

    iput v5, v0, Lv/c;->y:I

    iput v5, v0, Lv/c;->z:I

    iput v5, v0, Lv/c;->A:I

    iput v5, v0, Lv/c;->B:I

    iput v5, v0, Lv/c;->C:I

    iput v4, v0, Lv/c;->D:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Lv/c;->E:F

    iput v6, v0, Lv/c;->F:F

    const/4 v7, 0x0

    iput-object v7, v0, Lv/c;->G:Ljava/lang/String;

    iput v2, v0, Lv/c;->H:F

    iput v2, v0, Lv/c;->I:F

    iput v4, v0, Lv/c;->J:I

    iput v4, v0, Lv/c;->K:I

    iput v4, v0, Lv/c;->L:I

    iput v4, v0, Lv/c;->M:I

    iput v4, v0, Lv/c;->N:I

    iput v4, v0, Lv/c;->O:I

    iput v4, v0, Lv/c;->P:I

    iput v4, v0, Lv/c;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lv/c;->R:F

    iput v2, v0, Lv/c;->S:F

    iput v1, v0, Lv/c;->T:I

    iput v1, v0, Lv/c;->U:I

    iput v1, v0, Lv/c;->V:I

    iput-boolean v4, v0, Lv/c;->W:Z

    iput-boolean v4, v0, Lv/c;->X:Z

    iput-object v7, v0, Lv/c;->Y:Ljava/lang/String;

    iput v4, v0, Lv/c;->Z:I

    iput-boolean v3, v0, Lv/c;->a0:Z

    iput-boolean v3, v0, Lv/c;->b0:Z

    iput-boolean v4, v0, Lv/c;->c0:Z

    iput-boolean v4, v0, Lv/c;->d0:Z

    iput-boolean v4, v0, Lv/c;->e0:Z

    iput v1, v0, Lv/c;->f0:I

    iput v1, v0, Lv/c;->g0:I

    iput v1, v0, Lv/c;->h0:I

    iput v1, v0, Lv/c;->i0:I

    iput v5, v0, Lv/c;->j0:I

    iput v5, v0, Lv/c;->k0:I

    iput v6, v0, Lv/c;->l0:F

    new-instance v1, Ls/d;

    invoke-direct {v1}, Ls/d;-><init>()V

    iput-object v1, v0, Lv/c;->p0:Ls/d;

    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lv/c;

    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lv/c;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 11

    .line 1
    new-instance v0, Lv/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Lv/c;->a:I

    .line 4
    iput v1, v0, Lv/c;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    iput v2, v0, Lv/c;->c:F

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, v0, Lv/c;->d:Z

    .line 7
    iput v1, v0, Lv/c;->e:I

    .line 8
    iput v1, v0, Lv/c;->f:I

    .line 9
    iput v1, v0, Lv/c;->g:I

    .line 10
    iput v1, v0, Lv/c;->h:I

    .line 11
    iput v1, v0, Lv/c;->i:I

    .line 12
    iput v1, v0, Lv/c;->j:I

    .line 13
    iput v1, v0, Lv/c;->k:I

    .line 14
    iput v1, v0, Lv/c;->l:I

    .line 15
    iput v1, v0, Lv/c;->m:I

    .line 16
    iput v1, v0, Lv/c;->n:I

    .line 17
    iput v1, v0, Lv/c;->o:I

    .line 18
    iput v1, v0, Lv/c;->p:I

    const/4 v4, 0x0

    .line 19
    iput v4, v0, Lv/c;->q:I

    const/4 v5, 0x0

    .line 20
    iput v5, v0, Lv/c;->r:F

    .line 21
    iput v1, v0, Lv/c;->s:I

    .line 22
    iput v1, v0, Lv/c;->t:I

    .line 23
    iput v1, v0, Lv/c;->u:I

    .line 24
    iput v1, v0, Lv/c;->v:I

    const/high16 v6, -0x80000000

    .line 25
    iput v6, v0, Lv/c;->w:I

    .line 26
    iput v6, v0, Lv/c;->x:I

    .line 27
    iput v6, v0, Lv/c;->y:I

    .line 28
    iput v6, v0, Lv/c;->z:I

    .line 29
    iput v6, v0, Lv/c;->A:I

    .line 30
    iput v6, v0, Lv/c;->B:I

    .line 31
    iput v6, v0, Lv/c;->C:I

    .line 32
    iput v4, v0, Lv/c;->D:I

    const/high16 v7, 0x3f000000    # 0.5f

    .line 33
    iput v7, v0, Lv/c;->E:F

    .line 34
    iput v7, v0, Lv/c;->F:F

    const/4 v8, 0x0

    .line 35
    iput-object v8, v0, Lv/c;->G:Ljava/lang/String;

    .line 36
    iput v2, v0, Lv/c;->H:F

    .line 37
    iput v2, v0, Lv/c;->I:F

    .line 38
    iput v4, v0, Lv/c;->J:I

    .line 39
    iput v4, v0, Lv/c;->K:I

    .line 40
    iput v4, v0, Lv/c;->L:I

    .line 41
    iput v4, v0, Lv/c;->M:I

    .line 42
    iput v4, v0, Lv/c;->N:I

    .line 43
    iput v4, v0, Lv/c;->O:I

    .line 44
    iput v4, v0, Lv/c;->P:I

    .line 45
    iput v4, v0, Lv/c;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    iput v2, v0, Lv/c;->R:F

    .line 47
    iput v2, v0, Lv/c;->S:F

    .line 48
    iput v1, v0, Lv/c;->T:I

    .line 49
    iput v1, v0, Lv/c;->U:I

    .line 50
    iput v1, v0, Lv/c;->V:I

    .line 51
    iput-boolean v4, v0, Lv/c;->W:Z

    .line 52
    iput-boolean v4, v0, Lv/c;->X:Z

    .line 53
    iput-object v8, v0, Lv/c;->Y:Ljava/lang/String;

    .line 54
    iput v4, v0, Lv/c;->Z:I

    .line 55
    iput-boolean v3, v0, Lv/c;->a0:Z

    .line 56
    iput-boolean v3, v0, Lv/c;->b0:Z

    .line 57
    iput-boolean v4, v0, Lv/c;->c0:Z

    .line 58
    iput-boolean v4, v0, Lv/c;->d0:Z

    .line 59
    iput-boolean v4, v0, Lv/c;->e0:Z

    .line 60
    iput v1, v0, Lv/c;->f0:I

    .line 61
    iput v1, v0, Lv/c;->g0:I

    .line 62
    iput v1, v0, Lv/c;->h0:I

    .line 63
    iput v1, v0, Lv/c;->i0:I

    .line 64
    iput v6, v0, Lv/c;->j0:I

    .line 65
    iput v6, v0, Lv/c;->k0:I

    .line 66
    iput v7, v0, Lv/c;->l0:F

    .line 67
    new-instance v2, Ls/d;

    invoke-direct {v2}, Ls/d;-><init>()V

    iput-object v2, v0, Lv/c;->p0:Ls/d;

    .line 68
    sget-object v2, Lv/n;->ConstraintLayout_Layout:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    move v2, v4

    :goto_0
    if-ge v2, p1, :cond_1

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 71
    sget-object v7, Lv/b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 72
    const-string v8, "ConstraintLayout"

    const/4 v9, 0x2

    const/4 v10, -0x2

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    goto/16 :goto_1

    .line 73
    :pswitch_0
    iget-boolean v7, v0, Lv/c;->d:Z

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lv/c;->d:Z

    goto/16 :goto_1

    .line 74
    :pswitch_1
    iget v7, v0, Lv/c;->Z:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->Z:I

    goto/16 :goto_1

    .line 75
    :pswitch_2
    invoke-static {v0, p0, v6, v3}, Lv/l;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 76
    :pswitch_3
    invoke-static {v0, p0, v6, v4}, Lv/l;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 77
    :pswitch_4
    iget v7, v0, Lv/c;->C:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->C:I

    goto/16 :goto_1

    .line 78
    :pswitch_5
    iget v7, v0, Lv/c;->D:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->D:I

    goto/16 :goto_1

    .line 79
    :pswitch_6
    iget v7, v0, Lv/c;->o:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->o:I

    if-ne v7, v1, :cond_0

    .line 80
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->o:I

    goto/16 :goto_1

    .line 81
    :pswitch_7
    iget v7, v0, Lv/c;->n:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->n:I

    if-ne v7, v1, :cond_0

    .line 82
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->n:I

    goto/16 :goto_1

    .line 83
    :pswitch_8
    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lv/c;->Y:Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    :pswitch_9
    iget v7, v0, Lv/c;->U:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lv/c;->U:I

    goto/16 :goto_1

    .line 85
    :pswitch_a
    iget v7, v0, Lv/c;->T:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lv/c;->T:I

    goto/16 :goto_1

    .line 86
    :pswitch_b
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->K:I

    goto/16 :goto_1

    .line 87
    :pswitch_c
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->J:I

    goto/16 :goto_1

    .line 88
    :pswitch_d
    iget v7, v0, Lv/c;->I:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lv/c;->I:F

    goto/16 :goto_1

    .line 89
    :pswitch_e
    iget v7, v0, Lv/c;->H:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lv/c;->H:F

    goto/16 :goto_1

    .line 90
    :pswitch_f
    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lv/l;->h(Lv/c;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_10
    iget v7, v0, Lv/c;->S:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lv/c;->S:F

    .line 92
    iput v9, v0, Lv/c;->M:I

    goto/16 :goto_1

    .line 93
    :pswitch_11
    :try_start_0
    iget v7, v0, Lv/c;->Q:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lv/c;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 94
    :catch_0
    iget v7, v0, Lv/c;->Q:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 95
    iput v10, v0, Lv/c;->Q:I

    goto/16 :goto_1

    .line 96
    :pswitch_12
    :try_start_1
    iget v7, v0, Lv/c;->O:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lv/c;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 97
    :catch_1
    iget v7, v0, Lv/c;->O:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 98
    iput v10, v0, Lv/c;->O:I

    goto/16 :goto_1

    .line 99
    :pswitch_13
    iget v7, v0, Lv/c;->R:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lv/c;->R:F

    .line 100
    iput v9, v0, Lv/c;->L:I

    goto/16 :goto_1

    .line 101
    :pswitch_14
    :try_start_2
    iget v7, v0, Lv/c;->P:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lv/c;->P:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 102
    :catch_2
    iget v7, v0, Lv/c;->P:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 103
    iput v10, v0, Lv/c;->P:I

    goto/16 :goto_1

    .line 104
    :pswitch_15
    :try_start_3
    iget v7, v0, Lv/c;->N:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lv/c;->N:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 105
    :catch_3
    iget v7, v0, Lv/c;->N:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 106
    iput v10, v0, Lv/c;->N:I

    goto/16 :goto_1

    .line 107
    :pswitch_16
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->M:I

    if-ne v6, v3, :cond_0

    .line 108
    const-string v6, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 109
    :pswitch_17
    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->L:I

    if-ne v6, v3, :cond_0

    .line 110
    const-string v6, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    :pswitch_18
    iget v7, v0, Lv/c;->F:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lv/c;->F:F

    goto/16 :goto_1

    .line 112
    :pswitch_19
    iget v7, v0, Lv/c;->E:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lv/c;->E:F

    goto/16 :goto_1

    .line 113
    :pswitch_1a
    iget-boolean v7, v0, Lv/c;->X:Z

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lv/c;->X:Z

    goto/16 :goto_1

    .line 114
    :pswitch_1b
    iget-boolean v7, v0, Lv/c;->W:Z

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lv/c;->W:Z

    goto/16 :goto_1

    .line 115
    :pswitch_1c
    iget v7, v0, Lv/c;->B:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->B:I

    goto/16 :goto_1

    .line 116
    :pswitch_1d
    iget v7, v0, Lv/c;->A:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->A:I

    goto/16 :goto_1

    .line 117
    :pswitch_1e
    iget v7, v0, Lv/c;->z:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->z:I

    goto/16 :goto_1

    .line 118
    :pswitch_1f
    iget v7, v0, Lv/c;->y:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->y:I

    goto/16 :goto_1

    .line 119
    :pswitch_20
    iget v7, v0, Lv/c;->x:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->x:I

    goto/16 :goto_1

    .line 120
    :pswitch_21
    iget v7, v0, Lv/c;->w:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->w:I

    goto/16 :goto_1

    .line 121
    :pswitch_22
    iget v7, v0, Lv/c;->v:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->v:I

    if-ne v7, v1, :cond_0

    .line 122
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->v:I

    goto/16 :goto_1

    .line 123
    :pswitch_23
    iget v7, v0, Lv/c;->u:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->u:I

    if-ne v7, v1, :cond_0

    .line 124
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->u:I

    goto/16 :goto_1

    .line 125
    :pswitch_24
    iget v7, v0, Lv/c;->t:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->t:I

    if-ne v7, v1, :cond_0

    .line 126
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->t:I

    goto/16 :goto_1

    .line 127
    :pswitch_25
    iget v7, v0, Lv/c;->s:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->s:I

    if-ne v7, v1, :cond_0

    .line 128
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->s:I

    goto/16 :goto_1

    .line 129
    :pswitch_26
    iget v7, v0, Lv/c;->m:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->m:I

    if-ne v7, v1, :cond_0

    .line 130
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->m:I

    goto/16 :goto_1

    .line 131
    :pswitch_27
    iget v7, v0, Lv/c;->l:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->l:I

    if-ne v7, v1, :cond_0

    .line 132
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->l:I

    goto/16 :goto_1

    .line 133
    :pswitch_28
    iget v7, v0, Lv/c;->k:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->k:I

    if-ne v7, v1, :cond_0

    .line 134
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->k:I

    goto/16 :goto_1

    .line 135
    :pswitch_29
    iget v7, v0, Lv/c;->j:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->j:I

    if-ne v7, v1, :cond_0

    .line 136
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->j:I

    goto/16 :goto_1

    .line 137
    :pswitch_2a
    iget v7, v0, Lv/c;->i:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->i:I

    if-ne v7, v1, :cond_0

    .line 138
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->i:I

    goto/16 :goto_1

    .line 139
    :pswitch_2b
    iget v7, v0, Lv/c;->h:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->h:I

    if-ne v7, v1, :cond_0

    .line 140
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->h:I

    goto/16 :goto_1

    .line 141
    :pswitch_2c
    iget v7, v0, Lv/c;->g:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->g:I

    if-ne v7, v1, :cond_0

    .line 142
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->g:I

    goto/16 :goto_1

    .line 143
    :pswitch_2d
    iget v7, v0, Lv/c;->f:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->f:I

    if-ne v7, v1, :cond_0

    .line 144
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->f:I

    goto :goto_1

    .line 145
    :pswitch_2e
    iget v7, v0, Lv/c;->e:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->e:I

    if-ne v7, v1, :cond_0

    .line 146
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->e:I

    goto :goto_1

    .line 147
    :pswitch_2f
    iget v7, v0, Lv/c;->c:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v0, Lv/c;->c:F

    goto :goto_1

    .line 148
    :pswitch_30
    iget v7, v0, Lv/c;->b:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lv/c;->b:I

    goto :goto_1

    .line 149
    :pswitch_31
    iget v7, v0, Lv/c;->a:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lv/c;->a:I

    goto :goto_1

    .line 150
    :pswitch_32
    iget v7, v0, Lv/c;->r:F

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v6, v7

    iput v6, v0, Lv/c;->r:F

    cmpg-float v8, v6, v5

    if-gez v8, :cond_0

    sub-float v6, v7, v6

    rem-float/2addr v6, v7

    .line 151
    iput v6, v0, Lv/c;->r:F

    goto :goto_1

    .line 152
    :pswitch_33
    iget v7, v0, Lv/c;->q:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lv/c;->q:I

    goto :goto_1

    .line 153
    :pswitch_34
    iget v7, v0, Lv/c;->p:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lv/c;->p:I

    if-ne v7, v1, :cond_0

    .line 154
    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->p:I

    goto :goto_1

    .line 155
    :pswitch_35
    iget v7, v0, Lv/c;->V:I

    invoke-virtual {p0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv/c;->V:I

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {v0}, Lv/c;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .line 158
    new-instance p0, Lv/c;

    .line 159
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 160
    iput p1, p0, Lv/c;->a:I

    .line 161
    iput p1, p0, Lv/c;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 162
    iput v0, p0, Lv/c;->c:F

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lv/c;->d:Z

    .line 164
    iput p1, p0, Lv/c;->e:I

    .line 165
    iput p1, p0, Lv/c;->f:I

    .line 166
    iput p1, p0, Lv/c;->g:I

    .line 167
    iput p1, p0, Lv/c;->h:I

    .line 168
    iput p1, p0, Lv/c;->i:I

    .line 169
    iput p1, p0, Lv/c;->j:I

    .line 170
    iput p1, p0, Lv/c;->k:I

    .line 171
    iput p1, p0, Lv/c;->l:I

    .line 172
    iput p1, p0, Lv/c;->m:I

    .line 173
    iput p1, p0, Lv/c;->n:I

    .line 174
    iput p1, p0, Lv/c;->o:I

    .line 175
    iput p1, p0, Lv/c;->p:I

    const/4 v2, 0x0

    .line 176
    iput v2, p0, Lv/c;->q:I

    const/4 v3, 0x0

    .line 177
    iput v3, p0, Lv/c;->r:F

    .line 178
    iput p1, p0, Lv/c;->s:I

    .line 179
    iput p1, p0, Lv/c;->t:I

    .line 180
    iput p1, p0, Lv/c;->u:I

    .line 181
    iput p1, p0, Lv/c;->v:I

    const/high16 v3, -0x80000000

    .line 182
    iput v3, p0, Lv/c;->w:I

    .line 183
    iput v3, p0, Lv/c;->x:I

    .line 184
    iput v3, p0, Lv/c;->y:I

    .line 185
    iput v3, p0, Lv/c;->z:I

    .line 186
    iput v3, p0, Lv/c;->A:I

    .line 187
    iput v3, p0, Lv/c;->B:I

    .line 188
    iput v3, p0, Lv/c;->C:I

    .line 189
    iput v2, p0, Lv/c;->D:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 190
    iput v4, p0, Lv/c;->E:F

    .line 191
    iput v4, p0, Lv/c;->F:F

    const/4 v5, 0x0

    .line 192
    iput-object v5, p0, Lv/c;->G:Ljava/lang/String;

    .line 193
    iput v0, p0, Lv/c;->H:F

    .line 194
    iput v0, p0, Lv/c;->I:F

    .line 195
    iput v2, p0, Lv/c;->J:I

    .line 196
    iput v2, p0, Lv/c;->K:I

    .line 197
    iput v2, p0, Lv/c;->L:I

    .line 198
    iput v2, p0, Lv/c;->M:I

    .line 199
    iput v2, p0, Lv/c;->N:I

    .line 200
    iput v2, p0, Lv/c;->O:I

    .line 201
    iput v2, p0, Lv/c;->P:I

    .line 202
    iput v2, p0, Lv/c;->Q:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    iput v0, p0, Lv/c;->R:F

    .line 204
    iput v0, p0, Lv/c;->S:F

    .line 205
    iput p1, p0, Lv/c;->T:I

    .line 206
    iput p1, p0, Lv/c;->U:I

    .line 207
    iput p1, p0, Lv/c;->V:I

    .line 208
    iput-boolean v2, p0, Lv/c;->W:Z

    .line 209
    iput-boolean v2, p0, Lv/c;->X:Z

    .line 210
    iput-object v5, p0, Lv/c;->Y:Ljava/lang/String;

    .line 211
    iput v2, p0, Lv/c;->Z:I

    .line 212
    iput-boolean v1, p0, Lv/c;->a0:Z

    .line 213
    iput-boolean v1, p0, Lv/c;->b0:Z

    .line 214
    iput-boolean v2, p0, Lv/c;->c0:Z

    .line 215
    iput-boolean v2, p0, Lv/c;->d0:Z

    .line 216
    iput-boolean v2, p0, Lv/c;->e0:Z

    .line 217
    iput p1, p0, Lv/c;->f0:I

    .line 218
    iput p1, p0, Lv/c;->g0:I

    .line 219
    iput p1, p0, Lv/c;->h0:I

    .line 220
    iput p1, p0, Lv/c;->i0:I

    .line 221
    iput v3, p0, Lv/c;->j0:I

    .line 222
    iput v3, p0, Lv/c;->k0:I

    .line 223
    iput v4, p0, Lv/c;->l0:F

    .line 224
    new-instance p1, Ls/d;

    invoke-direct {p1}, Ls/d;-><init>()V

    iput-object p1, p0, Lv/c;->p0:Ls/d;

    return-object p0
.end method

.method public final h(Landroid/view/View;)Ls/d;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ls/e;

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lv/c;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lv/c;

    iget-object p0, p0, Lv/c;->p0:Ls/d;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Lv/c;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lv/c;

    iget-object p0, p0, Lv/c;->p0:Ls/d;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ls/e;

    iput-object p0, v0, Ls/d;->d0:Landroid/view/View;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Lv/d;

    iput-object v1, v0, Ls/e;->s0:Lv/d;

    iget-object v2, v0, Ls/e;->q0:Lt/e;

    iput-object v1, v2, Lt/e;->f:Lv/d;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lv/n;->ConstraintLayout_Layout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v4

    :goto_0
    if-ge v2, p2, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v5, Lv/n;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_0
    sget v5, Lv/n;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v3, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    :cond_1
    sget v5, Lv/n;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v3, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_2
    sget v5, Lv/n;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v3, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    :cond_3
    sget v5, Lv/n;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v3, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    goto :goto_2

    :cond_4
    sget v5, Lv/n;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_5
    sget v5, Lv/n;->ConstraintLayout_Layout_constraintSet:I

    if-ne v3, v5, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :try_start_1
    new-instance v5, Lv/l;

    invoke-direct {v5}, Lv/l;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lv/l;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    :catch_1
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    iput p0, v0, Ls/e;->B0:I

    const/16 p0, 0x200

    invoke-virtual {v0, p0}, Ls/e;->N(I)Z

    move-result p0

    sput-boolean p0, Lq/c;->p:Z

    return-void
.end method

.method public final j(I)V
    .locals 8

    new-instance v0, Lw0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lw0/c;-><init>(I)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lw0/c;->e:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lw0/c;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    if-eqz v1, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "Variant"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v7

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :sswitch_1
    const-string v3, "layoutDescription"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v5, "StateSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v3, "State"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    goto :goto_2

    :sswitch_4
    const-string v3, "ConstraintSet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eq v3, v4, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, p0, p1}, Lw0/c;->F(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    :cond_3
    new-instance v1, Lv/e;

    invoke-direct {v1, p0, p1}, Lv/e;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v2, :cond_6

    iget-object v3, v2, Li5/b;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v2, Li5/b;

    invoke-direct {v2, p0, p1}, Li5/b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v1, v0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    iget v3, v2, Li5/b;->a:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_7
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final k(Ls/e;III)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v13, v11

    if-lez v13, :cond_0

    move v12, v13

    :cond_0
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Lv/d;

    iput v7, v11, Lv/d;->b:I

    iput v9, v11, Lv/d;->c:I

    iput v12, v11, Lv/d;->d:I

    iput v10, v11, Lv/d;->e:I

    move/from16 v9, p3

    iput v9, v11, Lv/d;->f:I

    move/from16 v9, p4

    iput v9, v11, Lv/d;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    if-gtz v9, :cond_2

    if-lez v13, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x400000

    and-int v15, v15, v16

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v14, v15, :cond_3

    move v9, v13

    :cond_3
    :goto_1
    sub-int/2addr v4, v12

    sub-int/2addr v6, v10

    iget v10, v11, Lv/d;->e:I

    iget v11, v11, Lv/d;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v3, v13, :cond_7

    if-eqz v3, :cond_5

    if-eq v3, v15, :cond_4

    move/from16 v17, v8

    goto :goto_4

    :cond_4
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v14, v11

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move/from16 v17, v14

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    if-nez v12, :cond_6

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    move/from16 v17, v14

    :goto_3
    const/4 v14, 0x2

    goto :goto_4

    :cond_6
    move/from16 v17, v8

    goto :goto_3

    :cond_7
    if-nez v12, :cond_8

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    :cond_8
    move/from16 v17, v4

    goto :goto_3

    :goto_4
    if-eq v5, v13, :cond_c

    if-eqz v5, :cond_a

    if-eq v5, v15, :cond_9

    move v13, v8

    :goto_5
    const/4 v12, 0x1

    goto :goto_8

    :cond_9
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    sub-int/2addr v12, v10

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v12

    goto :goto_5

    :cond_a
    if-nez v12, :cond_b

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_6
    move v13, v12

    :goto_7
    const/4 v12, 0x2

    goto :goto_8

    :cond_b
    move v13, v8

    goto :goto_7

    :cond_c
    if-nez v12, :cond_d

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_6

    :cond_d
    move v13, v6

    goto :goto_7

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v15

    iget-object v8, v1, Ls/e;->q0:Lt/e;

    move/from16 v19, v6

    move/from16 v6, v17

    if-ne v6, v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v15

    if-eq v13, v15, :cond_f

    :cond_e
    const/4 v15, 0x1

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v15, 0x0

    goto :goto_b

    :goto_a
    iput-boolean v15, v8, Lt/e;->c:Z

    goto :goto_9

    :goto_b
    iput v15, v1, Ls/d;->W:I

    iput v15, v1, Ls/d;->X:I

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v15, v11

    move-object/from16 v17, v8

    iget-object v8, v1, Ls/d;->B:[I

    move/from16 v20, v4

    const/4 v4, 0x0

    aput v15, v8, v4

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    sub-int/2addr v15, v10

    const/16 v18, 0x1

    aput v15, v8, v18

    iput v4, v1, Ls/d;->Z:I

    iput v4, v1, Ls/d;->a0:I

    invoke-virtual {v1, v14}, Ls/d;->D(I)V

    invoke-virtual {v1, v6}, Ls/d;->F(I)V

    invoke-virtual {v1, v12}, Ls/d;->E(I)V

    invoke-virtual {v1, v13}, Ls/d;->C(I)V

    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v6, v11

    if-gez v6, :cond_10

    iput v4, v1, Ls/d;->Z:I

    goto :goto_c

    :cond_10
    iput v6, v1, Ls/d;->Z:I

    :goto_c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v0, v10

    if-gez v0, :cond_11

    iput v4, v1, Ls/d;->a0:I

    goto :goto_d

    :cond_11
    iput v0, v1, Ls/d;->a0:I

    :goto_d
    iput v9, v1, Ls/e;->v0:I

    iput v7, v1, Ls/e;->w0:I

    iget-object v0, v1, Ls/e;->p0:Lw0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Ls/e;->s0:Lv/d;

    iget-object v6, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v9

    const/16 v10, 0x80

    invoke-static {v2, v10}, Ls/g;->c(II)Z

    move-result v10

    const/16 v11, 0x40

    if-nez v10, :cond_13

    invoke-static {v2, v11}, Ls/g;->c(II)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v2, 0x1

    :goto_f
    const/4 v12, 0x3

    if-eqz v2, :cond_18

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v6, :cond_18

    iget-object v15, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls/d;

    iget-object v11, v15, Ls/d;->n0:[I

    const/16 v18, 0x0

    aget v13, v11, v18

    if-ne v13, v12, :cond_14

    const/4 v13, 0x1

    :goto_11
    const/16 v21, 0x1

    goto :goto_12

    :cond_14
    const/4 v13, 0x0

    goto :goto_11

    :goto_12
    aget v11, v11, v21

    if-ne v11, v12, :cond_15

    const/4 v11, 0x1

    goto :goto_13

    :cond_15
    const/4 v11, 0x0

    :goto_13
    if-eqz v13, :cond_16

    if-eqz v11, :cond_16

    iget v11, v15, Ls/d;->U:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_16

    const/4 v11, 0x1

    goto :goto_14

    :cond_16
    const/4 v11, 0x0

    :goto_14
    invoke-virtual {v15}, Ls/d;->s()Z

    move-result v13

    if-eqz v13, :cond_19

    if-eqz v11, :cond_19

    :cond_17
    :goto_15
    const/4 v2, 0x0

    :cond_18
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_16

    :cond_19
    invoke-virtual {v15}, Ls/d;->t()Z

    move-result v13

    if-eqz v13, :cond_1a

    if-eqz v11, :cond_1a

    goto :goto_15

    :cond_1a
    invoke-virtual {v15}, Ls/d;->s()Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v15}, Ls/d;->t()Z

    move-result v11

    if-eqz v11, :cond_1b

    goto :goto_15

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x40

    goto :goto_10

    :goto_16
    if-ne v3, v11, :cond_1c

    if-eq v5, v11, :cond_1d

    :cond_1c
    if-eqz v10, :cond_1e

    :cond_1d
    const/4 v11, 0x1

    goto :goto_17

    :cond_1e
    const/4 v11, 0x0

    :goto_17
    and-int/2addr v2, v11

    if-eqz v2, :cond_3d

    const/4 v13, 0x0

    aget v14, v8, v13

    move/from16 v13, v20

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x1

    aget v8, v8, v14

    move/from16 v15, v19

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v12

    if-eq v12, v13, :cond_1f

    invoke-virtual {v1, v13}, Ls/d;->F(I)V

    iget-object v12, v1, Ls/e;->q0:Lt/e;

    iput-boolean v14, v12, Lt/e;->b:Z

    :cond_1f
    if-ne v5, v15, :cond_20

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v12

    if-eq v12, v8, :cond_20

    invoke-virtual {v1, v8}, Ls/d;->C(I)V

    iget-object v8, v1, Ls/e;->q0:Lt/e;

    iput-boolean v14, v8, Lt/e;->b:Z

    :cond_20
    if-ne v3, v15, :cond_36

    if-ne v5, v15, :cond_36

    move-object/from16 v8, v17

    iget-boolean v12, v8, Lt/e;->b:Z

    iget-object v13, v8, Lt/e;->a:Ls/e;

    if-nez v12, :cond_22

    iget-boolean v12, v8, Lt/e;->c:Z

    if-eqz v12, :cond_21

    goto :goto_18

    :cond_21
    const/4 v15, 0x0

    goto :goto_1a

    :cond_22
    :goto_18
    iget-object v12, v13, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_19
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls/d;

    invoke-virtual {v14}, Ls/d;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Ls/d;->a:Z

    iget-object v11, v14, Ls/d;->d:Lt/k;

    invoke-virtual {v11}, Lt/k;->n()V

    iget-object v11, v14, Ls/d;->e:Lt/m;

    invoke-virtual {v11}, Lt/m;->m()V

    goto :goto_19

    :cond_23
    const/4 v15, 0x0

    invoke-virtual {v13}, Ls/d;->f()V

    iput-boolean v15, v13, Ls/d;->a:Z

    iget-object v11, v13, Ls/d;->d:Lt/k;

    invoke-virtual {v11}, Lt/k;->n()V

    iget-object v11, v13, Ls/d;->e:Lt/m;

    invoke-virtual {v11}, Lt/m;->m()V

    iput-boolean v15, v8, Lt/e;->c:Z

    :goto_1a
    iget-object v11, v8, Lt/e;->d:Ls/e;

    invoke-virtual {v8, v11}, Lt/e;->b(Ls/e;)V

    iput v15, v13, Ls/d;->W:I

    iput v15, v13, Ls/d;->X:I

    invoke-virtual {v13, v15}, Ls/d;->h(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Ls/d;->h(I)I

    move-result v14

    iget-boolean v12, v8, Lt/e;->b:Z

    if-eqz v12, :cond_24

    invoke-virtual {v8}, Lt/e;->c()V

    :cond_24
    invoke-virtual {v13}, Ls/d;->m()I

    move-result v12

    invoke-virtual {v13}, Ls/d;->n()I

    move-result v15

    move-object/from16 v20, v4

    iget-object v4, v13, Ls/d;->d:Lt/k;

    iget-object v4, v4, Lt/o;->h:Lt/f;

    invoke-virtual {v4, v12}, Lt/f;->d(I)V

    iget-object v4, v13, Ls/d;->e:Lt/m;

    iget-object v4, v4, Lt/o;->h:Lt/f;

    invoke-virtual {v4, v15}, Lt/f;->d(I)V

    invoke-virtual {v8}, Lt/e;->g()V

    iget-object v4, v8, Lt/e;->e:Ljava/util/ArrayList;

    move/from16 v21, v2

    const/4 v2, 0x2

    if-eq v11, v2, :cond_27

    if-ne v14, v2, :cond_25

    goto :goto_1b

    :cond_25
    move/from16 v22, v7

    :cond_26
    const/4 v2, 0x1

    goto :goto_1d

    :cond_27
    :goto_1b
    if-eqz v10, :cond_29

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lt/o;

    invoke-virtual/range {v22 .. v22}, Lt/o;->k()Z

    move-result v22

    if-nez v22, :cond_28

    const/4 v10, 0x0

    :cond_29
    if-eqz v10, :cond_2a

    const/4 v2, 0x2

    if-ne v11, v2, :cond_2a

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ls/d;->D(I)V

    move/from16 v22, v7

    const/4 v2, 0x0

    invoke-virtual {v8, v13, v2}, Lt/e;->d(Ls/e;I)I

    move-result v7

    invoke-virtual {v13, v7}, Ls/d;->F(I)V

    iget-object v2, v13, Ls/d;->d:Lt/k;

    iget-object v2, v2, Lt/o;->e:Lt/g;

    invoke-virtual {v13}, Ls/d;->l()I

    move-result v7

    invoke-virtual {v2, v7}, Lt/g;->d(I)V

    goto :goto_1c

    :cond_2a
    move/from16 v22, v7

    :goto_1c
    if-eqz v10, :cond_26

    const/4 v2, 0x2

    if-ne v14, v2, :cond_26

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ls/d;->E(I)V

    invoke-virtual {v8, v13, v2}, Lt/e;->d(Ls/e;I)I

    move-result v7

    invoke-virtual {v13, v7}, Ls/d;->C(I)V

    iget-object v7, v13, Ls/d;->e:Lt/m;

    iget-object v7, v7, Lt/o;->e:Lt/g;

    invoke-virtual {v13}, Ls/d;->i()I

    move-result v10

    invoke-virtual {v7, v10}, Lt/g;->d(I)V

    :goto_1d
    iget-object v7, v13, Ls/d;->n0:[I

    move/from16 v23, v9

    const/4 v10, 0x0

    aget v9, v7, v10

    if-eq v9, v2, :cond_2c

    const/4 v2, 0x4

    if-ne v9, v2, :cond_2b

    goto :goto_1e

    :cond_2b
    const/4 v2, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1e
    invoke-virtual {v13}, Ls/d;->l()I

    move-result v2

    add-int/2addr v2, v12

    iget-object v9, v13, Ls/d;->d:Lt/k;

    iget-object v9, v9, Lt/o;->i:Lt/f;

    invoke-virtual {v9, v2}, Lt/f;->d(I)V

    iget-object v9, v13, Ls/d;->d:Lt/k;

    iget-object v9, v9, Lt/o;->e:Lt/g;

    sub-int/2addr v2, v12

    invoke-virtual {v9, v2}, Lt/g;->d(I)V

    invoke-virtual {v8}, Lt/e;->g()V

    const/4 v2, 0x1

    aget v7, v7, v2

    if-eq v7, v2, :cond_2d

    const/4 v2, 0x4

    if-ne v7, v2, :cond_2e

    :cond_2d
    invoke-virtual {v13}, Ls/d;->i()I

    move-result v2

    add-int/2addr v2, v15

    iget-object v7, v13, Ls/d;->e:Lt/m;

    iget-object v7, v7, Lt/o;->i:Lt/f;

    invoke-virtual {v7, v2}, Lt/f;->d(I)V

    iget-object v7, v13, Ls/d;->e:Lt/m;

    iget-object v7, v7, Lt/o;->e:Lt/g;

    sub-int/2addr v2, v15

    invoke-virtual {v7, v2}, Lt/g;->d(I)V

    :cond_2e
    invoke-virtual {v8}, Lt/e;->g()V

    const/4 v2, 0x1

    :goto_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt/o;

    iget-object v9, v8, Lt/o;->b:Ls/d;

    if-ne v9, v13, :cond_2f

    iget-boolean v9, v8, Lt/o;->g:Z

    if-nez v9, :cond_2f

    goto :goto_20

    :cond_2f
    invoke-virtual {v8}, Lt/o;->e()V

    goto :goto_20

    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt/o;

    if-nez v2, :cond_32

    iget-object v8, v7, Lt/o;->b:Ls/d;

    if-ne v8, v13, :cond_32

    goto :goto_21

    :cond_32
    iget-object v8, v7, Lt/o;->h:Lt/f;

    iget-boolean v8, v8, Lt/f;->j:Z

    if-nez v8, :cond_33

    :goto_22
    const/4 v2, 0x0

    goto :goto_23

    :cond_33
    iget-object v8, v7, Lt/o;->i:Lt/f;

    iget-boolean v8, v8, Lt/f;->j:Z

    if-nez v8, :cond_34

    instance-of v8, v7, Lt/i;

    if-nez v8, :cond_34

    goto :goto_22

    :cond_34
    iget-object v8, v7, Lt/o;->e:Lt/g;

    iget-boolean v8, v8, Lt/f;->j:Z

    if-nez v8, :cond_31

    instance-of v8, v7, Lt/c;

    if-nez v8, :cond_31

    instance-of v7, v7, Lt/i;

    if-nez v7, :cond_31

    goto :goto_22

    :cond_35
    const/4 v2, 0x1

    :goto_23
    invoke-virtual {v13, v11}, Ls/d;->D(I)V

    invoke-virtual {v13, v14}, Ls/d;->E(I)V

    move v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x2

    goto/16 :goto_27

    :cond_36
    move/from16 v21, v2

    move-object/from16 v20, v4

    move/from16 v22, v7

    move/from16 v23, v9

    move-object/from16 v8, v17

    iget-boolean v2, v8, Lt/e;->b:Z

    iget-object v4, v8, Lt/e;->a:Ls/e;

    if-eqz v2, :cond_38

    iget-object v2, v4, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    invoke-virtual {v7}, Ls/d;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v7, Ls/d;->a:Z

    iget-object v11, v7, Ls/d;->d:Lt/k;

    iget-object v12, v11, Lt/o;->e:Lt/g;

    iput-boolean v9, v12, Lt/f;->j:Z

    iput-boolean v9, v11, Lt/o;->g:Z

    invoke-virtual {v11}, Lt/k;->n()V

    iget-object v7, v7, Ls/d;->e:Lt/m;

    iget-object v11, v7, Lt/o;->e:Lt/g;

    iput-boolean v9, v11, Lt/f;->j:Z

    iput-boolean v9, v7, Lt/o;->g:Z

    invoke-virtual {v7}, Lt/m;->m()V

    goto :goto_24

    :cond_37
    const/4 v9, 0x0

    invoke-virtual {v4}, Ls/d;->f()V

    iput-boolean v9, v4, Ls/d;->a:Z

    iget-object v2, v4, Ls/d;->d:Lt/k;

    iget-object v7, v2, Lt/o;->e:Lt/g;

    iput-boolean v9, v7, Lt/f;->j:Z

    iput-boolean v9, v2, Lt/o;->g:Z

    invoke-virtual {v2}, Lt/k;->n()V

    iget-object v2, v4, Ls/d;->e:Lt/m;

    iget-object v7, v2, Lt/o;->e:Lt/g;

    iput-boolean v9, v7, Lt/f;->j:Z

    iput-boolean v9, v2, Lt/o;->g:Z

    invoke-virtual {v2}, Lt/m;->m()V

    invoke-virtual {v8}, Lt/e;->c()V

    goto :goto_25

    :cond_38
    const/4 v9, 0x0

    :goto_25
    iget-object v2, v8, Lt/e;->d:Ls/e;

    invoke-virtual {v8, v2}, Lt/e;->b(Ls/e;)V

    iput v9, v4, Ls/d;->W:I

    iput v9, v4, Ls/d;->X:I

    iget-object v2, v4, Ls/d;->d:Lt/k;

    iget-object v2, v2, Lt/o;->h:Lt/f;

    invoke-virtual {v2, v9}, Lt/f;->d(I)V

    iget-object v2, v4, Ls/d;->e:Lt/m;

    iget-object v2, v2, Lt/o;->h:Lt/f;

    invoke-virtual {v2, v9}, Lt/f;->d(I)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v3, v2, :cond_39

    invoke-virtual {v1, v9, v10}, Ls/e;->K(IZ)Z

    move-result v4

    move v7, v4

    const/4 v4, 0x1

    goto :goto_26

    :cond_39
    const/4 v4, 0x0

    const/4 v7, 0x1

    :goto_26
    if-ne v5, v2, :cond_3a

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v10}, Ls/e;->K(IZ)Z

    move-result v9

    and-int/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    :cond_3a
    :goto_27
    if-eqz v7, :cond_3e

    if-ne v3, v2, :cond_3b

    const/4 v3, 0x1

    goto :goto_28

    :cond_3b
    const/4 v3, 0x0

    :goto_28
    if-ne v5, v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_29

    :cond_3c
    const/4 v2, 0x0

    :goto_29
    invoke-virtual {v1, v3, v2}, Ls/e;->G(ZZ)V

    goto :goto_2a

    :cond_3d
    move/from16 v21, v2

    move-object/from16 v20, v4

    move/from16 v22, v7

    move/from16 v23, v9

    const/4 v4, 0x0

    const/4 v7, 0x0

    :cond_3e
    :goto_2a
    if-eqz v7, :cond_3f

    const/4 v2, 0x2

    if-eq v4, v2, :cond_5f

    :cond_3f
    iget v2, v1, Ls/e;->B0:I

    if-lez v6, :cond_4d

    iget-object v3, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ls/e;->N(I)Z

    move-result v4

    iget-object v5, v1, Ls/e;->s0:Lv/d;

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v3, :cond_4b

    iget-object v7, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    instance-of v8, v7, Ls/f;

    if-eqz v8, :cond_40

    :goto_2c
    const/4 v8, 0x3

    const/4 v10, 0x0

    goto/16 :goto_31

    :cond_40
    instance-of v8, v7, Ls/a;

    if-eqz v8, :cond_41

    goto :goto_2c

    :cond_41
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_42

    iget-object v8, v7, Ls/d;->d:Lt/k;

    if-eqz v8, :cond_42

    iget-object v9, v7, Ls/d;->e:Lt/m;

    if-eqz v9, :cond_42

    iget-object v8, v8, Lt/o;->e:Lt/g;

    iget-boolean v8, v8, Lt/f;->j:Z

    if-eqz v8, :cond_42

    iget-object v8, v9, Lt/o;->e:Lt/g;

    iget-boolean v8, v8, Lt/f;->j:Z

    if-eqz v8, :cond_42

    goto :goto_2c

    :cond_42
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ls/d;->h(I)I

    move-result v9

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ls/d;->h(I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v9, v11, :cond_43

    iget v12, v7, Ls/d;->q:I

    if-eq v12, v8, :cond_43

    if-ne v10, v11, :cond_43

    iget v11, v7, Ls/d;->r:I

    if-eq v11, v8, :cond_43

    move v11, v8

    goto :goto_2d

    :cond_43
    const/4 v11, 0x0

    :goto_2d
    if-nez v11, :cond_48

    invoke-virtual {v1, v8}, Ls/e;->N(I)Z

    move-result v12

    if-eqz v12, :cond_48

    const/4 v8, 0x3

    if-ne v9, v8, :cond_44

    iget v12, v7, Ls/d;->q:I

    if-nez v12, :cond_44

    if-eq v10, v8, :cond_44

    invoke-virtual {v7}, Ls/d;->s()Z

    move-result v12

    if-nez v12, :cond_44

    const/4 v11, 0x1

    :cond_44
    if-ne v10, v8, :cond_45

    iget v12, v7, Ls/d;->r:I

    if-nez v12, :cond_45

    if-eq v9, v8, :cond_45

    invoke-virtual {v7}, Ls/d;->s()Z

    move-result v12

    if-nez v12, :cond_45

    const/4 v11, 0x1

    :cond_45
    if-eq v9, v8, :cond_47

    if-ne v10, v8, :cond_46

    goto :goto_2f

    :cond_46
    :goto_2e
    const/4 v10, 0x0

    goto :goto_30

    :cond_47
    :goto_2f
    iget v9, v7, Ls/d;->U:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_49

    const/4 v11, 0x1

    goto :goto_30

    :cond_48
    const/4 v8, 0x3

    goto :goto_2e

    :cond_49
    :goto_30
    if-eqz v11, :cond_4a

    goto :goto_31

    :cond_4a
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7, v5}, Lw0/m;->q(ILs/d;Lv/d;)Z

    :goto_31
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2b

    :cond_4b
    iget-object v3, v5, Lv/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v4, :cond_4c

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    :cond_4c
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4d

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v4, :cond_4d

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    :cond_4d
    invoke-virtual {v0, v1}, Lw0/m;->v(Ls/e;)V

    iget-object v3, v0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v22

    if-lez v6, :cond_4e

    move/from16 v6, v23

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15, v5, v6}, Lw0/m;->s(Ls/e;III)V

    goto :goto_34

    :cond_4e
    move/from16 v6, v23

    const/4 v15, 0x0

    :goto_34
    if-lez v4, :cond_5e

    iget-object v7, v1, Ls/d;->n0:[I

    aget v8, v7, v15

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4f

    const/4 v8, 0x1

    :goto_35
    const/4 v10, 0x1

    goto :goto_36

    :cond_4f
    move v8, v15

    goto :goto_35

    :goto_36
    aget v7, v7, v10

    if-ne v7, v9, :cond_50

    const/4 v7, 0x1

    goto :goto_37

    :cond_50
    move v7, v15

    :goto_37
    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v9

    iget-object v10, v0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v10, Ls/e;

    iget v11, v10, Ls/d;->Z:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v11

    iget v10, v10, Ls/d;->a0:I

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v15

    :goto_38
    if-ge v11, v4, :cond_51

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls/d;

    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :cond_51
    move v12, v15

    const/4 v11, 0x2

    :goto_39
    if-ge v12, v11, :cond_5e

    move v13, v15

    move v14, v13

    :goto_3a
    if-ge v13, v4, :cond_5c

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ls/d;

    instance-of v15, v11, Ls/a;

    if-eqz v15, :cond_52

    :goto_3b
    move-object/from16 p0, v3

    goto :goto_3c

    :cond_52
    instance-of v15, v11, Ls/f;

    if-eqz v15, :cond_53

    goto :goto_3b

    :cond_53
    iget v15, v11, Ls/d;->e0:I

    move-object/from16 p0, v3

    const/16 v3, 0x8

    if-ne v15, v3, :cond_54

    goto :goto_3c

    :cond_54
    if-eqz v21, :cond_55

    iget-object v3, v11, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    iget-boolean v3, v3, Lt/f;->j:Z

    if-eqz v3, :cond_55

    iget-object v3, v11, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    iget-boolean v3, v3, Lt/f;->j:Z

    if-eqz v3, :cond_55

    :goto_3c
    move/from16 v16, v2

    move/from16 p2, v4

    const/4 v3, 0x4

    goto/16 :goto_40

    :cond_55
    invoke-virtual {v11}, Ls/d;->l()I

    move-result v3

    invoke-virtual {v11}, Ls/d;->i()I

    move-result v15

    move/from16 p2, v4

    iget v4, v11, Ls/d;->Y:I

    move/from16 v16, v2

    const/4 v2, 0x1

    move-object/from16 v1, v20

    if-ne v12, v2, :cond_56

    const/4 v2, 0x2

    :cond_56
    invoke-virtual {v0, v2, v11, v1}, Lw0/m;->q(ILs/d;Lv/d;)Z

    move-result v2

    or-int/2addr v2, v14

    invoke-virtual {v11}, Ls/d;->l()I

    move-result v14

    move-object/from16 v20, v1

    invoke-virtual {v11}, Ls/d;->i()I

    move-result v1

    if-eq v14, v3, :cond_58

    invoke-virtual {v11, v14}, Ls/d;->F(I)V

    if-eqz v8, :cond_57

    invoke-virtual {v11}, Ls/d;->m()I

    move-result v2

    iget v3, v11, Ls/d;->S:I

    add-int/2addr v2, v3

    if-le v2, v9, :cond_57

    invoke-virtual {v11}, Ls/d;->m()I

    move-result v2

    iget v3, v11, Ls/d;->S:I

    add-int/2addr v2, v3

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Ls/d;->g(I)Ls/c;

    move-result-object v14

    invoke-virtual {v14}, Ls/c;->d()I

    move-result v14

    add-int/2addr v14, v2

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3d

    :cond_57
    const/4 v3, 0x4

    :goto_3d
    const/4 v2, 0x1

    goto :goto_3e

    :cond_58
    const/4 v3, 0x4

    :goto_3e
    if-eq v1, v15, :cond_5a

    invoke-virtual {v11, v1}, Ls/d;->C(I)V

    if-eqz v7, :cond_59

    invoke-virtual {v11}, Ls/d;->n()I

    move-result v1

    iget v2, v11, Ls/d;->T:I

    add-int/2addr v1, v2

    if-le v1, v10, :cond_59

    invoke-virtual {v11}, Ls/d;->n()I

    move-result v1

    iget v2, v11, Ls/d;->T:I

    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Ls/d;->g(I)Ls/c;

    move-result-object v2

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_59
    const/4 v15, 0x1

    goto :goto_3f

    :cond_5a
    move v15, v2

    :goto_3f
    iget-boolean v1, v11, Ls/d;->D:Z

    if-eqz v1, :cond_5b

    iget v1, v11, Ls/d;->Y:I

    if-eq v4, v1, :cond_5b

    const/4 v14, 0x1

    goto :goto_40

    :cond_5b
    move v14, v15

    :goto_40
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v2, v16

    const/4 v11, 0x2

    const/4 v15, 0x0

    goto/16 :goto_3a

    :cond_5c
    move/from16 v16, v2

    move-object/from16 p0, v3

    move/from16 p2, v4

    const/4 v3, 0x4

    if-eqz v14, :cond_5d

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v12, v5, v6}, Lw0/m;->s(Ls/e;III)V

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v2, v16

    const/4 v11, 0x2

    const/4 v15, 0x0

    goto/16 :goto_39

    :cond_5d
    move-object/from16 v1, p1

    move/from16 v0, v16

    goto :goto_41

    :cond_5e
    move v0, v2

    :goto_41
    iput v0, v1, Ls/e;->B0:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Ls/e;->N(I)Z

    move-result v0

    sput-boolean v0, Lq/c;->p:Z

    :cond_5f
    return-void
.end method

.method public final l(Ls/d;Lv/c;Landroid/util/SparseArray;II)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls/d;

    if-eqz p3, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lv/c;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Lv/c;->c0:Z

    const/4 v0, 0x6

    if-ne p5, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lv/c;

    iput-boolean p4, p0, Lv/c;->c0:Z

    iget-object p0, p0, Lv/c;->p0:Ls/d;

    iput-boolean p4, p0, Ls/d;->D:Z

    :cond_0
    invoke-virtual {p1, v0}, Ls/d;->g(I)Ls/c;

    move-result-object p0

    invoke-virtual {p3, p5}, Ls/d;->g(I)Ls/c;

    move-result-object p3

    iget p5, p2, Lv/c;->D:I

    iget p2, p2, Lv/c;->C:I

    invoke-virtual {p0, p3, p5, p2}, Ls/c;->a(Ls/c;II)V

    iput-boolean p4, p1, Ls/d;->D:Z

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Ls/d;->g(I)Ls/c;

    move-result-object p0

    invoke-virtual {p0}, Ls/c;->g()V

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Ls/d;->g(I)Ls/c;

    move-result-object p0

    invoke-virtual {p0}, Ls/c;->g()V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv/c;

    iget-object v1, v0, Lv/c;->p0:Ls/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lv/c;->d0:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lv/c;->e0:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ls/d;->m()I

    move-result v0

    invoke-virtual {v1}, Ls/d;->n()I

    move-result v2

    invoke-virtual {v1}, Ls/d;->l()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Ls/d;->i()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    :goto_2
    if-ge p3, p1, :cond_2

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 23

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    if-ne v0, v7, :cond_0

    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    :cond_0
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v9

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v10, v0, :cond_3

    move v0, v10

    goto :goto_2

    :cond_3
    move v0, v9

    :goto_2
    iget-object v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ls/e;

    iput-boolean v0, v11, Ls/e;->t0:Z

    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    if-eqz v0, :cond_52

    iput-boolean v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v9

    :goto_3
    if-ge v1, v0, :cond_5

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    move v12, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v12, v9

    :goto_4
    if-eqz v12, :cond_51

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    move v0, v9

    :goto_5
    if-ge v0, v14, :cond_7

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Ls/d;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ls/d;->x()V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/4 v15, -0x1

    if-eqz v13, :cond_10

    move v1, v9

    :goto_7
    if-ge v1, v14, :cond_10

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_a

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    :cond_8
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v15, :cond_9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_9
    move-object v5, v3

    :goto_8
    iget-object v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v15, :cond_b

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-nez v2, :cond_c

    :goto_9
    move-object v2, v11

    goto :goto_a

    :cond_c
    iget-object v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_d

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    if-eq v4, v6, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_d

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_d
    if-ne v4, v6, :cond_e

    goto :goto_9

    :cond_e
    if-nez v4, :cond_f

    move-object v2, v0

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lv/c;

    iget-object v2, v2, Lv/c;->p0:Ls/d;

    :goto_a
    iput-object v3, v2, Ls/d;->f0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_10
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    if-eq v1, v15, :cond_11

    move v1, v9

    :goto_b
    if-ge v1, v14, :cond_11

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lv/l;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v6}, Lv/l;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_12
    iget-object v1, v11, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    move v3, v9

    :goto_c
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v4, Landroidx/constraintlayout/widget/Barrier;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/Barrier;->f(Ljava/lang/String;)V

    :cond_13
    iget-object v5, v4, Landroidx/constraintlayout/widget/Barrier;->g:Ls/a;

    if-nez v5, :cond_14

    move-object/from16 v17, v1

    goto/16 :goto_10

    :cond_14
    iput v9, v5, Ls/a;->p0:I

    iget-object v5, v5, Ls/a;->o0:[Ls/d;

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v5, v9

    :goto_d
    iget v0, v4, Landroidx/constraintlayout/widget/Barrier;->e:I

    if-ge v5, v0, :cond_19

    iget-object v0, v4, Landroidx/constraintlayout/widget/Barrier;->d:[I

    aget v0, v0, v5

    iget-object v15, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-nez v15, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, v4, Landroidx/constraintlayout/widget/Barrier;->j:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Landroidx/constraintlayout/widget/Barrier;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_15

    iget-object v15, v4, Landroidx/constraintlayout/widget/Barrier;->d:[I

    aput v10, v15, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/View;

    :cond_15
    if-eqz v15, :cond_18

    iget-object v0, v4, Landroidx/constraintlayout/widget/Barrier;->g:Ls/a;

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Ls/d;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v9, v0, :cond_18

    if-nez v9, :cond_16

    goto :goto_e

    :cond_16
    iget v10, v0, Ls/a;->p0:I

    const/4 v15, 0x1

    add-int/2addr v10, v15

    iget-object v15, v0, Ls/a;->o0:[Ls/d;

    move-object/from16 v17, v1

    array-length v1, v15

    if-le v10, v1, :cond_17

    array-length v1, v15

    const/4 v10, 0x2

    mul-int/2addr v1, v10

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ls/d;

    iput-object v1, v0, Ls/a;->o0:[Ls/d;

    :cond_17
    iget-object v1, v0, Ls/a;->o0:[Ls/d;

    iget v10, v0, Ls/a;->p0:I

    aput-object v9, v1, v10

    const/4 v1, 0x1

    add-int/2addr v10, v1

    iput v10, v0, Ls/a;->p0:I

    goto :goto_f

    :cond_18
    :goto_e
    move-object/from16 v17, v1

    :goto_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    const/4 v9, 0x0

    const/4 v15, -0x1

    goto :goto_d

    :cond_19
    move-object/from16 v17, v1

    iget-object v0, v4, Landroidx/constraintlayout/widget/Barrier;->g:Ls/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v17

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v15, -0x1

    goto/16 :goto_c

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v14, :cond_1b

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1b
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v14, :cond_1c

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Ls/d;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v14, :cond_51

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Ls/d;

    move-result-object v15

    if-nez v15, :cond_1e

    :cond_1d
    :goto_14
    move/from16 v16, v14

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    goto/16 :goto_2a

    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lv/c;

    iget-object v1, v11, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v15, Ls/d;->R:Ls/d;

    if-eqz v1, :cond_1f

    check-cast v1, Ls/e;

    iget-object v1, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ls/d;->x()V

    :cond_1f
    iput-object v11, v15, Ls/d;->R:Ls/d;

    invoke-virtual {v5}, Lv/c;->a()V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v15, Ls/d;->e0:I

    iput-object v0, v15, Ls/d;->d0:Landroid/view/View;

    instance-of v1, v0, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v1, :cond_24

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    iget-boolean v1, v11, Ls/e;->t0:Z

    iget v2, v0, Landroidx/constraintlayout/widget/Barrier;->k:I

    iput v2, v0, Landroidx/constraintlayout/widget/Barrier;->l:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz v1, :cond_21

    if-ne v2, v4, :cond_20

    const/4 v1, 0x1

    iput v1, v0, Landroidx/constraintlayout/widget/Barrier;->l:I

    goto :goto_15

    :cond_20
    const/4 v1, 0x1

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    iput v2, v0, Landroidx/constraintlayout/widget/Barrier;->l:I

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    if-ne v2, v4, :cond_22

    iput v1, v0, Landroidx/constraintlayout/widget/Barrier;->l:I

    goto :goto_15

    :cond_22
    if-ne v2, v3, :cond_23

    const/4 v1, 0x1

    iput v1, v0, Landroidx/constraintlayout/widget/Barrier;->l:I

    :cond_23
    :goto_15
    instance-of v1, v15, Ls/a;

    if-eqz v1, :cond_24

    move-object v1, v15

    check-cast v1, Ls/a;

    iget v0, v0, Landroidx/constraintlayout/widget/Barrier;->l:I

    iput v0, v1, Ls/a;->q0:I

    :cond_24
    iget-boolean v0, v5, Lv/c;->d0:Z

    if-eqz v0, :cond_28

    check-cast v15, Ls/f;

    iget v0, v5, Lv/c;->m0:I

    iget v1, v5, Lv/c;->n0:I

    iget v2, v5, Lv/c;->o0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_26

    if-lez v4, :cond_25

    iput v2, v15, Ls/f;->o0:F

    const/4 v2, -0x1

    iput v2, v15, Ls/f;->p0:I

    iput v2, v15, Ls/f;->q0:I

    goto :goto_14

    :cond_25
    const/4 v2, -0x1

    goto :goto_14

    :cond_26
    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    if-le v0, v2, :cond_1d

    iput v3, v15, Ls/f;->o0:F

    iput v0, v15, Ls/f;->p0:I

    iput v2, v15, Ls/f;->q0:I

    goto/16 :goto_14

    :cond_27
    if-eq v1, v2, :cond_1d

    if-le v1, v2, :cond_1d

    iput v3, v15, Ls/f;->o0:F

    iput v2, v15, Ls/f;->p0:I

    iput v1, v15, Ls/f;->q0:I

    goto/16 :goto_14

    :cond_28
    iget v0, v5, Lv/c;->f0:I

    iget v1, v5, Lv/c;->g0:I

    iget v2, v5, Lv/c;->h0:I

    iget v3, v5, Lv/c;->i0:I

    iget v4, v5, Lv/c;->j0:I

    move/from16 v16, v14

    iget v14, v5, Lv/c;->k0:I

    iget v7, v5, Lv/c;->l0:F

    iget v8, v5, Lv/c;->p:I

    const/4 v6, -0x1

    if-eq v8, v6, :cond_2a

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_29

    iget v0, v5, Lv/c;->r:F

    iget v1, v5, Lv/c;->q:I

    const/16 v19, 0x7

    const/16 v21, 0x0

    move-object/from16 v17, v15

    move/from16 v18, v19

    move/from16 v20, v1

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    iput v0, v15, Ls/d;->C:F

    :cond_29
    move-object v14, v5

    goto/16 :goto_1d

    :cond_2a
    if-eq v0, v6, :cond_2c

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_2b

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x2

    move/from16 v18, v1

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    :cond_2b
    :goto_16
    const/4 v0, -0x1

    goto :goto_17

    :cond_2c
    move v0, v6

    if-eq v1, v0, :cond_2d

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_2b

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x2

    move/from16 v18, v1

    const/4 v1, 0x4

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    goto :goto_16

    :cond_2d
    :goto_17
    if-eq v2, v0, :cond_2e

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_2f

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x4

    move/from16 v18, v1

    const/4 v1, 0x2

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    goto :goto_18

    :cond_2e
    if-eq v3, v0, :cond_2f

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_2f

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x4

    move/from16 v18, v1

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    :cond_2f
    :goto_18
    iget v0, v5, Lv/c;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_31

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v5, Lv/c;->x:I

    move-object/from16 v17, v15

    const/4 v2, 0x3

    move/from16 v18, v2

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    goto :goto_19

    :cond_30
    iget v0, v5, Lv/c;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_31

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v5, Lv/c;->x:I

    move-object/from16 v17, v15

    const/4 v2, 0x3

    move/from16 v18, v2

    const/4 v2, 0x5

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    :cond_31
    :goto_19
    iget v0, v5, Lv/c;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_33

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v5, Lv/c;->z:I

    move-object/from16 v17, v15

    const/4 v2, 0x5

    move/from16 v18, v2

    const/4 v2, 0x3

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    goto :goto_1a

    :cond_32
    iget v0, v5, Lv/c;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ls/d;

    if-eqz v22, :cond_33

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v5, Lv/c;->z:I

    move-object/from16 v17, v15

    const/4 v2, 0x5

    move/from16 v18, v2

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Ls/d;->q(IIIILs/d;)V

    :cond_33
    :goto_1a
    iget v4, v5, Lv/c;->m:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_35

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move-object v3, v9

    move-object v14, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Ls/d;Lv/c;Landroid/util/SparseArray;II)V

    :cond_34
    :goto_1b
    const/4 v0, 0x0

    goto :goto_1c

    :cond_35
    move-object v14, v5

    iget v4, v14, Lv/c;->n:I

    if-eq v4, v6, :cond_36

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v14

    move-object v3, v9

    const/4 v8, 0x3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Ls/d;Lv/c;Landroid/util/SparseArray;II)V

    goto :goto_1b

    :cond_36
    iget v4, v14, Lv/c;->o:I

    if-eq v4, v6, :cond_34

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v14

    move-object v3, v9

    const/4 v6, 0x5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Ls/d;Lv/c;Landroid/util/SparseArray;II)V

    goto :goto_1b

    :goto_1c
    cmpl-float v1, v7, v0

    if-ltz v1, :cond_37

    iput v7, v15, Ls/d;->b0:F

    :cond_37
    iget v1, v14, Lv/c;->F:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_38

    iput v1, v15, Ls/d;->c0:F

    :cond_38
    :goto_1d
    if-eqz v13, :cond_3a

    iget v0, v14, Lv/c;->T:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    iget v2, v14, Lv/c;->U:I

    if-eq v2, v1, :cond_3a

    :cond_39
    iget v1, v14, Lv/c;->U:I

    iput v0, v15, Ls/d;->W:I

    iput v1, v15, Ls/d;->X:I

    :cond_3a
    iget-boolean v0, v14, Lv/c;->a0:Z

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, -0x2

    if-nez v0, :cond_3d

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3c

    iget-boolean v0, v14, Lv/c;->W:Z

    if-eqz v0, :cond_3b

    invoke-virtual {v15, v1}, Ls/d;->D(I)V

    :goto_1e
    const/4 v0, 0x2

    goto :goto_1f

    :cond_3b
    invoke-virtual {v15, v2}, Ls/d;->D(I)V

    goto :goto_1e

    :goto_1f
    invoke-virtual {v15, v0}, Ls/d;->g(I)Ls/c;

    move-result-object v0

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v0, Ls/c;->g:I

    const/4 v0, 0x4

    invoke-virtual {v15, v0}, Ls/d;->g(I)Ls/c;

    move-result-object v0

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v0, Ls/c;->g:I

    goto :goto_20

    :cond_3c
    invoke-virtual {v15, v1}, Ls/d;->D(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ls/d;->F(I)V

    goto :goto_20

    :cond_3d
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Ls/d;->D(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v15, v0}, Ls/d;->F(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v3, :cond_3e

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Ls/d;->D(I)V

    :cond_3e
    :goto_20
    iget-boolean v0, v14, Lv/c;->b0:Z

    if-nez v0, :cond_41

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_40

    iget-boolean v0, v14, Lv/c;->X:Z

    if-eqz v0, :cond_3f

    invoke-virtual {v15, v1}, Ls/d;->E(I)V

    :goto_21
    const/4 v0, 0x3

    goto :goto_22

    :cond_3f
    invoke-virtual {v15, v2}, Ls/d;->E(I)V

    goto :goto_21

    :goto_22
    invoke-virtual {v15, v0}, Ls/d;->g(I)Ls/c;

    move-result-object v0

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Ls/c;->g:I

    const/4 v0, 0x5

    invoke-virtual {v15, v0}, Ls/d;->g(I)Ls/c;

    move-result-object v0

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v0, Ls/c;->g:I

    goto :goto_23

    :cond_40
    invoke-virtual {v15, v1}, Ls/d;->E(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ls/d;->C(I)V

    goto :goto_23

    :cond_41
    const/4 v0, 0x1

    const/4 v4, -0x1

    invoke-virtual {v15, v0}, Ls/d;->E(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v15, v0}, Ls/d;->C(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v3, :cond_42

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Ls/d;->E(I)V

    :cond_42
    :goto_23
    iget-object v0, v14, Lv/c;->G:Ljava/lang/String;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_44

    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_28

    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_47

    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_47

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v5, "W"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x0

    goto :goto_24

    :cond_45
    const-string v5, "H"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x1

    goto :goto_24

    :cond_46
    move v5, v4

    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_47
    move v5, v4

    const/4 v3, 0x0

    :goto_25
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_49

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_49

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v6, v2, v3

    if-lez v6, :cond_4a

    cmpl-float v6, v0, v3

    if-lez v6, :cond_4a

    const/4 v3, 0x1

    if-ne v5, v3, :cond_48

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_26

    :cond_48
    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_26
    const/4 v2, 0x0

    goto :goto_27

    :cond_49
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_26

    :catch_1
    :cond_4a
    const/4 v0, 0x0

    goto :goto_26

    :goto_27
    cmpl-float v3, v0, v2

    if-lez v3, :cond_4b

    iput v0, v15, Ls/d;->U:F

    iput v5, v15, Ls/d;->V:I

    goto :goto_29

    :goto_28
    iput v2, v15, Ls/d;->U:F

    :cond_4b
    :goto_29
    iget v0, v14, Lv/c;->H:F

    iget-object v2, v15, Ls/d;->i0:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    iget v0, v14, Lv/c;->I:F

    const/4 v3, 0x1

    aput v0, v2, v3

    iget v0, v14, Lv/c;->J:I

    iput v0, v15, Ls/d;->g0:I

    iget v0, v14, Lv/c;->K:I

    iput v0, v15, Ls/d;->h0:I

    iget v0, v14, Lv/c;->Z:I

    if-ltz v0, :cond_4c

    if-gt v0, v1, :cond_4c

    iput v0, v15, Ls/d;->p:I

    :cond_4c
    iget v0, v14, Lv/c;->L:I

    iget v1, v14, Lv/c;->N:I

    iget v2, v14, Lv/c;->P:I

    iget v5, v14, Lv/c;->R:F

    iput v0, v15, Ls/d;->q:I

    iput v1, v15, Ls/d;->t:I

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_4d

    const/4 v2, 0x0

    :cond_4d
    iput v2, v15, Ls/d;->u:I

    iput v5, v15, Ls/d;->v:F

    const/4 v2, 0x0

    cmpl-float v6, v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v6, :cond_4e

    cmpg-float v5, v5, v2

    if-gez v5, :cond_4e

    if-nez v0, :cond_4e

    const/4 v0, 0x2

    iput v0, v15, Ls/d;->q:I

    :cond_4e
    iget v0, v14, Lv/c;->M:I

    iget v5, v14, Lv/c;->O:I

    iget v6, v14, Lv/c;->Q:I

    iget v7, v14, Lv/c;->S:F

    iput v0, v15, Ls/d;->r:I

    iput v5, v15, Ls/d;->w:I

    if-ne v6, v1, :cond_4f

    const/4 v6, 0x0

    :cond_4f
    iput v6, v15, Ls/d;->x:I

    iput v7, v15, Ls/d;->y:F

    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_50

    cmpg-float v1, v7, v2

    if-gez v1, :cond_50

    if-nez v0, :cond_50

    const/4 v0, 0x2

    iput v0, v15, Ls/d;->r:I

    goto :goto_2a

    :cond_50
    const/4 v0, 0x2

    :goto_2a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v14, v16

    goto/16 :goto_13

    :cond_51
    if-eqz v12, :cond_52

    iget-object v0, v11, Ls/e;->p0:Lw0/m;

    invoke-virtual {v0, v11}, Lw0/m;->v(Ls/e;)V

    :cond_52
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Ls/e;III)V

    invoke-virtual {v11}, Ls/d;->l()I

    move-result v1

    invoke-virtual {v11}, Ls/d;->i()I

    move-result v4

    iget-boolean v5, v11, Ls/e;->C0:Z

    iget-boolean v6, v11, Ls/e;->D0:Z

    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Lv/d;

    iget v8, v7, Lv/d;->e:I

    iget v7, v7, Lv/d;->d:I

    add-int/2addr v1, v7

    add-int/2addr v4, v8

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-static {v4, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x1000000

    if-eqz v5, :cond_53

    or-int/2addr v1, v3

    :cond_53
    if-eqz v6, :cond_54

    or-int/2addr v2, v3

    :cond_54
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Ls/d;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Ls/f;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv/c;

    new-instance v1, Ls/f;

    invoke-direct {v1}, Ls/f;-><init>()V

    iput-object v1, v0, Lv/c;->p0:Ls/d;

    iput-boolean v2, v0, Lv/c;->d0:Z

    iget v0, v0, Lv/c;->V:I

    invoke-virtual {v1, v0}, Ls/f;->J(I)V

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Barrier;->i()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lv/c;

    iput-boolean v2, v1, Lv/c;->e0:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Ls/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ls/e;

    iget-object v1, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ls/d;->x()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setId(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
