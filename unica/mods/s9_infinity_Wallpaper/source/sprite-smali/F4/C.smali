.class public final LF4/C;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LF4/C;->d:I

    iput-object p1, p0, LF4/C;->e:Ljava/lang/Object;

    iput-object p3, p0, LF4/C;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, LF4/C;->d:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/b;

    iget-object v1, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v1, v1, Lg4/a;->b:LZ3/b;

    iget-object v0, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, Lh4/s;

    iget-object v0, v0, Lh4/s;->o:Lh4/n;

    iget-object v0, v0, LX3/F;->h:Ls4/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "packageFqName"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v1, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, Lh4/l;

    iget-object v2, v1, Lh4/l;->o:La4/n;

    iget-object v2, v2, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "klass.declaredConstructors"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object v2

    sget-object v3, La4/i;->l:La4/i;

    new-instance v4, LU4/f;

    const/4 v9, 0x0

    invoke-direct {v4, v2, v9, v3}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    sget-object v2, La4/j;->l:La4/j;

    invoke-static {v4, v2}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object v2

    invoke-static {v2}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v10, 0x1

    iget-object v11, v1, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v12, v1, Lh4/l;->n:LU3/e;

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La4/q;

    invoke-static {v11, v4}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object v5

    iget-object v6, v11, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v6, Lg4/a;

    iget-object v7, v6, Lg4/a;->j:LZ3/e;

    invoke-virtual {v7, v4}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v7

    invoke-static {v12, v5, v9, v7}, Lf4/b;->X0(LU3/e;LV3/h;ZLZ3/g;)Lf4/b;

    move-result-object v5

    invoke-interface {v12}, LU3/e;->o()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v11, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    new-instance v13, Lg4/e;

    invoke-direct {v13, v11, v5, v4, v7}, Lg4/e;-><init>(Landroidx/recyclerview/widget/b;LU3/k;Lj4/e;I)V

    new-instance v7, Landroidx/recyclerview/widget/b;

    invoke-direct {v7, v6, v13, v8}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    iget-object v6, v4, La4/q;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    const-string v11, "types"

    invoke-static {v8, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v8

    if-nez v11, :cond_0

    sget-object v6, Lr3/r;->d:Lr3/r;

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_1

    array-length v11, v8

    invoke-static {v8, v10, v11}, Lr3/h;->i0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/reflect/Type;

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    array-length v11, v10

    array-length v13, v8

    if-lt v11, v13, :cond_4

    array-length v11, v10

    array-length v13, v8

    if-le v11, v13, :cond_2

    array-length v11, v10

    array-length v13, v8

    sub-int/2addr v11, v13

    array-length v13, v10

    invoke-static {v10, v11, v13}, Lr3/h;->i0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/annotation/Annotation;

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v6

    invoke-virtual {v4, v8, v10, v6}, La4/v;->f([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;

    move-result-object v6

    :goto_1
    invoke-static {v7, v5, v6}, Lh4/w;->u(Landroidx/recyclerview/widget/b;LX3/w;Ljava/util/List;)LI/d;

    move-result-object v6

    invoke-interface {v12}, LU3/e;->o()Ljava/util/List;

    move-result-object v8

    const-string v10, "classDescriptor.declaredTypeParameters"

    invoke-static {v8, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, La4/q;->q()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La4/C;

    iget-object v14, v7, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v14, Lg4/f;

    invoke-interface {v14, v13}, Lg4/f;->a(La4/C;)LU3/O;

    move-result-object v13

    invoke-static {v13}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v8, v11}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v4}, La4/x;->C(La4/y;)LU3/b0;

    move-result-object v4

    invoke-static {v4}, La4/x;->c0(LU3/b0;)LU3/n;

    move-result-object v4

    iget-object v10, v6, LI/d;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-virtual {v5, v10, v4, v8}, LX3/l;->V0(Ljava/util/List;LU3/n;Ljava/util/List;)V

    invoke-virtual {v5, v9}, Lf4/b;->O0(Z)V

    iget-boolean v4, v6, LI/d;->e:Z

    invoke-virtual {v5, v4}, Lf4/b;->P0(Z)V

    invoke-interface {v12}, LU3/e;->n()LJ4/G;

    move-result-object v4

    invoke-virtual {v5, v4}, LX3/w;->Q0(LJ4/G;)V

    iget-object v4, v7, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, Lg4/a;

    iget-object v4, v4, Lg4/a;->g:Le4/h;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal generic signature: "

    invoke-static {v6, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v2, v1, Lh4/l;->o:La4/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    iget-object v4, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, Lg4/a;

    iget-object v4, v4, Lg4/a;->x:LA4/e;

    check-cast v4, LA4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "thisDescriptor"

    invoke-static {v12, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Lg4/a;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v3, v2, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isAnnotation()Z

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    const/4 v3, 0x0

    if-nez v4, :cond_6

    move-object/from16 p0, v0

    goto/16 :goto_b

    :cond_6
    sget-object v5, LV3/g;->a:LV3/f;

    iget-object v6, v11, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v6, Lg4/a;

    iget-object v6, v6, Lg4/a;->j:LZ3/e;

    invoke-virtual {v6, v2}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v6

    invoke-static {v12, v5, v10, v6}, Lf4/b;->X0(LU3/e;LV3/h;ZLZ3/g;)Lf4/b;

    move-result-object v14

    if-eqz v4, :cond_d

    invoke-virtual {v2}, La4/n;->f()Ljava/util/List;

    move-result-object v2

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x2

    invoke-static {v4, v10, v3, v4}, Li4/d;->b(IZLh4/B;I)Li4/a;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, La4/w;

    invoke-virtual {v6}, La4/v;->e()Ls4/f;

    move-result-object v6

    sget-object v9, Ld4/x;->b:Ls4/f;

    invoke-virtual {v6, v9}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    invoke-static {v4}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, La4/w;

    iget-object v2, v11, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lw0/i;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, La4/w;->g()La4/B;

    move-result-object v2

    instance-of v4, v2, La4/h;

    if-eqz v4, :cond_9

    new-instance v3, Lq3/f;

    check-cast v2, La4/h;

    invoke-virtual {v6, v2, v8, v10}, Lw0/i;->H(La4/h;Li4/a;Z)LJ4/b0;

    move-result-object v4

    iget-object v2, v2, La4/h;->b:La4/B;

    invoke-virtual {v6, v2, v8}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance v4, Lq3/f;

    invoke-virtual {v6, v2, v8}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    :goto_5
    iget-object v2, v3, Lq3/f;->d:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, LJ4/C;

    iget-object v2, v3, Lq3/f;->e:Ljava/lang/Object;

    move-object/from16 v18, v2

    check-cast v18, LJ4/C;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v15

    move-object v4, v14

    move-object v10, v6

    move-object v6, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v17

    move-object/from16 p0, v0

    move-object v0, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lh4/l;->x(Ljava/util/ArrayList;Lf4/b;ILa4/w;LJ4/C;LJ4/C;)V

    goto :goto_6

    :cond_a
    move-object/from16 p0, v0

    move-object v10, v6

    move-object/from16 v20, v7

    move-object v0, v8

    :goto_6
    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v2, 0x0

    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v18, v2, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, La4/w;

    invoke-virtual {v6}, La4/w;->g()La4/B;

    move-result-object v3

    invoke-virtual {v10, v3, v0}, Lw0/i;->I(Lj4/d;Li4/a;)LJ4/C;

    move-result-object v7

    add-int v5, v2, v9

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v15

    move-object v4, v14

    invoke-virtual/range {v2 .. v8}, Lh4/l;->x(Ljava/util/ArrayList;Lf4/b;ILa4/w;LJ4/C;LJ4/C;)V

    move/from16 v2, v18

    goto :goto_8

    :cond_c
    :goto_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 p0, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    goto :goto_9

    :goto_a
    invoke-virtual {v14, v0}, Lf4/b;->P0(Z)V

    invoke-interface {v12}, LU3/e;->b()LU3/n;

    move-result-object v0

    const-string v1, "classDescriptor.visibility"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ld4/o;->b:LU3/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Ld4/o;->c:LU3/n;

    const-string v1, "PROTECTED_AND_PACKAGE"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v14, v15, v0}, LX3/l;->U0(Ljava/util/List;LU3/n;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lf4/b;->O0(Z)V

    invoke-interface {v12}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v14, v0}, LX3/w;->Q0(LJ4/G;)V

    iget-object v0, v11, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->g:Le4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v14

    :goto_b
    invoke-static {v3}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_c

    :cond_f
    move-object/from16 p0, v0

    :goto_c
    iget-object v0, v13, Lg4/a;->r:Ln1/a;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Ln1/a;->e(Landroidx/recyclerview/widget/b;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v1, Lh4/n;

    iget-object v2, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v2, Lg4/d;

    iget-object v2, v2, Lg4/d;->a:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, La4/z;

    invoke-direct {v1, v2, v0}, Lh4/n;-><init>(Landroidx/recyclerview/widget/b;La4/z;)V

    return-object v1

    :pswitch_2
    iget-object v1, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/b;

    iget-object v0, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, LV3/h;

    invoke-static {v1, v0}, Le0/a;->v(Landroidx/recyclerview/widget/b;LV3/h;)Ld4/u;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v1, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v1, LU3/f;

    invoke-interface {v1}, LV3/a;->p()LV3/h;

    move-result-object v1

    iget-object v0, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/b;

    invoke-static {v0, v1}, Le0/a;->v(Landroidx/recyclerview/widget/b;LV3/h;)Ld4/u;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v1, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/b;

    iget-object v1, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v1, v1, Lg4/a;->o:LX3/D;

    iget-object v1, v1, LX3/D;->g:LR3/j;

    iget-object v0, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, Le4/b;

    iget-object v0, v0, Le4/b;->a:Ls4/c;

    invoke-virtual {v1, v0}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    const-string v1, "c.module.builtIns.getBui\u2026qName(fqName).defaultType"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v1, LX3/T;

    iget-object v2, v0, LF4/C;->e:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, LX3/T;

    iget-object v3, v10, LX3/T;->F:LI4/o;

    iget-object v2, v0, LF4/C;->f:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, LU3/d;

    move-object v2, v5

    check-cast v2, LD4/a;

    invoke-virtual {v2}, LD4/a;->p()LV3/h;

    move-result-object v7

    iget-object v0, v0, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, LU3/d;

    check-cast v0, LX3/w;

    invoke-virtual {v0}, LX3/w;->f0()I

    move-result v8

    const-string v2, "underlyingConstructorDescriptor.kind"

    invoke-static {v8, v2}, LB/a;->y(ILjava/lang/String;)V

    iget-object v11, v10, LX3/T;->G:LH4/v;

    invoke-virtual {v11}, LX3/q;->i()LU3/L;

    move-result-object v9

    const-string v2, "typeAliasDescriptor.source"

    invoke-static {v9, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, LX3/T;->G:LH4/v;

    move-object v2, v1

    move-object v6, v10

    invoke-direct/range {v2 .. v9}, LX3/T;-><init>(LI4/o;LH4/v;LU3/d;LX3/S;LV3/h;ILU3/L;)V

    sget-object v2, LX3/T;->I:LX3/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, LH4/v;->H0()LU3/e;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    move-object v2, v3

    goto :goto_d

    :cond_10
    invoke-virtual {v11}, LH4/v;->I0()LJ4/G;

    move-result-object v2

    invoke-static {v2}, LJ4/X;->d(LJ4/C;)LJ4/X;

    move-result-object v2

    :goto_d
    if-nez v2, :cond_11

    move-object v1, v3

    goto :goto_f

    :cond_11
    iget-object v0, v0, LX3/w;->l:LU3/J;

    if-nez v0, :cond_12

    move-object v4, v3

    goto :goto_e

    :cond_12
    check-cast v0, LX3/d;

    invoke-virtual {v0, v2}, LX3/d;->G0(LJ4/X;)LX3/d;

    move-result-object v0

    move-object v4, v0

    :goto_e
    invoke-virtual {v11}, LH4/v;->o()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v10}, LX3/w;->n0()Ljava/util/List;

    move-result-object v6

    iget-object v7, v10, LX3/w;->j:LJ4/C;

    invoke-static {v7}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget-object v9, v11, LH4/v;->h:LU3/n;

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, LX3/w;->M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V

    :goto_f
    return-object v1

    :pswitch_6
    iget-object v1, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, Lh4/h;

    new-instance v2, Lh4/h;

    iget-object v3, v1, Lh4/h;->m:Landroidx/recyclerview/widget/b;

    iget-object v4, v3, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v4, Lg4/a;

    new-instance v15, Lg4/a;

    move-object v5, v15

    iget-object v6, v4, Lg4/a;->a:LI4/l;

    iget-object v7, v4, Lg4/a;->u:LK4/m;

    move-object/from16 v25, v7

    iget-object v7, v4, Lg4/a;->v:Ld4/t;

    move-object/from16 v26, v7

    iget-object v7, v4, Lg4/a;->b:LZ3/b;

    iget-object v8, v4, Lg4/a;->c:LZ3/b;

    iget-object v9, v4, Lg4/a;->d:Ll4/c;

    iget-object v10, v4, Lg4/a;->e:Le4/h;

    iget-object v11, v4, Lg4/a;->f:LZ3/e;

    iget-object v12, v4, Lg4/a;->h:Le4/h;

    iget-object v13, v4, Lg4/a;->i:LU0/e;

    iget-object v14, v4, Lg4/a;->j:LZ3/e;

    move-object/from16 v16, v15

    iget-object v15, v4, Lg4/a;->k:Landroidx/recyclerview/widget/y;

    move-object/from16 v28, v2

    move-object/from16 v2, v16

    iget-object v0, v4, Lg4/a;->l:Ll4/d;

    move-object/from16 v16, v0

    iget-object v0, v4, Lg4/a;->m:LU3/M;

    move-object/from16 v17, v0

    iget-object v0, v4, Lg4/a;->n:Lc4/a;

    move-object/from16 v18, v0

    iget-object v0, v4, Lg4/a;->o:LX3/D;

    move-object/from16 v19, v0

    iget-object v0, v4, Lg4/a;->p:LR3/n;

    move-object/from16 v20, v0

    iget-object v0, v4, Lg4/a;->q:Ld4/d;

    move-object/from16 v21, v0

    iget-object v0, v4, Lg4/a;->r:Ln1/a;

    move-object/from16 v22, v0

    iget-object v0, v4, Lg4/a;->s:Ld4/m;

    move-object/from16 v23, v0

    iget-object v0, v4, Lg4/a;->t:Lg4/b;

    move-object/from16 v24, v0

    iget-object v0, v4, Lg4/a;->w:LZ3/e;

    move-object/from16 v27, v0

    invoke-direct/range {v5 .. v27}, Lg4/a;-><init>(LI4/l;LZ3/b;LZ3/b;Ll4/c;Le4/h;LZ3/e;Le4/h;LU0/e;LZ3/e;Landroidx/recyclerview/widget/y;Ll4/d;LU3/M;Lc4/a;LX3/D;LR3/n;Ld4/d;Ln1/a;Ld4/m;Lg4/b;LK4/m;Ld4/t;LZ3/e;)V

    new-instance v0, Landroidx/recyclerview/widget/b;

    iget-object v4, v3, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    iget-object v3, v3, Landroidx/recyclerview/widget/b;->f:Ljava/lang/Object;

    check-cast v3, Lg4/f;

    invoke-direct {v0, v2, v3, v4}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    invoke-virtual {v1}, LX3/m;->g()LU3/j;

    move-result-object v2

    const-string v3, "containingDeclaration"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v3, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v3, LU3/e;

    iget-object v1, v1, Lh4/h;->k:La4/n;

    move-object/from16 v4, v28

    invoke-direct {v4, v0, v2, v1, v3}, Lh4/h;-><init>(Landroidx/recyclerview/widget/b;LU3/j;La4/n;LU3/e;)V

    return-object v4

    :pswitch_7
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LT3/n;

    invoke-virtual {v0}, LT3/n;->g()LT3/h;

    move-result-object v1

    iget-object v1, v1, LT3/h;->a:LX3/D;

    sget-object v2, LT3/g;->d:LT3/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LT3/g;->h:Ls4/b;

    new-instance v4, Lw0/i;

    invoke-virtual {v0}, LT3/n;->g()LT3/h;

    move-result-object v0

    iget-object v0, v0, LT3/h;->a:LX3/D;

    iget-object v3, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v3, LI4/l;

    invoke-direct {v4, v3, v0}, Lw0/i;-><init>(LI4/o;LU3/x;)V

    invoke-static {v1, v2, v4}, LR3/f;->D(LU3/x;Ls4/b;Lw0/i;)LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->n()LJ4/G;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object v3, v0

    new-instance v0, LT3/n;

    iget-object v1, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, LT3/i;

    invoke-virtual {v1}, LR3/j;->k()LX3/D;

    move-result-object v2

    const-string v4, "builtInsModule"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LC4/g;

    const/16 v5, 0x19

    invoke-direct {v4, v5, v1}, LC4/g;-><init>(ILjava/lang/Object;)V

    iget-object v1, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v1, LI4/l;

    invoke-direct {v0, v2, v1, v4}, LT3/n;-><init>(LX3/D;LI4/l;LC4/g;)V

    return-object v0

    :pswitch_9
    move-object v3, v0

    new-instance v0, LX3/n;

    iget-object v1, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, LT3/g;

    iget-object v2, v1, LT3/g;->b:LE3/b;

    iget-object v1, v1, LT3/g;->a:LX3/D;

    invoke-interface {v2, v1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, LU3/j;

    sget-object v7, LT3/g;->g:Ls4/f;

    iget-object v1, v1, LX3/D;->g:LR3/j;

    invoke-virtual {v1}, LR3/j;->e()LJ4/G;

    move-result-object v1

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v1, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v1, LI4/l;

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object v5, v0

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, LX3/n;-><init>(LU3/j;Ls4/f;IILjava/util/List;LI4/l;)V

    new-instance v2, LT3/a;

    invoke-direct {v2, v1, v0}, LC4/i;-><init>(LI4/l;LX3/b;)V

    sget-object v1, Lr3/t;->d:Lr3/t;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LX3/n;->m0(LC4/o;Ljava/util/Set;LX3/l;)V

    return-object v0

    :pswitch_a
    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    sget-object v9, LP3/d;->d:LP3/d;

    const-string v8, ")"

    const/16 v10, 0x30

    const-string v6, ", "

    const-string v7, "("

    move-object v5, v0

    invoke-static/range {v4 .. v10}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LO3/g0;

    iget-object v0, v0, LO3/g0;->c:LJ4/C;

    invoke-virtual {v0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lr3/r;->d:Lr3/r;

    goto/16 :goto_13

    :cond_13
    sget-object v1, Lq3/e;->d:Lq3/e;

    new-instance v2, LC4/g;

    const/16 v4, 0x15

    invoke-direct {v2, v4, v3}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lp4/g;->G(Lq3/e;LE3/a;)Lq3/d;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    if-ltz v4, :cond_19

    check-cast v5, LJ4/P;

    invoke-virtual {v5}, LJ4/P;->c()Z

    move-result v8

    if-eqz v8, :cond_14

    sget-object v4, LL3/p;->c:LL3/p;

    goto :goto_12

    :cond_14
    new-instance v8, LO3/g0;

    invoke-virtual {v5}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    const-string v10, "typeProjection.type"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v10, LE3/a;

    if-nez v10, :cond_15

    goto :goto_11

    :cond_15
    new-instance v7, LO3/f0;

    invoke-direct {v7, v4, v3, v1}, LO3/f0;-><init>(ILF4/C;Lq3/d;)V

    :goto_11
    invoke-direct {v8, v9, v7}, LO3/g0;-><init>(LJ4/C;LE3/a;)V

    invoke-virtual {v5}, LJ4/P;->a()I

    move-result v4

    invoke-static {v4}, Lq/e;->c(I)I

    move-result v4

    if-eqz v4, :cond_18

    const/4 v5, 0x1

    if-eq v4, v5, :cond_17

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    new-instance v4, LL3/p;

    sget-object v5, LL3/q;->f:LL3/q;

    invoke-direct {v4, v5, v8}, LL3/p;-><init>(LL3/q;LO3/g0;)V

    goto :goto_12

    :cond_16
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    new-instance v4, LL3/p;

    sget-object v5, LL3/q;->e:LL3/q;

    invoke-direct {v4, v5, v8}, LL3/p;-><init>(LL3/q;LO3/g0;)V

    goto :goto_12

    :cond_18
    new-instance v4, LL3/p;

    sget-object v5, LL3/q;->d:LL3/q;

    invoke-direct {v4, v5, v8}, LL3/p;-><init>(LL3/q;LO3/g0;)V

    :goto_12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_10

    :cond_19
    invoke-static {}, Lr3/k;->i0()V

    throw v7

    :cond_1a
    move-object v0, v2

    :goto_13
    return-object v0

    :pswitch_c
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LO3/A;

    iget-object v1, v0, LO3/A;->g:LO3/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, LO3/A;->h:Ljava/lang/String;

    const-string v3, "signature"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<init>"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, LO3/z;->e()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    :goto_14
    move-object v4, v3

    goto :goto_15

    :cond_1b
    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    invoke-virtual {v1, v3}, LO3/z;->f(Ls4/f;)Ljava/util/Collection;

    move-result-object v3

    goto :goto_14

    :goto_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, LU3/s;

    invoke-static {v7}, LO3/q0;->c(LU3/s;)LO3/n0;

    move-result-object v7

    invoke-virtual {v7}, LO3/n0;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f

    sget-object v8, LO3/c;->g:LO3/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "\n"

    const/16 v9, 0x1e

    invoke-static/range {v4 .. v9}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LD3/a;

    const-string v5, "Function \'"

    const-string v6, "\' (JVM signature: "

    const-string v7, ") not resolved in "

    invoke-static {v5, v2, v6, v0, v7}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, " no members found"

    goto :goto_17

    :cond_1e
    const-string v1, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1f
    invoke-static {v3}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/s;

    return-object v0

    :pswitch_d
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LJ4/C;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/e;

    if-eqz v1, :cond_23

    move-object v1, v0

    check-cast v1, LU3/e;

    invoke-static {v1}, LO3/r0;->g(LU3/e;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v2, LO3/r;

    if-eqz v1, :cond_22

    iget-object v3, v2, LO3/r;->e:LO3/t;

    iget-object v3, v3, LO3/t;->m:LO3/v;

    iget-object v3, v3, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v2, v2, LO3/r;->e:LO3/t;

    if-eqz v3, :cond_20

    iget-object v0, v2, LO3/t;->m:LO3/v;

    iget-object v0, v0, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "jClass.genericSuperclass"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_18

    :cond_20
    iget-object v3, v2, LO3/t;->m:LO3/v;

    iget-object v3, v3, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const-string v4, "jClass.interfaces"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lr3/h;->o0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_21

    iget-object v0, v2, LO3/t;->m:LO3/v;

    iget-object v0, v0, LO3/v;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v1, "jClass.genericInterfaces[index]"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_18
    return-object v0

    :cond_21
    new-instance v1, LD3/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No superclass of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in Java reflection for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v1, LD3/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported superclass of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, LO3/r;->e:LO3/t;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v1, LD3/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Supertype not a class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_e
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LK4/j;

    iget-object v0, v0, LK4/j;->e:Ljava/lang/Object;

    invoke-interface {v0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_24

    sget-object v0, Lr3/r;->d:Lr3/r;

    :cond_24
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/b0;

    iget-object v4, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v4, LK4/g;

    invoke-virtual {v2, v4}, LJ4/b0;->D0(LK4/g;)LJ4/b0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_25
    return-object v1

    :pswitch_f
    move-object v3, v0

    iget-object v0, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v0, LJ4/E;

    iget-object v0, v0, LJ4/E;->f:LF3/l;

    invoke-interface {v0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    iget-object v1, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, LK4/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_10
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LH4/l;

    iget-object v1, v0, LH4/l;->o:LF4/k;

    iget-object v1, v1, LF4/k;->a:LF4/i;

    iget-object v1, v1, LF4/i;->e:LF4/b;

    iget-object v2, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v2, Ln4/t;

    iget-object v0, v0, LH4/l;->y:LF4/v;

    invoke-interface {v1, v0, v2}, LF4/b;->o(LF4/x;Ln4/t;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object v3, v0

    iget-object v0, v3, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LF4/F;

    iget-object v0, v0, LF4/F;->c:Ljava/lang/Object;

    check-cast v0, LF4/k;

    iget-object v1, v0, LF4/k;->a:LF4/i;

    iget-object v1, v1, LF4/i;->e:LF4/b;

    iget-object v2, v3, LF4/C;->f:Ljava/lang/Object;

    check-cast v2, Ln4/Q;

    iget-object v0, v0, LF4/k;->b:Lp4/f;

    invoke-interface {v1, v2, v0}, LF4/b;->a(Ln4/Q;Lp4/f;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
