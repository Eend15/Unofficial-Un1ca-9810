.class public final Landroidx/appcompat/app/M;
.super Landroidx/appcompat/app/a;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/widget/T0;

.field public final b:Landroidx/appcompat/app/y;

.field public final c:Landroidx/appcompat/app/L;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:LA1/l;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroidx/appcompat/app/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/M;->g:Ljava/util/ArrayList;

    new-instance v0, LA1/l;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, LA1/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/M;->h:LA1/l;

    new-instance v0, Landroidx/appcompat/app/L;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/L;-><init>(Landroidx/appcompat/app/M;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/appcompat/widget/T0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/T0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Landroidx/appcompat/app/M;->b:Landroidx/appcompat/app/y;

    iput-object p3, v1, Landroidx/appcompat/widget/T0;->k:Landroid/view/Window$Callback;

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/app/L;

    iget-boolean p1, v1, Landroidx/appcompat/widget/T0;->g:Z

    if-nez p1, :cond_0

    iput-object p2, v1, Landroidx/appcompat/widget/T0;->h:Ljava/lang/CharSequence;

    iget p1, v1, Landroidx/appcompat/widget/T0;->b:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, v1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->y(Ljava/lang/CharSequence;)V

    iget-boolean p3, v1, Landroidx/appcompat/widget/T0;->g:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, LK/D;->g(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Landroidx/appcompat/app/L;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/L;-><init>(Landroidx/appcompat/app/M;)V

    iput-object p1, p0, Landroidx/appcompat/app/M;->c:Landroidx/appcompat/app/L;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/l;->collapseActionView()Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/M;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/M;->f:Z

    iget-object p0, p0, Landroidx/appcompat/app/M;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget p0, p0, Landroidx/appcompat/widget/T0;->b:I

    return p0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object v1, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/app/M;->h:LA1/l;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/app/M;->h:LA1/l;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/M;->p()Lk/j;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-virtual {p0, p1, p2, v0}, Lk/j;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/M;->k()Z

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->A()Z

    move-result p0

    return p0
.end method

.method public final l(Z)V
    .locals 0

    return-void
.end method

.method public final m(Z)V
    .locals 0

    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    iget-boolean v0, p0, Landroidx/appcompat/widget/T0;->g:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/T0;->h:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/T0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->y(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroidx/appcompat/widget/T0;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, LK/D;->g(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final p()Lk/j;
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/app/M;->e:Z

    iget-object v1, p0, Landroidx/appcompat/app/M;->a:Landroidx/appcompat/widget/T0;

    if-nez v0, :cond_1

    new-instance v0, LI/d;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0}, LI/d;-><init>(ILjava/lang/Object;)V

    new-instance v2, Landroidx/appcompat/app/L;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/L;-><init>(Landroidx/appcompat/app/M;)V

    iget-object v3, v1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iput-object v0, v3, Landroidx/appcompat/widget/Toolbar;->Q:LI/d;

    iput-object v2, v3, Landroidx/appcompat/widget/Toolbar;->R:Landroidx/appcompat/app/L;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    iput-object v0, v3, Landroidx/appcompat/widget/ActionMenuView;->x:LI/d;

    iput-object v2, v3, Landroidx/appcompat/widget/ActionMenuView;->y:Lk/h;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/M;->e:Z

    :cond_1
    iget-object p0, v1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->m()Lk/j;

    move-result-object p0

    return-object p0
.end method
