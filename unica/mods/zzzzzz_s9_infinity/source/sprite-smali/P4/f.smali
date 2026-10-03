.class public final LP4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/a;


# static fields
.field public static final b:LP4/f;

.field public static final c:LP4/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LP4/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP4/f;-><init>(I)V

    sput-object v0, LP4/f;->b:LP4/f;

    new-instance v0, LP4/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LP4/f;-><init>(I)V

    sput-object v0, LP4/f;->c:LP4/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LP4/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget p0, p0, LP4/f;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "should not have varargs or parameters with default values"

    return-object p0

    :pswitch_0
    const-string p0, "second parameter must be of type KProperty<*> or its supertype"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lf4/f;)Ljava/lang/String;
    .locals 1

    iget v0, p0, LP4/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LK/I;->V(LP4/a;Lf4/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, LK/I;->V(LP4/a;Lf4/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lf4/f;)Z
    .locals 4

    iget p0, p0, LP4/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object p0

    const-string p1, "functionDescriptor.valueParameters"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX3/W;

    const-string v1, "it"

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz4/e;->a(LX3/W;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, LX3/W;->m:LJ4/C;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/W;

    sget-object p1, LR3/n;->d:LG4/d;

    const-string v0, "secondParameter"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz4/e;->j(LU3/j;)LU3/x;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LR3/o;->Q:Ls4/b;

    invoke-static {v0, p1}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    sget-object v0, LV3/g;->a:LV3/f;

    new-instance v1, LJ4/K;

    invoke-interface {p1}, LU3/g;->E()LJ4/M;

    move-result-object v2

    invoke-interface {v2}, LJ4/M;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "kPropertyClass.typeConstructor.parameters"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "kPropertyClass.typeConstructor.parameters.single()"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LU3/O;

    invoke-direct {v1, v2}, LJ4/K;-><init>(LU3/O;)V

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, LJ4/d;->o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;

    move-result-object p1

    :goto_2
    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    check-cast p0, LX3/X;

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object p0

    const-string v1, "secondParameter.type"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object p0

    sget-object v0, LK4/e;->a:LK4/m;

    invoke-virtual {v0, p1, p0}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    move-result v0

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
