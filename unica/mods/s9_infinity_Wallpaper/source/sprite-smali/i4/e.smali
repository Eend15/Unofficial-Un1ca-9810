.class public final Li4/e;
.super LJ4/U;
.source "SourceFile"


# static fields
.field public static final c:Li4/a;

.field public static final d:Li4/a;


# instance fields
.field public final b:Lw0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Li4/a;->b(I)Li4/a;

    move-result-object v4

    sput-object v4, Li4/e;->c:Li4/a;

    invoke-static {v0, v1, v2, v3}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li4/a;->b(I)Li4/a;

    move-result-object v0

    sput-object v0, Li4/e;->d:Li4/a;

    return-void
.end method

.method public constructor <init>(Lw0/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lw0/s;

    invoke-direct {p1, p0}, Lw0/s;-><init>(Li4/e;)V

    :cond_0
    iput-object p1, p0, Li4/e;->b:Lw0/s;

    return-void
.end method

.method public static g(LU3/O;Li4/a;LJ4/C;)LJ4/P;
    .locals 4

    const-string v0, "attr"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "erasedUpperBound"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Li4/a;->b:I

    invoke-static {v0}, Lq/e;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    new-instance p0, LJ4/Q;

    invoke-direct {p0, v1, p2}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_1

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p0}, LU3/O;->z()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    new-instance p1, LJ4/Q;

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p0

    invoke-virtual {p0}, LR3/j;->m()LJ4/G;

    move-result-object p0

    invoke-direct {p1, v1, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    move-object p0, p1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "erasedUpperBound.constructor.parameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance p0, LJ4/Q;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, Li4/d;->a(LU3/O;Li4/a;)LJ4/P;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final d(LJ4/C;)LJ4/P;
    .locals 6

    new-instance v0, LJ4/Q;

    new-instance v1, Li4/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1e

    invoke-direct {v1, v4, v2, v3, v5}, Li4/a;-><init>(IZLjava/util/Set;I)V

    invoke-virtual {p0, p1, v1}, Li4/e;->i(LJ4/C;Li4/a;)LJ4/C;

    move-result-object p0

    invoke-direct {v0, p0}, LJ4/Q;-><init>(LJ4/C;)V

    return-object v0
.end method

.method public final h(LJ4/G;LU3/e;Li4/a;)Lq3/f;
    .locals 8

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lq3/f;

    invoke-direct {p2, p1, p0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-static {p1}, LR3/j;->x(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJ4/P;

    new-instance v0, LJ4/Q;

    invoke-virtual {p2}, LJ4/P;->a()I

    move-result v1

    invoke-virtual {p2}, LJ4/P;->b()LJ4/C;

    move-result-object p2

    const-string v2, "componentTypeProjection.type"

    invoke-static {p2, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Li4/e;->i(LJ4/C;Li4/a;)LJ4/C;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, LV3/a;->p()LV3/h;

    move-result-object p2

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p3

    invoke-virtual {p1}, LJ4/C;->z0()Z

    move-result p1

    invoke-static {p3, p2, p0, p1}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lq3/f;

    invoke-direct {p2, p0, p1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    invoke-static {p1}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Raw error type: "

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-static {p1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lq3/f;

    invoke-direct {p2, p0, p1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-interface {p2, p0}, LU3/e;->p0(LJ4/U;)LC4/o;

    move-result-object v4

    const-string v0, "declaration.getMemberScope(this)"

    invoke-static {v4, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LV3/a;->p()LV3/h;

    move-result-object v0

    invoke-interface {p2}, LU3/g;->E()LJ4/M;

    move-result-object v1

    const-string v2, "declaration.typeConstructor"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, LU3/g;->E()LJ4/M;

    move-result-object v2

    invoke-interface {v2}, LJ4/M;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "declaration.typeConstructor.parameters"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/O;

    const-string v6, "parameter"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Li4/e;->b:Lw0/s;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, p3}, Lw0/s;->a(LU3/O;ZLi4/a;)LJ4/C;

    move-result-object v6

    invoke-static {v5, p3, v6}, Li4/e;->g(LU3/O;Li4/a;LJ4/C;)LJ4/P;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, LJ4/C;->z0()Z

    move-result v5

    new-instance v6, LF4/a;

    invoke-direct {v6, p2, p0, p1, p3}, LF4/a;-><init>(LU3/e;Li4/e;LJ4/G;Li4/a;)V

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, LJ4/d;->r(LV3/h;LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)LJ4/G;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Lq3/f;

    invoke-direct {p2, p0, p1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final i(LJ4/C;Li4/a;)LJ4/C;
    .locals 3

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/O;

    if-eqz v1, :cond_0

    check-cast v0, LU3/O;

    const/4 p1, 0x1

    iget-object v1, p0, Li4/e;->b:Lw0/s;

    invoke-virtual {v1, v0, p1, p2}, Lw0/s;->a(LU3/O;ZLi4/a;)LJ4/C;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li4/e;->i(LJ4/C;Li4/a;)LJ4/C;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of p2, v0, LU3/e;

    if-eqz p2, :cond_4

    invoke-static {p1}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object p2

    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object p2

    invoke-interface {p2}, LJ4/M;->e()LU3/g;

    move-result-object p2

    instance-of v1, p2, LU3/e;

    if-eqz v1, :cond_3

    invoke-static {p1}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v1

    check-cast v0, LU3/e;

    sget-object v2, Li4/e;->c:Li4/a;

    invoke-virtual {p0, v1, v0, v2}, Li4/e;->h(LJ4/G;LU3/e;Li4/a;)Lq3/f;

    move-result-object v0

    iget-object v1, v0, Lq3/f;->d:Ljava/lang/Object;

    check-cast v1, LJ4/G;

    iget-object v0, v0, Lq3/f;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object p1

    check-cast p2, LU3/e;

    sget-object v2, Li4/e;->d:Li4/a;

    invoke-virtual {p0, p1, p2, v2}, Li4/e;->h(LJ4/G;LU3/e;Li4/a;)Lq3/f;

    move-result-object p0

    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, LJ4/G;

    iget-object p0, p0, Lq3/f;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Li4/g;

    invoke-direct {p0, v1, p1}, Li4/g;-><init>(LJ4/G;LJ4/G;)V

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "For some reason declaration for upper bound is not a class but \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" while for lower it\'s \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "Unexpected declaration kind: "

    invoke-static {v0, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
