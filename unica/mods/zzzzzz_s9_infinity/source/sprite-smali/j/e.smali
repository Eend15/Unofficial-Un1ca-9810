.class public final Lj/e;
.super Lj/b;
.source "SourceFile"

# interfaces
.implements Lk/h;


# instance fields
.field public f:Landroid/content/Context;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public h:Lw0/c;

.field public i:Ljava/lang/ref/WeakReference;

.field public j:Z

.field public k:Lk/j;


# virtual methods
.method public final G(Lk/j;)V
    .locals 0

    invoke-virtual {p0}, Lj/e;->g()V

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Landroidx/appcompat/widget/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->l()Z

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lj/e;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/e;->j:Z

    iget-object v0, p0, Lj/e;->h:Lw0/c;

    invoke-virtual {v0, p0}, Lw0/c;->f(Lj/b;)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lj/e;->i:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Lk/j;
    .locals 0

    iget-object p0, p0, Lj/e;->k:Lk/j;

    return-object p0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Lj/i;

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lj/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lj/e;->k:Lk/j;

    iget-object v1, p0, Lj/e;->h:Lw0/c;

    invoke-virtual {v1, p0, v0}, Lw0/c;->q(Lj/b;Lk/j;)Z

    return-void
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return p0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lj/e;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Lj/e;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/e;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lj/e;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/e;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    invoke-static {p0, p1}, LK/D;->g(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    iput-boolean p1, p0, Lj/b;->e:Z

    iget-object p0, p0, Lj/e;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return-void
.end method

.method public final q(Lk/j;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lj/e;->h:Lw0/c;

    iget-object p1, p1, Lw0/c;->e:Ljava/lang/Object;

    check-cast p1, Lj/a;

    invoke-interface {p1, p0, p2}, Lj/a;->b(Lj/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
