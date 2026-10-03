.class public abstract LJ4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/M;


# instance fields
.field public a:I

.field public final b:LI4/d;


# direct methods
.method public constructor <init>(LI4/o;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LC4/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    new-instance v1, LF4/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    check-cast p1, LI4/l;

    new-instance v2, LI4/d;

    invoke-direct {v2, p1, v0, v1}, LI4/d;-><init>(LI4/l;LC4/g;LF4/a;)V

    iput-object v2, p0, LJ4/h;->b:LI4/d;

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/util/Collection;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, LJ4/M;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LJ4/h;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LJ4/M;

    invoke-interface {p1}, LJ4/M;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-static {v0}, LJ4/v;->g(LU3/j;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lv4/f;->o(LU3/j;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, LJ4/v;->g(LU3/j;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lv4/f;->o(LU3/j;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, LJ4/h;->k(LU3/g;)Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public final bridge synthetic f()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, LJ4/h;->j()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract h()LJ4/C;
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, LJ4/h;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    invoke-static {v0}, LJ4/v;->g(LU3/j;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lv4/f;->o(LU3/j;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v0

    iget-object v0, v0, Ls4/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iput v0, p0, LJ4/h;->a:I

    return v0
.end method

.method public abstract i()LU3/M;
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ4/h;->b:LI4/d;

    invoke-virtual {p0}, LI4/d;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/f;

    iget-object p0, p0, LJ4/f;->b:Ljava/util/List;

    return-object p0
.end method

.method public abstract k(LU3/g;)Z
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 0

    return-object p1
.end method
