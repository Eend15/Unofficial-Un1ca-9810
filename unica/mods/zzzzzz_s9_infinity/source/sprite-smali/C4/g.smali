.class public final LC4/g;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC4/g;->d:I

    iput-object p2, p0, LC4/g;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LE3/a;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LC4/g;->d:I

    .line 2
    check-cast p1, LF3/l;

    iput-object p1, p0, LC4/g;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, LC4/g;->e:Ljava/lang/Object;

    iget p0, p0, LC4/g;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast v4, LX3/V;

    iget-object p0, v4, LX3/V;->o:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    check-cast v4, LV3/j;

    iget-object p0, v4, LV3/j;->a:LR3/j;

    iget-object v0, v4, LV3/j;->b:Ls4/c;

    invoke-virtual {p0, v0}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object p0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    return-object p0

    :pswitch_1
    return-object v4

    :pswitch_2
    check-cast v4, LU3/K;

    iget-object p0, v4, LU3/K;->b:Ljava/lang/Object;

    sget-object v0, LK4/g;->a:LK4/g;

    invoke-interface {p0, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    return-object p0

    :pswitch_3
    check-cast v4, LT3/i;

    iget-object p0, v4, LT3/i;->f:LR3/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LR3/m;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT3/h;

    iput-object v3, v4, LT3/i;->f:LR3/m;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_4
    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, [Z

    if-eqz v3, :cond_1

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_1

    :cond_1
    instance-of v3, v0, [C

    if-eqz v3, :cond_2

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_1

    :cond_2
    instance-of v3, v0, [B

    if-eqz v3, :cond_3

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v3, v0, [S

    if-eqz v3, :cond_4

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_1

    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_5

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_1

    :cond_5
    instance-of v3, v0, [F

    if-eqz v3, :cond_6

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_1

    :cond_6
    instance-of v3, v0, [J

    if-eqz v3, :cond_7

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_8

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_1

    :cond_8
    instance-of v3, v0, [Ljava/lang/Object;

    if-eqz v3, :cond_9

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7f

    xor-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast v4, LO3/h0;

    iget-object p0, v4, LO3/h0;->f:LU3/O;

    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v0, "descriptor.upperBounds"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    new-instance v2, LO3/g0;

    invoke-direct {v2, v1, v3}, LO3/g0;-><init>(LJ4/C;LE3/a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-object v0

    :pswitch_6
    check-cast v4, LO3/g0;

    iget-object p0, v4, LO3/g0;->c:LJ4/C;

    invoke-virtual {v4, p0}, LO3/g0;->a(LJ4/C;)LL3/c;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast v4, LF4/C;

    iget-object p0, v4, LF4/C;->e:Ljava/lang/Object;

    check-cast p0, LO3/g0;

    iget-object p0, p0, LO3/g0;->a:LO3/k0;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/Type;

    :cond_c
    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v3}, La4/b;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast v4, LO3/L;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LO3/L;->e:[LL3/l;

    aget-object p0, p0, v2

    iget-object p0, v4, LO3/L;->a:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/H;

    invoke-static {p0}, LO3/r0;->b(LV3/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, LO3/I;

    check-cast v4, LO3/K;

    invoke-direct {p0, v4}, LO3/I;-><init>(LO3/K;)V

    return-object p0

    :pswitch_a
    new-instance p0, LO3/F;

    check-cast v4, LO3/G;

    invoke-direct {p0, v4}, LO3/F;-><init>(LO3/G;)V

    return-object p0

    :pswitch_b
    new-instance p0, LO3/D;

    check-cast v4, LO3/E;

    invoke-direct {p0, v4}, LO3/D;-><init>(LO3/E;)V

    return-object p0

    :pswitch_c
    new-instance p0, LO3/B;

    check-cast v4, LO3/C;

    invoke-direct {p0, v4}, LO3/B;-><init>(LO3/C;)V

    return-object p0

    :pswitch_d
    sget-object p0, LO3/q0;->a:Ls4/b;

    check-cast v4, LO3/A;

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object p0

    invoke-static {p0}, LO3/q0;->c(LU3/s;)LO3/n0;

    move-result-object p0

    instance-of v0, p0, LO3/g;

    const/4 v8, 0x2

    iget-object v5, v4, LO3/A;->g:LO3/z;

    if-eqz v0, :cond_11

    invoke-virtual {v4}, LO3/p;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, LF3/d;->c()Ljava/lang/Class;

    move-result-object v6

    iget-object p0, v4, LO3/p;->d:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_parameters()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/h;

    check-cast v0, LO3/L;

    invoke-virtual {v0}, LO3/L;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    new-instance p0, LP3/a;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v7}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    const/4 v9, 0x2

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, LP3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    goto/16 :goto_b

    :cond_f
    check-cast p0, LO3/g;

    iget-object p0, p0, LO3/g;->f:Lr4/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "desc"

    iget-object p0, p0, Lr4/e;->c:Ljava/lang/String;

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, LF3/d;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, p0}, LO3/z;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :try_start_0
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    check-cast p0, [Ljava/lang/Class;

    array-length v5, p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_5

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    instance-of v0, p0, LO3/h;

    if-eqz v0, :cond_12

    check-cast p0, LO3/h;

    iget-object p0, p0, LO3/h;->f:Lr4/e;

    iget-object v0, p0, Lr4/e;->c:Ljava/lang/String;

    iget-object p0, p0, Lr4/e;->b:Ljava/lang/String;

    invoke-virtual {v5, p0, v0}, LO3/z;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_5

    :cond_12
    instance-of v0, p0, LO3/f;

    if-eqz v0, :cond_13

    check-cast p0, LO3/f;

    iget-object v3, p0, LO3/f;->e:Ljava/lang/reflect/Method;

    goto :goto_5

    :cond_13
    instance-of v0, p0, LO3/e;

    if-eqz v0, :cond_27

    check-cast p0, LO3/e;

    iget-object v3, p0, LO3/e;->e:Ljava/lang/reflect/Constructor;

    :catch_0
    :goto_5
    instance-of p0, v3, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_20

    move-object v6, v3

    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "descriptor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LU3/d;

    const/4 v8, 0x0

    if-eqz v0, :cond_14

    check-cast p0, LU3/d;

    goto :goto_6

    :cond_14
    move-object p0, v8

    :goto_6
    iget-object v0, v4, LO3/A;->i:Ljava/lang/Object;

    const-string v3, "constructor.genericParameterTypes"

    const-string v5, "constructor.declaringClass"

    const-string v7, "constructor"

    if-nez p0, :cond_15

    goto/16 :goto_8

    :cond_15
    move-object v9, p0

    check-cast v9, LX3/w;

    invoke-virtual {v9}, LX3/w;->b()LU3/n;

    move-result-object v10

    invoke-static {v10}, LU3/o;->e(LU3/n;)Z

    move-result v10

    if-eqz v10, :cond_16

    goto/16 :goto_8

    :cond_16
    check-cast p0, LX3/l;

    invoke-virtual {p0}, LX3/l;->V()LU3/e;

    move-result-object v10

    const-string v11, "constructorDescriptor.constructedClass"

    invoke-static {v10, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lv4/j;->b(LU3/j;)Z

    move-result v10

    if-eqz v10, :cond_17

    goto/16 :goto_8

    :cond_17
    invoke-virtual {p0}, LX3/l;->V()LU3/e;

    move-result-object p0

    invoke-static {p0}, Lv4/f;->q(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual {v9}, LX3/w;->n0()Ljava/util/List;

    move-result-object p0

    const-string v9, "constructorDescriptor.valueParameters"

    invoke-static {p0, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_8

    :cond_19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LX3/W;

    check-cast v9, LX3/X;

    invoke-virtual {v9}, LX3/X;->j()LJ4/C;

    move-result-object v9

    const-string v10, "it.type"

    invoke-static {v9, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lw0/f;->G(LJ4/C;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v4}, LO3/A;->h()Z

    move-result p0

    if-eqz p0, :cond_1b

    new-instance p0, LP3/g;

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object v1

    invoke-static {v0, v1}, LK/I;->k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v6, v0, v2}, LP3/g;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V

    goto/16 :goto_9

    :cond_1b
    new-instance p0, LP3/h;

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    if-gt v3, v1, :cond_1c

    new-array v0, v2, [Ljava/lang/reflect/Type;

    goto :goto_7

    :cond_1c
    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Lr3/h;->i0([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    :goto_7
    move-object v9, v0

    check-cast v9, [Ljava/lang/reflect/Type;

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, LP3/h;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V

    goto/16 :goto_9

    :cond_1d
    :goto_8
    invoke-virtual {v4}, LO3/A;->h()Z

    move-result p0

    if-eqz p0, :cond_1e

    new-instance p0, LP3/g;

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object v3

    invoke-static {v0, v3}, LK/I;->k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v6, v0, v1}, LP3/g;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;I)V

    goto/16 :goto_9

    :cond_1e
    new-instance p0, LP3/h;

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "klass"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1f

    move-object v8, v1

    :cond_1f
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v9, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, LP3/h;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V

    goto :goto_9

    :cond_20
    instance-of p0, v3, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_26

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    iget-object v0, v4, LO3/A;->i:Ljava/lang/Object;

    if-nez p0, :cond_22

    invoke-virtual {v4}, LO3/A;->h()Z

    move-result p0

    if-eqz p0, :cond_21

    new-instance p0, LP3/q;

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object v1

    invoke-static {v0, v1}, LK/I;->k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v0}, LP3/q;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_9

    :cond_21
    new-instance p0, LP3/t;

    invoke-direct {p0, v3, v2}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_9

    :cond_22
    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object p0

    check-cast p0, LD4/a;

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object p0

    sget-object v5, LO3/r0;->a:Ls4/c;

    invoke-interface {p0, v5}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {v4}, LO3/A;->h()Z

    move-result p0

    if-eqz p0, :cond_23

    new-instance p0, LP3/r;

    invoke-direct {p0, v3}, LP3/r;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_9

    :cond_23
    new-instance p0, LP3/t;

    invoke-direct {p0, v3, v1}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_9

    :cond_24
    invoke-virtual {v4}, LO3/A;->h()Z

    move-result p0

    if-eqz p0, :cond_25

    new-instance p0, LP3/s;

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object v1

    invoke-static {v0, v1}, LK/I;->k(Ljava/lang/Object;LU3/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v0}, LP3/s;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_9

    :cond_25
    new-instance p0, LP3/t;

    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, LP3/t;-><init>(Ljava/lang/reflect/Method;I)V

    :goto_9
    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object v0

    invoke-static {p0, v0, v2}, LK/I;->p(LP3/f;LU3/s;Z)LP3/f;

    move-result-object p0

    goto :goto_b

    :cond_26
    new-instance p0, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not compute caller for function: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, LO3/A;->i()LU3/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (member = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    instance-of v0, p0, LO3/d;

    if-eqz v0, :cond_29

    check-cast p0, LO3/d;

    invoke-interface {v5}, LF3/d;->c()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, p0, LO3/d;->e:Ljava/util/List;

    invoke-static {v10}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-direct {v7, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const-string v1, "it"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_28
    new-instance p0, LP3/a;

    const/4 v9, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, LP3/a;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;IILjava/util/List;)V

    :goto_b
    return-object p0

    :cond_29
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_e
    check-cast v4, LO3/w;

    iget-object p0, v4, LO3/w;->b:LO3/z;

    invoke-interface {p0}, LF3/d;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, LO3/j0;->a(Ljava/lang/Class;)LZ3/f;

    move-result-object p0

    return-object p0

    :pswitch_f
    new-instance p0, LO3/t;

    check-cast v4, LO3/v;

    invoke-direct {p0, v4}, LO3/t;-><init>(LO3/v;)V

    return-object p0

    :pswitch_10
    check-cast v4, LO3/m;

    iget-object p0, v4, LO3/m;->e:LO3/p;

    invoke-virtual {p0}, LO3/p;->f()LU3/b;

    move-result-object v0

    instance-of v2, v0, LU3/s;

    if-nez v2, :cond_2a

    move-object v0, v3

    :cond_2a
    check-cast v0, LU3/s;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, LU3/s;->G()Z

    move-result v0

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0}, LO3/p;->c()LP3/f;

    move-result-object p0

    invoke-interface {p0}, LP3/f;->l()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2b

    move-object p0, v3

    :cond_2b
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_c

    :cond_2c
    move-object v0, v3

    :goto_c
    const-class v1, Lu3/d;

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "continuationType.actualTypeArguments"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/h;->r0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_2d

    move-object p0, v3

    :cond_2d
    check-cast p0, Ljava/lang/reflect/WildcardType;

    if-eqz p0, :cond_2e

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-static {p0}, Lr3/h;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/Type;

    :cond_2e
    if-eqz v3, :cond_2f

    goto :goto_d

    :cond_2f
    iget-object p0, v4, LO3/m;->e:LO3/p;

    invoke-virtual {p0}, LO3/p;->c()LP3/f;

    move-result-object p0

    invoke-interface {p0}, LP3/f;->k()Ljava/lang/reflect/Type;

    move-result-object v3

    :goto_d
    return-object v3

    :pswitch_11
    check-cast v4, LK4/j;

    iget-object p0, v4, LK4/j;->b:LE3/a;

    if-nez p0, :cond_30

    goto :goto_e

    :cond_30
    invoke-interface {p0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/util/List;

    :goto_e
    return-object v3

    :pswitch_12
    check-cast v4, LJ4/K;

    iget-object p0, v4, LJ4/K;->a:LU3/O;

    invoke-static {p0}, LJ4/c;->r(LU3/O;)LJ4/C;

    move-result-object p0

    return-object p0

    :pswitch_13
    new-instance p0, LJ4/f;

    check-cast v4, LJ4/h;

    invoke-virtual {v4}, LJ4/h;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, LJ4/f;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_14
    check-cast v4, LH4/w;

    iget-object p0, v4, LH4/w;->n:LF4/k;

    iget-object v0, p0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->e:LF4/b;

    iget-object v1, v4, LH4/w;->o:Ln4/W;

    iget-object p0, p0, LF4/k;->b:Lp4/f;

    invoke-interface {v0, v1, p0}, LF4/b;->m(Ln4/W;Lp4/f;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast v4, LH4/r;

    invoke-virtual {v4}, LH4/r;->n()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_31

    goto :goto_f

    :cond_31
    invoke-virtual {v4}, LH4/r;->m()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v4, LH4/r;->c:LH4/q;

    iget-object v1, v1, LH4/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0, p0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v3

    :goto_f
    return-object v3

    :pswitch_16
    check-cast v4, LF3/l;

    invoke-interface {v4}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast v4, Lw0/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v4, Lw0/i;->h:Ljava/lang/Object;

    check-cast v1, LH4/l;

    iget-object v2, v1, LH4/l;->q:LH4/i;

    invoke-virtual {v2}, LJ4/h;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ4/C;

    invoke-virtual {v4}, LJ4/C;->l0()LC4/o;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lw0/f;->w(LC4/q;LC4/f;I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/j;

    instance-of v6, v5, LX3/P;

    if-nez v6, :cond_34

    instance-of v6, v5, LX3/L;

    if-eqz v6, :cond_33

    :cond_34
    invoke-interface {v5}, LU3/j;->r()Ls4/f;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_35
    iget-object v0, v1, LH4/l;->h:Ln4/j;

    iget-object v2, v0, Ln4/j;->q:Ljava/util/List;

    const-string v3, "classProto.functionList"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v1, LH4/l;->o:LF4/k;

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/y;

    iget-object v4, v4, LF4/k;->b:Lp4/f;

    iget v3, v3, Ln4/y;->i:I

    invoke-static {v4, v3}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_36
    iget-object v0, v0, Ln4/j;->r:Ljava/util/List;

    const-string v1, "classProto.propertyList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/G;

    iget-object v2, v4, LF4/k;->b:Lp4/f;

    iget v1, v1, Ln4/G;->i:I

    invoke-static {v2, v1}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_37
    invoke-static {p0, p0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast v4, LG4/c;

    iget-object p0, v4, LG4/c;->l:Lw0/i;

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ls4/b;

    iget-object v3, v2, Ls4/b;->b:Ls4/c;

    invoke-virtual {v3}, Ls4/c;->e()Ls4/c;

    move-result-object v3

    invoke-virtual {v3}, Ls4/c;->d()Z

    move-result v3

    if-eqz v3, :cond_38

    sget-object v3, LF4/g;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_39
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/b;

    invoke-virtual {v1}, Ls4/b;->i()Ls4/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_3a
    return-object p0

    :pswitch_19
    check-cast v4, LC4/s;

    iget-object p0, v4, LC4/s;->b:LC4/o;

    invoke-static {p0, v3, v0}, Lw0/f;->w(LC4/q;LC4/f;I)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v4, p0}, LC4/s;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast v4, LC4/r;

    iget-object p0, v4, LC4/r;->b:LH4/l;

    invoke-static {p0}, Lv4/p;->g(LU3/e;)LX3/P;

    move-result-object p0

    iget-object v0, v4, LC4/r;->b:LH4/l;

    invoke-static {v0}, Lv4/p;->h(LU3/e;)LX3/P;

    move-result-object v0

    filled-new-array {p0, v0}, [LX3/P;

    move-result-object p0

    invoke-static {p0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast v4, LE3/a;

    invoke-interface {v4}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    instance-of v0, p0, LC4/k;

    if-eqz v0, :cond_3b

    check-cast p0, LC4/k;

    invoke-virtual {p0}, LC4/k;->h()LC4/o;

    move-result-object p0

    :cond_3b
    return-object p0

    :pswitch_1c
    check-cast v4, LC4/i;

    invoke-virtual {v4}, LC4/i;->h()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v4, LC4/i;->b:LX3/b;

    invoke-interface {v2}, LU3/g;->E()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v5

    const-string v6, "containingClass.typeConstructor.supertypes"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJ4/C;

    invoke-virtual {v7}, LJ4/C;->l0()LC4/o;

    move-result-object v7

    invoke-static {v7, v3, v0}, Lw0/f;->w(LC4/q;LC4/f;I)Ljava/util/Collection;

    move-result-object v7

    invoke-static {v6, v7}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_15

    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3d
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, LU3/b;

    if-eqz v6, :cond_3d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3e
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LU3/b;

    check-cast v6, LX3/p;

    invoke-virtual {v6}, LX3/p;->r()Ls4/f;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_40
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ls4/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, LU3/b;

    instance-of v7, v7, LU3/s;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_42

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_43
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    sget-object v5, Lv4/o;->c:Lv4/o;

    if-eqz v6, :cond_46

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_44
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, LU3/s;

    check-cast v10, LX3/p;

    invoke-virtual {v10}, LX3/p;->r()Ls4/f;

    move-result-object v10

    invoke-static {v10, v11}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_45
    :goto_1b
    move-object v8, v6

    goto :goto_1c

    :cond_46
    sget-object v6, Lr3/r;->d:Lr3/r;

    goto :goto_1b

    :goto_1c
    new-instance v10, LC4/h;

    invoke-direct {v10, v1, v4}, LC4/h;-><init>(Ljava/util/ArrayList;LC4/i;)V

    move-object v6, v11

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Lv4/o;->h(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;Lv4/p;)V

    goto :goto_19

    :cond_47
    invoke-static {v1}, LS4/m;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
