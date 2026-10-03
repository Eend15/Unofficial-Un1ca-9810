.class public abstract LX3/J;
.super LX3/q;
.source "SourceFile"

# interfaces
.implements LU3/I;


# instance fields
.field public h:Z

.field public final i:Z

.field public final j:I

.field public final k:LX3/L;

.field public final l:Z

.field public final m:I

.field public n:LU3/n;

.field public o:LU3/s;


# direct methods
.method public constructor <init>(ILU3/n;LX3/L;LV3/h;Ls4/f;ZZZILU3/L;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p10, :cond_0

    invoke-virtual {p3}, LX3/q;->g()LU3/j;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5, p10}, LX3/q;-><init>(LU3/j;LV3/h;Ls4/f;LU3/L;)V

    iput-object v0, p0, LX3/J;->o:LU3/s;

    iput p1, p0, LX3/J;->j:I

    iput-object p2, p0, LX3/J;->n:LU3/n;

    iput-object p3, p0, LX3/J;->k:LX3/L;

    iput-boolean p6, p0, LX3/J;->h:Z

    iput-boolean p7, p0, LX3/J;->i:Z

    iput-boolean p8, p0, LX3/J;->l:Z

    iput p9, p0, LX3/J;->m:I

    return-void

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, LX3/J;->z0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, LX3/J;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, LX3/J;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, LX3/J;->z0(I)V

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_d
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_e
    const-string v3, "getCorrespondingProperty"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_f
    const-string v3, "getCorrespondingVariable"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_10
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_11
    const-string v3, "getModality"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_12
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_13
    const-string v3, "getKind"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_14
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_15
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_13
        :pswitch_c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x6
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public final A()LU3/s;
    .locals 0

    iget-object p0, p0, LX3/J;->o:LU3/s;

    return-object p0
.end method

.method public final B()Z
    .locals 0

    iget-boolean p0, p0, LX3/J;->i:Z

    return p0
.end method

.method public final C()LU3/J;
    .locals 0

    invoke-virtual {p0}, LX3/J;->H0()LX3/L;

    move-result-object p0

    iget-object p0, p0, LX3/L;->u:LU3/J;

    return-object p0
.end method

.method public final F()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H0()LX3/L;
    .locals 0

    iget-object p0, p0, LX3/J;->k:LX3/L;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xc

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final I0(Z)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, LX3/J;->H0()LX3/L;

    move-result-object p0

    invoke-virtual {p0}, LX3/L;->m()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/L;

    if-eqz p1, :cond_1

    iget-object v1, v1, LX3/L;->x:LX3/M;

    goto :goto_1

    :cond_1
    iget-object v1, v1, LX3/L;->y:LX3/N;

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final J(Ljava/util/Collection;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final M()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Y()LU3/J;
    .locals 0

    invoke-virtual {p0}, LX3/J;->H0()LX3/L;

    move-result-object p0

    iget-object p0, p0, LX3/L;->v:LX3/O;

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 0

    iget-object p0, p0, LX3/J;->n:LU3/n;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xa

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, LX3/J;->j:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, LX3/J;->l:Z

    return p0
.end method

.method public final f0()I
    .locals 0

    iget p0, p0, LX3/J;->m:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LX3/J;->l(LJ4/X;)LU3/s;

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(LJ4/X;)LU3/s;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x7

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final o0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, LX3/J;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final x(LU3/e;ILU3/n;)LU3/b;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Accessors must be copied by the corresponding property"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
