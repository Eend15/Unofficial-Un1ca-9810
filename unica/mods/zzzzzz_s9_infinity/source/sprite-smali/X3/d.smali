.class public abstract LX3/d;
.super LX3/p;
.source "SourceFile"

# interfaces
.implements LU3/J;


# static fields
.field public static final f:Ls4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LX3/d;->f:Ls4/f;

    return-void
.end method

.method public constructor <init>(LV3/h;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, LX3/d;->f:Ls4/f;

    invoke-direct {p0, p1, v0}, LX3/p;-><init>(LV3/h;Ls4/f;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LX3/d;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic z0(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_2
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_3
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_4
    const-string v3, "getSource"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_5
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_6
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_7
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_8
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_9
    const-string v3, "getType"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_a
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_b
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_c
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final C()LU3/J;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final G0(LJ4/X;)LX3/d;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p1, LJ4/X;->a:LJ4/U;

    invoke-virtual {v2}, LJ4/U;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v2

    instance-of v2, v2, LU3/e;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, LX3/O;

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v1

    new-instance v2, LD4/e;

    invoke-direct {v2, p1}, LD4/a;-><init>(LJ4/C;)V

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, LX3/O;-><init>(LU3/j;LD4/a;LV3/h;)V

    return-object v0

    :cond_4
    invoke-static {v0}, LX3/d;->z0(I)V

    throw v1
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->H(LX3/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Y()LU3/J;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()LU3/a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a()LU3/j;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final b()LU3/n;
    .locals 0

    sget-object p0, LU3/o;->f:LU3/n;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LX3/d;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i()LU3/L;
    .locals 0

    sget-object p0, LU3/L;->a:LU3/M;

    return-object p0
.end method

.method public final j()LJ4/C;
    .locals 0

    invoke-interface {p0}, LU3/J;->getValue()LD4/d;

    move-result-object p0

    invoke-interface {p0}, LD4/d;->j()LJ4/C;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LX3/d;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()LJ4/C;
    .locals 0

    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    invoke-virtual {p0, p1}, LX3/d;->G0(LJ4/X;)LX3/d;

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
    const/4 p0, 0x5

    invoke-static {p0}, LX3/d;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n0()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, LX3/d;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, LX3/d;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method
