.class public final Landroidx/appcompat/app/S;
.super Landroidx/appcompat/app/a;
.source "SourceFile"


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Landroidx/appcompat/widget/T0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Landroidx/appcompat/app/Q;

.field public j:Landroidx/appcompat/app/Q;

.field public k:Lw0/c;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lj/j;

.field public t:Z

.field public u:Z

.field public final v:Landroidx/appcompat/app/P;

.field public final w:Landroidx/appcompat/app/P;

.field public final x:LA1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/S;->y:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/S;->z:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/S;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/app/S;->n:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/S;->o:Z

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/S;->r:Z

    .line 7
    new-instance v0, Landroidx/appcompat/app/P;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/P;-><init>(Landroidx/appcompat/app/S;I)V

    iput-object v0, p0, Landroidx/appcompat/app/S;->v:Landroidx/appcompat/app/P;

    .line 8
    new-instance v0, Landroidx/appcompat/app/P;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/P;-><init>(Landroidx/appcompat/app/S;I)V

    iput-object v0, p0, Landroidx/appcompat/app/S;->w:Landroidx/appcompat/app/P;

    .line 9
    new-instance v0, LA1/e;

    invoke-direct {v0, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/S;->x:LA1/e;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/S;->q(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/S;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/S;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/appcompat/app/S;->n:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/S;->o:Z

    .line 19
    iput-boolean v0, p0, Landroidx/appcompat/app/S;->r:Z

    .line 20
    new-instance v0, Landroidx/appcompat/app/P;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/P;-><init>(Landroidx/appcompat/app/S;I)V

    iput-object v0, p0, Landroidx/appcompat/app/S;->v:Landroidx/appcompat/app/P;

    .line 21
    new-instance v0, Landroidx/appcompat/app/P;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/P;-><init>(Landroidx/appcompat/app/S;I)V

    iput-object v0, p0, Landroidx/appcompat/app/S;->w:Landroidx/appcompat/app/P;

    .line 22
    new-instance v0, LA1/e;

    invoke-direct {v0, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/S;->x:LA1/e;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/S;->q(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    if-eqz p0, :cond_2

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

    iget-boolean v0, p0, Landroidx/appcompat/app/S;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/S;->l:Z

    iget-object p0, p0, Landroidx/appcompat/app/S;->m:Ljava/util/ArrayList;

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

    iget-object p0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget p0, p0, Landroidx/appcompat/widget/T0;->b:I

    return p0
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/S;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lf/a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/S;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/S;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/S;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lf/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/S;->r(Z)V

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/app/S;->i:Landroidx/appcompat/app/Q;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/Q;->g:Lk/j;

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lk/j;->setQwertyMode(Z)V

    invoke-virtual {p0, p1, p2, v0}, Lk/j;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public final l(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/app/S;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget v2, v1, Landroidx/appcompat/widget/T0;->b:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/appcompat/app/S;->h:Z

    and-int/lit8 p0, p1, 0x4

    and-int/lit8 p1, v2, -0x5

    or-int/2addr p0, p1

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/T0;->a(I)V

    :cond_1
    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/S;->t:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/S;->s:Lj/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/j;->a()V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

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

.method public final o(Lw0/c;)Lj/b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/S;->i:Landroidx/appcompat/app/Q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/Q;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance v0, Landroidx/appcompat/app/Q;

    iget-object v1, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/Q;-><init>(Landroidx/appcompat/app/S;Landroid/content/Context;Lw0/c;)V

    iget-object p1, v0, Landroidx/appcompat/app/Q;->g:Lk/j;

    invoke-virtual {p1}, Lk/j;->w()V

    :try_start_0
    iget-object v1, v0, Landroidx/appcompat/app/Q;->h:Lw0/c;

    iget-object v1, v1, Lw0/c;->e:Ljava/lang/Object;

    check-cast v1, Lj/a;

    invoke-interface {v1, v0, p1}, Lj/a;->d(Lj/b;Lk/j;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lk/j;->v()V

    if-eqz v1, :cond_1

    iput-object v0, p0, Landroidx/appcompat/app/S;->i:Landroidx/appcompat/app/Q;

    invoke-virtual {v0}, Landroidx/appcompat/app/Q;->g()V

    iget-object p1, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/S;->p(Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lk/j;->v()V

    throw p0
.end method

.method public final p(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/app/S;->q:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/S;->q:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/S;->s(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroidx/appcompat/app/S;->q:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Landroidx/appcompat/app/S;->q:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/S;->s(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_5

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget-object v1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LK/G;->a(F)V

    invoke-virtual {v1, v6, v7}, LK/G;->c(J)V

    new-instance v2, Landroidx/appcompat/widget/S0;

    invoke-direct {v2, p1, v3}, Landroidx/appcompat/widget/S0;-><init>(Landroidx/appcompat/widget/T0;I)V

    invoke-virtual {v1, v2}, LK/G;->d(LK/H;)V

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)LK/G;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget-object v1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, LK/G;->a(F)V

    invoke-virtual {v1, v4, v5}, LK/G;->c(J)V

    new-instance v3, Landroidx/appcompat/widget/S0;

    invoke-direct {v3, p1, v0}, Landroidx/appcompat/widget/S0;-><init>(Landroidx/appcompat/widget/T0;I)V

    invoke-virtual {v1, v3}, LK/G;->d(LK/H;)V

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)LK/G;

    move-result-object p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    :goto_1
    new-instance p1, Lj/j;

    invoke-direct {p1}, Lj/j;-><init>()V

    iget-object v0, p1, Lj/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, LK/G;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    :goto_2
    iget-object v3, p0, LK/G;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lj/j;->b()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget-object p1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget-object p1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 5

    sget v0, Lf/f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iput-object p0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/app/S;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/app/S;

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:I

    iput v2, v1, Landroidx/appcompat/app/S;->n:I

    iget v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LK/v;->c(Landroid/view/View;)V

    :cond_0
    sget v0, Lf/f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    instance-of v2, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_8

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/widget/T0;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/appcompat/widget/T0;

    invoke-direct {v2, v0, v1}, Landroidx/appcompat/widget/T0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v2, v0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/widget/T0;

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/widget/T0;

    iput-object v0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    sget v0, Lf/f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Lf/f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroidx/appcompat/app/S;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget v0, v0, Landroidx/appcompat/widget/T0;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Landroidx/appcompat/app/S;->h:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    iget-object v0, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lf/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/S;->r(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/S;->a:Landroid/content/Context;

    sget-object v0, Lf/j;->ActionBar:[I

    sget v3, Lf/a;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lf/j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Landroidx/appcompat/app/S;->u:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Z)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    sget v0, Lf/j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    iget-object p0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, LK/x;->j(Landroid/view/View;F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-class p1, Landroidx/appcompat/app/S;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const-string p1, "null"

    :goto_2
    const-string v0, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/appcompat/app/S;->e:Landroidx/appcompat/widget/T0;

    iget-object p1, p1, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final s(Z)V
    .locals 11

    iget-boolean v0, p0, Landroidx/appcompat/app/S;->p:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/S;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/S;->g:Landroid/view/View;

    const-wide/16 v4, 0xfa

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Landroidx/appcompat/app/S;->x:LA1/e;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroidx/appcompat/app/S;->r:Z

    if-nez v0, :cond_1a

    iput-boolean v2, p0, Landroidx/appcompat/app/S;->r:Z

    iget-object v0, p0, Landroidx/appcompat/app/S;->s:Lj/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj/j;->a()V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/S;->n:I

    iget-object v9, p0, Landroidx/appcompat/app/S;->w:Landroidx/appcompat/app/P;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/appcompat/app/S;->t:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lj/j;

    invoke-direct {p1}, Lj/j;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object v2

    invoke-virtual {v2, v10}, LK/G;->e(F)V

    iget-object v3, v2, LK/G;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    new-instance v6, LK/E;

    invoke-direct {v6, v8, v3}, LK/E;-><init>(LA1/e;Landroid/view/View;)V

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-boolean v3, p1, Lj/j;->e:Z

    iget-object v6, p1, Lj/j;->a:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v2, p0, Landroidx/appcompat/app/S;->o:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v1}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object v0

    invoke-virtual {v0, v10}, LK/G;->e(F)V

    iget-boolean v1, p1, Lj/j;->e:Z

    if-nez v1, :cond_8

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Landroidx/appcompat/app/S;->z:Landroid/view/animation/DecelerateInterpolator;

    iget-boolean v1, p1, Lj/j;->e:Z

    if-nez v1, :cond_9

    iput-object v0, p1, Lj/j;->c:Landroid/view/animation/BaseInterpolator;

    :cond_9
    if-nez v1, :cond_a

    iput-wide v4, p1, Lj/j;->b:J

    :cond_a
    if-nez v1, :cond_b

    iput-object v9, p1, Lj/j;->d:LK/I;

    :cond_b
    iput-object p1, p0, Landroidx/appcompat/app/S;->s:Lj/j;

    invoke-virtual {p1}, Lj/j;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/S;->o:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    invoke-virtual {v9}, Landroidx/appcompat/app/P;->a()V

    :goto_1
    iget-object p0, p0, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1a

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LK/v;->c(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Landroidx/appcompat/app/S;->r:Z

    if-eqz v0, :cond_1a

    iput-boolean v3, p0, Landroidx/appcompat/app/S;->r:Z

    iget-object v0, p0, Landroidx/appcompat/app/S;->s:Lj/j;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lj/j;->a()V

    :cond_f
    iget v0, p0, Landroidx/appcompat/app/S;->n:I

    iget-object v9, p0, Landroidx/appcompat/app/S;->v:Landroidx/appcompat/app/P;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroidx/appcompat/app/S;->t:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_19

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    const/high16 v7, 0x60000

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v0, Lj/j;

    invoke-direct {v0}, Lj/j;-><init>()V

    iget-object v7, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    if-eqz p1, :cond_11

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v7, p1

    :cond_11
    iget-object p1, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object p1

    invoke-virtual {p1, v7}, LK/G;->e(F)V

    iget-object v2, p1, LK/G;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_13

    if-eqz v8, :cond_12

    new-instance v6, LK/E;

    invoke-direct {v6, v8, v2}, LK/E;-><init>(LA1/e;Landroid/view/View;)V

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_13
    iget-boolean v2, v0, Lj/j;->e:Z

    iget-object v3, v0, Lj/j;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_14

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Landroidx/appcompat/app/S;->o:Z

    if-eqz p1, :cond_15

    if-eqz v1, :cond_15

    invoke-static {v1}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object p1

    invoke-virtual {p1, v7}, LK/G;->e(F)V

    iget-boolean v1, v0, Lj/j;->e:Z

    if-nez v1, :cond_15

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object p1, Landroidx/appcompat/app/S;->y:Landroid/view/animation/AccelerateInterpolator;

    iget-boolean v1, v0, Lj/j;->e:Z

    if-nez v1, :cond_16

    iput-object p1, v0, Lj/j;->c:Landroid/view/animation/BaseInterpolator;

    :cond_16
    if-nez v1, :cond_17

    iput-wide v4, v0, Lj/j;->b:J

    :cond_17
    if-nez v1, :cond_18

    iput-object v9, v0, Lj/j;->d:LK/I;

    :cond_18
    iput-object v0, p0, Landroidx/appcompat/app/S;->s:Lj/j;

    invoke-virtual {v0}, Lj/j;->b()V

    goto :goto_2

    :cond_19
    invoke-virtual {v9}, Landroidx/appcompat/app/P;->a()V

    :cond_1a
    :goto_2
    return-void
.end method
