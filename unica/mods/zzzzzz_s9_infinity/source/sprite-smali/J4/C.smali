.class public abstract LJ4/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/a;
.implements LM4/c;


# instance fields
.field public d:I


# virtual methods
.method public abstract A0(LK4/g;)LJ4/C;
.end method

.method public abstract B0()LJ4/b0;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LJ4/C;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v1

    check-cast p1, LJ4/C;

    invoke-virtual {p1}, LJ4/C;->z0()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p1

    const-string v1, "a"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LK4/f;->e:LK4/f;

    invoke-static {v1, p0, p1}, LJ4/c;->t(LK4/c;LM4/c;LM4/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, LJ4/C;->d:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, LJ4/C;->d:I

    return v0
.end method

.method public abstract l0()LC4/o;
.end method

.method public abstract m0()Ljava/util/List;
.end method

.method public abstract q0()LJ4/M;
.end method

.method public abstract z0()Z
.end method
