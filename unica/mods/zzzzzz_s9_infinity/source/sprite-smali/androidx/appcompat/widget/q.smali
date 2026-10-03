.class public final Landroidx/appcompat/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILU0/j;Landroid/graphics/Rect;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lw0/f;->e(I)V

    .line 7
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Lw0/f;->e(I)V

    .line 8
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lw0/f;->e(I)V

    .line 9
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Lw0/f;->e(I)V

    .line 10
    iput-object p6, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Landroidx/appcompat/widget/q;->c:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    .line 14
    iput p4, p0, Landroidx/appcompat/widget/q;->a:I

    .line 15
    iput-object p5, p0, Landroidx/appcompat/widget/q;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/q;->a:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/v;->a()Landroidx/appcompat/widget/v;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroidx/appcompat/widget/q;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v2, v1}, Lw0/f;->d(Ljava/lang/String;Z)V

    sget-object v1, LF0/j;->MaterialCalendarItem:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, LF0/j;->MaterialCalendarItem_android_insetLeft:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, LF0/j;->MaterialCalendarItem_android_insetTop:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, LF0/j;->MaterialCalendarItem_android_insetRight:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, LF0/j;->MaterialCalendarItem_android_insetBottom:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget v1, LF0/j;->MaterialCalendarItem_itemFillColor:I

    invoke-static {p0, p1, v1}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    sget v1, LF0/j;->MaterialCalendarItem_itemTextColor:I

    invoke-static {p0, p1, v1}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    sget v1, LF0/j;->MaterialCalendarItem_itemStrokeColor:I

    invoke-static {p0, p1, v1}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sget v1, LF0/j;->MaterialCalendarItem_itemStrokeWidth:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v1, LF0/j;->MaterialCalendarItem_itemShapeAppearance:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, LF0/j;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, LU0/a;

    int-to-float v0, v0

    invoke-direct {v3, v0}, LU0/a;-><init>(F)V

    invoke-static {p0, v1, v2, v3}, LU0/j;->b(Landroid/content/Context;IILU0/a;)LU0/j;

    move-result-object p0

    invoke-virtual {p0}, LU0/j;->a()LU0/j;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Landroidx/appcompat/widget/q;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroidx/appcompat/widget/q;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILU0/j;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/J0;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/widget/q;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/J0;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/appcompat/widget/J0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/q;->f:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/q;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/J0;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/appcompat/widget/J0;->d:Z

    iput-object v3, v2, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v2, Landroidx/appcompat/widget/J0;->c:Z

    sget-object v3, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LK/x;->b(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput-boolean v4, v2, Landroidx/appcompat/widget/J0;->d:Z

    iput-object v3, v2, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {v0}, LK/x;->c(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-boolean v4, v2, Landroidx/appcompat/widget/J0;->c:Z

    iput-object v3, v2, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v3, v2, Landroidx/appcompat/widget/J0;->d:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Landroidx/appcompat/widget/J0;->c:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroidx/appcompat/widget/v;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/J0;[I)V

    return-void

    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/J0;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroidx/appcompat/widget/v;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/J0;[I)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/J0;

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/v;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/J0;[I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public c(Landroid/util/AttributeSet;I)V
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lf/j;->ViewBackgroundHelper:[I

    invoke-static {v1, p1, v2, p2}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object v1

    iget-object v2, v1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/TypedArray;

    iget-object v3, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lf/j;->ViewBackgroundHelper:[I

    sget-object v3, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v3, v1, Ln1/a;->b:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Landroid/content/res/TypedArray;

    const/4 v10, 0x0

    move-object v7, p1

    move v9, p2

    invoke-static/range {v4 .. v10}, LK/B;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Lf/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    sget p1, Lf/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v2, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/q;->a:I

    iget-object p1, p0, Landroidx/appcompat/widget/q;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/v;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/widget/q;->a:I

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p1, Landroidx/appcompat/widget/v;->a:Landroidx/appcompat/widget/C0;

    invoke-virtual {v5, v3, v4}, Landroidx/appcompat/widget/C0;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/q;->f(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_0
    :goto_0
    sget p0, Lf/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lf/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, p0}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {v0, p0}, LK/x;->h(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p0, Lf/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lf/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v2, p0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/f0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    invoke-static {v0, p0}, LK/x;->i(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    invoke-virtual {v1}, Ln1/a;->w()V

    return-void

    :goto_1
    invoke-virtual {v1}, Ln1/a;->w()V

    throw p0
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/q;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/q;->f(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->a()V

    return-void
.end method

.method public e(I)V
    .locals 3

    iput p1, p0, Landroidx/appcompat/widget/q;->a:I

    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroidx/appcompat/widget/C0;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/C0;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->f(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->a()V

    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/J0;

    iput-object p1, v0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/J0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->a()V

    return-void
.end method

.method public g(Landroid/widget/TextView;)V
    .locals 9

    new-instance v0, LU0/g;

    invoke-direct {v0}, LU0/g;-><init>()V

    new-instance v1, LU0/g;

    invoke-direct {v1}, LU0/g;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/widget/q;->f:Ljava/lang/Object;

    check-cast v2, LU0/j;

    invoke-virtual {v0, v2}, LU0/g;->a(LU0/j;)V

    invoke-virtual {v1, v2}, LU0/g;->a(LU0/j;)V

    iget-object v2, p0, Landroidx/appcompat/widget/q;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    iget v2, p0, Landroidx/appcompat/widget/q;->a:I

    int-to-float v2, v2

    iget-object v3, v0, LU0/g;->d:LU0/f;

    iput v2, v3, LU0/f;->j:F

    invoke-virtual {v0}, LU0/g;->invalidateSelf()V

    iget-object v2, v0, LU0/g;->d:LU0/f;

    iget-object v3, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/ColorStateList;

    if-eq v3, v4, :cond_0

    iput-object v4, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, LU0/g;->onStateChange([I)Z

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/q;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object p0, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
