.class public abstract LH0/b;
.super Lx/a;
.source "SourceFile"


# instance fields
.field public a:LH0/c;


# virtual methods
.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LH0/b;->r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, LH0/b;->a:LH0/c;

    if-nez p1, :cond_0

    new-instance p1, LH0/c;

    invoke-direct {p1, p2}, LH0/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, LH0/b;->a:LH0/c;

    :cond_0
    iget-object p1, p0, LH0/b;->a:LH0/c;

    iget-object p2, p1, LH0/c;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, LH0/c;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, LH0/c;->f:I

    iget-object p0, p0, LH0/b;->a:LH0/c;

    iget-object p1, p0, LH0/c;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, LH0/c;->d:I

    sub-int/2addr p2, p3

    rsub-int/lit8 p2, p2, 0x0

    sget-object p3, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget p0, p0, LH0/c;->f:I

    sub-int/2addr p2, p0

    rsub-int/lit8 p0, p2, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    return-void
.end method
