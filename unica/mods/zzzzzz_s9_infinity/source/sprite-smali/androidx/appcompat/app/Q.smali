.class public final Landroidx/appcompat/app/Q;
.super Lj/b;
.source "SourceFile"

# interfaces
.implements Lk/h;


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lk/j;

.field public h:Lw0/c;

.field public i:Ljava/lang/ref/WeakReference;

.field public final synthetic j:Landroidx/appcompat/app/S;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/S;Landroid/content/Context;Lw0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iput-object p2, p0, Landroidx/appcompat/app/Q;->f:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    new-instance p1, Lk/j;

    invoke-direct {p1, p2}, Lk/j;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lk/j;->l:I

    iput-object p1, p0, Landroidx/appcompat/app/Q;->g:Lk/j;

    iput-object p0, p1, Lk/j;->e:Lk/h;

    return-void
.end method


# virtual methods
.method public final G(Lk/j;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/Q;->g()V

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Landroidx/appcompat/widget/l;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->l()Z

    :cond_1
    return-void
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object v1, v0, Landroidx/appcompat/app/S;->i:Landroidx/appcompat/app/Q;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroidx/appcompat/app/S;->p:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Landroidx/appcompat/app/S;->j:Landroidx/appcompat/app/Q;

    iget-object v1, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    iput-object v1, v0, Landroidx/appcompat/app/S;->k:Lw0/c;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    invoke-virtual {v1, p0}, Lw0/c;->f(Lj/b;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/S;->p(Z)V

    iget-object p0, v0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    :cond_2
    iget-object p0, v0, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Landroidx/appcompat/app/S;->u:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Z)V

    iput-object v1, v0, Landroidx/appcompat/app/S;->i:Landroidx/appcompat/app/Q;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/Q;->i:Ljava/lang/ref/WeakReference;

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

    iget-object p0, p0, Landroidx/appcompat/app/Q;->g:Lk/j;

    return-object p0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Lj/i;

    iget-object p0, p0, Landroidx/appcompat/app/Q;->f:Landroid/content/Context;

    invoke-direct {v0, p0}, Lj/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object v0, v0, Landroidx/appcompat/app/S;->i:Landroidx/appcompat/app/Q;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/Q;->g:Lk/j;

    invoke-virtual {v0}, Lk/j;->w()V

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    invoke-virtual {v1, p0, v0}, Lw0/c;->q(Lj/b;Lk/j;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lk/j;->v()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lk/j;->v()V

    throw p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return p0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object v0, v0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/Q;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object v0, v0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/Q;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object v0, v0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/Q;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    invoke-static {p0, p1}, LK/D;->g(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    iput-boolean p1, p0, Lj/b;->e:Z

    iget-object p0, p0, Landroidx/appcompat/app/Q;->j:Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    return-void
.end method

.method public final q(Lk/j;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lw0/c;->e:Ljava/lang/Object;

    check-cast p1, Lj/a;

    invoke-interface {p1, p0, p2}, Lj/a;->b(Lj/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
