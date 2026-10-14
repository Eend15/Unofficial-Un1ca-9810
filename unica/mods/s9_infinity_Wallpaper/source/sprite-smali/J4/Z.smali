.class public abstract LJ4/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ4/p;

.field public static final b:LJ4/p;

.field public static final c:LJ4/Y;

.field public static final d:LJ4/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, LJ4/v;->b:LJ4/s;

    const-string v1, "DONT_CARE"

    invoke-static {v0, v1}, LJ4/v;->e(LJ4/s;Ljava/lang/String;)LJ4/r;

    move-result-object v3

    new-instance v0, LJ4/p;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v4

    const/16 v7, 0x1c

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LJ4/p;-><init>(LJ4/M;LC4/o;Ljava/util/List;ZI)V

    sput-object v0, LJ4/Z;->a:LJ4/p;

    const-string v0, "Cannot be inferred"

    invoke-static {v0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v0

    sput-object v0, LJ4/Z;->b:LJ4/p;

    new-instance v0, LJ4/Y;

    const-string v1, "NO_EXPECTED_TYPE"

    invoke-direct {v0, v1}, LJ4/Y;-><init>(Ljava/lang/String;)V

    sput-object v0, LJ4/Z;->c:LJ4/Y;

    new-instance v0, LJ4/Y;

    const-string v1, "UNIT_EXPECTED_TYPE"

    invoke-direct {v0, v1}, LJ4/Y;-><init>(Ljava/lang/String;)V

    sput-object v0, LJ4/Z;->d:LJ4/Y;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 27

    move/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x36

    const/16 v4, 0x31

    const/16 v5, 0x23

    const/16 v6, 0x1a

    const/16 v7, 0x13

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v14, 0x2

    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_1

    const/4 v15, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v15, v14

    :goto_1
    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    const/16 v17, 0x0

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    const-string v18, "type"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_3
    const-string v18, "literalTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_4
    const-string v18, "expectedType"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_5
    const-string v18, "supertypes"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_6
    const-string v18, "numberValueTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_7
    const-string v18, "parameterDescriptor"

    aput-object v18, v15, v17

    goto/16 :goto_2

    :pswitch_8
    const-string v18, "shouldStopAt"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_9
    const-string v18, "isSpecialType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_a
    const-string v18, "specialType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_b
    const-string v18, "typeParameterConstructors"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_c
    const-string v18, "typeParameters"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_d
    const-string v18, "b"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_e
    const-string v18, "a"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_f
    const-string v18, "projections"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_10
    const-string v18, "typeArguments"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_11
    const-string v18, "clazz"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_12
    const-string v18, "result"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_13
    const-string v18, "substitutor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_14
    const-string v18, "superType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_15
    const-string v18, "subType"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_16
    const-string v18, "parameters"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_17
    const-string v18, "refinedTypeFactory"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_18
    const-string v18, "unsubstitutedMemberScope"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_19
    const-string v18, "typeConstructor"

    aput-object v18, v15, v17

    goto :goto_2

    :pswitch_1a
    aput-object v16, v15, v17

    :goto_2
    const-string v17, "makeNullableAsSpecified"

    const-string v18, "makeNullableIfNeeded"

    const-string v19, "makeUnsubstitutedType"

    const-string v20, "getDefaultTypeProjections"

    const-string v21, "getImmediateSupertypes"

    const-string v22, "getAllSupertypes"

    const-string v23, "substituteProjectionsForParameters"

    const-string v24, "getDefaultPrimitiveNumberType"

    const-string v25, "getPrimitiveNumberType"

    const/16 v26, 0x1

    if-eq v0, v12, :cond_a

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_8

    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_3

    aput-object v16, v15, v26

    goto :goto_3

    :cond_2
    :pswitch_1b
    aput-object v25, v15, v26

    goto :goto_3

    :cond_3
    aput-object v24, v15, v26

    goto :goto_3

    :cond_4
    aput-object v23, v15, v26

    goto :goto_3

    :cond_5
    aput-object v22, v15, v26

    goto :goto_3

    :cond_6
    aput-object v21, v15, v26

    goto :goto_3

    :cond_7
    aput-object v20, v15, v26

    goto :goto_3

    :cond_8
    aput-object v19, v15, v26

    goto :goto_3

    :cond_9
    aput-object v18, v15, v26

    goto :goto_3

    :cond_a
    aput-object v17, v15, v26

    :goto_3
    packed-switch v0, :pswitch_data_4

    const-string v16, "noExpectedType"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1c
    const-string v16, "getTypeParameterDescriptorOrNull"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1d
    const-string v16, "isNonReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1e
    const-string v16, "isReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_1f
    const-string v16, "isTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_20
    aput-object v25, v15, v14

    goto/16 :goto_4

    :pswitch_21
    const-string v16, "findByFqName"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_22
    aput-object v24, v15, v14

    goto/16 :goto_4

    :pswitch_23
    const-string v16, "makeStarProjection"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_24
    const-string v16, "containsStoppingAt"

    aput-object v16, v15, v14

    goto/16 :goto_4

    :pswitch_25
    const-string v16, "contains"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_26
    const-string v16, "dependsOnTypeConstructors"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_27
    const-string v16, "dependsOnTypeParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_28
    const-string v16, "equalTypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_29
    aput-object v23, v15, v14

    goto :goto_4

    :pswitch_2a
    const-string v16, "substituteParameters"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2b
    const-string v16, "getClassDescriptor"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2c
    const-string v16, "hasNullableSuperType"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2d
    const-string v16, "acceptsNullable"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2e
    const-string v16, "isNullableType"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_2f
    aput-object v22, v15, v14

    goto :goto_4

    :pswitch_30
    const-string v16, "collectAllSupertypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_31
    const-string v16, "createSubstitutedSupertype"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_32
    aput-object v21, v15, v14

    goto :goto_4

    :pswitch_33
    aput-object v20, v15, v14

    goto :goto_4

    :pswitch_34
    aput-object v19, v15, v14

    goto :goto_4

    :pswitch_35
    const-string v16, "canHaveSubtypes"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_36
    aput-object v18, v15, v14

    goto :goto_4

    :pswitch_37
    aput-object v17, v15, v14

    goto :goto_4

    :pswitch_38
    const-string v16, "makeNotNullable"

    aput-object v16, v15, v14

    goto :goto_4

    :pswitch_39
    const-string v16, "makeNullable"

    aput-object v16, v15, v14

    :goto_4
    :pswitch_3a
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_b

    if-eq v0, v11, :cond_b

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_b

    if-eq v0, v8, :cond_b

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :pswitch_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_16
        :pswitch_1a
        :pswitch_2
        :pswitch_1a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_2
        :pswitch_12
        :pswitch_2
        :pswitch_1a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_1a
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_1a
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1a
        :pswitch_3
        :pswitch_4
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_3a
        :pswitch_36
        :pswitch_3a
        :pswitch_3a
        :pswitch_36
        :pswitch_3a
        :pswitch_35
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_33
        :pswitch_3a
        :pswitch_32
        :pswitch_3a
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_3a
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_3a
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_25
        :pswitch_23
        :pswitch_22
        :pswitch_3a
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_3a
        :pswitch_20
        :pswitch_20
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x39
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public static b(LJ4/C;)Z
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, LJ4/c;->j(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    check-cast p0, LJ4/w;

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-static {p0}, LJ4/Z;->b(LJ4/C;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, 0x1c

    invoke-static {p0}, LJ4/Z;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v1

    invoke-static {p0}, LJ4/Z;->l(LJ4/C;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, LS4/j;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-interface {p1, v1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    if-eqz p2, :cond_4

    instance-of v2, v1, Li4/g;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    if-nez p3, :cond_5

    new-instance p3, LS4/j;

    invoke-direct {p3}, LS4/j;-><init>()V

    :cond_5
    invoke-virtual {p3, p0}, LS4/j;->add(Ljava/lang/Object;)Z

    instance-of v2, v1, LJ4/w;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, LJ4/w;

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_8

    iget-object v4, v2, LJ4/w;->e:LJ4/G;

    invoke-static {v4, p1, p2, p3}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v2, v2, LJ4/w;->f:LJ4/G;

    invoke-static {v2, p1, p2, p3}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    return v3

    :cond_8
    instance-of v2, v1, LJ4/l;

    if-eqz v2, :cond_9

    check-cast v1, LJ4/l;

    iget-object v1, v1, LJ4/l;->e:LJ4/G;

    invoke-static {v1, p1, p2, p3}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    instance-of v2, v1, LJ4/B;

    if-eqz v2, :cond_c

    check-cast v1, LJ4/B;

    iget-object p0, v1, LJ4/B;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    invoke-static {v1, p1, p2, p3}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_b
    return v0

    :cond_c
    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/P;

    invoke-virtual {v1}, LJ4/P;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_1

    :cond_e
    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v3

    :cond_f
    return v0
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/O;

    new-instance v2, LJ4/Q;

    invoke-interface {v1}, LU3/g;->n()LJ4/G;

    move-result-object v1

    invoke-direct {v2, v1}, LJ4/Q;-><init>(LJ4/C;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x10

    invoke-static {p0}, LJ4/Z;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(LJ4/C;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, LJ4/c;->j(LJ4/C;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v1

    check-cast v1, LJ4/w;

    iget-object v1, v1, LJ4/w;->f:LJ4/G;

    invoke-static {v1}, LJ4/Z;->e(LJ4/C;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v1

    instance-of v1, v1, LJ4/l;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, LJ4/Z;->f(LJ4/C;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    instance-of v1, v1, LU3/e;

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    invoke-static {p0}, LJ4/X;->d(LJ4/C;)LJ4/X;

    move-result-object v1

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ4/C;

    if-eqz v6, :cond_7

    invoke-virtual {v1, v2, v6}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v7

    invoke-static {v6, v7}, LJ4/Z;->h(LJ4/C;Z)LJ4/C;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const/16 p0, 0x15

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-static {v0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    return v2

    :cond_a
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    instance-of v0, p0, LJ4/B;

    if-eqz v0, :cond_c

    check-cast p0, LJ4/B;

    iget-object p0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-static {v0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_c
    return v3

    :cond_d
    const/16 p0, 0x1b

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0
.end method

.method public static f(LJ4/C;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    instance-of v1, v1, LU3/O;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    check-cast v0, LU3/O;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_2
    const/16 p0, 0x3d

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0
.end method

.method public static g(LJ4/C;Z)LJ4/b0;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    invoke-virtual {p0, p1}, LJ4/b0;->C0(Z)LJ4/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0
.end method

.method public static h(LJ4/C;Z)LJ4/C;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/16 p0, 0x8

    invoke-static {p0}, LJ4/Z;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(LJ4/G;Z)LJ4/G;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x5

    invoke-static {p0}, LJ4/Z;->a(I)V

    throw v0
.end method

.method public static j(LU3/O;)LJ4/K;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, LJ4/K;

    invoke-direct {v0, p0}, LJ4/K;-><init>(LU3/O;)V

    return-object v0

    :cond_0
    const/16 p0, 0x2f

    invoke-static {p0}, LJ4/Z;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static k(LU3/g;LC4/o;LE3/b;)LJ4/G;
    .locals 6

    invoke-static {p0}, LJ4/v;->g(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsubstituted type for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, LU3/g;->E()LJ4/M;

    move-result-object v1

    const/4 p0, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {v1}, LJ4/M;->g()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LJ4/Z;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v0, LV3/g;->a:LV3/f;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, LJ4/d;->r(LV3/h;LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)LJ4/G;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p1, 0xd

    invoke-static {p1}, LJ4/Z;->a(I)V

    throw p0

    :cond_2
    const/16 p1, 0xc

    invoke-static {p1}, LJ4/Z;->a(I)V

    throw p0
.end method

.method public static l(LJ4/C;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v1, LJ4/Z;->c:LJ4/Y;

    if-eq p0, v1, :cond_0

    sget-object v1, LJ4/Z;->d:LJ4/Y;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-static {v0}, LJ4/Z;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
