.class public final Lh4/v;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/w;


# direct methods
.method public synthetic constructor <init>(Lh4/w;I)V
    .locals 0

    iput p2, p0, Lh4/v;->d:I

    iput-object p1, p0, Lh4/v;->e:Lh4/w;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lh4/v;->e:Lh4/w;

    const-string v3, "name"

    iget p0, p0, Lh4/v;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ls4/f;

    invoke-static {p1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lh4/w;->g:LI4/j;

    invoke-virtual {v0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v2, p0, p1}, Lh4/w;->n(Ljava/util/ArrayList;Ls4/f;)V

    invoke-virtual {v2}, Lh4/w;->q()LU3/j;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lv4/f;->n(LU3/j;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p1, v2, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->r:Ln1/a;

    invoke-virtual {v0, p1, p0}, Ln1/a;->e(Landroidx/recyclerview/widget/b;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Ls4/f;

    invoke-static {p1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    iget-object v3, v2, Lh4/w;->f:LI4/e;

    invoke-virtual {v3, p1}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {p0, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LX3/P;

    invoke-static {v6, v1}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v4, Lh4/i;->f:Lh4/i;

    invoke-static {v3, v4}, Lv4/p;->m(Ljava/util/Collection;LE3/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v2, p0, p1}, Lh4/w;->m(Ljava/util/LinkedHashSet;Ls4/f;)V

    iget-object p1, v2, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->r:Ln1/a;

    invoke-virtual {v0, p1, p0}, Ln1/a;->e(Landroidx/recyclerview/widget/b;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ls4/f;

    invoke-static {p1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v2, Lh4/w;->c:Lh4/w;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lh4/w;->f:LI4/e;

    invoke-virtual {p0, p1}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lh4/w;->e:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/c;

    invoke-interface {v0, p1}, Lh4/c;->d(Ls4/f;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/w;

    invoke-virtual {v2, v1}, Lh4/w;->t(La4/w;)Lf4/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Lh4/w;->r(Lf4/f;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, v2, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v3, v3, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lg4/a;

    iget-object v3, v3, Lg4/a;->g:Le4/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v2, p0, p1}, Lh4/w;->j(Ljava/util/ArrayList;Ls4/f;)V

    :goto_4
    return-object p0

    :pswitch_2
    check-cast p1, Ls4/f;

    invoke-static {p1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v2, Lh4/w;->c:Lh4/w;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lh4/w;->g:LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/L;

    goto/16 :goto_b

    :cond_8
    iget-object p0, v2, Lh4/w;->e:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/c;

    invoke-interface {p0, p1}, Lh4/c;->e(Ls4/f;)La4/t;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_15

    iget-object v3, p0, La4/t;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {p0}, La4/x;->I(La4/y;)Z

    move-result v4

    xor-int/lit8 v8, v4, 0x1

    iget-object v4, v2, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    invoke-static {v4, p0}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object v6

    invoke-virtual {v2}, Lh4/w;->q()LU3/j;

    move-result-object v5

    invoke-static {p0}, La4/x;->C(La4/y;)LU3/b0;

    move-result-object v7

    invoke-static {v7}, La4/x;->c0(LU3/b0;)LU3/n;

    move-result-object v7

    invoke-virtual {p0}, La4/v;->e()Ls4/f;

    move-result-object v9

    iget-object v10, v4, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Lg4/a;

    iget-object v10, v12, Lg4/a;->j:LZ3/e;

    invoke-virtual {v10, p0}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v10

    invoke-static {p0}, La4/x;->I(La4/y;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_9

    invoke-static {p0}, La4/x;->J(La4/y;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v0

    goto :goto_5

    :cond_9
    move v11, v13

    :goto_5
    invoke-static/range {v5 .. v11}, Lf4/g;->N0(LU3/j;Lg4/c;LU3/n;ZLs4/f;LZ3/g;Z)Lf4/g;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p1, p1}, LX3/L;->K0(LX3/M;LX3/N;LX3/u;LX3/u;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v5, "member.genericType"

    invoke-static {v3, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v3, Ljava/lang/Class;

    if-eqz v5, :cond_a

    move-object v6, v3

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v3, La4/A;

    invoke-direct {v3, v6}, La4/A;-><init>(Ljava/lang/Class;)V

    goto :goto_8

    :cond_a
    instance-of v6, v3, Ljava/lang/reflect/GenericArrayType;

    if-nez v6, :cond_d

    if-eqz v5, :cond_b

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    instance-of v5, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_c

    new-instance v5, La4/E;

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-direct {v5, v3}, La4/E;-><init>(Ljava/lang/reflect/WildcardType;)V

    :goto_6
    move-object v3, v5

    goto :goto_8

    :cond_c
    new-instance v5, La4/p;

    invoke-direct {v5, v3}, La4/p;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_6

    :cond_d
    :goto_7
    new-instance v5, La4/h;

    invoke-direct {v5, v3}, La4/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_6

    :goto_8
    const/4 v5, 0x3

    invoke-static {v1, v13, p1, v5}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v1

    iget-object v4, v4, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v4, Lw0/i;

    invoke-virtual {v4, v3, v1}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v1

    invoke-static {v1}, LR3/j;->E(LJ4/C;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, LR3/o;->f:Ls4/e;

    invoke-static {v1, v3}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    invoke-static {p0}, La4/x;->I(La4/y;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {p0}, La4/x;->J(La4/y;)Z

    move-result v3

    :cond_f
    sget-object v3, Lr3/r;->d:Lr3/r;

    invoke-virtual {v2}, Lh4/w;->p()LU3/J;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, p1}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v1

    if-eqz v1, :cond_14

    sget p1, Lv4/f;->a:I

    iget-boolean p1, v0, LX3/L;->i:Z

    if-nez p1, :cond_13

    invoke-static {v1}, LJ4/c;->i(LJ4/C;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_a

    :cond_10
    invoke-static {v1}, LJ4/Z;->b(LJ4/C;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {v0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p1

    invoke-static {v1}, LR3/j;->E(LJ4/C;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, LK4/e;->a:LK4/m;

    invoke-virtual {p1}, LR3/j;->t()LJ4/G;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, LK4/m;->a(LJ4/C;LJ4/C;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "Number"

    invoke-virtual {p1, v4}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object v4

    invoke-interface {v4}, LU3/e;->n()LJ4/G;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, LK4/m;->a(LJ4/C;LJ4/C;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p1}, LR3/j;->e()LJ4/G;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, LK4/m;->a(LJ4/C;LJ4/C;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {v1}, LR3/t;->a(LJ4/C;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    :goto_9
    new-instance p1, Lh4/u;

    invoke-direct {p1, v2, p0, v0}, Lh4/u;-><init>(Lh4/w;La4/t;Lf4/g;)V

    iget-object p0, v12, Lg4/a;->a:LI4/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LI4/h;

    invoke-direct {v1, p0, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v1, v0, LX3/L;->j:LI4/h;

    :cond_13
    :goto_a
    iget-object p0, v12, Lg4/a;->g:Le4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v0

    goto :goto_b

    :cond_14
    const/16 p0, 0x40

    invoke-static {p0}, Lv4/f;->a(I)V

    throw p1

    :cond_15
    move-object p0, p1

    :goto_b
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
