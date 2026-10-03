.class public abstract Lh4/A;
.super Lh4/w;
.source "SourceFile"


# virtual methods
.method public n(Ljava/util/ArrayList;Ls4/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p()LU3/J;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(La4/w;Ljava/util/ArrayList;LJ4/C;Ljava/util/List;)Lh4/t;
    .locals 0

    const-string p0, "method"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lh4/t;

    sget-object p1, Lr3/r;->d:Lr3/r;

    invoke-direct {p0, p3, p4, p2, p1}, Lh4/t;-><init>(LJ4/C;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object p0
.end method
