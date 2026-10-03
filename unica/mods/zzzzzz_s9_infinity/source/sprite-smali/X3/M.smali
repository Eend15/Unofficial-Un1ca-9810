.class public final LX3/M;
.super LX3/J;
.source "SourceFile"

# interfaces
.implements LU3/I;


# instance fields
.field public p:LJ4/C;

.field public final q:LX3/M;


# direct methods
.method public constructor <init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/M;LU3/L;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p8, :cond_2

    if-eqz p10, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<get-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v6

    move-object v1, p0

    move v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, LX3/J;-><init>(ILU3/n;LX3/L;LV3/h;Ls4/f;ZZZILU3/L;)V

    if-eqz p9, :cond_0

    move-object v1, p0

    move-object/from16 v0, p9

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v0

    :goto_0
    iput-object v0, v1, LX3/M;->q:LX3/M;

    return-void

    :cond_1
    const/4 v1, 0x5

    invoke-static {v1}, LX3/M;->z0(I)V

    throw v0

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, LX3/M;->z0(I)V

    throw v0

    :cond_3
    const/4 v1, 0x3

    invoke-static {v1}, LX3/M;->z0(I)V

    throw v0

    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, LX3/M;->z0(I)V

    throw v0

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, LX3/M;->z0(I)V

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "correspondingProperty"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "modality"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const/4 v7, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v7

    goto :goto_3

    :cond_2
    const-string v6, "getOriginal"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_3
    const-string v6, "getValueParameters"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_4
    const-string v6, "getOverriddenDescriptors"

    aput-object v6, v5, v7

    :goto_3
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_5
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic G0()LU3/k;
    .locals 0

    invoke-virtual {p0}, LX3/M;->J0()LX3/M;

    move-result-object p0

    return-object p0
.end method

.method public final J0()LX3/M;
    .locals 0

    iget-object p0, p0, LX3/M;->q:LX3/M;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, LX3/M;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K0(LJ4/C;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, LX3/J;->H0()LX3/L;

    move-result-object p1

    check-cast p1, LX3/X;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p1

    :cond_0
    iput-object p1, p0, LX3/M;->p:LJ4/C;

    return-void
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->B(LX3/M;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, LX3/M;->J0()LX3/M;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/b;
    .locals 0

    .line 2
    invoke-virtual {p0}, LX3/M;->J0()LX3/M;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/j;
    .locals 0

    .line 3
    invoke-virtual {p0}, LX3/M;->J0()LX3/M;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/s;
    .locals 0

    .line 4
    invoke-virtual {p0}, LX3/M;->J0()LX3/M;

    move-result-object p0

    return-object p0
.end method

.method public final k()LJ4/C;
    .locals 0

    iget-object p0, p0, LX3/M;->p:LJ4/C;

    return-object p0
.end method

.method public final m()Ljava/util/Collection;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LX3/J;->I0(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final n0()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LX3/M;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method
