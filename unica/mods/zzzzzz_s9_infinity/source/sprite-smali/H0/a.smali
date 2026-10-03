.class public abstract LH0/a;
.super LH0/b;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/view/VelocityTracker;


# virtual methods
.method public final f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget p2, p0, LH0/a;->e:I

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, LH0/a;->e:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, LH0/a;->b:Z

    if-eqz p1, :cond_3

    iget p1, p0, LH0/a;->c:I

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, LH0/a;->d:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v2, p0, LH0/a;->e:I

    if-le p2, v2, :cond_3

    iput p1, p0, LH0/a;->d:I

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    return v1

    :cond_5
    iput v0, p0, LH0/a;->c:I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final q(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, LH0/a;->c:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, LH0/a;->d:I

    goto :goto_1

    :cond_2
    iget v0, p0, LH0/a;->c:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, LH0/a;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    iget-object v0, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    :cond_5
    iput-boolean v3, p0, LH0/a;->b:Z

    iput v1, p0, LH0/a;->c:I

    iget-object p1, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    :cond_6
    :goto_1
    iget-object p1, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    iget-boolean p0, p0, LH0/a;->b:Z

    return p0

    :cond_8
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p2, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p2, p0, LH0/a;->f:Landroid/view/VelocityTracker;

    iget p0, p0, LH0/a;->c:I

    invoke-virtual {p2, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
