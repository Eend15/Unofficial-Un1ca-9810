.class public final Lk4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU3/k;

.field public final b:LJ4/C;

.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Landroidx/recyclerview/widget/b;

.field public final f:Ld4/a;

.field public final g:Z

.field public final h:Z

.field public final synthetic i:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;LU3/k;LJ4/C;Ljava/util/Collection;ZLandroidx/recyclerview/widget/b;Ld4/a;ZZI)V
    .locals 2

    iput-object p1, p0, Lk4/q;->i:Ln1/a;

    and-int/lit8 v0, p10, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p8, v1

    :cond_0
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_1

    move p9, v1

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p10, "this$0"

    invoke-static {p1, p10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "fromOverride"

    invoke-static {p3, p10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "containerContext"

    invoke-static {p6, p10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lk4/q;->i:Ln1/a;

    iput-object p2, p0, Lk4/q;->a:LU3/k;

    iput-object p3, p0, Lk4/q;->b:LJ4/C;

    iput-object p4, p0, Lk4/q;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lk4/q;->d:Z

    iput-object p6, p0, Lk4/q;->e:Landroidx/recyclerview/widget/b;

    iput-object p7, p0, Lk4/q;->f:Ld4/a;

    iput-boolean p8, p0, Lk4/q;->g:Z

    iput-boolean p9, p0, Lk4/q;->h:Z

    return-void
.end method

.method public static final a(LJ4/b0;)Z
    .locals 4

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object v1

    sget-object v2, LT3/d;->f:Ls4/c;

    invoke-virtual {v2}, Ls4/c;->f()Ls4/f;

    move-result-object v3

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lz4/e;->c(LU3/k;)Ls4/c;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(LU3/O;)Lk4/i;
    .locals 8

    instance-of v0, p0, Lh4/B;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p0, Lh4/B;

    invoke-virtual {p0}, LX3/k;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/C;

    invoke-static {v2}, LJ4/c;->i(LJ4/C;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, LX3/k;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    sget-object v3, Lk4/h;->d:Lk4/h;

    sget-object v4, Lk4/h;->e:Lk4/h;

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/C;

    invoke-virtual {v2}, LJ4/C;->B0()LJ4/b0;

    move-result-object v2

    instance-of v5, v2, LJ4/w;

    if-eqz v5, :cond_3

    check-cast v2, LJ4/w;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v2, LJ4/w;->e:LJ4/G;

    invoke-virtual {v5}, LJ4/C;->z0()Z

    move-result v5

    iget-object v2, v2, LJ4/w;->f:LJ4/G;

    invoke-virtual {v2}, LJ4/C;->z0()Z

    move-result v2

    if-eq v5, v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, LX3/k;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    const-string v1, "it"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v3, v4

    :cond_8
    :goto_3
    new-instance p0, Lk4/i;

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lk4/i;-><init>(Lk4/h;Z)V

    return-object p0

    :cond_9
    :goto_4
    invoke-virtual {p0}, LX3/k;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v5, "<this>"

    const/4 v6, 0x1

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/C;

    instance-of v7, v2, LJ4/y;

    if-eqz v7, :cond_b

    check-cast v2, LJ4/y;

    iget-object v2, v2, LJ4/y;->h:LJ4/C;

    invoke-static {v2, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LJ4/Z;->e(LJ4/C;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance p0, Lk4/i;

    invoke-direct {p0, v4, v6}, Lk4/i;-><init>(Lk4/h;Z)V

    return-object p0

    :cond_c
    :goto_5
    invoke-virtual {p0}, LX3/k;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    instance-of v2, v0, LJ4/y;

    if-eqz v2, :cond_e

    check-cast v0, LJ4/y;

    iget-object v0, v0, LJ4/y;->h:LJ4/C;

    invoke-static {v0, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lk4/i;

    invoke-direct {p0, v3, v6}, Lk4/i;-><init>(Lk4/h;Z)V

    return-object p0

    :cond_f
    :goto_6
    return-object v1
.end method

.method public static d(LJ4/C;)Lk4/e;
    .locals 7

    invoke-static {p0}, LJ4/c;->j(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v0

    check-cast v0, LJ4/w;

    new-instance v1, Lq3/f;

    iget-object v2, v0, LJ4/w;->e:LJ4/G;

    iget-object v0, v0, LJ4/w;->f:LJ4/G;

    invoke-direct {v1, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lq3/f;

    invoke-direct {v1, p0, p0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v1, Lq3/f;->d:Ljava/lang/Object;

    check-cast v0, LJ4/C;

    iget-object v1, v1, Lq3/f;->e:Ljava/lang/Object;

    check-cast v1, LJ4/C;

    new-instance v2, Lk4/e;

    invoke-virtual {v0}, LJ4/C;->z0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Lk4/h;->d:Lk4/h;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, LJ4/C;->z0()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lk4/h;->e:Lk4/h;

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    sget-object v5, LJ4/Z;->a:LJ4/p;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v5, v0, LU3/e;

    if-eqz v5, :cond_3

    check-cast v0, LU3/e;

    goto :goto_2

    :cond_3
    move-object v0, v4

    :goto_2
    const-string v5, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    if-eqz v0, :cond_5

    sget-object v6, LT3/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v0

    sget-object v6, LT3/d;->k:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v4, Lk4/f;->d:Lk4/f;

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "type"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/e;

    if-eqz v1, :cond_6

    check-cast v0, LU3/e;

    goto :goto_3

    :cond_6
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_8

    sget-object v1, LT3/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v0

    sget-object v1, LT3/d;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v4, Lk4/f;->e:Lk4/f;

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of p0, p0, Lk4/g;

    const/4 v0, 0x0

    invoke-direct {v2, v3, v4, p0, v0}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    return-object v2
.end method

.method public static final e(Ljava/util/List;LV3/h;Lk4/f;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls4/c;

    invoke-interface {p1, v0}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public static final f(Lk4/q;Ljava/util/ArrayList;LJ4/C;Landroidx/recyclerview/widget/b;LU3/O;)V
    .locals 4

    invoke-interface {p2}, LV3/a;->p()LV3/h;

    move-result-object v0

    invoke-static {p3, v0}, Le0/a;->x(Landroidx/recyclerview/widget/b;LV3/h;)Landroidx/recyclerview/widget/b;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/b;->z()Ld4/u;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lk4/q;->g:Z

    if-eqz v1, :cond_1

    sget-object v1, Ld4/a;->i:Ld4/a;

    goto :goto_0

    :cond_1
    sget-object v1, Ld4/a;->h:Ld4/a;

    :goto_0
    iget-object v0, v0, Ld4/u;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld4/n;

    :goto_1
    new-instance v1, Lk4/s;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, p4, v2}, Lk4/s;-><init>(LJ4/C;Ld4/n;LU3/O;Z)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p4, p0, Lk4/q;->h:Z

    if-eqz p4, :cond_2

    instance-of p4, p2, Li4/g;

    if-eqz p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2}, LJ4/C;->q0()LJ4/M;

    move-result-object p2

    invoke-interface {p2}, LJ4/M;->g()Ljava/util/List;

    move-result-object p2

    const-string v1, "type.constructor.parameters"

    invoke-static {p2, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p2}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lq3/f;

    iget-object v1, p4, Lq3/f;->d:Ljava/lang/Object;

    check-cast v1, LJ4/P;

    iget-object p4, p4, Lq3/f;->e:Ljava/lang/Object;

    check-cast p4, LU3/O;

    invoke-virtual {v1}, LJ4/P;->c()Z

    move-result v2

    const-string v3, "arg.type"

    if-eqz v2, :cond_3

    new-instance v2, Lk4/s;

    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, p4, v3}, Lk4/s;-><init>(LJ4/C;Ld4/n;LU3/O;Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3, p4}, Lk4/q;->f(Lk4/q;Ljava/util/ArrayList;LJ4/C;Landroidx/recyclerview/widget/b;LU3/O;)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final c(Lk4/t;)Lk4/m;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lk4/q;->c:Ljava/lang/Object;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, v0, Lk4/q;->e:Landroidx/recyclerview/widget/b;

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ4/C;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v9, v5, v7, v6}, Lk4/q;->f(Lk4/q;Ljava/util/ArrayList;LJ4/C;Landroidx/recyclerview/widget/b;LU3/O;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v0, Lk4/q;->b:LJ4/C;

    invoke-static {v0, v4, v5, v7, v6}, Lk4/q;->f(Lk4/q;Ljava/util/ArrayList;LJ4/C;Landroidx/recyclerview/widget/b;LU3/O;)V

    iget-boolean v10, v0, Lk4/q;->d:Z

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LJ4/C;

    sget-object v12, LK4/e;->a:LK4/m;

    invoke-virtual {v12, v11, v5}, LK4/m;->a(LJ4/C;LJ4/C;)Z

    move-result v11

    if-nez v11, :cond_2

    move v3, v8

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    move v11, v8

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_3
    new-array v12, v11, [Lk4/e;

    const/4 v13, 0x0

    :goto_4
    iget-object v14, v0, Lk4/q;->i:Ln1/a;

    if-ge v13, v11, :cond_50

    if-nez v13, :cond_5

    move v15, v8

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lk4/s;

    iget-object v9, v8, Lk4/s;->a:LJ4/C;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Ljava/util/List;

    invoke-static {v13, v2}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk4/s;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    iget-object v2, v2, Lk4/s;->a:LJ4/C;

    :goto_7
    if-eqz v2, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v2, v19

    goto :goto_6

    :cond_8
    move-object/from16 v19, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v17, v3

    invoke-static {v6}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, LJ4/C;

    move-object/from16 v20, v3

    invoke-static/range {v18 .. v18}, Lk4/q;->d(LJ4/C;)Lk4/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v20

    goto :goto_8

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    check-cast v4, Lk4/e;

    iget-object v4, v4, Lk4/e;->b:Lk4/f;

    if-eqz v4, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v4, v21

    goto :goto_9

    :cond_b
    move-object/from16 v21, v4

    invoke-static {v3}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move/from16 v22, v11

    move-object/from16 v11, v20

    check-cast v11, Lk4/e;

    iget-object v11, v11, Lk4/e;->a:Lk4/h;

    if-eqz v11, :cond_c

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move/from16 v11, v22

    goto :goto_a

    :cond_d
    move/from16 v22, v11

    invoke-static {v4}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    move-object/from16 v20, v5

    const-string v5, "<this>"

    if-eqz v18, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v23, v6

    move-object/from16 v6, v18

    check-cast v6, LJ4/C;

    invoke-static {v6, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, LJ4/c;->e(LJ4/C;)LJ4/C;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_c

    :cond_e
    move-object v6, v5

    :goto_c
    invoke-static {v6}, Lk4/q;->d(LJ4/C;)Lk4/e;

    move-result-object v5

    iget-object v5, v5, Lk4/e;->a:Lk4/h;

    if-eqz v5, :cond_f

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v5, v20

    move-object/from16 v6, v23

    goto :goto_b

    :cond_10
    invoke-static {v11}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    sget-object v11, Lk4/f;->e:Lk4/f;

    sget-object v1, Lk4/f;->d:Lk4/f;

    move-object/from16 v18, v12

    sget-object v12, Lk4/h;->d:Lk4/h;

    move/from16 v23, v13

    sget-object v13, Lk4/h;->f:Lk4/h;

    move-object/from16 v24, v2

    sget-object v2, Lk4/h;->e:Lk4/h;

    move-object/from16 v25, v6

    iget-object v6, v8, Lk4/s;->c:LU3/O;

    move-object/from16 v26, v3

    iget-boolean v3, v8, Lk4/s;->d:Z

    move-object/from16 v27, v4

    iget-object v4, v0, Lk4/q;->a:LU3/k;

    if-eqz v3, :cond_12

    if-nez v6, :cond_11

    move/from16 v29, v10

    move-object/from16 v28, v11

    const/4 v10, 0x0

    goto :goto_d

    :cond_11
    invoke-interface {v6}, LU3/O;->z()I

    move-result v28

    move/from16 v29, v10

    move/from16 v10, v28

    move-object/from16 v28, v11

    :goto_d
    const/4 v11, 0x2

    if-ne v10, v11, :cond_13

    sget-object v3, Lk4/e;->e:Lk4/e;

    move-object/from16 v31, v4

    move-object/from16 v30, v7

    move-object/from16 v11, v28

    goto/16 :goto_25

    :cond_12
    move/from16 v29, v10

    move-object/from16 v28, v11

    :cond_13
    iget-object v10, v7, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v10, Lg4/a;

    iget-object v10, v10, Lg4/a;->t:Lg4/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v15, :cond_14

    if-eqz v4, :cond_14

    instance-of v10, v4, LU3/O;

    :cond_14
    if-eqz v15, :cond_15

    if-eqz v4, :cond_15

    invoke-interface {v4}, LV3/a;->p()LV3/h;

    move-result-object v10

    invoke-interface {v9}, LV3/a;->p()LV3/h;

    move-result-object v11

    invoke-static {v10, v11}, LR3/f;->l(LV3/h;LV3/h;)LV3/h;

    move-result-object v10

    goto :goto_e

    :cond_15
    invoke-interface {v9}, LV3/a;->p()LV3/h;

    move-result-object v10

    :goto_e
    if-eqz v15, :cond_17

    invoke-virtual {v7}, Landroidx/recyclerview/widget/b;->z()Ld4/u;

    move-result-object v8

    if-nez v8, :cond_16

    const/4 v8, 0x0

    goto :goto_f

    :cond_16
    iget-object v11, v0, Lk4/q;->f:Ld4/a;

    iget-object v8, v8, Ld4/u;->a:Ljava/util/EnumMap;

    invoke-virtual {v8, v11}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld4/n;

    goto :goto_f

    :cond_17
    iget-object v8, v8, Lk4/s;->b:Ld4/n;

    :goto_f
    if-nez v8, :cond_19

    :cond_18
    const/4 v8, 0x0

    goto :goto_10

    :cond_19
    iget-boolean v11, v8, Ld4/n;->c:Z

    if-nez v11, :cond_1a

    invoke-static {v9, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, LJ4/Z;->f(LJ4/C;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_1a
    iget-boolean v5, v8, Ld4/n;->d:Z

    if-nez v5, :cond_1b

    if-nez v3, :cond_18

    :cond_1b
    :goto_10
    invoke-virtual {v9}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    instance-of v11, v5, LU3/O;

    if-eqz v11, :cond_1c

    check-cast v5, LU3/O;

    goto :goto_11

    :cond_1c
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_1d

    const/4 v5, 0x0

    goto :goto_12

    :cond_1d
    invoke-static {v5}, Lk4/q;->b(LU3/O;)Lk4/i;

    move-result-object v5

    :goto_12
    if-nez v5, :cond_1e

    new-instance v5, Lq3/f;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v30, v7

    const/4 v7, 0x0

    invoke-direct {v5, v7, v11}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v31, v4

    goto :goto_14

    :cond_1e
    move-object/from16 v30, v7

    new-instance v7, Lq3/f;

    new-instance v11, Lk4/i;

    move-object/from16 v31, v4

    iget-boolean v4, v5, Lk4/i;->b:Z

    invoke-direct {v11, v2, v4}, Lk4/i;-><init>(Lk4/h;Z)V

    iget-object v4, v5, Lk4/i;->a:Lk4/h;

    if-ne v4, v2, :cond_1f

    const/4 v4, 0x1

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v7, v11, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v7

    :goto_14
    iget-object v4, v5, Lq3/f;->d:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Lk4/i;

    iget-object v4, v5, Lq3/f;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LV3/b;

    move-object/from16 v32, v5

    iget-boolean v5, v0, Lk4/q;->g:Z

    invoke-virtual {v14, v11, v5}, Ln1/a;->g(LV3/b;Z)Lk4/i;

    move-result-object v5

    if-eqz v5, :cond_20

    goto :goto_16

    :cond_20
    move-object/from16 v5, v32

    goto :goto_15

    :cond_21
    const/4 v5, 0x0

    :goto_16
    if-nez v5, :cond_23

    :cond_22
    const/4 v5, 0x0

    goto :goto_17

    :cond_23
    if-nez v3, :cond_22

    :goto_17
    if-nez v5, :cond_2f

    if-nez v7, :cond_26

    if-nez v8, :cond_24

    :goto_18
    const/4 v7, 0x0

    goto :goto_19

    :cond_24
    iget-object v3, v8, Ld4/n;->a:Lk4/i;

    if-nez v3, :cond_25

    goto :goto_18

    :cond_25
    new-instance v7, Lk4/i;

    iget-object v11, v3, Lk4/i;->a:Lk4/h;

    iget-boolean v3, v3, Lk4/i;->b:Z

    invoke-direct {v7, v11, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    :cond_26
    :goto_19
    if-nez v6, :cond_27

    const/4 v3, 0x0

    goto :goto_1a

    :cond_27
    invoke-static {v6}, Lk4/q;->b(LU3/O;)Lk4/i;

    move-result-object v3

    :goto_1a
    if-nez v3, :cond_28

    goto :goto_1c

    :cond_28
    iget-object v6, v3, Lk4/i;->a:Lk4/h;

    if-nez v8, :cond_29

    if-nez v7, :cond_29

    if-ne v6, v12, :cond_29

    new-instance v7, Lk4/i;

    iget-boolean v3, v3, Lk4/i;->b:Z

    invoke-direct {v7, v13, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_1c

    :cond_29
    if-nez v7, :cond_2a

    goto :goto_1b

    :cond_2a
    if-ne v6, v13, :cond_2b

    goto :goto_1c

    :cond_2b
    iget-object v11, v7, Lk4/i;->a:Lk4/h;

    if-ne v11, v13, :cond_2c

    :goto_1b
    move-object v7, v3

    goto :goto_1c

    :cond_2c
    if-ne v6, v12, :cond_2d

    goto :goto_1c

    :cond_2d
    if-ne v11, v12, :cond_2e

    goto :goto_1b

    :cond_2e
    new-instance v7, Lk4/i;

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Lk4/i;-><init>(Lk4/h;Z)V

    goto :goto_1c

    :cond_2f
    move-object v7, v5

    :goto_1c
    if-eqz v5, :cond_32

    iget-object v3, v5, Lk4/i;->a:Lk4/h;

    if-ne v3, v2, :cond_31

    :cond_30
    :goto_1d
    const/4 v3, 0x1

    goto :goto_1f

    :cond_31
    :goto_1e
    const/4 v3, 0x0

    goto :goto_1f

    :cond_32
    if-nez v4, :cond_30

    if-nez v8, :cond_33

    goto :goto_1e

    :cond_33
    iget-object v3, v8, Ld4/n;->a:Lk4/i;

    iget-object v3, v3, Lk4/i;->a:Lk4/h;

    if-ne v3, v2, :cond_31

    iget-boolean v3, v8, Ld4/n;->c:Z

    if-eqz v3, :cond_31

    goto :goto_1d

    :goto_1f
    new-instance v4, Lk4/e;

    if-nez v7, :cond_34

    const/4 v5, 0x0

    goto :goto_20

    :cond_34
    iget-object v5, v7, Lk4/i;->a:Lk4/h;

    :goto_20
    sget-object v6, Ld4/y;->l:Ljava/util/List;

    invoke-static {v6, v10, v1}, Lk4/q;->e(Ljava/util/List;LV3/h;Lk4/f;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Ld4/y;->m:Ljava/util/List;

    move-object/from16 v11, v28

    invoke-static {v8, v10, v11}, Lk4/q;->e(Ljava/util/List;LV3/h;Lk4/f;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v6, :cond_36

    if-eqz v8, :cond_36

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    goto :goto_21

    :cond_35
    const/4 v6, 0x0

    goto :goto_22

    :cond_36
    :goto_21
    if-nez v6, :cond_37

    move-object v6, v8

    :cond_37
    :goto_22
    check-cast v6, Lk4/f;

    if-eqz v3, :cond_38

    invoke-static {v9}, LJ4/Z;->f(LJ4/C;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    goto :goto_23

    :cond_38
    const/4 v3, 0x0

    :goto_23
    if-nez v7, :cond_3a

    :cond_39
    const/4 v7, 0x0

    goto :goto_24

    :cond_3a
    iget-boolean v7, v7, Lk4/i;->b:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    const/4 v7, 0x1

    :goto_24
    invoke-direct {v4, v5, v6, v3, v7}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    move-object v3, v4

    :goto_25
    iget-boolean v4, v3, Lk4/e;->d:Z

    if-nez v4, :cond_3b

    move-object v7, v3

    goto :goto_26

    :cond_3b
    const/4 v7, 0x0

    :goto_26
    if-nez v7, :cond_3c

    const/4 v7, 0x0

    goto :goto_27

    :cond_3c
    iget-object v7, v7, Lk4/e;->a:Lk4/h;

    :goto_27
    if-eqz v29, :cond_3d

    if-eqz v15, :cond_3d

    const/4 v4, 0x1

    goto :goto_28

    :cond_3d
    const/4 v4, 0x0

    :goto_28
    if-ne v7, v13, :cond_3e

    move-object v6, v13

    move-object/from16 v5, v27

    goto :goto_29

    :cond_3e
    move-object/from16 v5, v27

    invoke-static {v5, v2, v12, v7, v4}, Lj0/s;->I(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk4/h;

    :goto_29
    if-nez v6, :cond_3f

    :goto_2a
    const/4 v6, 0x0

    goto :goto_2c

    :cond_3f
    move-object/from16 v8, v31

    instance-of v9, v8, LX3/W;

    if-nez v9, :cond_40

    const/4 v8, 0x0

    :cond_40
    check-cast v8, LX3/W;

    if-nez v8, :cond_41

    const/4 v8, 0x0

    goto :goto_2b

    :cond_41
    iget-object v8, v8, LX3/W;->m:LJ4/C;

    :goto_2b
    if-eqz v8, :cond_42

    if-eqz v15, :cond_42

    if-ne v6, v12, :cond_42

    goto :goto_2a

    :cond_42
    :goto_2c
    iget-object v8, v3, Lk4/e;->b:Lk4/f;

    move-object/from16 v9, v26

    invoke-static {v9, v11, v1, v8, v4}, Lj0/s;->I(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/f;

    iget-object v8, v3, Lk4/e;->a:Lk4/h;

    if-ne v8, v7, :cond_44

    move-object/from16 v7, v25

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    goto :goto_2d

    :cond_43
    const/4 v5, 0x0

    goto :goto_2e

    :cond_44
    move-object/from16 v7, v25

    :goto_2d
    const/4 v5, 0x1

    :goto_2e
    iget-boolean v3, v3, Lk4/e;->c:Z

    if-nez v3, :cond_48

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_2f

    :cond_45
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk4/e;

    iget-boolean v9, v9, Lk4/e;->c:Z

    if-eqz v9, :cond_46

    goto :goto_30

    :cond_47
    :goto_2f
    const/4 v3, 0x0

    goto :goto_31

    :cond_48
    :goto_30
    const/4 v3, 0x1

    :goto_31
    if-nez v6, :cond_4c

    if-eqz v5, :cond_4c

    if-ne v8, v13, :cond_49

    goto :goto_32

    :cond_49
    invoke-static {v7, v2, v12, v8, v4}, Lj0/s;->I(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lk4/h;

    :goto_32
    if-eqz v3, :cond_4a

    if-eq v13, v2, :cond_4b

    :cond_4a
    const/4 v3, 0x1

    goto :goto_33

    :cond_4b
    new-instance v2, Lk4/e;

    const/4 v3, 0x1

    invoke-direct {v2, v13, v1, v3, v3}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    goto :goto_36

    :goto_33
    new-instance v2, Lk4/e;

    const/4 v4, 0x0

    invoke-direct {v2, v13, v1, v4, v3}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    goto :goto_36

    :cond_4c
    if-nez v6, :cond_4d

    const/4 v4, 0x1

    goto :goto_34

    :cond_4d
    const/4 v4, 0x0

    :goto_34
    if-eqz v3, :cond_4f

    if-eq v6, v2, :cond_4e

    goto :goto_35

    :cond_4e
    new-instance v2, Lk4/e;

    const/4 v3, 0x1

    invoke-direct {v2, v6, v1, v3, v4}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    goto :goto_36

    :cond_4f
    :goto_35
    new-instance v2, Lk4/e;

    const/4 v3, 0x0

    invoke-direct {v2, v6, v1, v3, v4}, Lk4/e;-><init>(Lk4/h;Lk4/f;ZZ)V

    :goto_36
    aput-object v2, v18, v23

    add-int/lit8 v13, v23, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move/from16 v11, v22

    move/from16 v10, v29

    move-object/from16 v7, v30

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_50
    move-object/from16 v20, v5

    move-object/from16 v18, v12

    new-instance v1, LF4/a;

    const/16 v2, 0x13

    move-object/from16 v3, v18

    invoke-direct {v1, v2, v3}, LF4/a;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, p1

    if-nez v2, :cond_51

    const/4 v7, 0x0

    goto :goto_37

    :cond_51
    new-instance v7, LH4/j;

    const/4 v3, 0x5

    invoke-direct {v7, v2, v3, v1}, LH4/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_37
    iget-boolean v0, v0, Lk4/q;->h:Z

    if-eqz v0, :cond_52

    sget-object v2, Lk4/n;->l:Lk4/n;

    sget-object v3, Lk4/o;->e:Lk4/o;

    move-object/from16 v5, v20

    const/4 v4, 0x0

    invoke-static {v5, v2, v3, v4}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v2

    goto :goto_38

    :cond_52
    move-object/from16 v5, v20

    const/4 v4, 0x0

    sget-object v2, Lk4/p;->l:Lk4/p;

    invoke-static {v5, v2, v4, v4}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v2

    :goto_38
    iget-object v3, v14, Ln1/a;->c:Ljava/lang/Object;

    if-nez v7, :cond_53

    goto :goto_39

    :cond_53
    move-object v1, v7

    :goto_39
    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v1, v6, v0}, Lk4/d;->b(LJ4/b0;LE3/b;IZ)Landroidx/appcompat/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->d()LJ4/C;

    move-result-object v7

    iget-boolean v0, v0, Landroidx/appcompat/widget/a;->b:Z

    if-eqz v0, :cond_54

    goto :goto_3a

    :cond_54
    move-object v7, v4

    :goto_3a
    if-nez v7, :cond_55

    move-object v6, v4

    goto :goto_3b

    :cond_55
    new-instance v6, Lk4/m;

    const/4 v0, 0x1

    invoke-direct {v6, v7, v0, v2}, Lk4/m;-><init>(LJ4/C;ZZ)V

    :goto_3b
    if-nez v6, :cond_56

    new-instance v6, Lk4/m;

    const/4 v0, 0x0

    invoke-direct {v6, v5, v0, v2}, Lk4/m;-><init>(LJ4/C;ZZ)V

    :cond_56
    return-object v6
.end method
