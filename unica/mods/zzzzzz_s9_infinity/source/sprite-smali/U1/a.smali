.class public final LU1/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public d:La2/f;

.field public e:Lw0/m;

.field public f:LR1/d;


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0}, LU1/a;->b()La2/f;

    move-result-object v0

    iget-object v0, v0, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La2/f;

    iget-object v2, p0, LU1/a;->e:Lw0/m;

    if-eqz v2, :cond_0

    const-string v3, "collision"

    invoke-virtual {v2, v3, v1}, Lw0/m;->h(Ljava/lang/String;La2/f;)V

    goto :goto_0

    :cond_0
    const-string p0, "animationController"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final b()La2/f;
    .locals 0

    iget-object p0, p0, LU1/a;->d:La2/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "container"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, LU1/a;->f:LR1/d;

    if-nez p1, :cond_0

    new-instance p1, LR1/d;

    new-instance v0, LR1/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, LR1/a;-><init>(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;I)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LR1/d;-><init>(LR1/a;B)V

    iput-object p1, p0, LU1/a;->f:LR1/d;

    :cond_0
    iget-object p1, p0, LU1/a;->f:LR1/d;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, LR1/d;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method
