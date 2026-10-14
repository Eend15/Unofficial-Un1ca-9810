.class public final Li4/g;
.super LJ4/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(LJ4/G;LJ4/G;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LJ4/w;-><init>(LJ4/G;LJ4/G;)V

    sget-object p0, LK4/e;->a:LK4/m;

    invoke-virtual {p0, p1, p2}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    return-void
.end method

.method public static final H0(Lu4/g;LJ4/C;)Ljava/util/ArrayList;
    .locals 10

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/P;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "typeProjection"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Lu4/f;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lu4/f;-><init>(Lu4/g;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ", "

    const/16 v9, 0x3c

    move-object v4, v2

    invoke-static/range {v3 .. v9}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3c

    invoke-static {p0, v0}, LV4/m;->p0(Ljava/lang/String;C)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<this>"

    invoke-static {p0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "missingDelimiterValue"

    invoke-static {p0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v3, v2}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p0}, LV4/m;->K0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Li4/g;

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/w;-><init>(LJ4/G;LJ4/G;)V

    return-object p1
.end method

.method public final C0(Z)LJ4/b0;
    .locals 2

    new-instance v0, Li4/g;

    iget-object v1, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v1

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Li4/g;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public final D0(LK4/g;)LJ4/b0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Li4/g;

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/w;-><init>(LJ4/G;LJ4/G;)V

    return-object p1
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 2

    new-instance v0, Li4/g;

    iget-object v1, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object v1

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Li4/g;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public final F0()LJ4/G;
    .locals 0

    iget-object p0, p0, LJ4/w;->e:LJ4/G;

    return-object p0
.end method

.method public final G0(Lu4/g;Lu4/g;)Ljava/lang/String;
    .locals 10

    const-string v0, "renderer"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {p1, v0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {p1, v2}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p2, Lu4/g;->a:Lu4/k;

    invoke-virtual {p2}, Lu4/k;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "raw ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object p0

    invoke-virtual {p1, v1, v3, p0}, Lu4/g;->C(Ljava/lang/String;Ljava/lang/String;LR3/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, v0}, Li4/g;->H0(Lu4/g;LJ4/C;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, v2}, Li4/g;->H0(Lu4/g;LJ4/C;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v8, Li4/f;->d:Li4/f;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ", "

    const/16 v9, 0x1e

    move-object v4, p2

    invoke-static/range {v4 .. v9}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/f;

    iget-object v4, v0, Lq3/f;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Lq3/f;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, "out "

    invoke-static {v0, v5}, LV4/m;->C0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v3, v2}, Li4/g;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-static {v1, v2}, Li4/g;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p2

    :cond_6
    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object p0

    invoke-virtual {p1, p2, v3, p0}, Lu4/g;->C(Ljava/lang/String;Ljava/lang/String;LR3/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l0()LC4/o;
    .locals 3

    invoke-virtual {p0}, LJ4/w;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, LU3/e;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, Li4/e;

    invoke-direct {p0, v2}, Li4/e;-><init>(Lw0/s;)V

    invoke-interface {v0, p0}, LU3/e;->p0(LJ4/U;)LC4/o;

    move-result-object p0

    const-string v0, "classDescriptor.getMemberScope(RawSubstitution())"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, LJ4/w;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    const-string v0, "Incorrect classifier: "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
