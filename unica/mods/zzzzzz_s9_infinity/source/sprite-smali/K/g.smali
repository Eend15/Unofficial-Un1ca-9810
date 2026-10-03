.class public final synthetic LK/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic d:LK/j;

.field public final synthetic e:Landroidx/lifecycle/n;

.field public final synthetic f:LK/k;


# direct methods
.method public synthetic constructor <init>(LK/j;Landroidx/lifecycle/n;LK/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/g;->d:LK/j;

    iput-object p2, p0, LK/g;->e:Landroidx/lifecycle/n;

    iput-object p3, p0, LK/g;->f:LK/k;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 4

    iget-object p1, p0, LK/g;->d:LK/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LK/g;->e:Landroidx/lifecycle/n;

    invoke-static {v0}, Landroidx/lifecycle/k;->c(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;

    move-result-object v1

    iget-object v2, p1, LK/j;->a:Ljava/lang/Runnable;

    iget-object v3, p1, LK/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, LK/g;->f:LK/k;

    if-ne p2, v1, :cond_0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, p0}, LK/j;->b(LK/k;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;

    move-result-object p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
