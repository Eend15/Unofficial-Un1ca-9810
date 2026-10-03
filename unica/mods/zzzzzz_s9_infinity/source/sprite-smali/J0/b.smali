.class public final LJ0/b;
.super LK/I;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/b;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 p1, -0x1

    iput p1, p0, LJ0/b;->b:I

    return-void
.end method


# virtual methods
.method public final Q(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public final i(Landroid/view/View;I)I
    .locals 3

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LJ0/b;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget v0, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p0, p0, LJ0/b;->a:I

    goto :goto_2

    :cond_1
    iget v0, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_1
    add-int/2addr p0, v0

    goto :goto_2

    :cond_2
    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_1

    :cond_3
    iget v0, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p0, p0, LJ0/b;->a:I

    goto :goto_2

    :cond_4
    iget v0, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    :goto_2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final i0(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, LJ0/b;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, LJ0/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final j(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public final j0(I)V
    .locals 0

    iget-object p0, p0, LJ0/b;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final k0(Landroid/view/View;II)V
    .locals 3

    iget p3, p0, LJ0/b;->a:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LJ0/b;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    mul-float/2addr v0, v2

    add-float/2addr v0, p3

    iget p0, p0, LJ0/b;->a:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    mul-float/2addr p3, v1

    add-float/2addr p3, p0

    int-to-float p0, p2

    cmpg-float p2, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    cmpl-float p2, p0, p3

    const/4 v2, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    sub-float/2addr p0, v0

    sub-float/2addr p3, v0

    div-float/2addr p0, p3

    sub-float p0, v1, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final l0(Landroid/view/View;FF)V
    .locals 8

    const/4 p3, -0x1

    iput p3, p0, LJ0/b;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    iget-object v3, p0, LJ0/b;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    sget-object v5, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget v6, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_7

    goto :goto_1

    :cond_2
    if-lez v1, :cond_7

    goto :goto_1

    :cond_3
    if-ne v6, v2, :cond_7

    if-eqz v5, :cond_4

    if-lez v1, :cond_7

    goto :goto_1

    :cond_4
    cmpg-float p2, p2, v0

    if-gez p2, :cond_7

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, LJ0/b;->a:I

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v0, :cond_7

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget p0, p0, LJ0/b;->a:I

    if-ge p2, p0, :cond_6

    sub-int/2addr p0, p3

    goto :goto_2

    :cond_6
    add-int/2addr p0, p3

    goto :goto_2

    :cond_7
    iget p0, p0, LJ0/b;->a:I

    move v2, v4

    :goto_2
    iget-object p2, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LM/d;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2, p0, p3}, LM/d;->o(II)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, LH/a;

    invoke-direct {p0, v3, p1, v2}, LH/a;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    sget-object p2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public final w0(Landroid/view/View;I)Z
    .locals 2

    iget v0, p0, LJ0/b;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object p0, p0, LJ0/b;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
