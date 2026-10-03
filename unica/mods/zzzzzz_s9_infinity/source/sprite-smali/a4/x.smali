.class public abstract La4/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(LU3/b;)LU3/b;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld4/F;->j:Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, LX3/p;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Ld4/h;->d:Ljava/util/Set;

    invoke-static {p0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object v2

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, LX3/L;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, LU3/I;

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Ld4/f;->i:Ld4/f;

    invoke-static {p0, v0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object v1

    goto :goto_1

    :cond_2
    instance-of v0, p0, LX3/P;

    if-eqz v0, :cond_3

    sget-object v0, Ld4/f;->j:Ld4/f;

    invoke-static {p0, v0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final B(LU3/b;)LU3/b;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, La4/x;->A(LU3/b;)LU3/b;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Ld4/g;->l:I

    move-object v0, p0

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld4/g;->b(Ls4/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ld4/f;->k:Ld4/f;

    invoke-static {p0, v0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static C(La4/y;)LU3/b0;
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/y;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LU3/Y;->d:LU3/Y;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LU3/V;->d:LU3/V;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LY3/c;->d:LY3/c;

    goto :goto_0

    :cond_2
    sget-object p0, LY3/b;->d:LY3/b;

    goto :goto_0

    :cond_3
    sget-object p0, LY3/a;->d:LY3/a;

    :goto_0
    return-object p0
.end method

.method public static D(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/G;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "yMMMd"

    invoke-static {v0, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    const-string v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(LU3/b;)Z
    .locals 4

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld4/h;->d:Ljava/util/Set;

    move-object v1, p0

    check-cast v1, LX3/p;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Ld4/h;->c:Ljava/util/Set;

    invoke-static {p0}, Lz4/e;->c(LU3/k;)Ls4/c;

    move-result-object v2

    invoke-static {v0, v2}, Lr3/j;->p0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-static {p0}, LR3/j;->y(LU3/j;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, LU3/b;->m()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/b;

    const-string v3, "it"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, La4/x;->E(LU3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public static final F(LU3/e;LU3/b;)Z
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object p1

    check-cast p1, LU3/e;

    invoke-interface {p1}, LU3/e;->n()LJ4/G;

    move-result-object p1

    const-string v0, "specialCallableDescripto\u2026ssDescriptor).defaultType"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lv4/f;->j(LU3/e;)LU3/e;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    instance-of v1, p0, Lf4/c;

    if-nez v1, :cond_e

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v5, LK4/o;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, LK4/o;-><init>(LJ4/C;LK4/o;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK4/o;

    iget-object v7, v5, LK4/o;->a:LJ4/C;

    invoke-virtual {v7}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    if-eqz v8, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7}, LJ4/C;->z0()Z

    move-result v4

    iget-object v5, v5, LK4/o;->b:LK4/o;

    :goto_1
    if-eqz v5, :cond_6

    iget-object v8, v5, LK4/o;->a:LJ4/C;

    invoke-virtual {v8}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v9

    sget-object v10, LJ4/O;->b:LJ4/d;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LJ4/P;

    invoke-virtual {v11}, LJ4/P;->a()I

    move-result v11

    if-eq v11, v3, :cond_2

    invoke-virtual {v8}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    invoke-virtual {v8}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, LJ4/d;->e(LJ4/M;Ljava/util/List;)LJ4/U;

    move-result-object v9

    invoke-static {v9}, Lp4/g;->a0(LJ4/U;)LJ4/U;

    move-result-object v9

    new-instance v10, LJ4/X;

    invoke-direct {v10, v9}, LJ4/X;-><init>(LJ4/U;)V

    invoke-virtual {v10, v3, v7}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object v7

    invoke-static {v7}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object v7

    iget-object v7, v7, LO4/a;->b:Ljava/lang/Object;

    check-cast v7, LJ4/C;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v8}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    invoke-virtual {v8}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, LJ4/d;->e(LJ4/M;Ljava/util/List;)LJ4/U;

    move-result-object v9

    new-instance v10, LJ4/X;

    invoke-direct {v10, v9}, LJ4/X;-><init>(LJ4/U;)V

    invoke-virtual {v10, v3, v7}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object v7

    :goto_3
    if-nez v4, :cond_5

    invoke-virtual {v8}, LJ4/C;->z0()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v3

    :goto_5
    iget-object v5, v5, LK4/o;->b:LK4/o;

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v7, v4}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v6

    goto :goto_7

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Type constructors should be equals!\nsubstitutedSuperType: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LK4/h;->o(LJ4/M;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \n\nsupertype: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LK4/h;->o(LJ4/M;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_8
    invoke-static {v2}, LK4/h;->a(I)V

    throw v6

    :cond_9
    invoke-interface {v8}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ4/C;

    new-instance v9, LK4/o;

    const-string v10, "immediateSupertype"

    invoke-static {v8, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v8, v5}, LK4/o;-><init>(LJ4/C;LK4/o;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/4 p0, 0x4

    invoke-static {p0}, LK4/h;->a(I)V

    throw v6

    :cond_b
    invoke-static {v2}, LK4/h;->a(I)V

    throw v6

    :cond_c
    :goto_7
    if-eqz v6, :cond_e

    invoke-static {p0}, LR3/j;->y(LU3/j;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_d
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "subtype"

    aput-object p1, p0, v0

    const-string p1, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    aput-object p1, p0, v3

    const-string p1, "findCorrespondingSupertype"

    const/4 v0, 0x2

    aput-object p1, p0, v0

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-static {p0}, Lv4/f;->j(LU3/e;)LU3/e;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    return v0
.end method

.method public static G(IILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;
    .locals 32

    move/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v3, La3/y;->b:La3/y;

    sget-object v7, La3/x;->b:La3/x;

    sget-object v13, La3/t;->b:La3/t;

    sget-object v5, La3/E;->b:La3/E;

    sget-object v19, La3/r;->b:La3/r;

    sget-object v17, La3/A;->b:La3/A;

    sget-object v15, La3/F;->b:La3/F;

    sget-object v21, La3/D;->b:La3/D;

    sget-object v22, La3/I;->b:La3/I;

    sget-object v16, La3/H;->b:La3/H;

    sget-object v23, La3/j;->b:La3/j;

    sget-object v18, La3/l;->b:La3/l;

    sget-object v29, La3/i;->b:La3/i;

    sget-object v2, La3/z;->b:La3/z;

    sget-object v24, La3/m;->b:La3/m;

    sget-object v25, La3/s;->b:La3/s;

    const v4, 0x13880

    const-string v6, "CN"

    const-string v8, "KR"

    move/from16 v9, p1

    if-lt v9, v4, :cond_6

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v30, 0xe0

    const/16 v31, 0x0

    move-object/from16 v20, v0

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v31}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v24, 0xe0

    const/16 v25, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v25}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    move-object v4, v0

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v8, v18

    move-object v9, v13

    move-object/from16 v13, v23

    invoke-direct/range {v4 .. v15}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    move-object v4, v0

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object v9, v13

    move-object/from16 v13, v23

    invoke-direct/range {v4 .. v15}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v30, 0xe0

    const/16 v31, 0x0

    move-object/from16 v20, v0

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v31}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    sget-object v9, La3/C;->b:La3/C;

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v3, 0xe0

    const/16 v19, 0x0

    move-object v8, v0

    move-object/from16 v10, v16

    move-object v11, v2

    move-object/from16 v12, v18

    move-object/from16 v16, v1

    move-object/from16 v17, v23

    move/from16 v18, v3

    invoke-direct/range {v8 .. v19}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_5
    new-instance v12, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xe0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, v16

    move-object/from16 v4, v18

    move-object v5, v13

    move-object/from16 v9, v23

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v9, 0x86b

    if-eq v4, v9, :cond_b

    const/16 v6, 0x946

    if-eq v4, v6, :cond_8

    const/16 v6, 0x967

    if-eq v4, v6, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_8
    const-string v4, "JP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v20, 0x0

    const/16 v24, 0xe0

    const/16 v25, 0x0

    move-object v14, v0

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v14 .. v25}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_a
    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v24, 0xe0

    const/16 v25, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v25}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    if-nez v0, :cond_c

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v30, 0xe0

    const/16 v31, 0x0

    move-object/from16 v20, v0

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v31}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto :goto_1

    :cond_c
    new-instance v12, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v10, 0xe0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, v16

    move-object/from16 v4, v18

    move-object v5, v13

    move-object/from16 v9, v23

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto :goto_1

    :cond_d
    if-nez v0, :cond_e

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    move-object v4, v0

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v8, v18

    move-object v9, v13

    move-object/from16 v13, v23

    invoke-direct/range {v4 .. v15}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto :goto_1

    :cond_e
    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    move-object v4, v0

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object v9, v13

    move-object/from16 v13, v23

    invoke-direct/range {v4 .. v15}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    :goto_1
    return-object v0
.end method

.method public static H(ILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;
    .locals 30

    move-object/from16 v0, p1

    const-string v1, "cpType"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sget-object v7, La3/t;->b:La3/t;

    sget-object v12, La3/l;->b:La3/l;

    sget-object v17, La3/j;->b:La3/j;

    sget-object v20, La3/H;->b:La3/H;

    sget-object v9, La3/E;->b:La3/E;

    const/16 v2, 0x946

    if-eq v1, v2, :cond_4

    const v2, 0x118d4

    if-eq v1, v2, :cond_2

    const v2, 0x1236e

    if-eq v1, v2, :cond_1

    const v2, 0x4389837

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "JP_V4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_1
    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_2
    const-string v1, "HUA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v5, La3/x;->b:La3/x;

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v1, 0xe0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, v9

    move-object/from16 v4, v20

    move-object v6, v12

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v17

    move v12, v1

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto :goto_2

    :cond_4
    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    :goto_0
    sget-object v21, La3/y;->b:La3/y;

    if-nez p0, :cond_6

    sget-object v19, La3/D;->b:La3/D;

    sget-object v27, La3/i;->b:La3/i;

    sget-object v22, La3/m;->b:La3/m;

    sget-object v23, La3/s;->b:La3/s;

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v28, 0xe0

    const/16 v29, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v29}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v1, 0xe0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, v9

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object v6, v12

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v17

    move v12, v1

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    goto :goto_2

    :cond_7
    :goto_1
    sget-object v11, La3/A;->b:La3/A;

    sget-object v13, La3/r;->b:La3/r;

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    const/16 v18, 0xe0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v0

    move-object/from16 v10, v20

    invoke-direct/range {v8 .. v19}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;ILF3/f;)V

    :goto_2
    return-object v0
.end method

.method public static I(La4/y;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/y;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method public static J(La4/y;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/y;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method

.method public static K(Ljava/lang/String;)La1/a;
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "layerList"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc1/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    invoke-virtual {v0, p0}, LR3/f;->v(Lorg/w3c/dom/Node;)La1/a;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v0, "wallpaper"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lc1/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    invoke-virtual {v0, p0}, LR3/f;->v(Lorg/w3c/dom/Node;)La1/a;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "content"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lc1/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    invoke-virtual {v0, p0}, LR3/f;->v(Lorg/w3c/dom/Node;)La1/a;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "template"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lc1/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lc1/a;-><init>(I)V

    invoke-virtual {v0, p0}, LR3/f;->v(Lorg/w3c/dom/Node;)La1/a;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static L(LU3/s;LX3/W;)Ll4/i;
    .locals 8

    const-string v0, "f"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    sget-object v2, LS4/d;->d:LS4/d;

    const-string v3, "valueParameterDescriptor.type"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object v0

    invoke-interface {v0}, LU3/j;->g()LU3/j;

    move-result-object v0

    instance-of v0, v0, Lf4/c;

    if-nez v0, :cond_5

    invoke-static {p0}, LR3/j;->y(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, LU3/s;->a()LU3/s;

    move-result-object v0

    invoke-interface {v0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    const-string v5, "f.original.valueParameters"

    invoke-static {v0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/W;

    check-cast v0, LX3/X;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v0

    const-string v5, "f.original.valueParameters.single().type"

    invoke-static {v0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ll4/o;->k:Ll4/o;

    invoke-static {v0, v5, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll4/i;

    instance-of v6, v0, Ll4/h;

    if-eqz v6, :cond_1

    check-cast v0, Ll4/h;

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, v0, Ll4/h;->i:LA4/c;

    :goto_1
    sget-object v6, LA4/c;->l:LA4/c;

    if-eq v0, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0}, Ld4/g;->a(LU3/s;)LU3/s;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, LU3/s;->a()LU3/s;

    move-result-object v6

    invoke-interface {v6}, LU3/a;->n0()Ljava/util/List;

    move-result-object v6

    const-string v7, "overridden.original.valueParameters"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX3/W;

    check-cast v6, LX3/X;

    invoke-virtual {v6}, LX3/X;->j()LJ4/C;

    move-result-object v6

    const-string v7, "overridden.original.valueParameters.single().type"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll4/i;

    invoke-interface {v0}, LU3/j;->g()LU3/j;

    move-result-object v0

    const-string v6, "overridden.containingDeclaration"

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object v0

    sget-object v6, LR3/o;->J:Ls4/c;

    invoke-virtual {v6}, Ls4/c;->i()Ls4/e;

    move-result-object v6

    invoke-virtual {v0, v6}, Ls4/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v5, Ll4/g;

    if-eqz v0, :cond_5

    check-cast v5, Ll4/g;

    iget-object v0, v5, Ll4/g;->i:Ljava/lang/String;

    const-string v5, "java/lang/Object"

    invoke-static {v0, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    instance-of v5, v0, LU3/e;

    if-eqz v5, :cond_7

    check-cast v0, LU3/e;

    goto :goto_3

    :cond_7
    move-object v0, v4

    :goto_3
    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object p0

    const-string v5, "f.valueParameters"

    invoke-static {p0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/W;

    check-cast p0, LX3/X;

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of v5, p0, LU3/e;

    if-eqz v5, :cond_9

    move-object v4, p0

    check-cast v4, LU3/e;

    :cond_9
    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v0}, LR3/j;->s(LU3/e;)LR3/l;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {v0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object p0

    invoke-static {v4}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :goto_4
    check-cast p1, LX3/X;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p0

    invoke-static {p0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object p0

    const-string p1, "makeNullable(this)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ll4/o;->k:Ll4/o;

    invoke-static {p0, p1, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/i;

    goto :goto_6

    :cond_b
    :goto_5
    check-cast p1, LX3/X;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p0

    invoke-static {p0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ll4/o;->k:Ll4/o;

    invoke-static {p0, p1, v2}, Lj0/s;->z(LJ4/C;Ll4/o;LE3/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/i;

    :goto_6
    return-object p0
.end method

.method public static M(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static R(Ls4/f;Ljava/lang/String;Ljava/lang/String;I)Ls4/f;
    .locals 6

    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p3, p3, 0x8

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    move-object p2, v3

    :cond_1
    iget-boolean p3, p0, Ls4/f;->e:Z

    if-eqz p3, :cond_2

    :goto_1
    move-object p0, v3

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Ls4/f;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, v1}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-gt v5, v4, :cond_5

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p3, p1}, LV4/m;->C0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    goto/16 :goto_5

    :cond_6
    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-static {p3, p1}, LV4/m;->C0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-static {v1, p0}, LK/I;->d0(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "(this as java.lang.String).substring(startIndex)"

    if-eq p1, v2, :cond_e

    invoke-static {v2, p0}, LK/I;->d0(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, LK3/c;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-direct {p1, v1, p3, v2}, LK3/a;-><init>(III)V

    invoke-virtual {p1}, LK3/a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    move-object p3, p1

    check-cast p3, LK3/b;

    iget-boolean v0, p3, LK3/b;->f:Z

    if-eqz v0, :cond_c

    invoke-virtual {p3}, LK3/b;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, p0}, LK/I;->d0(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_c
    move-object p3, v3

    :goto_2
    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_d

    invoke-static {p0}, LK/I;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_d
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, LK/I;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_e
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0x41

    if-gt p3, p1, :cond_10

    const/16 p3, 0x5a

    if-gt p1, p3, :cond_10

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_10
    :goto_4
    invoke-static {p0}, Ls4/f;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_1

    :cond_11
    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public static final S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;
    .locals 5

    const-string v0, "db"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/WorkDatabase;->m(Le0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p2, :cond_8

    instance-of p1, p0, Landroid/database/AbstractWindowedCursor;

    if-eqz p1, :cond_8

    move-object p1, p0

    check-cast p1, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p1}, Landroid/database/AbstractCursor;->getCount()I

    move-result p2

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ge p1, p2, :cond_8

    const-string p1, "c"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_5
    aput-object v0, p2, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_7
    invoke-static {p0, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    return-object p0
.end method

.method public static T(Ljava/nio/MappedByteBuffer;)LP/b;
    .locals 13

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x64

    const-string v2, "Cannot read metadata."

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const-wide v4, 0xffffffffL

    const-wide/16 v6, -0x1

    if-ge v3, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v11, 0x6d657461

    if-ne v11, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-wide v9, v6

    :goto_1
    cmp-long v0, v9, v6

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v6, v0

    sub-long v6, v9, v6

    long-to-int v0, v6

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    :goto_2
    int-to-long v11, v1

    cmp-long v0, v11, v6

    if-gez v0, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v11, v3

    and-long/2addr v11, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    const v3, 0x456d6a69

    if-eq v3, v0, :cond_3

    const v3, 0x656d6a69

    if-ne v3, v0, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-long/2addr v11, v9

    long-to-int v0, v11

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, LP/b;

    invoke-direct {v0}, LK/u;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    iput-object p0, v0, LK/u;->g:Ljava/lang/Object;

    iput v2, v0, LK/u;->d:I

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, LK/u;->e:I

    iget-object p0, v0, LK/u;->g:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    iput p0, v0, LK/u;->f:I

    return-object v0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final U(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11

    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seq"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "from"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "to"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ls3/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ls3/c;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lc0/c;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cursor.getString(fromColumnIndex)"

    invoke-static {v8, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cursor.getString(toColumnIndex)"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v8, v9, v6, v7}, Lc0/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v5}, Ls3/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lp4/g;->f(Ls3/c;)Ls3/c;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->M0(Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final V(Lf0/c;Ljava/lang/String;Z)Lc0/d;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA index_xinfo(`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf0/c;->a0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "seqno"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "desc"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v2, v5, :cond_4

    if-ne v3, v5, :cond_0

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_2

    const-string v9, "DESC"

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const-string v9, "ASC"

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "columnName"

    invoke-static {v8, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v10, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "columnsMap.values"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "ordersMap.values"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lc0/d;

    invoke-direct {v2, p1, p2, v0, v1}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_4
    :goto_2
    invoke-static {p0, v4}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final W(Lc4/a;Lc4/b;LU3/B;Ls4/f;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "from"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scopeOwner"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, LX3/F;

    iget-object p0, p2, LX3/F;->h:Ls4/c;

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    invoke-virtual {p3}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "name.asString()"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final Y(Landroid/view/View;Ld0/g;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Ld0/a;->view_tree_saved_state_registry_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static Z(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 2

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->i:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public static a0(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p1}, Lw0/f;->e(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static b0(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1030001

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static final c0(LU3/b0;)LU3/n;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld4/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/n;

    if-nez v0, :cond_0

    invoke-static {p0}, LU3/o;->f(LU3/b0;)LU3/n;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static k(FI)J
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    aget v1, v0, p1

    add-float/2addr v1, p0

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/Color;->convert(ILandroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static l(Landroid/os/Parcel;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public static final m(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    array-length v2, p0

    array-length v3, p0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eq p0, v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public static o(Landroidx/recyclerview/widget/S;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/I;Z)I
    .locals 0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/I;->v()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p2}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p0

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Landroidx/recyclerview/widget/S;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/I;ZZ)I
    .locals 3

    invoke-virtual {p4}, Landroidx/recyclerview/widget/I;->v()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->b()I

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p4

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->b()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p5

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static q(Landroidx/recyclerview/widget/S;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/I;Z)I
    .locals 0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/I;->v()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->b()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p1

    invoke-static {p3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/S;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Landroid/content/Context;)Landroidx/emoji2/text/p;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Package manager required to locate emoji font provider"

    invoke-static {v0, v1}, Lw0/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.content.action.LOAD_EMOJI_FONT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    :goto_1
    move-object v2, v4

    goto :goto_3

    :cond_2
    :try_start_0
    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, LH/f;

    const-string v5, "emojicompat-emoji-font"

    invoke-direct {v2, v1, v3, v5, v0}, LH/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "emoji2.text.DefaultEmojiConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance v4, Landroidx/emoji2/text/p;

    new-instance v0, Landroidx/emoji2/text/o;

    invoke-direct {v0, p0, v2}, Landroidx/emoji2/text/o;-><init>(Landroid/content/Context;LH/f;)V

    invoke-direct {v4, v0}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/h;)V

    :goto_4
    return-object v4
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "current"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v2

    move v3, v0

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x28

    if-nez v4, :cond_2

    if-eq v5, v7, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/16 v7, 0x29

    if-ne v5, v7, :cond_4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LV4/m;->N0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_2
    return v2
.end method

.method public static t(LU3/a;LU3/a;)Z
    .locals 6

    const-string v0, "superDescriptor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lf4/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p0, LU3/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lf4/f;

    invoke-virtual {v0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    check-cast p0, LU3/s;

    invoke-interface {p0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v0}, LX3/P;->S0()LX3/P;

    move-result-object v0

    invoke-virtual {v0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v0

    const-string v2, "subDescriptor.original.valueParameters"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/s;->a()LU3/s;

    move-result-object v2

    invoke-interface {v2}, LU3/a;->n0()Ljava/util/List;

    move-result-object v2

    const-string v3, "superDescriptor.original.valueParameters"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/f;

    iget-object v3, v2, Lq3/f;->d:Ljava/lang/Object;

    check-cast v3, LX3/W;

    iget-object v2, v2, Lq3/f;->e:Ljava/lang/Object;

    check-cast v2, LX3/W;

    move-object v4, p1

    check-cast v4, LU3/s;

    const-string v5, "subParameter"

    invoke-static {v3, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, La4/x;->L(LU3/s;LX3/W;)Ll4/i;

    move-result-object v3

    instance-of v3, v3, Ll4/h;

    const-string v4, "superParameter"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, La4/x;->L(LU3/s;LX3/W;)Ll4/i;

    move-result-object v2

    instance-of v2, v2, Ll4/h;

    if-eq v3, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final u(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    const-string v0, "c"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x60

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static final v(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 7

    const-string v0, "c"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La4/x;->u(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const-string p0, "c.columnNames"

    invoke-static {v1, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lr3/h;->p0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RoomCursorUtil"

    const-string v1, "Cannot collect column names for debug purposes"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "unknown"

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist. Available columns: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(J)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/material/datepicker/G;->e()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/material/datepicker/G;->f(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, La4/x;->z(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, La4/x;->D(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(I)Landroid/graphics/drawable/PaintDrawable;
    .locals 3

    new-instance v0, Ld2/d;

    invoke-direct {v0, p0}, Ld2/d;-><init>(I)V

    new-instance p0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object p0
.end method

.method public static final y(LU3/s;)Ljava/lang/String;
    .locals 2

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LR3/j;->y(LU3/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, La4/x;->A(LU3/b;)LU3/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, LX3/L;

    if-eqz v0, :cond_5

    invoke-static {p0}, LR3/j;->y(LU3/j;)Z

    invoke-static {p0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object p0

    sget-object v0, Ld4/f;->g:Ld4/f;

    invoke-static {p0, v0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Ld4/h;->a:Ljava/lang/Object;

    invoke-static {p0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/f;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    instance-of v0, p0, LX3/P;

    if-eqz v0, :cond_8

    sget v0, Ld4/e;->l:I

    check-cast p0, LX3/P;

    sget-object v0, Ld4/F;->i:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lj0/s;->r(LU3/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    move-object p0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/f;

    :goto_2
    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_3
    return-object v1
.end method

.method public static z(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/material/datepicker/G;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "MMMd"

    invoke-static {v0, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    const-string v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract N(Ljava/lang/Throwable;)V
.end method

.method public abstract O(I)Landroid/view/View;
.end method

.method public abstract P()Z
.end method

.method public abstract Q(Lw0/i;)V
.end method
