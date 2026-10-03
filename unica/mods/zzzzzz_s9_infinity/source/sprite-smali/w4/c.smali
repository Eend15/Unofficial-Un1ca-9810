.class public final Lw4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/b;


# instance fields
.field public final a:LJ4/P;

.field public b:LK4/j;


# direct methods
.method public constructor <init>(LJ4/P;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/c;->a:LJ4/P;

    invoke-virtual {p1}, LJ4/P;->a()I

    return-void
.end method


# virtual methods
.method public final a()LJ4/P;
    .locals 0

    iget-object p0, p0, Lw4/c;->a:LJ4/P;

    return-object p0
.end method

.method public final c()LR3/j;
    .locals 1

    iget-object p0, p0, Lw4/c;->a:LJ4/P;

    invoke-virtual {p0}, LJ4/P;->b()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->c()LR3/j;

    move-result-object p0

    const-string v0, "projection.type.constructor.builtIns"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic e()LU3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lw4/c;->a:LJ4/P;

    invoke-virtual {v0}, LJ4/P;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, LJ4/P;->b()LJ4/C;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw4/c;->c()LR3/j;

    move-result-object p0

    invoke-virtual {p0}, LR3/j;->n()LJ4/G;

    move-result-object p0

    :goto_0
    const-string v0, "if (projection.projectio\u2026 builtIns.nullableAnyType"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedTypeConstructor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lw4/c;->a:LJ4/P;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
