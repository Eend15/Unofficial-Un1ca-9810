.class public final LJ4/y;
.super LJ4/w;
.source "SourceFile"

# interfaces
.implements LJ4/a0;


# instance fields
.field public final g:LJ4/w;

.field public final h:LJ4/C;


# direct methods
.method public constructor <init>(LJ4/w;LJ4/C;)V
    .locals 2

    const-string v0, "origin"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LJ4/w;->e:LJ4/G;

    iget-object v1, p1, LJ4/w;->f:LJ4/G;

    invoke-direct {p0, v0, v1}, LJ4/w;-><init>(LJ4/G;LJ4/G;)V

    iput-object p1, p0, LJ4/y;->g:LJ4/w;

    iput-object p2, p0, LJ4/y;->h:LJ4/C;

    return-void
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LJ4/y;

    iget-object v0, p0, LJ4/y;->g:LJ4/w;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/y;->h:LJ4/C;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/y;-><init>(LJ4/w;LJ4/C;)V

    return-object p1
.end method

.method public final C0(Z)LJ4/b0;
    .locals 1

    iget-object v0, p0, LJ4/y;->g:LJ4/w;

    invoke-virtual {v0, p1}, LJ4/b0;->C0(Z)LJ4/b0;

    move-result-object v0

    iget-object p0, p0, LJ4/y;->h:LJ4/C;

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    invoke-virtual {p0, p1}, LJ4/b0;->C0(Z)LJ4/b0;

    move-result-object p0

    invoke-static {v0, p0}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public final D0(LK4/g;)LJ4/b0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LJ4/y;

    iget-object v0, p0, LJ4/y;->g:LJ4/w;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/y;->h:LJ4/C;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/y;-><init>(LJ4/w;LJ4/C;)V

    return-object p1
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 1

    iget-object v0, p0, LJ4/y;->g:LJ4/w;

    invoke-virtual {v0, p1}, LJ4/b0;->E0(LV3/h;)LJ4/b0;

    move-result-object p1

    iget-object p0, p0, LJ4/y;->h:LJ4/C;

    invoke-static {p1, p0}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public final F0()LJ4/G;
    .locals 0

    iget-object p0, p0, LJ4/y;->g:LJ4/w;

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public final G0(Lu4/g;Lu4/g;)Ljava/lang/String;
    .locals 3

    const-string v0, "renderer"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lu4/g;->a:Lu4/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lu4/k;->U:[LL3/l;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    iget-object v0, v0, Lu4/k;->m:Lu4/j;

    invoke-virtual {v0, v1}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LJ4/y;->h:LJ4/C;

    invoke-virtual {p1, p0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, LJ4/y;->g:LJ4/w;

    invoke-virtual {p0, p1, p2}, LJ4/w;->G0(Lu4/g;Lu4/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()LJ4/b0;
    .locals 0

    iget-object p0, p0, LJ4/y;->g:LJ4/w;

    return-object p0
.end method

.method public final k0()LJ4/C;
    .locals 0

    iget-object p0, p0, LJ4/y;->h:LJ4/C;

    return-object p0
.end method
