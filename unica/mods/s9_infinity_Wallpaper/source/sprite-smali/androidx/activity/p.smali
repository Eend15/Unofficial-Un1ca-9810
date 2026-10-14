.class public final Landroidx/activity/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lr3/g;

.field public final c:Landroidx/activity/l;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/p;->a:Ljava/lang/Runnable;

    new-instance p1, Lr3/g;

    invoke-direct {p1}, Lr3/d;-><init>()V

    sget-object v0, Lr3/g;->g:[Ljava/lang/Object;

    iput-object v0, p1, Lr3/g;->e:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/activity/p;->b:Lr3/g;

    new-instance p1, Landroidx/activity/l;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/activity/l;-><init>(Landroidx/activity/p;I)V

    iput-object p1, p0, Landroidx/activity/p;->c:Landroidx/activity/l;

    sget-object p1, Landroidx/activity/n;->a:Landroidx/activity/n;

    new-instance v0, Landroidx/activity/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/activity/l;-><init>(Landroidx/activity/p;I)V

    invoke-virtual {p1, v0}, Landroidx/activity/n;->a(LE3/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/p;->d:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/fragment/app/D;)V
    .locals 2

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/v;

    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/p;Landroidx/lifecycle/o;Landroidx/fragment/app/D;)V

    iget-object p1, p2, Landroidx/fragment/app/D;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/p;->c()V

    iget-object p0, p0, Landroidx/activity/p;->c:Landroidx/activity/l;

    iput-object p0, p2, Landroidx/fragment/app/D;->c:Landroidx/activity/l;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/p;->b:Lr3/g;

    invoke-virtual {v0}, Lr3/g;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/D;

    iget-boolean v2, v2, Landroidx/fragment/app/D;->a:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/fragment/app/D;

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    iget-object v0, v1, Landroidx/fragment/app/D;->d:Landroidx/fragment/app/L;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/L;->x(Z)Z

    iget-object p0, v0, Landroidx/fragment/app/L;->h:Landroidx/fragment/app/D;

    iget-boolean p0, p0, Landroidx/fragment/app/D;->a:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/L;->L()Z

    goto :goto_1

    :cond_2
    iget-object p0, v0, Landroidx/fragment/app/L;->g:Landroidx/activity/p;

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    :goto_1
    return-void

    :cond_3
    iget-object p0, p0, Landroidx/activity/p;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/p;->b:Lr3/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lr3/g;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/D;

    iget-boolean v3, v3, Landroidx/fragment/app/D;->a:Z

    if-eqz v3, :cond_2

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroidx/activity/p;->e:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroidx/activity/p;->d:Landroid/window/OnBackInvokedCallback;

    if-eqz v4, :cond_4

    sget-object v5, Landroidx/activity/n;->a:Landroidx/activity/n;

    if-eqz v2, :cond_3

    iget-boolean v6, p0, Landroidx/activity/p;->f:Z

    if-nez v6, :cond_3

    invoke-virtual {v5, v3, v1, v4}, Landroidx/activity/n;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-boolean v0, p0, Landroidx/activity/p;->f:Z

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-boolean v0, p0, Landroidx/activity/p;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {v5, v3, v4}, Landroidx/activity/n;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroidx/activity/p;->f:Z

    :cond_4
    :goto_1
    return-void
.end method
