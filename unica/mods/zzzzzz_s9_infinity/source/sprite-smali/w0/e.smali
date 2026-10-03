.class public final Lw0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/m;
.implements Lc3/c;
.implements Lc3/b;
.implements Ln0/u;
.implements Lp4/f;
.implements LK4/c;


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroidx/lifecycle/A;

    invoke-direct {v0}, Landroidx/lifecycle/A;-><init>()V

    iput-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    .line 8
    new-instance v0, Ly0/k;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lw0/e;->e:Ljava/lang/Object;

    .line 11
    sget-object v0, Ln0/u;->c:Ln0/s;

    invoke-virtual {p0, v0}, Lw0/e;->v0(Lj0/s;)V

    return-void
.end method

.method public constructor <init>(LU3/x;Lw0/i;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Lw0/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw0/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Lw0/e;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;LK4/d;)V
    .locals 1

    const-string v0, "equalityAxioms"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw0/e;->d:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lw0/e;->e:Ljava/lang/Object;

    return-void
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

.method public C(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lw0/e;->x0(I)Lq3/k;

    move-result-object p0

    iget-object p0, p0, Lq3/k;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public H(Ljava/lang/CharSequence;IILandroidx/emoji2/text/t;)Z
    .locals 3

    iget v0, p4, Landroidx/emoji2/text/t;->c:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/v;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/emoji2/text/v;

    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Landroidx/emoji2/text/v;-><init>(Landroid/text/Spannable;)V

    iput-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p1, LU0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/emoji2/text/u;

    invoke-direct {p1, p4}, Landroidx/emoji2/text/u;-><init>(Landroidx/emoji2/text/t;)V

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/v;

    const/16 p4, 0x21

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/v;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method

.method public I(LM4/e;I)LJ4/P;
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->q(LK4/c;LM4/e;I)LJ4/P;

    move-result-object p0

    return-object p0
.end method

.method public J(LM4/f;LM4/f;)Z
    .locals 2

    const-string v0, "c1"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LJ4/M;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_6

    instance-of v0, p2, LJ4/M;

    if-eqz v0, :cond_5

    invoke-static {p0, p1, p2}, LK4/h;->c(LK4/c;LM4/f;LM4/f;)Z

    move-result v0

    if-nez v0, :cond_4

    check-cast p1, LJ4/M;

    check-cast p2, LJ4/M;

    iget-object v0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast v0, LK4/d;

    invoke-interface {v0, p1, p2}, LK4/d;->a(LJ4/M;LJ4/M;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/M;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/M;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-virtual {p0, p1}, Lw0/e;->e(LM4/c;)LJ4/w;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lw0/e;->i(LM4/c;)LJ4/G;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lw0/e;->R(LJ4/w;)LJ4/G;

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

    invoke-virtual {p0, p1}, Lw0/e;->i(LM4/c;)LJ4/G;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lw0/e;->r(LM4/c;)LM4/d;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lw0/e;->O(LM4/d;)LJ4/M;

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

.method public a()Z
    .locals 1

    iget-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p0, Lc3/a;

    invoke-interface {p0}, Lc3/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a0(LM4/c;)LJ4/b0;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->R(LK4/c;LM4/c;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v0, Lc3/d;

    invoke-interface {v0}, Lc3/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p0, Lc3/a;

    invoke-interface {p0}, Lc3/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

.method public j()Z
    .locals 0

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Lc3/d;

    invoke-interface {p0}, Lc3/c;->j()Z

    move-result p0

    return p0
.end method

.method public j0(LM4/d;I)LJ4/P;
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lw0/e;->v(LM4/c;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lw0/e;->c(LM4/c;I)LJ4/P;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public k()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/v;

    return-object p0
.end method

.method public k0(LM4/d;)Z
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lw0/e;->O(LM4/d;)LJ4/M;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/e;->B(LM4/f;)Z

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

.method public m0(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lw0/e;->x0(I)Lq3/k;

    move-result-object p0

    iget-object p1, p0, Lq3/k;->d:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lq3/k;->e:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "."

    const/4 v3, 0x0

    const/16 v6, 0x3e

    invoke-static/range {v1 .. v6}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "/"

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public n(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Ln4/L;

    iget-object p0, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "strings.getString(index)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
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

    invoke-virtual {p0, p1}, Lw0/e;->i(LM4/c;)LJ4/G;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lw0/e;->i0(LM4/d;)LJ4/l;

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

    invoke-virtual {p0, p1}, Lw0/e;->i(LM4/c;)LJ4/G;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lw0/e;->T(LM4/d;)LM4/b;

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

    invoke-virtual {p0, p1}, Lw0/e;->e(LM4/c;)LJ4/w;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lw0/e;->i(LM4/c;)LJ4/G;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lw0/e;->Q(LJ4/w;)LJ4/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public r0(Ln4/g;Lp4/f;)LV3/c;
    .locals 10

    const-string v0, "proto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Ln4/g;->f:I

    invoke-static {p2, v0}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object v0

    iget-object v1, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v1, LU3/x;

    iget-object v2, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast v2, Lw0/i;

    invoke-static {v1, v0, v2}, LR3/f;->D(LU3/x;Ls4/b;Lw0/i;)LU3/e;

    move-result-object v0

    sget-object v1, Lr3/s;->d:Lr3/s;

    iget-object v2, p1, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, LJ4/v;->g(LU3/j;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lv4/f;->n(LU3/j;I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, LU3/e;->P()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/j;->K0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/d;

    if-eqz v2, :cond_7

    check-cast v2, LX3/w;

    invoke-virtual {v2}, LX3/w;->n0()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, Lr3/v;->d0(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, LX3/W;

    check-cast v4, LX3/p;

    invoke-virtual {v4}, LX3/p;->r()Ls4/f;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Ln4/g;->g:Ljava/util/List;

    const-string v1, "proto.argumentList"

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln4/e;

    const-string v4, "it"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v2, Ln4/e;->f:I

    invoke-static {p2, v4}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/W;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v6, Lq3/f;

    iget v7, v2, Ln4/e;->f:I

    invoke-static {p2, v7}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v7

    check-cast v4, LX3/X;

    invoke-virtual {v4}, LX3/X;->j()LJ4/C;

    move-result-object v4

    const-string v8, "parameter.type"

    invoke-static {v4, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Ln4/e;->g:Ln4/d;

    const-string v8, "proto.value"

    invoke-static {v2, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, p2}, Lw0/e;->w0(LJ4/C;Ln4/d;Lp4/f;)Lx4/g;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v2}, Lw0/e;->s0(Lx4/g;LJ4/C;Ln4/d;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v5, v8

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected argument value: actual type "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Ln4/d;->f:Ln4/c;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lx4/i;

    invoke-direct {v5, v2}, Lx4/i;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-direct {v6, v7, v5}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    :cond_7
    new-instance p0, LV3/c;

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object p1

    sget-object p2, LU3/L;->a:LU3/M;

    invoke-direct {p0, p1, v1, p2}, LV3/c;-><init>(LJ4/G;Ljava/util/Map;LU3/L;)V

    return-object p0
.end method

.method public s(LM4/f;)Z
    .locals 0

    invoke-static {p0, p1}, LK4/h;->B(LK4/c;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public s0(Lx4/g;LJ4/C;Ln4/d;)Z
    .locals 6

    iget-object v0, p3, Ln4/d;->f:Ln4/c;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, LF4/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    iget-object v4, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v4, LU3/x;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v4}, Lx4/g;->a(LU3/x;)LJ4/C;

    move-result-object p0

    invoke-static {p0, p2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lx4/b;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lx4/b;

    iget-object v0, v0, Lx4/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p3, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-interface {v4}, LU3/x;->c()LR3/j;

    move-result-object v0

    invoke-virtual {v0, p2}, LR3/j;->f(LJ4/C;)LJ4/C;

    move-result-object p2

    check-cast p1, Lx4/b;

    iget-object v0, p1, Lx4/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LK3/c;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v0, v2}, LK3/a;-><init>(III)V

    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, LK3/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    move-object v1, v0

    check-cast v1, LK3/b;

    iget-boolean v1, v1, LK3/b;->f:Z

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, LK3/b;

    invoke-virtual {v1}, LK3/b;->b()I

    move-result v1

    iget-object v4, p1, Lx4/g;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx4/g;

    iget-object v5, p3, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/d;

    const-string v5, "value.getArrayElement(i)"

    invoke-static {v1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p2, v1}, Lw0/e;->s0(Lx4/g;LJ4/C;Ln4/d;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    const-string p0, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    invoke-static {p1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of p1, p0, LU3/e;

    if-eqz p1, :cond_7

    check-cast p0, LU3/e;

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    sget-object p1, LR3/j;->e:Ls4/f;

    sget-object p1, LR3/o;->P:Ls4/e;

    invoke-static {p0, p1}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_8
    :goto_2
    return v2
.end method

.method public t(LM4/d;)LM4/e;
    .locals 0

    invoke-static {p0, p1}, LK4/h;->e(LK4/c;LM4/d;)LM4/e;

    move-result-object p0

    return-object p0
.end method

.method public t0(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public u(LM4/d;)V
    .locals 0

    invoke-static {p0, p1}, LK4/h;->O(LK4/c;LM4/d;)V

    return-void
.end method

.method public u0(Lw0/d;)V
    .locals 1

    iget-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object p0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p0, Lw0/b;

    invoke-virtual {p0, p1}, Lw0/b;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
.end method

.method public v(LM4/c;)I
    .locals 0

    invoke-static {p0, p1}, LK4/h;->d(LK4/c;LM4/c;)I

    move-result p0

    return p0
.end method

.method public v0(Lj0/s;)V
    .locals 4

    iget-object v0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/A;

    iget-object v1, v0, Landroidx/lifecycle/A;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    sget-object v3, Landroidx/lifecycle/A;->k:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object p1, v0, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {}, Ll/a;->M()Ll/a;

    move-result-object v1

    iget-object v0, v0, Landroidx/lifecycle/A;->j:LA1/l;

    iget-object v1, v1, Ll/a;->d:Ll/c;

    iget-object v2, v1, Ll/c;->f:Landroid/os/Handler;

    if-nez v2, :cond_3

    iget-object v2, v1, Ll/c;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v1, Ll/c;->f:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v1, Ll/c;->f:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    iget-object v1, v1, Ll/c;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    instance-of v0, p1, Ln0/t;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p0, Ly0/k;

    check-cast p1, Ln0/t;

    invoke-virtual {p0, p1}, Ly0/k;->j(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    instance-of v0, p1, Ln0/r;

    if-eqz v0, :cond_5

    check-cast p1, Ln0/r;

    iget-object p0, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast p0, Ly0/k;

    iget-object p1, p1, Ln0/r;->d:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ly0/k;->k(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_5
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public w(LM4/d;)Z
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lw0/e;->O(LM4/d;)LJ4/M;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/e;->s(LM4/f;)Z

    move-result p0

    return p0
.end method

.method public w0(LJ4/C;Ln4/d;Lp4/f;)Lx4/g;
    .locals 4

    const-string v0, "value"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lp4/e;->M:Lp4/b;

    iget v1, p2, Ln4/d;->p:I

    invoke-virtual {v0, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p2, Ln4/d;->f:Ln4/c;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, LF4/c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported annotation argument type: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Ln4/d;->f:Ln4/c;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p2, p2, Ln4/d;->n:Ljava/util/List;

    const-string v0, "value.arrayElementList"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/d;

    iget-object v2, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v2, LU3/x;

    invoke-interface {v2}, LU3/x;->c()LR3/j;

    move-result-object v2

    invoke-virtual {v2}, LR3/j;->e()LJ4/G;

    move-result-object v2

    const-string v3, "it"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, p3}, Lw0/e;->w0(LJ4/C;Ln4/d;Lp4/f;)Lx4/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, LF4/m;

    invoke-direct {p0, p1, v0}, LF4/m;-><init>(LJ4/C;Ljava/util/ArrayList;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance p1, Lx4/a;

    iget-object p2, p2, Ln4/d;->m:Ln4/g;

    const-string v0, "value.annotation"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object p0

    invoke-direct {p1, p0}, Lx4/g;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object p0, p1

    goto/16 :goto_5

    :pswitch_2
    new-instance p0, Lx4/h;

    iget p1, p2, Ln4/d;->k:I

    invoke-static {p3, p1}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p1

    iget p2, p2, Ln4/d;->l:I

    invoke-static {p3, p2}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance p0, Lx4/q;

    iget p1, p2, Ln4/d;->k:I

    invoke-static {p3, p1}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p1

    iget p2, p2, Ln4/d;->o:I

    invoke-direct {p0, p1, p2}, Lx4/q;-><init>(Ls4/b;I)V

    goto/16 :goto_5

    :pswitch_4
    new-instance p0, Lx4/u;

    iget p1, p2, Ln4/d;->j:I

    invoke-interface {p3, p1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance p0, Lx4/c;

    iget-wide p1, p2, Ln4/d;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lx4/c;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    new-instance p0, Lx4/c;

    iget-wide p1, p2, Ln4/d;->i:D

    invoke-direct {p0, p1, p2}, Lx4/c;-><init>(D)V

    goto :goto_5

    :pswitch_7
    new-instance p0, Lx4/c;

    iget p1, p2, Ln4/d;->h:F

    invoke-direct {p0, p1}, Lx4/c;-><init>(F)V

    goto :goto_5

    :pswitch_8
    iget-wide p0, p2, Ln4/d;->g:J

    if-eqz v0, :cond_3

    new-instance p2, Lx4/v;

    invoke-direct {p2, p0, p1}, Lx4/v;-><init>(J)V

    :goto_4
    move-object p0, p2

    goto :goto_5

    :cond_3
    new-instance p2, Lx4/r;

    invoke-direct {p2, p0, p1}, Lx4/r;-><init>(J)V

    goto :goto_4

    :pswitch_9
    iget-wide p0, p2, Ln4/d;->g:J

    long-to-int p0, p0

    if-eqz v0, :cond_4

    new-instance p1, Lx4/v;

    invoke-direct {p1, p0}, Lx4/v;-><init>(I)V

    goto :goto_2

    :cond_4
    new-instance p1, Lx4/j;

    invoke-direct {p1, p0}, Lx4/j;-><init>(I)V

    goto :goto_2

    :pswitch_a
    iget-wide p0, p2, Ln4/d;->g:J

    long-to-int p0, p0

    int-to-short p0, p0

    if-eqz v0, :cond_5

    new-instance p1, Lx4/v;

    invoke-direct {p1, p0}, Lx4/v;-><init>(S)V

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lx4/t;

    invoke-direct {p1, p0}, Lx4/t;-><init>(S)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p0, Lx4/e;

    iget-wide p1, p2, Ln4/d;->g:J

    long-to-int p1, p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_c
    iget-wide p0, p2, Ln4/d;->g:J

    long-to-int p0, p0

    int-to-byte p0, p0

    if-eqz v0, :cond_6

    new-instance p1, Lx4/v;

    invoke-direct {p1, p0}, Lx4/v;-><init>(B)V

    goto/16 :goto_2

    :cond_6
    new-instance p1, Lx4/d;

    invoke-direct {p1, p0}, Lx4/d;-><init>(B)V

    goto/16 :goto_2

    :goto_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(LU3/O;LM4/f;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LK4/h;->x(LK4/c;LU3/O;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public x0(I)Lq3/k;
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lw0/e;->e:Ljava/lang/Object;

    check-cast v3, Ln4/K;

    iget-object v3, v3, Ln4/K;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln4/J;

    iget v3, p1, Ln4/J;->g:I

    iget-object v4, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast v4, Ln4/L;

    iget-object v4, v4, Ln4/L;->e:Lt4/u;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Ln4/J;->h:Ln4/I;

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v2, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    iget p1, p1, Ln4/J;->f:I

    goto :goto_0

    :cond_3
    new-instance p0, Lq3/k;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lq3/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public y(LM4/c;)V
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lw0/e;->e(LM4/c;)LJ4/w;

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
