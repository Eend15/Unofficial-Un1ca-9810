.class public LX3/l;
.super LX3/w;
.source "SourceFile"

# interfaces
.implements LU3/d;


# static fields
.field public static final G:Ls4/f;


# instance fields
.field public final F:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<init>"

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LX3/l;->G:Ls4/f;

    return-void
.end method

.method public constructor <init>(LU3/e;LU3/i;LV3/h;ZILU3/L;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    sget-object v7, LX3/l;->G:Ls4/f;

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, LX3/w;-><init>(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)V

    iput-boolean p4, p0, LX3/l;->F:Z

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 8

    const/16 v0, 0x19

    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "overriddenDescriptors"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "originalSubstitutor"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "typeParameterDescriptors"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "visibility"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_9
    const-string v7, "unsubstitutedValueParameters"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_a
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_b
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_c
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const/4 v6, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_d
    const-string v5, "getOriginal"

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_e
    const-string v5, "getConstructedClass"

    aput-object v5, v4, v6

    goto :goto_3

    :pswitch_f
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v6

    goto :goto_3

    :cond_2
    const-string v5, "copy"

    aput-object v5, v4, v6

    goto :goto_3

    :cond_3
    const-string v5, "getOverriddenDescriptors"

    aput-object v5, v4, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_10
    const-string v5, "createSubstitutedCopy"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_11
    const-string v5, "setOverriddenDescriptors"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_12
    const-string v5, "substitute"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_13
    const-string v5, "initialize"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_14
    const-string v5, "createSynthesized"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_15
    const-string v5, "create"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_16
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :pswitch_17
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_12
        :pswitch_16
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic G0()LU3/k;
    .locals 0

    invoke-virtual {p0}, LX3/l;->T0()LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final J(Ljava/util/Collection;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x14

    invoke-static {p0}, LX3/l;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 0

    invoke-virtual/range {p0 .. p6}, LX3/l;->R0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/l;

    move-result-object p0

    return-object p0
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->o(LX3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public R0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/l;
    .locals 7

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    if-eqz p5, :cond_2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nnewOwner: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nkind: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LB/a;->B(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    new-instance p1, LX3/l;

    move-object v1, p2

    check-cast v1, LU3/e;

    iget-boolean v4, p0, LX3/l;->F:Z

    move-object v0, p1

    move-object v2, p0

    move-object v3, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LX3/l;-><init>(LU3/e;LU3/i;LV3/h;ZILU3/L;)V

    return-object p1

    :cond_2
    const/16 p0, 0x17

    invoke-static {p0}, LX3/l;->z0(I)V

    throw p3

    :cond_3
    const/16 p0, 0x16

    invoke-static {p0}, LX3/l;->z0(I)V

    throw p3

    :cond_4
    const/16 p0, 0x15

    invoke-static {p0}, LX3/l;->z0(I)V

    throw p3
.end method

.method public final S0()LU3/e;
    .locals 0

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    check-cast p0, LU3/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, LX3/l;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T0()LU3/d;
    .locals 0

    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LU3/d;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, LX3/l;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final U0(Ljava/util/List;LU3/n;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, LX3/l;->S0()LU3/e;

    move-result-object v0

    invoke-interface {v0}, LU3/e;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LX3/l;->V0(Ljava/util/List;LU3/n;Ljava/util/List;)V

    return-void

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0

    :cond_1
    const/16 p0, 0xd

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0
.end method

.method public final V()LU3/e;
    .locals 0

    invoke-virtual {p0}, LX3/l;->S0()LU3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, LX3/l;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final V0(Ljava/util/List;LU3/n;Ljava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, LX3/l;->S0()LU3/e;

    move-result-object v1

    invoke-interface {v1}, LU3/h;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, LU3/j;->g()LU3/j;

    move-result-object v1

    instance-of v2, v1, LU3/e;

    if-eqz v2, :cond_0

    check-cast v1, LU3/e;

    invoke-interface {v1}, LU3/e;->y0()LU3/J;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, LX3/w;->M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V

    return-void

    :cond_1
    const/16 p0, 0xc

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0

    :cond_2
    const/16 p0, 0xb

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0

    :cond_3
    const/16 p0, 0xa

    invoke-static {p0}, LX3/l;->z0(I)V

    throw v0
.end method

.method public final W0(LJ4/X;)LU3/d;
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, LX3/w;->l(LJ4/X;)LU3/s;

    move-result-object p0

    check-cast p0, LU3/d;

    return-object p0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, LX3/l;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic a()LU3/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, LX3/l;->T0()LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/b;
    .locals 0

    .line 2
    invoke-virtual {p0}, LX3/l;->T0()LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/j;
    .locals 0

    .line 3
    invoke-virtual {p0}, LX3/l;->T0()LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/s;
    .locals 0

    .line 4
    invoke-virtual {p0}, LX3/l;->T0()LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic g()LU3/h;
    .locals 0

    .line 1
    invoke-virtual {p0}, LX3/l;->S0()LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic g()LU3/j;
    .locals 0

    .line 2
    invoke-virtual {p0}, LX3/l;->S0()LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LX3/l;->W0(LJ4/X;)LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LX3/l;->W0(LJ4/X;)LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/util/Collection;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LX3/l;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final x(LU3/e;ILU3/n;)LU3/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LX3/w;->H0(LU3/e;ILU3/n;)LU3/s;

    move-result-object p0

    check-cast p0, LU3/d;

    return-object p0
.end method
