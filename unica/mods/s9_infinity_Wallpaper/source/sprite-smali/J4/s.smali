.class public final LJ4/s;
.super LX3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls4/f;)V
    .locals 13

    sget-object v1, LJ4/v;->a:LJ4/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sget-object v12, LU3/L;->a:LU3/M;

    sget-object v6, LI4/l;->e:LI4/b;

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, LX3/n;-><init>(LU3/j;Ls4/f;IILjava/util/List;LI4/l;)V

    sget-object v9, LV3/g;->a:LV3/f;

    new-instance p1, LX3/l;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, LX3/l;-><init>(LU3/e;LU3/i;LV3/h;ZILU3/L;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, LU3/o;->d:LU3/n;

    invoke-virtual {p1, v0, v1}, LX3/l;->U0(Ljava/util/List;LU3/n;)V

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v0

    new-instance v1, LJ4/p;

    const-string v2, "<ERROR>"

    invoke-static {p0, v2}, LJ4/v;->e(LJ4/s;Ljava/lang/String;)LJ4/r;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v5, 0x0

    move-object v2, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, LJ4/p;-><init>(LJ4/M;LC4/o;Ljava/util/List;ZI)V

    iput-object v1, p1, LX3/w;->j:LJ4/C;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, LX3/n;->m0(LC4/o;Ljava/util/Set;LX3/l;)V

    return-void

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, LJ4/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final h(LJ4/U;LK4/g;)LC4/o;
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error scope for class "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with arguments: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, LJ4/v;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k0(LJ4/X;)LU3/e;
    .locals 6

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    const/4 p1, 0x2

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor"

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v4, "name"

    aput-object v4, v1, v3

    goto :goto_0

    :pswitch_0
    const-string v4, "typeSubstitution"

    aput-object v4, v1, v3

    goto :goto_0

    :pswitch_1
    const-string v4, "kotlinTypeRefiner"

    aput-object v4, v1, v3

    goto :goto_0

    :pswitch_2
    const-string v4, "typeArguments"

    aput-object v4, v1, v3

    goto :goto_0

    :pswitch_3
    aput-object v2, v1, v3

    goto :goto_0

    :pswitch_4
    const-string v4, "substitutor"

    aput-object v4, v1, v3

    :goto_0
    const-string v3, "substitute"

    const-string v4, "getMemberScope"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    packed-switch p0, :pswitch_data_1

    const-string p0, "<init>"

    aput-object p0, v1, p1

    goto :goto_1

    :pswitch_5
    aput-object v4, v1, p1

    goto :goto_1

    :pswitch_6
    aput-object v3, v1, p1

    :goto_1
    :pswitch_7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/s;->k0(LJ4/X;)LU3/e;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
