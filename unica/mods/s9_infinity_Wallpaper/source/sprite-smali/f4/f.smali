.class public final Lf4/f;
.super LX3/P;
.source "SourceFile"

# interfaces
.implements Lf4/a;


# static fields
.field public static final H:Lf4/e;


# instance fields
.field public F:I

.field public final G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf4/f;->H:Lf4/e;

    return-void
.end method

.method public constructor <init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    invoke-direct/range {p0 .. p6}, LX3/P;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V

    iput v0, p0, Lf4/f;->F:I

    iput-boolean p7, p0, Lf4/f;->G:Z

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v1

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v1

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v1

    :cond_3
    invoke-static {v0}, Lf4/f;->z0(I)V

    throw v1
.end method

.method public static synthetic z0(I)V
    .locals 11

    const/16 v0, 0x14

    const/16 v1, 0x11

    const/16 v2, 0xc

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "enhancedReturnType"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "enhancedValueParametersData"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "newOwner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "unsubstitutedValueParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "typeParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_b
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "initialize"

    const-string v8, "createSubstitutedCopy"

    const-string v9, "enhance"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v9, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v7, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_d
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_e
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "createJavaMethod"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_10
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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final D(LJ4/C;Ljava/util/ArrayList;LJ4/C;Lq3/f;)Lf4/a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1, p0}, Le0/a;->w(Ljava/util/List;Ljava/util/List;LU3/s;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, LV3/g;->a:LV3/f;

    invoke-static {p0, p1, v1}, Lv4/p;->i(LU3/a;LJ4/C;LV3/h;)LX3/O;

    move-result-object p1

    :goto_0
    sget-object v1, LJ4/X;->b:LJ4/X;

    invoke-virtual {p0, v1}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object p0

    iput-object p2, p0, LX3/v;->j:Ljava/util/List;

    iput-object p3, p0, LX3/v;->m:LJ4/C;

    iput-object p1, p0, LX3/v;->k:LX3/O;

    const/4 p1, 0x1

    iput-boolean p1, p0, LX3/v;->r:Z

    iput-boolean p1, p0, LX3/v;->q:Z

    iget-object p1, p0, LX3/v;->z:LX3/w;

    invoke-virtual {p1, p0}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object p0

    check-cast p0, Lf4/f;

    if-eqz p4, :cond_2

    iget-object p1, p4, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lf4/e;

    iget-object p2, p0, LX3/w;->E:Ljava/util/Map;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, LX3/w;->E:Ljava/util/Map;

    :cond_1
    iget-object p2, p0, LX3/w;->E:Ljava/util/Map;

    iget-object p3, p4, Lq3/f;->e:Ljava/lang/Object;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/16 p0, 0x14

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0

    :cond_4
    const/16 p0, 0x13

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0
.end method

.method public final J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    if-eqz p5, :cond_7

    new-instance v0, Lf4/f;

    move-object v3, p3

    check-cast v3, LX3/P;

    if-eqz p6, :cond_0

    :goto_0
    move-object v5, p6

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p6

    goto :goto_0

    :goto_1
    iget-boolean v8, p0, Lf4/f;->G:Z

    move-object v1, v0

    move-object v2, p2

    move-object v4, p5

    move v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lf4/f;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;Z)V

    iget p0, p0, Lf4/f;->F:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_3

    const/4 p3, 0x2

    if-eq p0, p3, :cond_1

    const/4 p3, 0x3

    if-eq p0, p3, :cond_3

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    :cond_1
    move p1, p2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_2
    invoke-static {p0}, LB/a;->e(I)Z

    move-result p0

    if-eqz p1, :cond_5

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    goto :goto_3

    :cond_4
    const/4 p0, 0x2

    goto :goto_3

    :cond_5
    if-eqz p0, :cond_6

    const/4 p0, 0x3

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    :goto_3
    iput p0, v0, Lf4/f;->F:I

    return-object v0

    :cond_7
    const/16 p0, 0xf

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0

    :cond_8
    const/16 p0, 0xe

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0

    :cond_9
    const/16 p0, 0xd

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0
.end method

.method public final U0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;Lr3/s;)LX3/P;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    if-eqz p4, :cond_8

    if-eqz p7, :cond_7

    invoke-super/range {p0 .. p8}, LX3/P;->U0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;Lr3/s;)LX3/P;

    sget-object p1, LP4/j;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP4/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, LP4/e;->a:Ls4/f;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p4

    invoke-static {p4, p3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p2, LP4/e;->b:LV4/l;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p4

    invoke-virtual {p4}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p4

    const-string p5, "functionDescriptor.name.asString()"

    invoke-static {p4, p5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, LV4/l;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p2, LP4/e;->c:Ljava/util/Collection;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p2, LP4/e;->e:[LP4/a;

    array-length p3, p1

    const/4 p4, 0x0

    move p5, p4

    :cond_3
    if-ge p5, p3, :cond_4

    aget-object p6, p1, p5

    add-int/lit8 p5, p5, 0x1

    invoke-interface {p6, p0}, LP4/a;->b(Lf4/f;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_3

    new-instance p1, LP4/b;

    invoke-direct {p1, p4}, LP4/c;-><init>(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p2, LP4/e;->d:LE3/b;

    invoke-interface {p1, p0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    new-instance p1, LP4/b;

    invoke-direct {p1, p4}, LP4/c;-><init>(Z)V

    goto :goto_1

    :cond_5
    sget-object p1, LP4/b;->c:LP4/b;

    goto :goto_1

    :cond_6
    sget-object p1, LP4/b;->b:LP4/b;

    :goto_1
    iget-boolean p1, p1, LP4/c;->a:Z

    iput-boolean p1, p0, LX3/w;->o:Z

    return-object p0

    :cond_7
    const/16 p0, 0xb

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0

    :cond_8
    const/16 p0, 0xa

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0

    :cond_9
    const/16 p0, 0x9

    invoke-static {p0}, Lf4/f;->z0(I)V

    throw v0
.end method

.method public final j0()Z
    .locals 0

    iget p0, p0, Lf4/f;->F:I

    invoke-static {p0}, LB/a;->e(I)Z

    move-result p0

    return p0
.end method
