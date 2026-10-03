.class final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Landroidx/activity/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable",
        "Landroidx/lifecycle/r;",
        "Landroidx/activity/a;",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final d:Landroidx/lifecycle/o;

.field public final e:Landroidx/fragment/app/D;

.field public f:Landroidx/activity/o;

.field public final synthetic g:Landroidx/activity/p;


# direct methods
.method public constructor <init>(Landroidx/activity/p;Landroidx/lifecycle/o;Landroidx/fragment/app/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->g:Landroidx/activity/p;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/lifecycle/o;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->e:Landroidx/fragment/app/D;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 2

    sget-object p1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->g:Landroidx/activity/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->e:Landroidx/fragment/app/D;

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/activity/p;->b:Lr3/g;

    invoke-virtual {v0, p2}, Lr3/g;->addLast(Ljava/lang/Object;)V

    new-instance v0, Landroidx/activity/o;

    invoke-direct {v0, p1, p2}, Landroidx/activity/o;-><init>(Landroidx/activity/p;Landroidx/fragment/app/D;)V

    iget-object v1, p2, Landroidx/fragment/app/D;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/activity/p;->c()V

    iget-object p1, p1, Landroidx/activity/p;->c:Landroidx/activity/l;

    iput-object p1, p2, Landroidx/fragment/app/D;->c:Landroidx/activity/l;

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->f:Landroidx/activity/o;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->f:Landroidx/activity/o;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/activity/o;->cancel()V

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->e:Landroidx/fragment/app/D;

    iget-object v0, v0, Landroidx/fragment/app/D;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->f:Landroidx/activity/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/o;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->f:Landroidx/activity/o;

    return-void
.end method
