.class public final LX0/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public d:Landroid/animation/ValueAnimator;

.field public e:I

.field public final synthetic f:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LX0/d;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, LX0/d;->e:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, LX0/d;->e:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, LX0/d;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->p:LG4/d;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, LG4/d;->e(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/RectF;->right:F

    float-to-int p0, p0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0, v1, p0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, LX0/d;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_0
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->m:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    if-eq v2, v4, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v1, v2, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v3, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->h:I

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, LX0/d;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, LX0/d;->e:I

    iget p2, p0, LX0/d;->e:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LX0/d;->a()V

    goto :goto_0

    :cond_0
    new-instance p3, LX0/b;

    invoke-direct {p3, p0, p2, p1}, LX0/b;-><init>(LX0/d;Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, LX0/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, LX0/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LX0/d;->a()V

    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LX0/d;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->n:I

    if-ne v1, v2, :cond_9

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-gtz v6, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Lcom/google/android/material/internal/m;->a(Landroid/content/Context;I)F

    move-result v5

    float-to-int v5, v5

    mul-int v7, v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    mul-int/2addr v5, v2

    sub-int/2addr v8, v5

    if-gt v7, v8, :cond_8

    move v0, v4

    :goto_1
    if-ge v4, v1, :cond_7

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_5

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_6

    :cond_5
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v0, v3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    iput v4, v0, Lcom/google/android/material/tabs/TabLayout;->l:I

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->a(Z)V

    :goto_2
    if-eqz v3, :cond_9

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_9
    return-void
.end method
