.class public final Ld4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lv4/g;
    .locals 0

    sget-object p0, Lv4/g;->e:Lv4/g;

    return-object p0
.end method

.method public b(LU3/a;LU3/a;LU3/e;)Lv4/h;
    .locals 4

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lf4/f;

    sget-object p3, Lv4/h;->f:Lv4/h;

    if-eqz p0, :cond_8

    move-object p0, p2

    check-cast p0, Lf4/f;

    invoke-virtual {p0}, LX3/w;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1, p2}, Lv4/o;->i(LU3/a;LU3/a;)Lv4/n;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lv4/n;->c()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    return-object p3

    :cond_2
    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v0

    const-string v2, "subDescriptor.valueParameters"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object v0

    sget-object v2, Ld4/f;->h:Ld4/f;

    invoke-static {v0, v2}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object v0

    iget-object v2, p0, LX3/w;->j:LJ4/C;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object v2

    filled-new-array {v0, v2}, [LU4/i;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object v0

    invoke-static {v0}, LU4/j;->d0(LU4/i;)LU4/g;

    move-result-object v0

    iget-object p0, p0, LX3/w;->k:LX3/O;

    const/4 v2, 0x0

    if-nez p0, :cond_3

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    filled-new-array {v0, p0}, [LU4/i;

    move-result-object p0

    invoke-static {p0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object p0

    invoke-static {p0}, LU4/j;->d0(LU4/i;)LU4/g;

    move-result-object p0

    new-instance v0, LB3/f;

    invoke-direct {v0, p0}, LB3/f;-><init>(LU4/g;)V

    :cond_4
    invoke-virtual {v0}, LB3/f;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, LB3/f;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of p0, p0, Li4/g;

    if-nez p0, :cond_4

    return-object p3

    :cond_5
    new-instance p0, Li4/e;

    invoke-direct {p0, v2}, Li4/e;-><init>(Lw0/s;)V

    new-instance v0, LJ4/X;

    invoke-direct {v0, p0}, LJ4/X;-><init>(LJ4/U;)V

    invoke-interface {p1, v0}, LU3/N;->l(LJ4/X;)LU3/k;

    move-result-object p0

    check-cast p0, LU3/a;

    if-nez p0, :cond_6

    return-object p3

    :cond_6
    instance-of p1, p0, LX3/P;

    if-eqz p1, :cond_7

    move-object p1, p0

    check-cast p1, LX3/P;

    invoke-virtual {p1}, LX3/w;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, LU3/s;->Z()LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->E()LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->build()LU3/s;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    :cond_7
    sget-object p1, Lv4/o;->c:Lv4/o;

    invoke-virtual {p1, p0, p2, v1}, Lv4/o;->n(LU3/a;LU3/a;Z)Lv4/n;

    move-result-object p0

    invoke-virtual {p0}, Lv4/n;->c()I

    move-result p0

    const-string p1, "DEFAULT.isOverridableByW\u2026Descriptor, false).result"

    invoke-static {p0, p1}, LB/a;->y(ILjava/lang/String;)V

    sget-object p1, Ld4/i;->a:[I

    invoke-static {p0}, Lq/e;->c(I)I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    sget-object p3, Lv4/h;->d:Lv4/h;

    :cond_8
    :goto_2
    return-object p3
.end method
