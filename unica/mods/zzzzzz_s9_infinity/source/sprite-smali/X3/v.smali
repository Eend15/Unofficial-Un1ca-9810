.class public final LX3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/r;


# instance fields
.field public d:LJ4/U;

.field public e:LU3/j;

.field public f:I

.field public g:LU3/n;

.field public h:LU3/s;

.field public i:I

.field public j:Ljava/util/List;

.field public k:LX3/O;

.field public l:LU3/J;

.field public m:LJ4/C;

.field public n:Ls4/f;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lr3/r;

.field public u:LV3/h;

.field public v:Z

.field public final w:Ljava/util/LinkedHashMap;

.field public x:Ljava/lang/Boolean;

.field public y:Z

.field public final synthetic z:LX3/w;


# direct methods
.method public constructor <init>(LX3/w;LJ4/U;LU3/j;ILU3/n;ILjava/util/List;LX3/O;LJ4/C;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p9, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/v;->z:LX3/w;

    iput-object v0, p0, LX3/v;->h:LU3/s;

    iget-object v3, p1, LX3/w;->l:LU3/J;

    iput-object v3, p0, LX3/v;->l:LU3/J;

    iput-boolean v2, p0, LX3/v;->o:Z

    iput-boolean v1, p0, LX3/v;->p:Z

    iput-boolean v1, p0, LX3/v;->q:Z

    iput-boolean v1, p0, LX3/v;->r:Z

    iget-boolean v2, p1, LX3/w;->u:Z

    iput-boolean v2, p0, LX3/v;->s:Z

    iput-object v0, p0, LX3/v;->t:Lr3/r;

    iput-object v0, p0, LX3/v;->u:LV3/h;

    iget-boolean p1, p1, LX3/w;->v:Z

    iput-boolean p1, p0, LX3/v;->v:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LX3/v;->w:Ljava/util/LinkedHashMap;

    iput-object v0, p0, LX3/v;->x:Ljava/lang/Boolean;

    iput-boolean v1, p0, LX3/v;->y:Z

    iput-object p2, p0, LX3/v;->d:LJ4/U;

    iput-object p3, p0, LX3/v;->e:LU3/j;

    iput p4, p0, LX3/v;->f:I

    iput-object p5, p0, LX3/v;->g:LU3/n;

    iput p6, p0, LX3/v;->i:I

    iput-object p7, p0, LX3/v;->j:Ljava/util/List;

    iput-object p8, p0, LX3/v;->k:LX3/O;

    iput-object p9, p0, LX3/v;->m:LJ4/C;

    iput-object v0, p0, LX3/v;->n:Ls4/f;

    return-void

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LX3/v;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x5

    invoke-static {p0}, LX3/v;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x4

    invoke-static {p0}, LX3/v;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, LX3/v;->a(I)V

    throw v0

    :cond_4
    const/4 p0, 0x2

    invoke-static {p0}, LX3/v;->a(I)V

    throw v0

    :cond_5
    invoke-static {v2}, LX3/v;->a(I)V

    throw v0

    :cond_6
    invoke-static {v1}, LX3/v;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 16

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_4
    const-string v5, "substitution"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "userDataKey"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "additionalAnnotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "parameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "owner"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "newReturnType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "newValueParameterDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "newVisibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "newModality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_13
    const-string v5, "newOwner"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "setOwner"

    const-string v5, "setModality"

    const-string v6, "setVisibility"

    const-string v7, "setKind"

    const-string v8, "setName"

    const-string v9, "setValueParameters"

    const-string v10, "setTypeParameters"

    const-string v11, "setReturnType"

    const-string v12, "setAdditionalAnnotations"

    const-string v13, "setSubstitution"

    const-string v14, "putUserData"

    const/4 v15, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_14
    aput-object v3, v2, v15

    goto/16 :goto_3

    :pswitch_15
    const-string v3, "setJustForTypeSubstitution"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_16
    const-string v3, "getSubstitution"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_17
    aput-object v14, v2, v15

    goto :goto_3

    :pswitch_18
    aput-object v13, v2, v15

    goto :goto_3

    :pswitch_19
    aput-object v12, v2, v15

    goto :goto_3

    :pswitch_1a
    const-string v3, "setHiddenForResolutionEverywhereBesideSupercalls"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1b
    const-string v3, "setHiddenToOvercomeSignatureClash"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1c
    const-string v3, "setDropOriginalInContainingParts"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1d
    const-string v3, "setPreserveSourceElement"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1e
    const-string v3, "setSignatureChange"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1f
    const-string v3, "setOriginal"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_20
    const-string v3, "setDispatchReceiverParameter"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_21
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_22
    aput-object v11, v2, v15

    goto :goto_3

    :pswitch_23
    aput-object v10, v2, v15

    goto :goto_3

    :pswitch_24
    aput-object v9, v2, v15

    goto :goto_3

    :pswitch_25
    aput-object v8, v2, v15

    goto :goto_3

    :pswitch_26
    const-string v3, "setCopyOverrides"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_27
    aput-object v7, v2, v15

    goto :goto_3

    :pswitch_28
    aput-object v6, v2, v15

    goto :goto_3

    :pswitch_29
    aput-object v5, v2, v15

    goto :goto_3

    :pswitch_2a
    aput-object v4, v2, v15

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_2b
    aput-object v14, v2, v1

    goto :goto_4

    :pswitch_2c
    aput-object v13, v2, v1

    goto :goto_4

    :pswitch_2d
    aput-object v12, v2, v1

    goto :goto_4

    :pswitch_2e
    aput-object v11, v2, v1

    goto :goto_4

    :pswitch_2f
    aput-object v10, v2, v1

    goto :goto_4

    :pswitch_30
    aput-object v9, v2, v1

    goto :goto_4

    :pswitch_31
    aput-object v8, v2, v1

    goto :goto_4

    :pswitch_32
    aput-object v7, v2, v1

    goto :goto_4

    :pswitch_33
    aput-object v6, v2, v1

    goto :goto_4

    :pswitch_34
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_35
    aput-object v4, v2, v1

    :goto_4
    :pswitch_36
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_38
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_6
        :pswitch_c
        :pswitch_4
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_2a
        :pswitch_14
        :pswitch_29
        :pswitch_14
        :pswitch_28
        :pswitch_14
        :pswitch_27
        :pswitch_26
        :pswitch_14
        :pswitch_25
        :pswitch_14
        :pswitch_24
        :pswitch_14
        :pswitch_23
        :pswitch_14
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_14
        :pswitch_19
        :pswitch_14
        :pswitch_18
        :pswitch_14
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_35
        :pswitch_36
        :pswitch_34
        :pswitch_36
        :pswitch_33
        :pswitch_36
        :pswitch_32
        :pswitch_36
        :pswitch_36
        :pswitch_31
        :pswitch_36
        :pswitch_30
        :pswitch_36
        :pswitch_2f
        :pswitch_36
        :pswitch_2e
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_2d
        :pswitch_36
        :pswitch_2c
        :pswitch_36
        :pswitch_2b
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public final D()LU3/r;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LX3/v;->v:Z

    return-object p0
.end method

.method public final E()LU3/r;
    .locals 1

    sget-object v0, Lr3/r;->d:Lr3/r;

    iput-object v0, p0, LX3/v;->t:Lr3/r;

    return-object p0
.end method

.method public final I(LV3/h;)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/v;->u:LV3/h;

    return-object p0

    :cond_0
    const/16 p0, 0x20

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J()LU3/r;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LX3/v;->s:Z

    return-object p0
.end method

.method public final K()LU3/r;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LX3/v;->p:Z

    return-object p0
.end method

.method public final b(I)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, LX3/v;->i:I

    return-object p0

    :cond_0
    const/16 p0, 0xd

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final build()LU3/s;
    .locals 1

    iget-object v0, p0, LX3/v;->z:LX3/w;

    invoke-virtual {v0, p0}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ls4/f;)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/v;->n:Ls4/f;

    return-object p0

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()LU3/r;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LX3/v;->o:Z

    return-object p0
.end method

.method public final f(LJ4/C;)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/v;->m:LJ4/C;

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m(LU3/e;)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/v;->e:LU3/j;

    return-object p0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()LU3/r;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LX3/v;->q:Z

    return-object p0
.end method

.method public final r(Ljava/util/List;)LU3/r;
    .locals 0

    iput-object p1, p0, LX3/v;->j:Ljava/util/List;

    return-object p0
.end method

.method public final u(LU3/J;)LU3/r;
    .locals 0

    iput-object p1, p0, LX3/v;->l:LU3/J;

    return-object p0
.end method

.method public final w(I)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, LX3/v;->f:I

    return-object p0

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y(LU3/n;)LU3/r;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/v;->g:LU3/n;

    return-object p0

    :cond_0
    const/16 p0, 0xb

    invoke-static {p0}, LX3/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
