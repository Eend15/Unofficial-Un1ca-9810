.class public final Lx4/e;
.super Lx4/m;
.source "SourceFile"


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/x;->c()LR3/j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LR3/l;->j:LR3/l;

    invoke-virtual {p0, p1}, LR3/j;->r(LR3/l;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    const-string p0, "\\b"

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    const-string p0, "\\t"

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    const-string p0, "\\n"

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne p0, v1, :cond_3

    const-string p0, "\\f"

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne p0, v1, :cond_4

    const-string p0, "\\r"

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    int-to-byte v2, v2

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_5

    const/16 v1, 0xe

    if-eq v2, v1, :cond_5

    const/16 v1, 0xf

    if-eq v2, v1, :cond_5

    const/16 v1, 0x10

    if-eq v2, v1, :cond_5

    const/16 v1, 0x12

    if-eq v2, v1, :cond_5

    const/16 v1, 0x13

    if-eq v2, v1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const-string p0, "?"

    :goto_0
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\\u%04X (\'%s\')"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
