.class public final LF3/o;
.super LF3/p;
.source "SourceFile"

# interfaces
.implements LL3/k;


# direct methods
.method public constructor <init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v3, LF3/b;->d:LF3/b;

    move-object v0, p1

    check-cast v0, LF3/d;

    invoke-interface {v0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LF3/p;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()LL3/a;
    .locals 1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-virtual {v0, p0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object p0

    return-object p0
.end method

.method public final e()LL3/j;
    .locals 1

    iget-boolean v0, p0, LF3/p;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LF3/p;->d()LL3/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    check-cast v0, LL3/l;

    check-cast v0, LL3/k;

    invoke-interface {v0}, LL3/k;->e()LL3/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, LD3/a;

    const-string v0, "Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LF3/o;->e()LL3/j;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    check-cast p0, LO3/p;

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LL3/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
