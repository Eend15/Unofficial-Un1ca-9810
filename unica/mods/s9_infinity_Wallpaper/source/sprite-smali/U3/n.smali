.class public final LU3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU3/b0;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(LU3/b0;I)V
    .locals 0

    iput p2, p0, LU3/n;->b:I

    const-string p2, "delegate"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/n;->a:LU3/b0;

    return-void
.end method


# virtual methods
.method public final a(LU3/M;LU3/m;LU3/j;)Z
    .locals 6

    iget v0, p0, LU3/n;->b:I

    packed-switch v0, :pswitch_data_0

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p3}, Ld4/o;->b(LU3/M;LU3/m;LU3/j;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Ld4/o;->b(LU3/M;LU3/m;LU3/j;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-eqz p3, :cond_2

    invoke-static {p2, p3}, Ld4/o;->c(LU3/m;LU3/j;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-eqz p3, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-eqz p3, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-nez p3, :cond_5

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Visibility is unknown yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-nez p3, :cond_6

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method shouldn\'t be invoked for LOCAL visibility"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    const/4 p0, 0x1

    if-eqz p3, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    const/4 p0, 0x1

    if-eqz p3, :cond_9

    invoke-static {p2}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object p1

    invoke-static {p3}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object p2

    invoke-interface {p2, p1}, LU3/x;->S(LU3/x;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    goto :goto_0

    :cond_8
    sget-object p1, LU3/o;->n:LP4/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return p0

    :cond_9
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_14

    const-class v2, LU3/e;

    invoke-static {p2, v2, v1}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object v3

    check-cast v3, LU3/e;

    const/4 v4, 0x0

    invoke-static {p3, v2, v4}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object p3

    check-cast p3, LU3/e;

    if-nez p3, :cond_a

    :goto_1
    move v1, v4

    goto/16 :goto_4

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {v3}, Lv4/f;->l(LU3/j;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v3, v2, v1}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object v3

    check-cast v3, LU3/e;

    if-eqz v3, :cond_b

    invoke-interface {p3}, LU3/e;->n()LJ4/G;

    move-result-object v5

    invoke-interface {v3}, LU3/e;->a()LU3/e;

    move-result-object v3

    invoke-static {v5, v3}, Lv4/f;->r(LJ4/C;LU3/e;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    instance-of v3, p2, LU3/b;

    if-eqz v3, :cond_c

    move-object v3, p2

    check-cast v3, LU3/b;

    invoke-static {v3}, Lv4/f;->t(LU3/b;)LU3/b;

    move-result-object v3

    goto :goto_2

    :cond_c
    move-object v3, p2

    :goto_2
    invoke-static {v3, v2, v1}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object v2

    check-cast v2, LU3/e;

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    invoke-interface {p3}, LU3/e;->n()LJ4/G;

    move-result-object v4

    invoke-interface {v2}, LU3/e;->a()LU3/e;

    move-result-object v2

    invoke-static {v4, v2}, Lv4/f;->r(LJ4/C;LU3/e;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, LU3/o;->m:LU3/M;

    if-ne p1, v2, :cond_e

    goto :goto_3

    :cond_e
    instance-of v2, v3, LU3/b;

    if-nez v2, :cond_f

    goto :goto_4

    :cond_f
    instance-of v2, v3, LU3/i;

    if-eqz v2, :cond_10

    goto :goto_4

    :cond_10
    sget-object v2, LU3/o;->l:LU3/M;

    if-ne p1, v2, :cond_11

    goto :goto_4

    :cond_11
    sget-object v1, LU3/o;->k:LU3/M;

    if-eq p1, v1, :cond_13

    if-nez p1, :cond_12

    goto :goto_3

    :cond_12
    invoke-virtual {p1}, LU3/M;->j()LJ4/C;

    throw v0

    :cond_13
    :goto_3
    invoke-interface {p3}, LU3/j;->g()LU3/j;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, LU3/n;->a(LU3/M;LU3/m;LU3/j;)Z

    move-result v1

    :goto_4
    return v1

    :cond_14
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x2

    const-string v0, "from"

    aput-object v0, p0, p2

    const-string p2, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object p2, p0, p1

    const-string p1, "isVisible"

    aput-object p1, p0, p3

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_9
    const/4 p0, 0x1

    if-eqz p3, :cond_18

    sget-object v0, LU3/o;->a:LU3/n;

    invoke-virtual {v0, p1, p2, p3}, LU3/n;->a(LU3/M;LU3/m;LU3/j;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_16

    sget-object p3, LU3/o;->l:LU3/M;

    if-ne p1, p3, :cond_15

    goto :goto_6

    :cond_15
    sget-object p3, LU3/o;->k:LU3/M;

    if-ne p1, p3, :cond_17

    :cond_16
    :goto_5
    move p0, v0

    goto :goto_6

    :cond_17
    const-class p1, LU3/e;

    invoke-static {p2, p1, p0}, Lv4/f;->i(LU3/j;Ljava/lang/Class;Z)LU3/j;

    move-result-object p0

    goto :goto_5

    :goto_6
    return p0

    :cond_18
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string p3, "from"

    aput-object p3, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "isVisible"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    if-eqz p3, :cond_21

    invoke-static {p2}, Lv4/f;->s(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {p3}, Lv4/f;->f(LU3/j;)LU3/M;

    move-result-object p0

    sget-object p1, LU3/M;->e:LU3/M;

    if-eq p0, p1, :cond_19

    invoke-static {p2, p3}, LU3/o;->d(LU3/m;LU3/j;)Z

    move-result p0

    goto/16 :goto_9

    :cond_19
    instance-of p0, p2, LU3/i;

    const/4 p1, 0x1

    if-eqz p0, :cond_1a

    move-object p0, p2

    check-cast p0, LU3/i;

    invoke-interface {p0}, LU3/i;->g()LU3/h;

    move-result-object p0

    invoke-static {p0}, Lv4/f;->q(LU3/j;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lv4/f;->s(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_1a

    instance-of p0, p3, LU3/i;

    if-eqz p0, :cond_1a

    invoke-interface {p3}, LU3/j;->g()LU3/j;

    move-result-object p0

    invoke-static {p0}, Lv4/f;->s(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {p2, p3}, LU3/o;->d(LU3/m;LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :goto_7
    move p0, p1

    goto :goto_9

    :cond_1a
    if-eqz p2, :cond_1c

    invoke-interface {p2}, LU3/j;->g()LU3/j;

    move-result-object p2

    instance-of p0, p2, LU3/e;

    if-eqz p0, :cond_1b

    invoke-static {p2}, Lv4/f;->l(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1b
    instance-of p0, p2, LU3/B;

    if-eqz p0, :cond_1a

    :cond_1c
    const/4 p0, 0x0

    if-nez p2, :cond_1d

    goto :goto_9

    :cond_1d
    :goto_8
    if-eqz p3, :cond_20

    if-ne p2, p3, :cond_1e

    goto :goto_7

    :cond_1e
    instance-of v0, p3, LU3/B;

    if-eqz v0, :cond_1f

    instance-of v0, p2, LU3/B;

    if-eqz v0, :cond_20

    move-object v0, p2

    check-cast v0, LU3/B;

    check-cast v0, LX3/F;

    move-object v1, p3

    check-cast v1, LU3/B;

    check-cast v1, LX3/F;

    iget-object v0, v0, LX3/F;->h:Ls4/c;

    iget-object v1, v1, LX3/F;->h:Ls4/c;

    invoke-virtual {v0, v1}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p3}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object p3

    invoke-static {p2}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_7

    :cond_1f
    invoke-interface {p3}, LU3/j;->g()LU3/j;

    move-result-object p3

    goto :goto_8

    :cond_20
    :goto_9
    return p0

    :cond_21
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x2

    const-string v0, "from"

    aput-object v0, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object p1, p0, p2

    const-string p1, "isVisible"

    aput-object p1, p0, p3

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LU3/n;->a:LU3/b0;

    invoke-virtual {p0}, LU3/b0;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
