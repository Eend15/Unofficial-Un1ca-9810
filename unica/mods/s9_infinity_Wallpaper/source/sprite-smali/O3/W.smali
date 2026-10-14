.class public abstract LO3/W;
.super LO3/p;
.source "SourceFile"

# interfaces
.implements LL3/e;


# virtual methods
.method public final d()LO3/z;
    .locals 0

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    iget-object p0, p0, LO3/c0;->g:LO3/z;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {p0}, LO3/c0;->h()Z

    move-result p0

    return p0
.end method

.method public abstract i()LU3/I;
.end method

.method public abstract j()LO3/c0;
.end method
