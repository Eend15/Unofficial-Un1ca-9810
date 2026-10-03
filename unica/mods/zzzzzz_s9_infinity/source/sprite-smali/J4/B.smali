.class public final LJ4/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/M;
.implements LM4/f;


# instance fields
.field public a:LJ4/C;

.field public final b:Ljava/util/LinkedHashSet;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/AbstractCollection;)V
    .locals 1

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, LJ4/B;->c:I

    return-void
.end method


# virtual methods
.method public final b()LJ4/G;
    .locals 6

    sget-object v0, LV3/g;->a:LV3/f;

    sget-object v2, Lr3/r;->d:Lr3/r;

    iget-object v1, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    const-string v3, "member scope for intersection type"

    invoke-static {v3, v1}, Lw0/f;->o(Ljava/lang/String;Ljava/util/SequencedCollection;)LC4/o;

    move-result-object v4

    new-instance v5, LF4/a;

    const/4 v1, 0x4

    invoke-direct {v5, v1, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, LJ4/d;->r(LV3/h;LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public final c()LR3/j;
    .locals 1

    iget-object p0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->c()LR3/j;

    move-result-object p0

    const-string v0, "intersectedTypes.iterato\u2026xt().constructor.builtIns"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
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

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, LJ4/B;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    check-cast p1, LJ4/B;

    iget-object p1, p1, LJ4/B;->b:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final h(LE3/b;)Ljava/lang/String;
    .locals 8

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    new-instance v0, LJ4/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LJ4/A;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lr3/j;->N0(Ljava/util/SequencedCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    new-instance v6, LF4/a;

    const/4 p0, 0x5

    invoke-direct {v6, p0, p1}, LF4/a;-><init>(ILjava/lang/Object;)V

    const-string v4, "{"

    const-string v5, "}"

    const-string v3, " & "

    const/16 v7, 0x18

    invoke-static/range {v2 .. v7}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, LJ4/B;->c:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LJ4/g;->f:LJ4/g;

    invoke-virtual {p0, v0}, LJ4/B;->h(LE3/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
