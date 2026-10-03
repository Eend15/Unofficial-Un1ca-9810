.class public abstract LU3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU3/n;

.field public static final b:LU3/n;

.field public static final c:LU3/n;

.field public static final d:LU3/n;

.field public static final e:LU3/n;

.field public static final f:LU3/n;

.field public static final g:LU3/n;

.field public static final h:LU3/n;

.field public static final i:LU3/n;

.field public static final j:LU3/n;

.field public static final k:LU3/M;

.field public static final l:LU3/M;

.field public static final m:LU3/M;

.field public static final n:LP4/i;

.field public static final o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, LU3/n;

    sget-object v1, LU3/V;->d:LU3/V;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v0, LU3/o;->a:LU3/n;

    new-instance v2, LU3/n;

    sget-object v3, LU3/W;->d:LU3/W;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v2, LU3/o;->b:LU3/n;

    new-instance v4, LU3/n;

    sget-object v5, LU3/X;->d:LU3/X;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v4, LU3/o;->c:LU3/n;

    new-instance v6, LU3/n;

    sget-object v7, LU3/S;->d:LU3/S;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v6, LU3/o;->d:LU3/n;

    new-instance v8, LU3/n;

    sget-object v9, LU3/Y;->d:LU3/Y;

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v8, LU3/o;->e:LU3/n;

    new-instance v10, LU3/n;

    sget-object v11, LU3/U;->d:LU3/U;

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v10, LU3/o;->f:LU3/n;

    new-instance v12, LU3/n;

    sget-object v13, LU3/Q;->d:LU3/Q;

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v12, LU3/o;->g:LU3/n;

    new-instance v14, LU3/n;

    sget-object v15, LU3/T;->d:LU3/T;

    move-object/from16 v16, v12

    const/4 v12, 0x7

    invoke-direct {v14, v15, v12}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v14, LU3/o;->h:LU3/n;

    new-instance v12, LU3/n;

    move-object/from16 v17, v14

    sget-object v14, LU3/Z;->d:LU3/Z;

    move-object/from16 v18, v15

    const/16 v15, 0x8

    invoke-direct {v12, v14, v15}, LU3/n;-><init>(LU3/b0;I)V

    sput-object v12, LU3/o;->i:LU3/n;

    filled-new-array {v0, v2, v6, v10}, [LU3/n;

    move-result-object v15

    invoke-static {v15}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v19, v12

    const/4 v12, 0x6

    invoke-direct {v15, v12}, Ljava/util/HashMap;-><init>(I)V

    const/4 v12, 0x0

    move-object/from16 v20, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    sput-object v8, LU3/o;->j:LU3/n;

    new-instance v12, LU3/M;

    const/4 v14, 0x2

    invoke-direct {v12, v14}, LU3/M;-><init>(I)V

    sput-object v12, LU3/o;->k:LU3/M;

    new-instance v12, LU3/M;

    const/4 v14, 0x3

    invoke-direct {v12, v14}, LU3/M;-><init>(I)V

    sput-object v12, LU3/o;->l:LU3/M;

    new-instance v12, LU3/M;

    const/4 v14, 0x4

    invoke-direct {v12, v14}, LU3/M;-><init>(I)V

    sput-object v12, LU3/o;->m:LU3/M;

    const/4 v12, 0x0

    :try_start_0
    new-array v12, v12, [LP4/i;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LP4/i;

    goto :goto_0

    :cond_0
    sget-object v12, LP4/i;->a:LP4/i;

    :goto_0
    sput-object v12, LU3/o;->n:LP4/i;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, LU3/o;->o:Ljava/util/HashMap;

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic a(I)V
    .locals 8

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p0, v6, :cond_2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    const/4 v2, 0x7

    if-eq p0, v2, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v2, "what"

    aput-object v2, v4, v7

    goto :goto_2

    :pswitch_0
    aput-object v5, v4, v7

    goto :goto_2

    :pswitch_1
    const-string v2, "visibility"

    aput-object v2, v4, v7

    goto :goto_2

    :pswitch_2
    const-string v2, "second"

    aput-object v2, v4, v7

    goto :goto_2

    :pswitch_3
    const-string v2, "first"

    aput-object v2, v4, v7

    goto :goto_2

    :cond_2
    :pswitch_4
    const-string v2, "from"

    aput-object v2, v4, v7

    :goto_2
    const-string v2, "toDescriptorVisibility"

    if-eq p0, v0, :cond_3

    aput-object v5, v4, v6

    goto :goto_3

    :cond_3
    aput-object v2, v4, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v2, "isVisible"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_5
    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_6
    const-string v2, "isPrivate"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_7
    const-string v2, "compare"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_8
    const-string v2, "compareLocal"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_9
    const-string v2, "findInvisibleMember"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v2, "inSameFile"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_b
    const-string v2, "isVisibleWithAnyReceiver"

    aput-object v2, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v2, "isVisibleIgnoringReceiver"

    aput-object v2, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method

.method public static b(LU3/n;LU3/n;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    iget-object p0, p0, LU3/n;->a:LU3/b0;

    iget-object p1, p1, LU3/n;->a:LU3/b0;

    invoke-virtual {p0, p1}, LU3/b0;->a(LU3/b0;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, p0}, LU3/b0;->a(LU3/b0;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    const/16 p0, 0xd

    invoke-static {p0}, LU3/o;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0xc

    invoke-static {p0}, LU3/o;->a(I)V

    throw v0
.end method

.method public static c(LU3/M;LU3/b;LU3/j;)LU3/m;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {p1}, LU3/j;->a()LU3/j;

    move-result-object v1

    check-cast v1, LU3/m;

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, LU3/m;->b()LU3/n;

    move-result-object v2

    sget-object v3, LU3/o;->f:LU3/n;

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, LU3/m;->b()LU3/n;

    move-result-object v2

    invoke-virtual {v2, p0, v1, p2}, LU3/n;->a(LU3/M;LU3/m;LU3/j;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    const-class v3, LU3/m;

    invoke-static {v1, v3, v2}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object v1

    check-cast v1, LU3/m;

    goto :goto_0

    :cond_1
    instance-of v1, p1, LX3/S;

    if-eqz v1, :cond_2

    check-cast p1, LX3/S;

    check-cast p1, LX3/T;

    iget-object p1, p1, LX3/T;->H:LU3/d;

    invoke-static {p0, p1, p2}, LU3/o;->c(LU3/M;LU3/b;LU3/j;)LU3/m;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    const/16 p0, 0x9

    invoke-static {p0}, LU3/o;->a(I)V

    throw v0

    :cond_4
    const/16 p0, 0x8

    invoke-static {p0}, LU3/o;->a(I)V

    throw v0
.end method

.method public static d(LU3/m;LU3/j;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lv4/f;->f(LU3/j;)LU3/M;

    move-result-object p1

    sget-object v0, LU3/M;->e:LU3/M;

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Lv4/f;->f(LU3/j;)LU3/M;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x7

    invoke-static {p0}, LU3/o;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(LU3/n;)Z
    .locals 1

    if-eqz p0, :cond_2

    sget-object v0, LU3/o;->a:LU3/n;

    if-eq p0, v0, :cond_1

    sget-object v0, LU3/o;->b:LU3/n;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    const/16 p0, 0xe

    invoke-static {p0}, LU3/o;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(LU3/b0;)LU3/n;
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, LU3/o;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inapplicable visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0xf

    invoke-static {p0}, LU3/o;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
