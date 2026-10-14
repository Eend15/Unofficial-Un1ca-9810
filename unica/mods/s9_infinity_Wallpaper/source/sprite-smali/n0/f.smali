.class public final Ln0/f;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public d:I

.field public final synthetic e:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Landroidx/work/CoroutineWorker;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Ln0/f;->e:Landroidx/work/CoroutineWorker;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Ln0/f;

    iget-object p0, p0, Ln0/f;->e:Landroidx/work/CoroutineWorker;

    invoke-direct {p1, p0, p2}, Ln0/f;-><init>(Landroidx/work/CoroutineWorker;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Ln0/f;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Ln0/f;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Ln0/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v1, p0, Ln0/f;->d:I

    const/4 v2, 0x1

    iget-object v3, p0, Ln0/f;->e:Landroidx/work/CoroutineWorker;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    :try_start_1
    iput v2, p0, Ln0/f;->d:I

    invoke-virtual {v3}, Landroidx/work/CoroutineWorker;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ln0/m;

    iget-object p0, v3, Landroidx/work/CoroutineWorker;->i:Ly0/k;

    invoke-virtual {p0, p1}, Ly0/k;->j(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p1, v3, Landroidx/work/CoroutineWorker;->i:Ly0/k;

    invoke-virtual {p1, p0}, Ly0/k;->k(Ljava/lang/Throwable;)Z

    :goto_2
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
