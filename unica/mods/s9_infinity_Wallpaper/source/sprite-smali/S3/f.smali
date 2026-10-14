.class public final LS3/f;
.super LC4/i;
.source "SourceFile"


# virtual methods
.method public final h()Ljava/util/List;
    .locals 2

    iget-object p0, p0, LC4/i;->b:LX3/b;

    check-cast p0, LS3/c;

    iget-object v0, p0, LS3/c;->j:LS3/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, LR3/f;->q(LS3/c;Z)LS3/g;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, LR3/f;->q(LS3/c;Z)LS3/g;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
