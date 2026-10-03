.class public final LK4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK4/c;


# static fields
.field public static final d:LK4/f;

.field public static final e:LK4/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LK4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK4/f;->d:LK4/f;

    new-instance v0, LK4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK4/f;->e:LK4/f;

    return-void
.end method

.method public static j(LJ4/G;)LJ4/G;
    .locals 13

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    instance-of v1, v0, Lw4/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast v0, Lw4/c;

    iget-object v1, v0, Lw4/c;->a:LJ4/P;

    invoke-virtual {v1}, LJ4/P;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    move-object v6, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LJ4/C;->B0()LJ4/b0;

    move-result-object v2

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lw4/c;->b:LK4/j;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lw4/c;->f()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/C;

    invoke-virtual {v3}, LJ4/C;->B0()LJ4/b0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v1, LK4/j;

    const-string v3, "projection"

    iget-object v8, v0, Lw4/c;->a:LJ4/P;

    invoke-static {v8, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, LH4/d;

    const/4 v3, 0x1

    invoke-direct {v9, v2, v3}, LH4/d;-><init>(Ljava/util/ArrayList;I)V

    const/16 v12, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, LK4/j;-><init>(LJ4/P;LH4/d;LK4/j;LU3/O;I)V

    iput-object v1, v0, Lw4/c;->b:LK4/j;

    :cond_4
    new-instance v1, LK4/i;

    iget-object v5, v0, Lw4/c;->b:LK4/j;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object v7

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v8

    const/16 v9, 0x20

    const/4 v4, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZI)V

    return-object v1

    :cond_5
    instance-of v1, v0, LJ4/B;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, LJ4/B;

    iget-object p0, v0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "makeNullable(this)"

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/C;

    const-string v4, "<this>"

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v3

    invoke-static {v3, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    iget-object p0, v0, LJ4/B;->a:LJ4/C;

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {p0, v6}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v2

    invoke-static {v2, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    new-instance v1, LJ4/B;

    invoke-direct {v1, p0}, LJ4/B;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v2, v1, LJ4/B;->a:LJ4/C;

    move-object v2, v1

    :goto_6
    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    move-object v0, v2

    :goto_7
    invoke-virtual {v0}, LJ4/B;->b()LJ4/G;

    move-result-object p0

    :cond_a
    return-object p0
.end method


# virtual methods
.method public A(LU3/O;)I
    .locals 0

    const-string p0, "receiver"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/O;->z()I

    move-result p0

    const-string p1, "this.variance"

    invoke-static {p0, p1}, LB/a;->y(ILjava/lang/String;)V

    invoke-static {p0}, LK/I;->m(I)I

    move-result p0

    return p0
.end method

.method public B(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->F(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public D(LM4/d;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->U(LK4/c;LM4/d;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public E(LM4/d;Z)LJ4/G;
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->b0(LK4/c;LM4/d;Z)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public F(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->C(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public G(LM4/d;)V
    .locals 0

    invoke-static {p0, p1}, LK4/h;->N(LK4/c;LM4/d;)V

    return-void
.end method

.method public I(LM4/e;I)LJ4/P;
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->q(LK4/c;LM4/e;I)LJ4/P;

    move-result-object p0

    return-object p0
.end method

.method public J(LM4/f;LM4/f;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->c(LK4/c;LM4/f;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public K(LM4/f;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->X(LK4/c;LM4/f;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public L(LM4/f;)I
    .locals 0

    invoke-static {p0, p1}, LK4/h;->T(LK4/c;LM4/f;)I

    move-result p0

    return p0
.end method

.method public M(Ljava/util/ArrayList;)LJ4/b0;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->z(LK4/c;Ljava/util/ArrayList;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public N(LJ4/P;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->M(LK4/c;LJ4/P;)Z

    move-result p0

    return p0
.end method

.method public O(LM4/d;)LJ4/M;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->Y(LK4/c;LM4/d;)LJ4/M;

    move-result-object p0

    return-object p0
.end method

.method public P(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->D(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public Q(LJ4/w;)LJ4/G;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->P(LK4/c;LJ4/w;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public R(LJ4/w;)LJ4/G;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->a0(LK4/c;LJ4/w;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public S(LM4/c;)LM4/d;
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->e(LM4/c;)LJ4/w;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LK4/f;->i(LM4/c;)LJ4/G;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LK4/f;->R(LJ4/w;)LJ4/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public T(LM4/d;)LM4/b;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->f(LK4/c;LM4/d;)LM4/b;

    move-result-object p0

    return-object p0
.end method

.method public U(LM4/c;)LM4/f;
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->i(LM4/c;)LJ4/G;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LK4/f;->r(LM4/c;)LM4/d;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, LK4/f;->O(LM4/d;)LJ4/M;

    move-result-object p0

    return-object p0
.end method

.method public V(LJ4/b0;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->w(LK4/c;LJ4/b0;)Z

    move-result p0

    return p0
.end method

.method public W(LJ4/P;)LJ4/b0;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->t(LK4/c;LJ4/P;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public X(LM4/d;)LJ4/G;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->l(LK4/c;LM4/d;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public Y(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->J(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public Z(LM4/b;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->L(LK4/c;LM4/b;)Z

    move-result p0

    return p0
.end method

.method public a(LM4/c;)LM4/c;
    .locals 1

    invoke-virtual {p0, p1}, LK4/f;->i(LM4/c;)LJ4/G;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LK4/f;->E(LM4/d;Z)LJ4/G;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a0(LM4/c;)LJ4/b0;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->R(LK4/c;LM4/c;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public b(LM4/c;)LJ4/b0;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LJ4/C;

    if-eqz v0, :cond_5

    check-cast p1, LJ4/C;

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p1

    instance-of v0, p1, LJ4/G;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LJ4/G;

    invoke-static {v0}, LK4/f;->j(LJ4/G;)LJ4/G;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, LJ4/w;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, LJ4/w;

    iget-object v1, v0, LJ4/w;->e:LJ4/G;

    invoke-static {v1}, LK4/f;->j(LJ4/G;)LJ4/G;

    move-result-object v1

    iget-object v2, v0, LJ4/w;->f:LJ4/G;

    invoke-static {v2}, LK4/f;->j(LJ4/G;)LJ4/G;

    move-result-object v3

    iget-object v0, v0, LJ4/w;->e:LJ4/G;

    if-ne v1, v0, :cond_2

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1, v3}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object v0

    :goto_1
    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "origin"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LJ4/c;->e(LJ4/C;)LJ4/C;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, LK4/f;->b(LM4/c;)LJ4/b0;

    move-result-object p0

    :goto_2
    invoke-static {v0, p0}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b0(LM4/d;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->E(LK4/c;LM4/d;)Z

    move-result p0

    return p0
.end method

.method public c(LM4/c;I)LJ4/P;
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->r(LK4/c;LM4/c;I)LJ4/P;

    move-result-object p0

    return-object p0
.end method

.method public c0(LM4/b;)Z
    .locals 0

    const-string p0, "receiver"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lw4/a;

    return p0
.end method

.method public d(LM4/b;)I
    .locals 0

    invoke-static {p0, p1}, LK4/h;->m(LK4/c;LM4/b;)I

    move-result p0

    return p0
.end method

.method public d0(LM4/d;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->H(LK4/c;LM4/d;)Z

    move-result p0

    return p0
.end method

.method public e(LM4/c;)LJ4/w;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->i(LK4/c;LM4/c;)LJ4/w;

    move-result-object p0

    return-object p0
.end method

.method public e0(LM4/c;)LJ4/Q;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->k(LK4/c;LM4/c;)LJ4/Q;

    move-result-object p0

    return-object p0
.end method

.method public f(LJ4/P;)I
    .locals 0

    invoke-static {p0, p1}, LK4/h;->u(LK4/c;LJ4/P;)I

    move-result p0

    return p0
.end method

.method public f0(Lw4/b;)LJ4/P;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->V(LK4/c;Lw4/b;)LJ4/P;

    move-result-object p0

    return-object p0
.end method

.method public g(LM4/d;LM4/d;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->y(LK4/c;LM4/d;LM4/d;)Z

    move-result p0

    return p0
.end method

.method public g0(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->A(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public h(LM4/e;)I
    .locals 0

    invoke-static {p0, p1}, LK4/h;->W(LK4/c;LM4/e;)I

    move-result p0

    return p0
.end method

.method public h0(LM4/d;LM4/d;)LJ4/b0;
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->n(LK4/c;LM4/d;LM4/d;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public i(LM4/c;)LJ4/G;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->j(LK4/c;LM4/c;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public i0(LM4/d;)LJ4/l;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->g(LK4/c;LM4/d;)LJ4/l;

    move-result-object p0

    return-object p0
.end method

.method public j0(LM4/d;I)LJ4/P;
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, LK4/f;->v(LM4/c;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, LK4/f;->c(LM4/c;I)LJ4/P;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public k0(LM4/d;)Z
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->O(LM4/d;)LJ4/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LK4/f;->B(LM4/f;)Z

    move-result p0

    return p0
.end method

.method public l(LM4/b;)LJ4/b0;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->Q(LK4/c;LM4/b;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public l0(LM4/b;)LK4/j;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->Z(LK4/c;LM4/b;)LK4/j;

    move-result-object p0

    return-object p0
.end method

.method public m(LM4/d;LM4/f;)V
    .locals 0

    return-void
.end method

.method public n0(LM4/c;)LM4/c;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->c0(LK4/c;LM4/c;)LM4/c;

    move-result-object p0

    return-object p0
.end method

.method public o(LM4/c;)Z
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->i(LM4/c;)LJ4/G;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LK4/f;->i0(LM4/d;)LJ4/l;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public o0(LM4/c;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->K(LK4/c;LM4/c;)Z

    move-result p0

    return p0
.end method

.method public p(LJ4/l;)LJ4/G;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->S(LK4/c;LJ4/l;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public p0(LM4/f;I)LU3/O;
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->s(LK4/c;LM4/f;I)LU3/O;

    move-result-object p0

    return-object p0
.end method

.method public q(LM4/d;)Z
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->i(LM4/c;)LJ4/G;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LK4/f;->T(LM4/d;)LM4/b;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public q0(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->G(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public r(LM4/c;)LM4/d;
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->e(LM4/c;)LJ4/w;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LK4/f;->i(LM4/c;)LJ4/G;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LK4/f;->Q(LJ4/w;)LJ4/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public s(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->B(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public t(LM4/d;)LM4/e;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->e(LK4/c;LM4/d;)LM4/e;

    move-result-object p0

    return-object p0
.end method

.method public u(LM4/d;)V
    .locals 0

    invoke-static {p0, p1}, LK4/h;->O(LK4/c;LM4/d;)V

    return-void
.end method

.method public v(LM4/c;)I
    .locals 0

    invoke-static {p0, p1}, LK4/h;->d(LK4/c;LM4/c;)I

    move-result p0

    return p0
.end method

.method public w(LM4/d;)Z
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->O(LM4/d;)LJ4/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LK4/f;->s(LM4/f;)Z

    move-result p0

    return p0
.end method

.method public x(LU3/O;LM4/f;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->x(LK4/c;LU3/O;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public y(LM4/c;)V
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK4/f;->e(LM4/c;)LJ4/w;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LK4/h;->h(LK4/c;LJ4/w;)V

    :goto_0
    return-void
.end method

.method public z(LM4/d;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->I(LK4/c;LM4/d;)Z

    move-result p0

    return p0
.end method
