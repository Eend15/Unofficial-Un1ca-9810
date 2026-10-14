.class public final LR1/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final d:La2/f;

.field public final e:Lw0/c;

.field public f:LR1/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;La2/f;Lw0/c;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationController"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LR1/b;->d:La2/f;

    iput-object p3, p0, LR1/b;->e:Lw0/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LR1/b;->d:La2/f;

    iget-object v0, v0, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La2/f;

    iget-object v2, p0, LR1/b;->e:Lw0/c;

    const-string v3, "collision"

    invoke-virtual {v2, v3, v1}, Lw0/c;->D(Ljava/lang/String;La2/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, LR1/b;->f:LR1/d;

    if-nez p1, :cond_0

    new-instance p1, LR1/d;

    new-instance v0, LR1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, LR1/a;-><init>(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;I)V

    invoke-direct {p1, v0}, LR1/d;-><init>(LR1/a;)V

    iput-object p1, p0, LR1/b;->f:LR1/d;

    :cond_0
    iget-object p1, p0, LR1/b;->f:LR1/d;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, LR1/d;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method
