.class public final LV3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/h;


# virtual methods
.method public final a(Ls4/c;)LV3/b;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Ls4/c;)Z
    .locals 0

    invoke-static {p0, p1}, LR3/f;->O(LV3/h;Ls4/c;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lr3/q;->d:Lr3/q;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EMPTY"

    return-object p0
.end method
