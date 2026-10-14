.class public abstract LJ4/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ4/q;

.field public static final b:LJ4/s;

.field public static final c:LJ4/p;

.field public static final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, LJ4/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ4/v;->a:LJ4/q;

    new-instance v2, LJ4/s;

    const-string v0, "<ERROR CLASS>"

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-direct {v2, v0}, LJ4/s;-><init>(Ls4/f;)V

    sput-object v2, LJ4/v;->b:LJ4/s;

    const-string v0, "<LOOP IN SUPERTYPES>"

    invoke-static {v0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v0

    sput-object v0, LJ4/v;->c:LJ4/p;

    const-string v0, "<ERROR PROPERTY TYPE>"

    invoke-static {v0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v0

    sget-object v4, LV3/g;->a:LV3/f;

    sget-object v6, LU3/o;->e:LU3/n;

    const-string v1, "<ERROR PROPERTY>"

    invoke-static {v1}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v8

    sget-object v10, LU3/L;->a:LU3/M;

    const/4 v15, 0x0

    if-eqz v6, :cond_0

    new-instance v14, LX3/L;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v14

    move-object/from16 v18, v14

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, LX3/L;-><init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;ILU3/L;ZZZZZ)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v3, v18

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v1, v2, v2}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LJ4/v;->d:Ljava/util/Set;

    return-void

    :cond_0
    move-object v2, v15

    const/16 v0, 0xa

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v2
.end method

.method public static synthetic a(I)V
    .locals 9

    const/16 v0, 0x13

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "function"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    const-string v8, "typeParameterDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "errorClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "presentableName"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "arguments"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "typeConstructor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "debugName"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "ownerScope"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "debugMessage"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createErrorFunction"

    const/4 v8, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v8

    goto :goto_3

    :cond_2
    const-string v6, "getErrorModule"

    aput-object v6, v5, v8

    goto :goto_3

    :cond_3
    aput-object v7, v5, v8

    goto :goto_3

    :cond_4
    const-string v6, "createErrorProperty"

    aput-object v6, v5, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "containsErrorTypeInParameters"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_9
    const-string v6, "createUninferredParameterType"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_a
    const-string v6, "createErrorTypeConstructorWithCustomDebugName"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createErrorTypeConstructor"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "createUnresolvedType"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "createErrorTypeWithArguments"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "createErrorTypeWithCustomConstructor"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "createErrorTypeWithCustomDebugName"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "createErrorType"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_11
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_12
    const-string v6, "createErrorScope"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_13
    const-string v6, "createErrorClass"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_14
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Z)LC4/o;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, LJ4/u;

    invoke-direct {p1, p0}, LJ4/u;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, LJ4/t;

    invoke-direct {p1, p0}, LJ4/t;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, LJ4/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ljava/lang/String;)LJ4/p;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, LJ4/v;->f(Ljava/lang/String;Ljava/util/List;)LJ4/p;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LJ4/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Ljava/lang/String;)LJ4/r;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "[ERROR : "

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, LJ4/v;->b:LJ4/s;

    invoke-static {v0, p0}, LJ4/v;->e(LJ4/s;Ljava/lang/String;)LJ4/r;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, LJ4/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(LJ4/s;Ljava/lang/String;)LJ4/r;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, LJ4/r;

    invoke-direct {v0, p0, p1}, LJ4/r;-><init>(LJ4/s;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, LJ4/v;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x11

    invoke-static {p0}, LJ4/v;->a(I)V

    throw v0
.end method

.method public static f(Ljava/lang/String;Ljava/util/List;)LJ4/p;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, LJ4/p;

    invoke-static {p0}, LJ4/v;->d(Ljava/lang/String;)LJ4/r;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {p0, v1}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, LJ4/p;-><init>(LJ4/M;LC4/o;Ljava/util/List;ZI)V

    return-object v0

    :cond_0
    const/16 p0, 0xc

    invoke-static {p0}, LJ4/v;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xb

    invoke-static {p0}, LJ4/v;->a(I)V

    throw v0
.end method

.method public static g(LU3/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, LJ4/s;

    if-nez v1, :cond_1

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v1

    instance-of v1, v1, LJ4/s;

    if-nez v1, :cond_1

    sget-object v1, LJ4/v;->a:LJ4/q;

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
