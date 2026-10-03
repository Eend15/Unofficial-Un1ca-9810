.class public final Lj0/w;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lj0/k;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/view/ViewGroup;

.field public final d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/w;->f:Z

    iput-object p1, p0, Lj0/w;->a:Landroid/view/View;

    iput p2, p0, Lj0/w;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lj0/w;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj0/w;->d:Z

    invoke-virtual {p0, p1}, Lj0/w;->f(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj0/w;->f(Z)V

    return-void
.end method

.method public final d(Lj0/l;)V
    .locals 2

    iget-boolean v0, p0, Lj0/w;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object v0, p0, Lj0/w;->a:Landroid/view/View;

    iget v1, p0, Lj0/w;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object v0, p0, Lj0/w;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj0/w;->f(Z)V

    invoke-virtual {p1, p0}, Lj0/l;->u(Lj0/k;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj0/w;->f(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lj0/w;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj0/w;->e:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lj0/w;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lj0/w;->e:Z

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj0/w;->f:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lj0/w;->f:Z

    if-nez p1, :cond_0

    sget-object p1, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object p1, p0, Lj0/w;->a:Landroid/view/View;

    iget v0, p0, Lj0/w;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object p1, p0, Lj0/w;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj0/w;->f(Z)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lj0/w;->f:Z

    if-nez p1, :cond_0

    sget-object p1, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object p1, p0, Lj0/w;->a:Landroid/view/View;

    iget p0, p0, Lj0/w;->b:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lj0/w;->f:Z

    if-nez p1, :cond_0

    sget-object p1, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object p0, p0, Lj0/w;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
