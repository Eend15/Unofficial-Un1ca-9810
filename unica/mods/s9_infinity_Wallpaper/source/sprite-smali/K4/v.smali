.class public final LK4/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LK4/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK4/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK4/v;->a:LK4/v;

    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;LE3/c;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "filteredTypes.iterator()"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/G;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/G;

    if-eq v3, v1, :cond_2

    const-string v4, "lower"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upper"

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v1}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)LJ4/G;
    .locals 14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/G;

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    instance-of v3, v3, LJ4/B;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    invoke-interface {v3}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "type.constructor.supertypes"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ4/C;

    const-string v6, "it"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object v5

    invoke-virtual {v1}, LJ4/C;->z0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v5

    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object p1, LK4/t;->d:LK4/r;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/b0;

    invoke-virtual {p1, v3}, LK4/t;->a(LJ4/b0;)LK4/t;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "<this>"

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/G;

    sget-object v6, LK4/t;->g:LK4/q;

    if-ne p1, v6, :cond_7

    instance-of v6, v3, LK4/i;

    if-eqz v6, :cond_5

    check-cast v3, LK4/i;

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, LK4/i;

    iget-object v9, v3, LK4/i;->g:LJ4/b0;

    const/4 v12, 0x1

    iget v7, v3, LK4/i;->e:I

    iget-object v8, v3, LK4/i;->f:LK4/j;

    iget-object v10, v3, LK4/i;->h:LV3/h;

    iget-boolean v11, v3, LK4/i;->i:Z

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, LK4/i;-><init>(ILK4/j;LJ4/b0;LV3/h;ZZ)V

    move-object v3, v13

    :cond_5
    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, LJ4/c;->l(LJ4/b0;Z)LJ4/l;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {v3}, LJ4/c;->n(LJ4/b0;)LJ4/G;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v5}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v4

    :cond_7
    :goto_4
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    invoke-static {v1}, Lr3/j;->I0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    goto/16 :goto_9

    :cond_9
    new-instance p1, LK4/u;

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, p0}, LK4/u;-><init>(IILjava/lang/Object;)V

    invoke-static {v1, p1}, LK4/v;->a(Ljava/util/AbstractCollection;LE3/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJ4/G;

    check-cast v6, LJ4/G;

    if-eqz v6, :cond_f

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    invoke-virtual {v7}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    instance-of v10, v8, Lx4/l;

    if-eqz v10, :cond_c

    instance-of v11, v9, Lx4/l;

    if-eqz v11, :cond_c

    check-cast v8, Lx4/l;

    check-cast v9, Lx4/l;

    iget-object v6, v8, Lx4/l;->a:Ljava/util/Set;

    iget-object v7, v9, Lx4/l;->a:Ljava/util/Set;

    invoke-static {v6, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "other"

    invoke-static {v7, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lr3/j;->R0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v6, v7}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    new-instance v7, Lx4/l;

    invoke-direct {v7, v6}, Lx4/l;-><init>(Ljava/util/Set;)V

    sget-object v6, LV3/g;->a:LV3/f;

    sget-object v8, Lr3/r;->d:Lr3/r;

    const-string v9, "Scope for integer literal type"

    invoke-static {v9, v2}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v9

    invoke-static {v9, v7, v6, v8, v5}, LJ4/d;->q(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v6

    goto :goto_5

    :cond_c
    if-eqz v10, :cond_e

    check-cast v8, Lx4/l;

    iget-object v6, v8, Lx4/l;->a:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_6

    :cond_d
    move-object v7, v3

    :goto_6
    move-object v6, v7

    goto :goto_5

    :cond_e
    instance-of v7, v9, Lx4/l;

    if-eqz v7, :cond_f

    check-cast v9, Lx4/l;

    iget-object v7, v9, Lx4/l;->a:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_5

    :cond_f
    :goto_7
    move-object v6, v3

    goto :goto_5

    :cond_10
    check-cast v6, LJ4/G;

    move-object v3, v6

    :goto_8
    if-nez v3, :cond_12

    new-instance p1, LK4/u;

    sget-object v2, LK4/l;->b:LK4/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LK4/k;->b:LK4/m;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3, v2}, LK4/u;-><init>(IILjava/lang/Object;)V

    invoke-static {p0, p1}, LK4/v;->a(Ljava/util/AbstractCollection;LE3/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v0, :cond_11

    invoke-static {p0}, Lr3/j;->I0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    goto :goto_9

    :cond_11
    new-instance p0, LJ4/B;

    invoke-direct {p0, v1}, LJ4/B;-><init>(Ljava/util/AbstractCollection;)V

    invoke-virtual {p0}, LJ4/B;->b()LJ4/G;

    move-result-object p0

    goto :goto_9

    :cond_12
    move-object p0, v3

    :goto_9
    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty collection can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
