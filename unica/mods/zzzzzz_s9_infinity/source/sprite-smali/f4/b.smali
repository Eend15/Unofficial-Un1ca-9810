.class public final Lf4/b;
.super LX3/l;
.source "SourceFile"

# interfaces
.implements Lf4/a;


# instance fields
.field public H:Ljava/lang/Boolean;

.field public I:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(LU3/e;Lf4/b;LV3/h;ZILU3/L;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    invoke-direct/range {p0 .. p6}, LX3/l;-><init>(LU3/e;LU3/i;LV3/h;ZILU3/L;)V

    iput-object v0, p0, Lf4/b;->H:Ljava/lang/Boolean;

    iput-object v0, p0, Lf4/b;->I:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0
.end method

.method public static X0(LU3/e;LV3/h;ZLZ3/g;)Lf4/b;
    .locals 8

    if-eqz p0, :cond_0

    new-instance v7, Lf4/b;

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lf4/b;-><init>(LU3/e;Lf4/b;LV3/h;ZILU3/L;)V

    return-object v7

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, Lf4/b;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic z0(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "enhancedValueParametersData"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "createSubstitutedCopy"

    const-string v7, "enhance"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v7, v4, v8

    goto :goto_3

    :cond_3
    aput-object v6, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_9
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_b
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final D(LJ4/C;Ljava/util/ArrayList;LJ4/C;Lq3/f;)Lf4/a;
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, LX3/l;->S0()LU3/e;

    move-result-object v4

    invoke-virtual {p0}, LX3/w;->f0()I

    move-result v6

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object v7

    invoke-virtual {p0}, LX3/q;->i()LU3/L;

    move-result-object v8

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lf4/b;->Y0(LU3/j;LU3/s;ILV3/h;LU3/L;)Lf4/b;

    move-result-object v11

    if-nez v0, :cond_0

    :goto_0
    move-object v0, p0

    move-object v4, v2

    goto :goto_1

    :cond_0
    sget-object v2, LV3/g;->a:LV3/f;

    invoke-static {v11, p1, v2}, Lv4/p;->i(LU3/a;LJ4/C;LV3/h;)LX3/O;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v5, v0, LX3/w;->l:LU3/J;

    invoke-virtual {p0}, LX3/w;->q()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v2

    move-object v3, p2

    invoke-static {p2, v2, v11}, Le0/a;->w(Ljava/util/List;Ljava/util/List;LU3/s;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p0}, LX3/w;->e()I

    move-result v9

    invoke-virtual {p0}, LX3/w;->b()LU3/n;

    move-result-object v10

    move-object v3, v11

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, LX3/w;->M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V

    if-eqz v1, :cond_2

    iget-object v0, v1, Lq3/f;->d:Ljava/lang/Object;

    check-cast v0, Lf4/e;

    iget-object v2, v11, LX3/w;->E:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v11, LX3/w;->E:Ljava/util/Map;

    :cond_1
    iget-object v2, v11, LX3/w;->E:Ljava/util/Map;

    iget-object v1, v1, Lq3/f;->e:Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v11

    :cond_3
    const/16 v0, 0x11

    invoke-static {v0}, Lf4/b;->z0(I)V

    throw v2
.end method

.method public final bridge synthetic J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lf4/b;->Y0(LU3/j;LU3/s;ILV3/h;LU3/L;)Lf4/b;

    move-result-object p0

    return-object p0
.end method

.method public final O0(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lf4/b;->H:Ljava/lang/Boolean;

    return-void
.end method

.method public final P0(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lf4/b;->I:Ljava/lang/Boolean;

    return-void
.end method

.method public final bridge synthetic R0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/l;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lf4/b;->Y0(LU3/j;LU3/s;ILV3/h;LU3/L;)Lf4/b;

    move-result-object p0

    return-object p0
.end method

.method public final Y0(LU3/j;LU3/s;ILV3/h;LU3/L;)Lf4/b;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nnewOwner: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nkind: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, LB/a;->B(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, LU3/e;

    move-object v2, p2

    check-cast v2, Lf4/b;

    if-eqz p3, :cond_2

    new-instance p1, Lf4/b;

    iget-boolean v4, p0, LX3/l;->F:Z

    move-object v0, p1

    move-object v3, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lf4/b;-><init>(LU3/e;Lf4/b;LV3/h;ZILU3/L;)V

    iget-object p2, p0, Lf4/b;->H:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lf4/b;->H:Ljava/lang/Boolean;

    iget-object p0, p0, Lf4/b;->I:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lf4/b;->I:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    const/16 p0, 0xd

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_3
    const/16 p0, 0xa

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_4
    const/16 p0, 0x9

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0

    :cond_6
    const/4 p0, 0x7

    invoke-static {p0}, Lf4/b;->z0(I)V

    throw v0
.end method

.method public final j0()Z
    .locals 0

    iget-object p0, p0, Lf4/b;->I:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
