.class public final synthetic Lkotlinx/coroutines/internal/f;
.super LF3/p;
.source "SourceFile"

# interfaces
.implements LL3/i;


# virtual methods
.method public final a()LL3/a;
    .locals 1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-virtual {v0, p0}, LF3/u;->e(Lkotlinx/coroutines/internal/f;)LL3/i;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
