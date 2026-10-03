.class public LO3/o0;
.super LF3/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(LF3/c;)LO3/z;
    .locals 1

    invoke-virtual {p0}, LF3/c;->b()LL3/d;

    move-result-object p0

    instance-of v0, p0, LO3/z;

    if-eqz v0, :cond_0

    check-cast p0, LO3/z;

    goto :goto_0

    :cond_0
    sget-object p0, LO3/a;->e:LO3/a;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(LF3/h;)LL3/e;
    .locals 6

    new-instance p0, LO3/A;

    invoke-static {p1}, LO3/o0;->i(LF3/c;)LO3/z;

    move-result-object v1

    invoke-virtual {p1}, LF3/c;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LF3/c;->c()Ljava/lang/String;

    move-result-object v3

    const-string v0, "container"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {v3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p1, LF3/c;->e:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LO3/A;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;LU3/s;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Class;)LL3/b;
    .locals 8

    sget-object p0, LO3/q;->a:LT4/c;

    const-string p0, "jClass"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, LO3/q;->a:LT4/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v0, v0, LT4/c;->a:LT4/e;

    iget-object v0, v0, LT4/e;->a:LT4/d;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, LT4/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    if-nez v0, :cond_0

    sget-object v0, LT4/b;->g:LT4/b;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, v0, LT4/b;->f:I

    if-lez v2, :cond_2

    iget-object v2, v0, LT4/b;->d:LT4/f;

    iget-object v3, v2, LT4/f;->d:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v2, LT4/f;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, v0, LT4/b;->e:LT4/b;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/v;

    if-eqz v0, :cond_3

    iget-object v1, v0, LO3/v;->f:Ljava/lang/Class;

    :cond_3
    invoke-static {v1, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_8

    move-object v2, v0

    check-cast v2, [Ljava/lang/ref/WeakReference;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_7

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LO3/v;

    if-eqz v6, :cond_5

    iget-object v7, v6, LO3/v;->f:Ljava/lang/Class;

    goto :goto_3

    :cond_5
    move-object v7, v1

    :goto_3
    invoke-static {v7, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v0, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/ref/WeakReference;

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, LO3/v;

    invoke-direct {v0, p1}, LO3/v;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object p1, v2, v1

    sget-object p1, LO3/q;->a:LT4/c;

    invoke-virtual {p1, v2, p0}, LT4/c;->a(Ljava/lang/Object;Ljava/lang/String;)LT4/c;

    move-result-object p0

    sput-object p0, LO3/q;->a:LT4/c;

    goto :goto_4

    :cond_8
    new-instance v0, LO3/v;

    invoke-direct {v0, p1}, LO3/v;-><init>(Ljava/lang/Class;)V

    sget-object p1, LO3/q;->a:LT4/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, p0}, LT4/c;->a(Ljava/lang/Object;Ljava/lang/String;)LT4/c;

    move-result-object p0

    sput-object p0, LO3/q;->a:LT4/c;

    :goto_4
    return-object v0
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)LL3/d;
    .locals 0

    new-instance p0, LO3/K;

    invoke-direct {p0, p1}, LO3/K;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public final d(LF3/m;)LL3/f;
    .locals 3

    new-instance p0, LO3/E;

    invoke-static {p1}, LO3/o0;->i(LF3/c;)LO3/z;

    move-result-object v0

    iget-object v1, p1, LF3/c;->h:Ljava/lang/String;

    iget-object v2, p1, LF3/c;->e:Ljava/lang/Object;

    iget-object p1, p1, LF3/c;->g:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1, v2}, LO3/E;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e(Lkotlinx/coroutines/internal/f;)LL3/i;
    .locals 3

    new-instance p0, LO3/O;

    invoke-static {p1}, LO3/o0;->i(LF3/c;)LO3/z;

    move-result-object v0

    iget-object v1, p1, LF3/c;->h:Ljava/lang/String;

    iget-object v2, p1, LF3/c;->e:Ljava/lang/Object;

    iget-object p1, p1, LF3/c;->g:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1, v2}, LO3/O;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f(LF3/o;)LL3/k;
    .locals 3

    new-instance p0, LO3/S;

    invoke-static {p1}, LO3/o0;->i(LF3/c;)LO3/z;

    move-result-object v0

    invoke-virtual {p1}, LF3/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LF3/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, LF3/c;->e:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, p1}, LO3/S;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g(LF3/g;)Ljava/lang/String;
    .locals 11

    const-string v0, "$this$reflect"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lr4/h;->a:Lt4/i;

    const-string v4, "strings"

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lr4/a;->a([Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lr4/h;->a:Lt4/i;

    invoke-static {v4, v3}, Lr4/h;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lr4/g;

    move-result-object v7

    sget-object v2, Ln4/y;->v:Ln4/a;

    sget-object v3, Lr4/h;->a:Lt4/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lt4/f;

    invoke-direct {v5, v4}, Lt4/f;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5, v3}, Lt4/y;->a(Lt4/f;Lt4/i;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v5, v3}, Lt4/f;->a(I)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Lt4/x;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v6, v2

    check-cast v6, Ln4/y;

    new-instance v9, Lr4/f;

    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v2

    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {v9, v2, v3}, Lr4/f;-><init>([IZ)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v8, LX3/C;

    iget-object v0, v6, Ln4/y;->p:Ln4/X;

    const-string v2, "proto.typeTable"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v0}, LX3/C;-><init>(Ln4/X;)V

    sget-object v10, LN3/a;->l:LN3/a;

    invoke-static/range {v5 .. v10}, LO3/r0;->c(Ljava/lang/Class;Lt4/m;Lp4/f;LX3/C;Lp4/a;LE3/c;)LU3/a;

    move-result-object v0

    check-cast v0, LX3/P;

    if-eqz v0, :cond_3

    new-instance v1, LO3/A;

    sget-object v2, LO3/a;->e:LO3/a;

    invoke-direct {v1, v2, v0}, LO3/A;-><init>(LO3/z;LU3/s;)V

    goto :goto_0

    :cond_2
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    new-instance p1, Lt4/s;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lt4/s;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lt4/s;->d:Lt4/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v2, p0, Lt4/s;->d:Lt4/b;

    throw p0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v1}, LO3/r0;->a(Ljava/lang/Object;)LO3/A;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object p0, LO3/p0;->a:Lu4/g;

    invoke-virtual {v0}, LO3/A;->i()LU3/s;

    move-result-object p0

    const-string p1, "invoke"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, LO3/p0;->a(LU3/b;Ljava/lang/StringBuilder;)V

    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    const-string v1, "invoke.valueParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, LO3/c;->j:LO3/c;

    const-string v4, ")"

    const/16 v6, 0x30

    const-string v2, ", "

    const-string v3, "("

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LU3/a;->k()LJ4/C;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LO3/p0;->d(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-super {p0, p1}, LF3/u;->g(LF3/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(LF3/l;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, LO3/o0;->g(LF3/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
