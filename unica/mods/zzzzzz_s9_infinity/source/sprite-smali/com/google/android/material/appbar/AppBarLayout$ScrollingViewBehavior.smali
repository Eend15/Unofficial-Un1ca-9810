.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super LH0/b;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    sget-object v0, LF0/j;->ScrollingViewBehavior_Layout:[I

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget p2, LF0/j;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 11
    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->b:I

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static s(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lx/d;

    iget-object v0, v0, Lx/d;->a:Lx/a;

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->b:I

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v2, p0}, Lw0/f;->j(III)I

    move-result p0

    :goto_0
    sub-int/2addr p2, p0

    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    return v2
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p3, -0x1

    if-eq p0, p3, :cond_0

    const/4 p3, -0x2

    if-ne p0, p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->s(Ljava/util/ArrayList;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->s(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->s(Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    return-void
.end method
