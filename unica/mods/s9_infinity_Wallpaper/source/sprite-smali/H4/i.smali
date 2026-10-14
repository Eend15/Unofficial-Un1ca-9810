.class public final LH4/i;
.super LJ4/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:LI4/i;

.field public final synthetic e:LX3/b;


# direct methods
.method public constructor <init>(LH4/l;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LH4/i;->c:I

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, LH4/i;->e:LX3/b;

    .line 12
    iget-object v0, p1, LH4/l;->o:LF4/k;

    iget-object v1, v0, LF4/k;->a:LF4/i;

    .line 13
    iget-object v1, v1, LF4/i;->a:LI4/o;

    .line 14
    invoke-direct {p0, v1}, LJ4/b;-><init>(LI4/o;)V

    .line 15
    iget-object v0, v0, LF4/k;->a:LF4/i;

    .line 16
    iget-object v0, v0, LF4/i;->a:LI4/o;

    .line 17
    new-instance v1, LH4/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LH4/h;-><init>(LH4/l;I)V

    check-cast v0, LI4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance p1, LI4/i;

    .line 19
    invoke-direct {p1, v0, v1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    .line 20
    iput-object p1, p0, LH4/i;->d:LI4/i;

    return-void
.end method

.method public constructor <init>(Lh4/h;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LH4/i;->c:I

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LH4/i;->e:LX3/b;

    .line 2
    iget-object v0, p1, Lh4/h;->m:Landroidx/recyclerview/widget/b;

    iget-object v1, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    .line 3
    iget-object v1, v1, Lg4/a;->a:LI4/l;

    .line 4
    invoke-direct {p0, v1}, LJ4/b;-><init>(LI4/o;)V

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    .line 6
    iget-object v0, v0, Lg4/a;->a:LI4/l;

    .line 7
    new-instance v1, Lh4/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lh4/g;-><init>(Lh4/h;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p1, LI4/i;

    .line 9
    invoke-direct {p1, v0, v1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    .line 10
    iput-object p1, p0, LH4/i;->d:LI4/i;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "<this>"

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v0, LH4/i;->e:LX3/b;

    iget v0, v0, LH4/i;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lh4/h;

    iget-object v0, v4, Lh4/h;->k:La4/n;

    iget-object v0, v0, La4/n;->a:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    invoke-static {v0, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    sget-object v18, Lr3/r;->d:Lr3/r;

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    move-object/from16 v5, v18

    goto :goto_2

    :cond_0
    new-instance v6, LA1/e;

    invoke-direct {v6, v7}, LA1/e;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v8

    :goto_0
    invoke-virtual {v6, v5}, LA1/e;->O(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v5, "klass.genericInterfaces"

    invoke-static {v0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, LA1/e;->P(Ljava/lang/Object;)V

    iget-object v0, v6, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    new-instance v8, La4/p;

    invoke-direct {v8, v6}, La4/p;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v8, Ld4/x;->n:Ls4/c;

    const-string v9, "PURELY_IMPLEMENTS_ANNOTATION"

    invoke-static {v8, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v4, Lh4/h;->x:Lg4/c;

    invoke-virtual {v9, v8}, Lg4/c;->a(Ls4/c;)LV3/b;

    move-result-object v8

    const/4 v14, 0x3

    if-nez v8, :cond_4

    :cond_3
    :goto_3
    move-object v7, v3

    goto :goto_7

    :cond_4
    invoke-interface {v8}, LV3/b;->b()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lr3/j;->K0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lx4/u;

    if-eqz v9, :cond_5

    check-cast v8, Lx4/u;

    goto :goto_4

    :cond_5
    move-object v8, v3

    :goto_4
    if-nez v8, :cond_6

    move-object v8, v3

    goto :goto_5

    :cond_6
    iget-object v8, v8, Lx4/g;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :goto_5
    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move v10, v2

    move v9, v15

    :cond_8
    :goto_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_d

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/2addr v9, v2

    invoke-static {v10}, Lq/e;->c(I)I

    move-result v12

    if-eqz v12, :cond_b

    if-eq v12, v2, :cond_9

    if-eq v12, v7, :cond_b

    goto :goto_6

    :cond_9
    const/16 v12, 0x2e

    if-ne v11, v12, :cond_a

    move v10, v14

    goto :goto_6

    :cond_a
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_3

    :cond_b
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_3

    :cond_c
    move v10, v7

    goto :goto_6

    :cond_d
    if-eq v10, v14, :cond_3

    new-instance v7, Ls4/c;

    invoke-direct {v7, v8}, Ls4/c;-><init>(Ljava/lang/String;)V

    :goto_7
    if-nez v7, :cond_f

    :cond_e
    move-object v7, v3

    goto :goto_8

    :cond_f
    invoke-virtual {v7}, Ls4/c;->d()Z

    move-result v8

    if-nez v8, :cond_e

    sget-object v8, LR3/p;->i:Ls4/f;

    invoke-virtual {v7, v8}, Ls4/c;->h(Ls4/f;)Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_8
    iget-object v13, v4, Lh4/h;->m:Landroidx/recyclerview/widget/b;

    if-nez v7, :cond_11

    sget-object v8, Ld4/k;->a:Ljava/util/HashMap;

    invoke-static {v4}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v8

    sget-object v9, Ld4/k;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls4/c;

    if-nez v8, :cond_12

    :cond_10
    :goto_9
    move-object v1, v3

    goto/16 :goto_d

    :cond_11
    move-object v8, v7

    :cond_12
    iget-object v9, v13, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v9, Lg4/a;

    sget-object v10, Lc4/b;->k:Lc4/b;

    sget v11, Lz4/e;->a:I

    iget-object v9, v9, Lg4/a;->o:LX3/D;

    invoke-static {v9, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ls4/c;->d()Z

    invoke-virtual {v8}, Ls4/c;->e()Ls4/c;

    move-result-object v1

    const-string v11, "topLevelClassFqName.parent()"

    invoke-static {v1, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object v1

    check-cast v1, LX3/z;

    invoke-virtual {v8}, Ls4/c;->f()Ls4/f;

    move-result-object v8

    const-string v9, "topLevelClassFqName.shortName()"

    invoke-static {v8, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, LX3/z;->j:LC4/k;

    invoke-virtual {v1, v8, v10}, LC4/k;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v1

    instance-of v8, v1, LU3/e;

    if-eqz v8, :cond_13

    check-cast v1, LU3/e;

    goto :goto_a

    :cond_13
    move-object v1, v3

    :goto_a
    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object v8

    invoke-interface {v8}, LJ4/M;->g()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v4, Lh4/h;->s:LH4/i;

    invoke-virtual {v9}, LH4/i;->g()Ljava/util/List;

    move-result-object v9

    const-string v10, "getTypeConstructor().parameters"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v8, :cond_15

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v9}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU3/O;

    new-instance v10, LJ4/Q;

    invoke-interface {v9}, LU3/g;->n()LJ4/G;

    move-result-object v9

    invoke-direct {v10, v2, v9}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    if-ne v10, v2, :cond_10

    if-le v8, v2, :cond_10

    if-nez v7, :cond_10

    new-instance v7, LJ4/Q;

    invoke-static {v9}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU3/O;

    invoke-interface {v9}, LU3/g;->n()LJ4/G;

    move-result-object v9

    invoke-direct {v7, v2, v9}, LJ4/Q;-><init>(ILJ4/C;)V

    new-instance v9, LK3/c;

    invoke-direct {v9, v2, v8, v2}, LK3/a;-><init>(III)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v9}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, LK3/a;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    move-object v10, v9

    check-cast v10, LK3/b;

    iget-boolean v10, v10, LK3/b;->f:Z

    if-eqz v10, :cond_16

    move-object v10, v9

    check-cast v10, LK3/b;

    invoke-virtual {v10}, LK3/b;->b()I

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    move-object v7, v8

    :cond_17
    sget-object v8, LV3/g;->a:LV3/f;

    invoke-static {v8, v1, v7}, LJ4/d;->o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;

    move-result-object v1

    :goto_d
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, La4/p;

    iget-object v7, v13, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v7, Lw0/i;

    invoke-static {v2, v15, v3, v14}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v10

    iget-object v7, v13, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v7, Lg4/a;

    iget-object v8, v7, Lg4/a;->r:Ln1/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lk4/q;

    sget-object v16, Ld4/a;->h:Ld4/a;

    const/16 v17, 0x0

    const/16 v19, 0x40

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v7, v11

    move-object v2, v11

    move-object/from16 v11, v18

    move-object/from16 v22, v12

    move/from16 v12, v17

    move-object/from16 p0, v13

    move/from16 v23, v14

    move-object/from16 v14, v16

    move/from16 v24, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v19

    invoke-direct/range {v7 .. v17}, Lk4/q;-><init>(Ln1/a;LU3/k;LJ4/C;Ljava/util/Collection;ZLandroidx/recyclerview/widget/b;Ld4/a;ZZI)V

    invoke-virtual {v2, v3}, Lk4/q;->c(Lk4/t;)Lk4/m;

    move-result-object v2

    iget-object v2, v2, Lk4/m;->a:LJ4/C;

    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    invoke-interface {v7}, LJ4/M;->e()LU3/g;

    move-result-object v7

    instance-of v7, v7, LU3/z;

    if-eqz v7, :cond_18

    move-object/from16 v7, v22

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v2}, LJ4/C;->q0()LJ4/M;

    move-result-object v7

    if-nez v1, :cond_19

    move-object v8, v3

    goto :goto_f

    :cond_19
    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    :goto_f
    invoke-static {v7, v8}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    :goto_10
    const/4 v2, 0x1

    move-object/from16 v13, p0

    move/from16 v14, v23

    move/from16 v15, v24

    goto :goto_e

    :cond_1b
    invoke-static {v2}, LR3/j;->w(LJ4/C;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    move-object/from16 p0, v13

    iget-object v2, v4, Lh4/h;->l:LU3/e;

    if-nez v2, :cond_1d

    move-object v2, v3

    goto :goto_11

    :cond_1d
    invoke-static {v2, v4}, LR3/f;->u(LU3/e;LU3/e;)LJ4/N;

    move-result-object v5

    new-instance v7, LJ4/X;

    invoke-direct {v7, v5}, LJ4/X;-><init>(LJ4/U;)V

    invoke-interface {v2}, LU3/e;->n()LJ4/G;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v7, v5, v2}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v2

    :goto_11
    invoke-static {v0, v2}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-static {v0, v1}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v6}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj4/d;

    check-cast v5, La4/p;

    iget-object v5, v5, La4/p;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1e
    iget-object v0, v0, Lg4/a;->f:LZ3/e;

    invoke-virtual {v0, v4, v1}, LZ3/e;->a(LU3/e;Ljava/util/ArrayList;)V

    throw v3

    :cond_1f
    move-object/from16 v1, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :cond_20
    iget-object v0, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->o:LX3/D;

    iget-object v0, v0, LX3/D;->g:LR3/j;

    invoke-virtual {v0}, LR3/j;->e()LJ4/G;

    move-result-object v0

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_13
    return-object v0

    :pswitch_0
    check-cast v4, LH4/l;

    iget-object v0, v4, LH4/l;->h:Ln4/j;

    iget-object v2, v4, LH4/l;->o:LF4/k;

    iget-object v5, v2, LF4/k;->d:LX3/C;

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    invoke-static {v5, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_14

    :cond_21
    move-object v1, v3

    :goto_14
    if-nez v1, :cond_22

    iget-object v0, v0, Ln4/j;->l:Ljava/util/List;

    const-string v1, "supertypeIdList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "it"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, LX3/C;->a(I)Ln4/Q;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln4/Q;

    iget-object v6, v2, LF4/k;->h:LF4/F;

    invoke-virtual {v6, v5}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_23
    iget-object v1, v2, LF4/k;->a:LF4/i;

    iget-object v1, v1, LF4/i;->n:LW3/b;

    invoke-interface {v1, v4}, LW3/b;->d(LU3/e;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ4/C;

    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v6

    invoke-interface {v6}, LJ4/M;->e()LU3/g;

    move-result-object v6

    instance-of v7, v6, LU3/z;

    if-eqz v7, :cond_25

    check-cast v6, LU3/z;

    goto :goto_18

    :cond_25
    move-object v6, v3

    :goto_18
    if-eqz v6, :cond_24

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v2, v2, LF4/k;->a:LF4/i;

    iget-object v2, v2, LF4/i;->h:LF4/n;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LU3/z;

    invoke-static {v6}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v7

    if-nez v7, :cond_27

    move-object v7, v3

    goto :goto_1a

    :cond_27
    invoke-virtual {v7}, Ls4/b;->b()Ls4/c;

    move-result-object v7

    invoke-virtual {v7}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v7

    :goto_1a
    if-nez v7, :cond_28

    invoke-virtual {v6}, LX3/b;->r()Ls4/f;

    move-result-object v6

    invoke-virtual {v6}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v7

    :cond_28
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_29
    invoke-interface {v2, v4, v5}, LF4/n;->a(LU3/e;Ljava/util/ArrayList;)V

    :cond_2a
    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, LH4/i;->c:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()LU3/g;
    .locals 1

    iget v0, p0, LH4/i;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, Lh4/h;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, LH4/l;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget v0, p0, LH4/i;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/i;->d:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LH4/i;->d:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()LU3/M;
    .locals 1

    iget v0, p0, LH4/i;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, Lh4/h;

    iget-object p0, p0, Lh4/h;->m:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->m:LU3/M;

    return-object p0

    :pswitch_0
    sget-object p0, LU3/M;->f:LU3/M;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()LU3/e;
    .locals 1

    iget v0, p0, LH4/i;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, Lh4/h;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, LH4/l;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LH4/i;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, Lh4/h;

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    iget-object p0, p0, LH4/i;->e:LX3/b;

    check-cast p0, LH4/l;

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    iget-object p0, p0, Ls4/f;->d:Ljava/lang/String;

    const-string v0, "name.toString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
