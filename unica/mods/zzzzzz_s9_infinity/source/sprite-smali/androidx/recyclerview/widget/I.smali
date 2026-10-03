.class public abstract Landroidx/recyclerview/widget/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lw0/m;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/recyclerview/widget/a0;

.field public final d:Landroidx/recyclerview/widget/a0;

.field public e:Landroidx/recyclerview/widget/x;

.field public f:Z

.field public g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/G;-><init>(Landroidx/recyclerview/widget/I;I)V

    new-instance v1, Landroidx/recyclerview/widget/G;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/G;-><init>(Landroidx/recyclerview/widget/I;I)V

    new-instance v2, Landroidx/recyclerview/widget/a0;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/a0;-><init>(Landroidx/recyclerview/widget/G;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/I;->c:Landroidx/recyclerview/widget/a0;

    new-instance v0, Landroidx/recyclerview/widget/a0;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/a0;-><init>(Landroidx/recyclerview/widget/G;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/I;->d:Landroidx/recyclerview/widget/a0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/I;->f:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/I;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/I;->h:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/I;->i:Z

    return-void
.end method

.method public static D(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->b()I

    move-result p0

    return p0
.end method

.method public static E(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/H;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LZ/c;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, LZ/c;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/H;->a:I

    sget p1, LZ/c;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/H;->b:I

    sget p1, LZ/c;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/H;->c:Z

    sget p1, LZ/c;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/H;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static I(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static J(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object v1, v0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static g(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static w(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_2

    if-ltz p3, :cond_0

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_0
    if-ne p3, v1, :cond_1

    if-eq p1, v2, :cond_4

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_4

    :cond_1
    move p1, p2

    move p3, p1

    goto :goto_2

    :cond_2
    if-ltz p3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_5

    :cond_4
    move p3, p0

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_1

    if-eq p1, v2, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_1

    :cond_6
    move p3, p0

    move p1, p2

    goto :goto_2

    :cond_7
    :goto_1
    move p3, p0

    move p1, v2

    :goto_2
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static y(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object v1, v0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final B()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final C()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {p0}, LU3/b0;->c()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public final G(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object v0, v0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public abstract H()Z
.end method

.method public K(I)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->k()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v2, v1}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L(I)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v0}, Lw0/m;->k()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    invoke-virtual {v2, v1}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract M(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract N(Landroid/view/View;ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)Landroid/view/View;
.end method

.method public O(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LU3/b0;->c()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final P(Landroid/view/View;LL/d;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/I;->Q(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroid/view/View;LL/d;)V

    :cond_0
    return-void
.end method

.method public Q(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroid/view/View;LL/d;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->e()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, p2

    :goto_1
    const/4 p3, 0x1

    invoke-static {p1, p3, p0, p3, p2}, LA1/e;->S(IIIIZ)LA1/e;

    move-result-object p0

    invoke-virtual {p4, p0}, LL/d;->g(LA1/e;)V

    return-void
.end method

.method public R(II)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T(II)V
    .locals 0

    return-void
.end method

.method public U(II)V
    .locals 0

    return-void
.end method

.method public V(II)V
    .locals 0

    return-void
.end method

.method public abstract W(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)V
.end method

.method public abstract X(Landroidx/recyclerview/widget/S;)V
.end method

.method public abstract Y(Landroid/os/Parcelable;)V
.end method

.method public abstract Z()Landroid/os/Parcelable;
.end method

.method public a0(I)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 7

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->i()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/a0;->j(Landroidx/recyclerview/widget/U;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    iget-object p3, p3, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast p3, Ln/j;

    invoke-virtual {p3, v0}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/e0;

    if-nez v2, :cond_2

    invoke-static {}, Landroidx/recyclerview/widget/e0;->a()Landroidx/recyclerview/widget/e0;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p3, v2, Landroidx/recyclerview/widget/e0;->a:I

    or-int/2addr p3, v1

    iput p3, v2, Landroidx/recyclerview/widget/e0;->a:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/J;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->q()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, -0x1

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    iget-object v4, v2, Lw0/m;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/C;

    iget-object v4, v4, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v4, v5, :cond_4

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_4
    iget-object v2, v2, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/c;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/c;->b(I)I

    move-result v2

    sub-int/2addr v4, v2

    :goto_3
    if-ne p2, v5, :cond_6

    iget-object p2, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {p2}, Lw0/m;->k()I

    move-result p2

    :cond_6
    if-eq v4, v5, :cond_a

    if-eq v4, p2, :cond_f

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {v2, v4}, Lw0/m;->g(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/J;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    iget-object v5, v5, Landroidx/recyclerview/widget/a0;->a:Ljava/lang/Object;

    check-cast v5, Ln/j;

    invoke-virtual {v5, v4}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/e0;

    if-nez v6, :cond_7

    invoke-static {}, Landroidx/recyclerview/widget/e0;->a()Landroidx/recyclerview/widget/e0;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v5, v6, Landroidx/recyclerview/widget/e0;->a:I

    or-int/2addr v1, v5

    iput v1, v6, Landroidx/recyclerview/widget/e0;->a:I

    goto :goto_4

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/a0;->j(Landroidx/recyclerview/widget/U;)V

    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v2, v1}, Lw0/m;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_7

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot move a child from non-existing index:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    iget-object v2, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {v2, p1, p2, v3}, Lw0/m;->b(Landroid/view/View;IZ)V

    iput-boolean v1, p3, Landroidx/recyclerview/widget/J;->c:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz p0, :cond_f

    iget-boolean p2, p0, Landroidx/recyclerview/widget/x;->e:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroidx/recyclerview/widget/U;->b()I

    move-result v5

    :cond_c
    iget p2, p0, Landroidx/recyclerview/widget/x;->a:I

    if-ne v5, p2, :cond_f

    iput-object p1, p0, Landroidx/recyclerview/widget/x;->f:Landroid/view/View;

    goto :goto_7

    :cond_d
    :goto_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/U;->j()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroidx/recyclerview/widget/U;->n:Landroidx/recyclerview/widget/M;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/M;->j(Landroidx/recyclerview/widget/U;)V

    goto :goto_6

    :cond_e
    iget v1, v0, Landroidx/recyclerview/widget/U;->j:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroidx/recyclerview/widget/U;->j:I

    :goto_6
    iget-object p0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v3}, Lw0/m;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_f
    :goto_7
    iget-boolean p0, p3, Landroidx/recyclerview/widget/J;->d:Z

    if-eqz p0, :cond_10

    iget-object p0, v0, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v3, p3, Landroidx/recyclerview/widget/J;->d:Z

    :cond_10
    return-void
.end method

.method public final b0(Landroidx/recyclerview/widget/M;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->e0(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/M;->f(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public final c0(Landroidx/recyclerview/widget/M;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/M;->a:Ljava/util/ArrayList;

    if-ltz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/U;

    iget-object v2, v2, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/U;->o(Z)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/j;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/j;->g(Landroidx/recyclerview/widget/U;)V

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/U;->o(Z)V

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/U;->n:Landroidx/recyclerview/widget/M;

    iput-boolean v4, v2, Landroidx/recyclerview/widget/U;->o:Z

    iget v3, v2, Landroidx/recyclerview/widget/U;->j:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Landroidx/recyclerview/widget/U;->j:I

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/M;->g(Landroidx/recyclerview/widget/U;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Landroidx/recyclerview/widget/M;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public abstract d()Z
.end method

.method public final d0(Landroid/view/View;Landroidx/recyclerview/widget/M;)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/C;

    iget-object v1, v0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/c;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/c;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lw0/m;->u(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/C;->h(I)V

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/M;->f(Landroid/view/View;)V

    return-void
.end method

.method public abstract e()Z
.end method

.method public final e0(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {p0, p1}, Lw0/m;->l(I)I

    move-result p1

    iget-object v0, p0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/C;

    iget-object v1, v0, Landroidx/recyclerview/widget/C;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/c;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/c;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lw0/m;->u(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/C;->h(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/J;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v3, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v7, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    filled-new-array {v2, v1}, [I

    move-result-object p2

    aget p3, p2, v0

    aget p2, p2, v7

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-static {p5, p0}, Landroidx/recyclerview/widget/I;->y(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p5, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p3

    if-ge p5, v3, :cond_6

    iget p5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    if-le p5, v1, :cond_6

    iget p5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p2

    if-ge p5, v4, :cond_6

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    if-gt p0, v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v0, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->c0(ZII)V

    :goto_5
    return v7
.end method

.method public final g0()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract h(IILandroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/o;)V
.end method

.method public abstract h0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
.end method

.method public i(ILandroidx/recyclerview/widget/o;)V
    .locals 0

    return-void
.end method

.method public abstract i0(I)V
.end method

.method public abstract j(Landroidx/recyclerview/widget/S;)I
.end method

.method public abstract j0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
.end method

.method public abstract k(Landroidx/recyclerview/widget/S;)I
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/I;->l0(II)V

    return-void
.end method

.method public abstract l(Landroidx/recyclerview/widget/S;)I
.end method

.method public final l0(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/I;->l:I

    if-nez p1, :cond_0

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/I;->m:I

    if-nez p1, :cond_1

    sget-object p0, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    :cond_1
    return-void
.end method

.method public abstract m(Landroidx/recyclerview/widget/S;)I
.end method

.method public m0(IILandroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result p3

    add-int/2addr p3, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/I;->g(III)I

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public abstract n(Landroidx/recyclerview/widget/S;)I
.end method

.method public final n0(II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroidx/recyclerview/widget/I;->y(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/I;->m0(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public abstract o(Landroidx/recyclerview/widget/S;)I
.end method

.method public final o0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/I;->n:I

    iput p1, p0, Landroidx/recyclerview/widget/I;->o:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->h:Lw0/m;

    iput-object v0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/I;->o:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroidx/recyclerview/widget/I;->l:I

    iput p1, p0, Landroidx/recyclerview/widget/I;->m:I

    return-void
.end method

.method public final p(Landroidx/recyclerview/widget/M;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-boolean v3, v3, LU3/b0;->b:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->e0(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/M;->g(Landroidx/recyclerview/widget/U;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    invoke-virtual {v3, v0}, Lw0/m;->g(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/M;->h(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/a0;->j(Landroidx/recyclerview/widget/U;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final p0(Landroid/view/View;IILandroidx/recyclerview/widget/J;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/I;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/I;->I(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/I;->I(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public q(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/U;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->b()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->p()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public q0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract r()Landroidx/recyclerview/widget/J;
.end method

.method public final r0(Landroid/view/View;IILandroidx/recyclerview/widget/J;)Z
    .locals 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/I;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/I;->I(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/I;->I(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public s(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/J;
    .locals 0

    new-instance p0, Landroidx/recyclerview/widget/J;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/J;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public abstract s0(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method public t(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/J;
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/J;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/J;

    check-cast p1, Landroidx/recyclerview/widget/J;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/J;-><init>(Landroidx/recyclerview/widget/J;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/recyclerview/widget/J;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/J;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/recyclerview/widget/J;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/J;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final t0(Landroidx/recyclerview/widget/x;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/x;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->g()V

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/I;->e:Landroidx/recyclerview/widget/x;

    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    iget-object v2, v1, Landroidx/recyclerview/widget/T;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Landroidx/recyclerview/widget/T;->f:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-boolean v1, p1, Landroidx/recyclerview/widget/x;->h:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Landroidx/recyclerview/widget/x;->c:Landroidx/recyclerview/widget/I;

    iget p0, p1, Landroidx/recyclerview/widget/x;->a:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    iput p0, v1, Landroidx/recyclerview/widget/S;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/recyclerview/widget/x;->e:Z

    iput-boolean v1, p1, Landroidx/recyclerview/widget/x;->d:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/I;->q(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, p1, Landroidx/recyclerview/widget/x;->f:Landroid/view/View;

    iget-object p0, p1, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/T;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/T;->a()V

    iput-boolean v1, p1, Landroidx/recyclerview/widget/x;->h:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lw0/m;->j(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract u0()Z
.end method

.method public final v()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lw0/m;->k()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public x(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {p0}, LU3/b0;->c()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public final z()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
