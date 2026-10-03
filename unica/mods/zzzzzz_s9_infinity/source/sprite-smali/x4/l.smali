.class public final Lx4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/M;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lq3/j;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LV3/g;->a:LV3/f;

    sget-object v1, Lr3/r;->d:Lr3/r;

    const-string v2, "Scope for integer literal type"

    const/4 v3, 0x1

    invoke-static {v2, v3}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v0, v1, v3}, LJ4/d;->q(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    new-instance v0, La0/o;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lq3/j;

    invoke-direct {v1, v0}, Lq3/j;-><init>(LE3/a;)V

    iput-object v1, p0, Lx4/l;->b:Lq3/j;

    iput-object p1, p0, Lx4/l;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final c()LR3/j;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()LU3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lx4/l;->b:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lx4/k;->d:Lx4/k;

    const/4 v5, 0x0

    const/16 v7, 0x1e

    iget-object v2, p0, Lx4/l;->a:Ljava/util/Set;

    const-string v3, ","

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IntegerLiteralType"

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
