.class public LF3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(LF3/h;)LL3/e;
    .locals 0

    return-object p1
.end method

.method public b(Ljava/lang/Class;)LL3/b;
    .locals 0

    new-instance p0, LF3/e;

    invoke-direct {p0, p1}, LF3/e;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)LL3/d;
    .locals 0

    new-instance p0, LF3/n;

    invoke-direct {p0, p1, p2}, LF3/n;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(LF3/m;)LL3/f;
    .locals 0

    return-object p1
.end method

.method public e(Lkotlinx/coroutines/internal/f;)LL3/i;
    .locals 0

    return-object p1
.end method

.method public f(LF3/o;)LL3/k;
    .locals 0

    return-object p1
.end method

.method public g(LF3/g;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlin.jvm.functions."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public h(LF3/l;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, LF3/u;->g(LF3/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
