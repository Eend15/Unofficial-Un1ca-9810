.class public abstract Landroidx/appcompat/widget/o0;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:I

.field public final j:F

.field public final k:Z

.field public l:[I

.field public m:[I

.field public final n:Landroid/graphics/drawable/Drawable;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroidx/appcompat/widget/o0;->d:Z

    const/4 v8, -0x1

    iput v8, p0, Landroidx/appcompat/widget/o0;->e:I

    const/4 v9, 0x0

    iput v9, p0, Landroidx/appcompat/widget/o0;->f:I

    const v0, 0x800033

    iput v0, p0, Landroidx/appcompat/widget/o0;->h:I

    sget-object v0, Lf/j;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, v5}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object v10

    sget-object v2, Lf/j;->LinearLayoutCompat:[I

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v0, v10, Ln1/a;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, LK/B;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget p1, Lf/j;->LinearLayoutCompat_android_orientation:I

    iget-object p2, v10, Ln1/a;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/TypedArray;

    invoke-virtual {p2, p1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/o0;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/o0;->g:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    sget p1, Lf/j;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p2, p1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/o0;->h:I

    if-eq v0, p1, :cond_3

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_1
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x30

    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/o0;->h:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    sget p1, Lf/j;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean p1, p0, Landroidx/appcompat/widget/o0;->d:Z

    :cond_4
    sget p1, Lf/j;->LinearLayoutCompat_android_weightSum:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/o0;->j:F

    sget p1, Lf/j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {p2, p1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/o0;->e:I

    sget p1, Lf/j;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p2, p1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/o0;->k:Z

    sget p1, Lf/j;->LinearLayoutCompat_divider:I

    invoke-virtual {v10, p1}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/o0;->o:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/o0;->p:I

    goto :goto_0

    :cond_6
    iput v9, p0, Landroidx/appcompat/widget/o0;->o:I

    iput v9, p0, Landroidx/appcompat/widget/o0;->p:I

    :goto_0
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v7, v9

    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    sget p1, Lf/j;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p2, p1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/o0;->q:I

    sget p1, Lf/j;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p2, p1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/o0;->r:I

    invoke-virtual {v10}, Ln1/a;->w()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroidx/appcompat/widget/n0;

    return p0
.end method

.method public final e(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/o0;->r:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    iget v2, p0, Landroidx/appcompat/widget/o0;->p:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;I)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/o0;->r:I

    add-int/2addr v1, v2

    iget v3, p0, Landroidx/appcompat/widget/o0;->o:I

    add-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {v0, p2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public g()Landroidx/appcompat/widget/n0;
    .locals 2

    iget p0, p0, Landroidx/appcompat/widget/o0;->g:I

    const/4 v0, -0x2

    if-nez p0, :cond_0

    new-instance p0, Landroidx/appcompat/widget/n0;

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance p0, Landroidx/appcompat/widget/n0;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/o0;->g()Landroidx/appcompat/widget/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o0;->h(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o0;->i(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/n0;

    move-result-object p0

    return-object p0
.end method

.method public final getBaseline()I
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/o0;->e:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_1

    return v3

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/o0;->f:I

    iget v3, p0, Landroidx/appcompat/widget/o0;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroidx/appcompat/widget/o0;->h:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    iget p0, p0, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget p0, p0, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    :cond_5
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/n0;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p0

    add-int/2addr v0, v2

    return v0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/n0;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/n0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public i(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/n0;
    .locals 0

    instance-of p0, p1, Landroidx/appcompat/widget/n0;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/appcompat/widget/n0;

    check-cast p1, Landroidx/appcompat/widget/n0;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/appcompat/widget/n0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/appcompat/widget/n0;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final j(I)Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/o0;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne p1, v3, :cond_3

    and-int/lit8 p0, v0, 0x4

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/o0;->g:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/n0;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/o0;->p:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/o0;->e(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/o0;->p:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/n0;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/o0;->e(Landroid/graphics/Canvas;I)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_7

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/n0;

    if-eqz v4, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/o0;->o:I

    sub-int/2addr v5, v6

    :goto_3
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/o0;->f(Landroid/graphics/Canvas;I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/o0;->o:I

    :goto_4
    sub-int/2addr v0, v1

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/n0;

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/o0;->o:I

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/o0;->f(Landroid/graphics/Canvas;I)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/widget/o0;->g:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/16 v5, 0x50

    const/4 v6, 0x2

    const/16 v7, 0x10

    const v8, 0x800007

    const/4 v9, 0x1

    if-ne v1, v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v10, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v11, v10, v11

    sub-int/2addr v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    iget v13, v0, Landroidx/appcompat/widget/o0;->h:I

    and-int/lit8 v14, v13, 0x70

    and-int/2addr v8, v13

    if-eq v14, v7, :cond_1

    if-eq v14, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int v5, v5, p5

    sub-int v5, v5, p3

    iget v7, v0, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int v7, p5, p3

    iget v13, v0, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v7, v13

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v3, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/n0;

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_3

    move v3, v8

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v3, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v9, :cond_5

    if-eq v3, v2, :cond_4

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    goto :goto_3

    :cond_4
    sub-int v3, v11, v13

    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v3, v6

    goto :goto_3

    :cond_5
    sub-int v3, v10, v13

    const/4 v6, 0x2

    div-int/2addr v3, v6

    add-int/2addr v3, v1

    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v0, Landroidx/appcompat/widget/o0;->p:I

    add-int/2addr v5, v6

    :cond_6
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    add-int/2addr v13, v3

    add-int v6, v5, v14

    invoke-virtual {v7, v3, v5, v13, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v3

    add-int/2addr v14, v5

    move v5, v14

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x2

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v9, :cond_9

    move v1, v9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v6, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int v10, v6, v10

    sub-int/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v6, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    iget v12, v0, Landroidx/appcompat/widget/o0;->h:I

    and-int/2addr v8, v12

    and-int/lit8 v12, v12, 0x70

    iget-boolean v13, v0, Landroidx/appcompat/widget/o0;->d:Z

    iget-object v14, v0, Landroidx/appcompat/widget/o0;->l:[I

    iget-object v15, v0, Landroidx/appcompat/widget/o0;->m:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-static {v8, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    if-eq v4, v9, :cond_b

    if-eq v4, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    goto :goto_6

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v4, v0, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v2, v4

    goto :goto_6

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v4, p4, p2

    iget v8, v0, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v4, v8

    const/4 v8, 0x2

    div-int/2addr v4, v8

    add-int/2addr v2, v4

    :goto_6
    if-eqz v1, :cond_c

    add-int/lit8 v1, v11, -0x1

    const/4 v8, -0x1

    goto :goto_7

    :cond_c
    move v8, v9

    const/4 v1, 0x0

    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v11, :cond_17

    mul-int v17, v8, v9

    add-int v5, v17, v1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_e

    move/from16 p3, v1

    :cond_d
    move/from16 p4, v8

    move/from16 p5, v11

    move/from16 v19, v12

    const/4 v12, -0x1

    const/16 v16, 0x1

    goto/16 :goto_c

    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 p3, v1

    const/16 v1, 0x8

    if-eq v4, v1, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Landroidx/appcompat/widget/n0;

    move/from16 p4, v8

    if-eqz v13, :cond_f

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 p5, v11

    const/4 v11, -0x1

    if-eq v8, v11, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v11

    goto :goto_9

    :cond_f
    move/from16 p5, v11

    :cond_10
    const/4 v11, -0x1

    :goto_9
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v8, :cond_11

    move v8, v12

    :cond_11
    and-int/lit8 v8, v8, 0x70

    move/from16 v19, v12

    const/16 v12, 0x10

    if-eq v8, v12, :cond_15

    const/16 v12, 0x30

    if-eq v8, v12, :cond_14

    const/16 v12, 0x50

    if-eq v8, v12, :cond_13

    move v8, v3

    const/4 v12, -0x1

    :cond_12
    :goto_a
    const/16 v16, 0x1

    goto :goto_b

    :cond_13
    sub-int v8, v10, v18

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v11

    const/4 v11, 0x2

    aget v21, v15, v11

    sub-int v21, v21, v20

    sub-int v8, v8, v21

    goto :goto_a

    :cond_14
    const/4 v12, -0x1

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v3

    if-eq v11, v12, :cond_12

    const/16 v16, 0x1

    aget v20, v14, v16

    sub-int v20, v20, v11

    add-int v8, v20, v8

    goto :goto_b

    :cond_15
    const/4 v12, -0x1

    const/16 v16, 0x1

    sub-int v8, v6, v18

    const/4 v11, 0x2

    div-int/2addr v8, v11

    add-int/2addr v8, v3

    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v11

    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v11

    :goto_b
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v5

    if-eqz v5, :cond_16

    iget v5, v0, Landroidx/appcompat/widget/o0;->o:I

    add-int/2addr v2, v5

    :cond_16
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    add-int v5, v2, v4

    add-int v11, v8, v18

    invoke-virtual {v7, v2, v8, v5, v11}, Landroid/view/View;->layout(IIII)V

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    move v2, v4

    :goto_c
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    move/from16 v8, p4

    move/from16 v11, p5

    move/from16 v12, v19

    const/16 v5, 0x50

    const/16 v7, 0x10

    goto/16 :goto_8

    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .locals 41

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget v0, v6, Landroidx/appcompat/widget/o0;->g:I

    iget v9, v6, Landroidx/appcompat/widget/o0;->j:F

    const/4 v11, -0x2

    iget-boolean v12, v6, Landroidx/appcompat/widget/o0;->k:Z

    const/high16 v13, 0x40000000    # 2.0f

    const/16 v14, 0x8

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_29

    iput v4, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    move/from16 v24, v3

    move v10, v4

    move v15, v10

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v25, v23

    move/from16 v18, v16

    :goto_0
    if-ge v10, v2, :cond_11

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    if-nez v26, :cond_0

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    :goto_1
    move v11, v0

    move/from16 v30, v2

    const/16 v27, 0x1

    goto/16 :goto_a

    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v14, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v4, v6, Landroidx/appcompat/widget/o0;->p:I

    add-int/2addr v3, v4

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/appcompat/widget/n0;

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v18, v18, v3

    if-ne v0, v13, :cond_3

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_3

    cmpl-float v5, v3, v16

    if-lez v5, :cond_3

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v3

    iget v14, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v14

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    move v11, v0

    move/from16 v29, v1

    move/from16 v30, v2

    move-object v13, v4

    const/4 v3, 0x1

    const/high16 v7, -0x80000000

    const/16 v27, 0x1

    goto :goto_4

    :cond_3
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_4

    cmpl-float v3, v3, v16

    if-lez v3, :cond_4

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/high16 v14, -0x80000000

    :goto_2
    cmpl-float v3, v18, v16

    if-nez v3, :cond_5

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    move v5, v3

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const/4 v3, 0x0

    move v11, v0

    move-object/from16 v0, p0

    move/from16 v29, v1

    move-object/from16 v1, v26

    move/from16 v30, v2

    move/from16 v2, p1

    const/16 v27, 0x1

    move-object v13, v4

    move/from16 v4, p2

    const/high16 v7, -0x80000000

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-eq v14, v7, :cond_6

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroidx/appcompat/widget/o0;->i:I

    add-int v2, v1, v0

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/o0;->i:I

    if-eqz v12, :cond_7

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_7
    move/from16 v3, v21

    :goto_4
    iget v0, v6, Landroidx/appcompat/widget/o0;->e:I

    if-ltz v0, :cond_8

    add-int/lit8 v1, v10, 0x1

    if-ne v0, v1, :cond_8

    iget v1, v6, Landroidx/appcompat/widget/o0;->i:I

    iput v1, v6, Landroidx/appcompat/widget/o0;->f:I

    :cond_8
    if-ge v10, v0, :cond_9

    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_a

    :cond_9
    move/from16 v1, v29

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    if-eq v1, v0, :cond_b

    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    move/from16 v4, v27

    move/from16 v25, v4

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    move/from16 v5, v22

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    move/from16 v7, v23

    invoke-static {v7, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    if-eqz v24, :cond_c

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/4 v0, -0x1

    if-ne v14, v0, :cond_d

    move/from16 v0, v27

    goto :goto_7

    :cond_c
    move/from16 v21, v0

    :cond_d
    const/4 v0, 0x0

    :goto_7
    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v13, v13, v16

    if-lez v13, :cond_f

    move/from16 v13, v20

    if-eqz v4, :cond_e

    move/from16 v2, v21

    :cond_e
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto :goto_9

    :cond_f
    move/from16 v13, v20

    if-eqz v4, :cond_10

    move/from16 v4, v19

    move/from16 v2, v21

    goto :goto_8

    :cond_10
    move/from16 v4, v19

    :goto_8
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v20, v13

    :goto_9
    move/from16 v24, v0

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v7

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    move v0, v11

    move/from16 v3, v27

    move/from16 v2, v30

    const/4 v4, 0x0

    const/4 v11, -0x2

    const/high16 v13, 0x40000000    # 2.0f

    const/16 v14, 0x8

    goto/16 :goto_0

    :cond_11
    move v11, v0

    move/from16 v30, v2

    move/from16 v27, v3

    move/from16 v4, v19

    move/from16 v13, v20

    move/from16 v5, v22

    move/from16 v7, v23

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    move/from16 v10, v30

    if-lez v0, :cond_12

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v2, v6, Landroidx/appcompat/widget/o0;->p:I

    add-int/2addr v0, v2

    iput v0, v6, Landroidx/appcompat/widget/o0;->i:I

    :cond_12
    if-eqz v12, :cond_14

    const/high16 v0, -0x80000000

    if-eq v11, v0, :cond_13

    if-nez v11, :cond_14

    :cond_13
    const/4 v14, 0x0

    goto :goto_b

    :cond_14
    move/from16 v19, v5

    goto :goto_f

    :goto_b
    iput v14, v6, Landroidx/appcompat/widget/o0;->i:I

    move v0, v14

    :goto_c
    if-ge v0, v10, :cond_14

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_15

    iget v2, v6, Landroidx/appcompat/widget/o0;->i:I

    iput v2, v6, Landroidx/appcompat/widget/o0;->i:I

    goto :goto_d

    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v14, 0x8

    if-ne v3, v14, :cond_16

    :goto_d
    move/from16 v19, v5

    goto :goto_e

    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/n0;

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    add-int v14, v3, v15

    move/from16 v19, v5

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v5

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v2

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Landroidx/appcompat/widget/o0;->i:I

    :goto_e
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v19

    const/4 v14, 0x0

    goto :goto_c

    :goto_f
    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v2, v0

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v2, v3

    if-nez v21, :cond_1b

    if-eqz v2, :cond_17

    cmpl-float v3, v18, v16

    if-lez v3, :cond_17

    goto :goto_12

    :cond_17
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v12, :cond_1a

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v11, v3, :cond_1a

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v10, :cond_1a

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v9, 0x8

    if-ne v5, v9, :cond_18

    goto :goto_11

    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/n0;

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v16

    if-lez v5, :cond_19

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v3, v5, v11}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1a
    move/from16 v8, p1

    move/from16 v22, v19

    goto/16 :goto_1d

    :cond_1b
    :goto_12
    cmpl-float v3, v9, v16

    if-lez v3, :cond_1c

    :goto_13
    const/4 v3, 0x0

    goto :goto_14

    :cond_1c
    move/from16 v9, v18

    goto :goto_13

    :goto_14
    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    move v3, v4

    move/from16 v5, v19

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v10, :cond_26

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1d

    move/from16 v8, p1

    goto/16 :goto_1c

    :cond_1d
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/n0;

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v15, v14, v16

    if-lez v15, :cond_22

    int-to-float v15, v2

    mul-float/2addr v15, v14

    div-float/2addr v15, v9

    float-to-int v15, v15

    sub-float/2addr v9, v14

    sub-int/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    add-int v17, v17, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v17, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v14, v17, v14

    move/from16 v17, v2

    iget v2, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v8, p1

    invoke-static {v8, v14, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v14, :cond_20

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v11, v14, :cond_1e

    goto :goto_17

    :cond_1e
    if-lez v15, :cond_1f

    goto :goto_16

    :cond_1f
    const/4 v15, 0x0

    :goto_16
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v12, v2, v15}, Landroid/view/View;->measure(II)V

    goto :goto_18

    :cond_20
    const/high16 v14, 0x40000000    # 2.0f

    :goto_17
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v15, v18, v15

    if-gez v15, :cond_21

    const/4 v15, 0x0

    :cond_21
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v12, v2, v15}, Landroid/view/View;->measure(II)V

    :goto_18
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v7, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    move/from16 v2, v17

    goto :goto_19

    :cond_22
    move/from16 v8, p1

    :goto_19
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v17, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_23

    iget v2, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v18, v5

    const/4 v5, -0x1

    if-ne v2, v5, :cond_24

    goto :goto_1a

    :cond_23
    move/from16 v18, v5

    const/4 v5, -0x1

    :cond_24
    move v14, v15

    :goto_1a
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v24, :cond_25

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v3, v5, :cond_25

    move/from16 v3, v27

    goto :goto_1b

    :cond_25
    const/4 v3, 0x0

    :goto_1b
    iget v5, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v6, Landroidx/appcompat/widget/o0;->i:I

    move/from16 v24, v3

    move/from16 v5, v18

    move v3, v2

    move/from16 v2, v17

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, p2

    goto/16 :goto_15

    :cond_26
    move/from16 v8, p1

    iget v2, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v4

    add-int/2addr v9, v2

    iput v9, v6, Landroidx/appcompat/widget/o0;->i:I

    move v2, v3

    move/from16 v22, v5

    :goto_1d
    if-nez v24, :cond_27

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_27

    goto :goto_1e

    :cond_27
    move/from16 v2, v22

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v8, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v25, :cond_62

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v10, :cond_62

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_28

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/n0;

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_28
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_29
    move/from16 v27, v3

    move v0, v4

    move v8, v7

    const/high16 v7, -0x80000000

    iput v0, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    iget-object v0, v6, Landroidx/appcompat/widget/o0;->l:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_2a

    iget-object v0, v6, Landroidx/appcompat/widget/o0;->m:[I

    if-nez v0, :cond_2b

    :cond_2a
    new-array v0, v14, [I

    iput-object v0, v6, Landroidx/appcompat/widget/o0;->l:[I

    new-array v0, v14, [I

    iput-object v0, v6, Landroidx/appcompat/widget/o0;->m:[I

    :cond_2b
    iget-object v15, v6, Landroidx/appcompat/widget/o0;->l:[I

    iget-object v5, v6, Landroidx/appcompat/widget/o0;->m:[I

    const/16 v18, 0x3

    const/4 v0, -0x1

    aput v0, v15, v18

    const/16 v19, 0x2

    aput v0, v15, v19

    aput v0, v15, v27

    const/4 v1, 0x0

    aput v0, v15, v1

    aput v0, v5, v18

    aput v0, v5, v19

    aput v0, v5, v27

    aput v0, v5, v1

    iget-boolean v4, v6, Landroidx/appcompat/widget/o0;->d:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v11, v0, :cond_2c

    move/from16 v20, v27

    goto :goto_20

    :cond_2c
    const/16 v20, 0x0

    :goto_20
    move/from16 v25, v16

    move/from16 v21, v27

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v31, 0x0

    :goto_21
    if-ge v3, v10, :cond_3f

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2d

    iget v7, v6, Landroidx/appcompat/widget/o0;->i:I

    iput v7, v6, Landroidx/appcompat/widget/o0;->i:I

    move/from16 v26, v3

    move/from16 v29, v4

    move-object/from16 v30, v5

    goto/16 :goto_2e

    :cond_2d
    move/from16 v26, v0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v29, v1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    move-object/from16 v30, v5

    move/from16 v0, v26

    move/from16 v1, v29

    move/from16 v26, v3

    move/from16 v29, v4

    goto/16 :goto_2e

    :cond_2e
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v1, v6, Landroidx/appcompat/widget/o0;->o:I

    add-int/2addr v0, v1

    iput v0, v6, Landroidx/appcompat/widget/o0;->i:I

    :cond_2f
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/n0;

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v25, v25, v0

    move/from16 v30, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v11, v2, :cond_32

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v2, :cond_32

    cmpl-float v2, v0, v16

    if-lez v2, :cond_32

    if-eqz v20, :cond_30

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v32, v3

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iput v2, v6, Landroidx/appcompat/widget/o0;->i:I

    goto :goto_22

    :cond_30
    move/from16 v32, v3

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/o0;->i:I

    :goto_22
    if-eqz v4, :cond_31

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v7, v2, v2}, Landroid/view/View;->measure(II)V

    move-object v0, v1

    move/from16 v38, v26

    move/from16 v35, v29

    move/from16 v37, v30

    move/from16 v26, v32

    move/from16 v29, v4

    move-object/from16 v30, v5

    goto/16 :goto_27

    :cond_31
    move-object v0, v1

    move/from16 v38, v26

    move/from16 v3, v27

    move/from16 v35, v29

    move/from16 v37, v30

    move/from16 v26, v32

    const/high16 v1, 0x40000000    # 2.0f

    move/from16 v29, v4

    move-object/from16 v30, v5

    goto/16 :goto_28

    :cond_32
    move/from16 v32, v3

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v2, :cond_33

    cmpl-float v0, v0, v16

    if-lez v0, :cond_33

    const/4 v0, -0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    goto :goto_23

    :cond_33
    const/high16 v3, -0x80000000

    :goto_23
    cmpl-float v0, v25, v16

    if-nez v0, :cond_34

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    move/from16 v33, v0

    goto :goto_24

    :cond_34
    const/16 v33, 0x0

    :goto_24
    const/16 v34, 0x0

    move/from16 v2, v26

    move-object/from16 v0, p0

    move-object/from16 v36, v1

    move/from16 v35, v29

    move-object v1, v7

    move/from16 v38, v2

    move/from16 v37, v30

    move/from16 v2, p1

    move/from16 v39, v3

    move/from16 v26, v32

    move/from16 v3, v33

    move/from16 v29, v4

    move/from16 v4, p2

    move-object/from16 v30, v5

    move/from16 v5, v34

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    move/from16 v1, v39

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_35

    move-object/from16 v0, v36

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_25

    :cond_35
    move-object/from16 v0, v36

    :goto_25
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v20, :cond_36

    iget v2, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    goto :goto_26

    :cond_36
    iget v2, v6, Landroidx/appcompat/widget/o0;->i:I

    add-int v3, v2, v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Landroidx/appcompat/widget/o0;->i:I

    :goto_26
    if-eqz v12, :cond_37

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_37
    :goto_27
    move/from16 v3, v22

    const/high16 v1, 0x40000000    # 2.0f

    :goto_28
    if-eq v13, v1, :cond_38

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    move/from16 v4, v27

    move/from16 v24, v4

    goto :goto_29

    :cond_38
    const/4 v4, 0x0

    :goto_29
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v22, v1

    move/from16 v1, v31

    invoke-static {v1, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    if-eqz v29, :cond_3a

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3a

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v7, :cond_39

    iget v7, v6, Landroidx/appcompat/widget/o0;->h:I

    :cond_39
    and-int/lit8 v7, v7, 0x70

    const/16 v23, 0x4

    shr-int/lit8 v7, v7, 0x4

    const/16 v28, -0x2

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    move/from16 v31, v1

    aget v1, v15, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v7

    aget v1, v30, v7

    sub-int v5, v2, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v30, v7

    :goto_2a
    move/from16 v5, v37

    goto :goto_2b

    :cond_3a
    move/from16 v31, v1

    goto :goto_2a

    :goto_2b
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v21, :cond_3b

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3b

    move/from16 v5, v27

    goto :goto_2c

    :cond_3b
    const/4 v5, 0x0

    :goto_2c
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3d

    if-eqz v4, :cond_3c

    move/from16 v2, v22

    :cond_3c
    move/from16 v0, v38

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v2, v35

    goto :goto_2d

    :cond_3d
    move/from16 v0, v38

    if-eqz v4, :cond_3e

    move/from16 v2, v22

    :cond_3e
    move/from16 v4, v35

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_2d
    move/from16 v22, v3

    move/from16 v21, v5

    move/from16 v40, v2

    move v2, v1

    move/from16 v1, v40

    :goto_2e
    add-int/lit8 v3, v26, 0x1

    move/from16 v4, v29

    move-object/from16 v5, v30

    const/high16 v7, -0x80000000

    goto/16 :goto_21

    :cond_3f
    move/from16 v29, v4

    move-object/from16 v30, v5

    move v4, v1

    move v5, v2

    move/from16 v1, v31

    iget v2, v6, Landroidx/appcompat/widget/o0;->i:I

    if-lez v2, :cond_40

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/o0;->j(I)Z

    move-result v2

    if-eqz v2, :cond_40

    iget v2, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v3, v6, Landroidx/appcompat/widget/o0;->o:I

    add-int/2addr v2, v3

    iput v2, v6, Landroidx/appcompat/widget/o0;->i:I

    :cond_40
    aget v2, v15, v27

    const/4 v3, -0x1

    move/from16 v26, v1

    if-ne v2, v3, :cond_42

    const/4 v7, 0x0

    aget v1, v15, v7

    if-ne v1, v3, :cond_42

    aget v1, v15, v19

    if-ne v1, v3, :cond_42

    aget v1, v15, v18

    if-eq v1, v3, :cond_41

    goto :goto_2f

    :cond_41
    move v2, v5

    move/from16 v31, v13

    goto :goto_30

    :cond_42
    :goto_2f
    aget v1, v15, v18

    const/4 v3, 0x0

    aget v7, v15, v3

    aget v3, v15, v19

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v2, v30, v18

    const/4 v3, 0x0

    aget v7, v30, v3

    aget v3, v30, v27

    move/from16 v31, v13

    aget v13, v30, v19

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_30
    if-eqz v12, :cond_47

    const/high16 v1, -0x80000000

    if-eq v11, v1, :cond_43

    if-nez v11, :cond_47

    :cond_43
    const/4 v1, 0x0

    iput v1, v6, Landroidx/appcompat/widget/o0;->i:I

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v10, :cond_47

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_44

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    goto :goto_32

    :cond_44
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_45

    goto :goto_32

    :cond_45
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/n0;

    if-eqz v20, :cond_46

    iget v5, v6, Landroidx/appcompat/widget/o0;->i:I

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v14

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    iput v7, v6, Landroidx/appcompat/widget/o0;->i:I

    goto :goto_32

    :cond_46
    iget v5, v6, Landroidx/appcompat/widget/o0;->i:I

    add-int v7, v5, v14

    iget v13, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v13

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_47
    iget v1, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    iput v5, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v8, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v3, v1

    iget v5, v6, Landroidx/appcompat/widget/o0;->i:I

    sub-int/2addr v3, v5

    if-nez v22, :cond_4c

    if-eqz v3, :cond_48

    cmpl-float v7, v25, v16

    if-lez v7, :cond_48

    goto :goto_35

    :cond_48
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v12, :cond_4b

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v11, v3, :cond_4b

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v10, :cond_4b

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v9, 0x8

    if-ne v7, v9, :cond_49

    goto :goto_34

    :cond_49
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/n0;

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v7, v7, v16

    if-lez v7, :cond_4a

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v3, v9, v11}, Landroid/view/View;->measure(II)V

    :cond_4a
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_4b
    move/from16 v8, p2

    move/from16 v5, v31

    const/4 v9, 0x0

    move/from16 v31, v26

    goto/16 :goto_46

    :cond_4c
    :goto_35
    cmpl-float v0, v9, v16

    if-lez v0, :cond_4d

    :goto_36
    const/4 v0, -0x1

    goto :goto_37

    :cond_4d
    move/from16 v9, v25

    goto :goto_36

    :goto_37
    aput v0, v15, v18

    aput v0, v15, v19

    aput v0, v15, v27

    const/4 v2, 0x0

    aput v0, v15, v2

    aput v0, v30, v18

    aput v0, v30, v19

    aput v0, v30, v27

    aput v0, v30, v2

    iput v2, v6, Landroidx/appcompat/widget/o0;->i:I

    move/from16 v7, v26

    const/4 v0, 0x0

    const/4 v2, -0x1

    :goto_38
    if-ge v0, v10, :cond_5c

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_4e

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4f

    :cond_4e
    move/from16 v8, p2

    move/from16 v5, v31

    const/16 v23, -0x2

    goto/16 :goto_43

    :cond_4f
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/n0;

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v17, v14, v16

    if-lez v17, :cond_54

    int-to-float v5, v3

    mul-float/2addr v5, v14

    div-float/2addr v5, v9

    float-to-int v5, v5

    sub-float/2addr v9, v14

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    add-int v22, v22, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v22, v22, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v14, v22, v14

    move/from16 v22, v3

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v8, p2

    invoke-static {v8, v14, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v14, :cond_52

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v11, v14, :cond_50

    goto :goto_3a

    :cond_50
    if-lez v5, :cond_51

    goto :goto_39

    :cond_51
    const/4 v5, 0x0

    :goto_39
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3b

    :cond_52
    const/high16 v14, 0x40000000    # 2.0f

    :goto_3a
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v5, v25, v5

    if-gez v5, :cond_53

    const/4 v5, 0x0

    :cond_53
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v3}, Landroid/view/View;->measure(II)V

    :goto_3b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    invoke-static {v7, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    move/from16 v3, v22

    goto :goto_3c

    :cond_54
    move/from16 v8, p2

    :goto_3c
    if-eqz v20, :cond_55

    iget v5, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move/from16 v22, v3

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v3

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v3

    add-int/2addr v14, v5

    iput v14, v6, Landroidx/appcompat/widget/o0;->i:I

    :goto_3d
    move/from16 v5, v31

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_3e

    :cond_55
    move/from16 v22, v3

    iget v3, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v14

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroidx/appcompat/widget/o0;->i:I

    goto :goto_3d

    :goto_3e
    if-eq v5, v3, :cond_56

    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v3, v14, :cond_56

    move/from16 v3, v27

    goto :goto_3f

    :cond_56
    const/4 v3, 0x0

    :goto_3f
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v25, v7

    iget v7, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v14

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v3, :cond_57

    goto :goto_40

    :cond_57
    move v14, v7

    :goto_40
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v21, :cond_58

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_59

    move/from16 v4, v27

    goto :goto_41

    :cond_58
    const/4 v14, -0x1

    :cond_59
    const/4 v4, 0x0

    :goto_41
    if-eqz v29, :cond_5b

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v12

    if-eq v12, v14, :cond_5b

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v13, :cond_5a

    iget v13, v6, Landroidx/appcompat/widget/o0;->h:I

    :cond_5a
    and-int/lit8 v13, v13, 0x70

    const/4 v14, 0x4

    shr-int/2addr v13, v14

    const/16 v23, -0x2

    and-int/lit8 v13, v13, -0x2

    shr-int/lit8 v13, v13, 0x1

    aget v14, v15, v13

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v15, v13

    aget v14, v30, v13

    sub-int/2addr v7, v12

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v30, v13

    goto :goto_42

    :cond_5b
    const/16 v23, -0x2

    :goto_42
    move/from16 v21, v4

    move/from16 v7, v25

    move v4, v3

    move/from16 v3, v22

    :goto_43
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p1

    move/from16 v31, v5

    goto/16 :goto_38

    :cond_5c
    move/from16 v8, p2

    move/from16 v5, v31

    iget v0, v6, Landroidx/appcompat/widget/o0;->i:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v3

    add-int/2addr v9, v0

    iput v9, v6, Landroidx/appcompat/widget/o0;->i:I

    aget v0, v15, v27

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5e

    const/4 v9, 0x0

    aget v11, v15, v9

    if-ne v11, v3, :cond_5e

    aget v9, v15, v19

    if-ne v9, v3, :cond_5e

    aget v9, v15, v18

    if-eq v9, v3, :cond_5d

    goto :goto_44

    :cond_5d
    const/4 v9, 0x0

    goto :goto_45

    :cond_5e
    :goto_44
    aget v3, v15, v18

    const/4 v9, 0x0

    aget v11, v15, v9

    aget v12, v15, v19

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v3, v30, v18

    aget v11, v30, v9

    aget v12, v30, v27

    aget v13, v30, v19

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    :goto_45
    move v0, v4

    move/from16 v31, v7

    :goto_46
    if-nez v21, :cond_5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v5, v3, :cond_5f

    goto :goto_47

    :cond_5f
    move v0, v2

    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int v2, v31, v2

    or-int/2addr v1, v2

    shl-int/lit8 v2, v31, 0x10

    invoke-static {v0, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v24, :cond_62

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_48
    if-ge v9, v10, :cond_62

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_60

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/n0;

    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_61

    iget v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_49

    :cond_60
    const/4 v12, -0x1

    :cond_61
    :goto_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_48

    :cond_62
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
