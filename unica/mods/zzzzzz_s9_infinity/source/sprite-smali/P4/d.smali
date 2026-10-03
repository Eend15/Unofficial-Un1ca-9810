.class public final LP4/d;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final e:LP4/d;

.field public static final f:LP4/d;

.field public static final g:LP4/d;

.field public static final h:LP4/d;

.field public static final i:LP4/d;

.field public static final j:LP4/d;

.field public static final k:LP4/d;

.field public static final l:LP4/d;

.field public static final m:LP4/d;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->e:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->f:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->g:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->h:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->i:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->j:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->k:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->l:LP4/d;

    new-instance v0, LP4/d;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LP4/d;-><init>(II)V

    sput-object v0, LP4/d;->m:LP4/d;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LP4/d;->d:I

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "$this$$receiver"

    const/4 v3, 0x0

    const-string v4, "$this$null"

    iget p0, p0, LP4/d;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LR3/j;

    invoke-static {p1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LR3/j;->v()LJ4/G;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LR3/j;

    invoke-static {p1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LR3/l;->m:LR3/l;

    invoke-virtual {p1, p0}, LR3/j;->r(LR3/l;)LJ4/G;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LR3/j;

    invoke-static {p1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LR3/l;->i:LR3/l;

    invoke-virtual {p1, p0}, LR3/j;->r(LR3/l;)LJ4/G;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LU3/s;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/a;->C()LU3/J;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, LU3/a;->Y()LU3/J;

    move-result-object p0

    :cond_0
    sget-object v2, LP4/j;->a:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p1}, LU3/a;->k()LJ4/C;

    move-result-object p1

    if-nez p1, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    check-cast p0, LX3/d;

    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object p0

    sget-object v2, LK4/e;->a:LK4/m;

    invoke-virtual {v2, p1, p0}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-string v3, "receiver must be a supertype of the return type"

    :cond_3
    return-object v3

    :pswitch_3
    check-cast p1, LU3/s;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LP4/j;->a:Ljava/util/List;

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object p0

    const-string v0, "containingDeclaration"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_4

    check-cast p0, LU3/e;

    sget-object v0, LR3/j;->e:Ls4/f;

    sget-object v0, LR3/o;->a:Ls4/e;

    invoke-static {p0, v0}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "overriddenDescriptors"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU3/s;

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object p1

    const-string v0, "it.containingDeclaration"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LU3/e;

    if-eqz v0, :cond_6

    check-cast p1, LU3/e;

    sget-object v0, LR3/j;->e:Ls4/f;

    sget-object v0, LR3/o;->a:Ls4/e;

    invoke-static {p1, v0}, LR3/j;->b(LU3/e;Ls4/e;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_7
    :goto_2
    const-string v3, "must override \'\'equals()\'\' in Any"

    :goto_3
    return-object v3

    :pswitch_4
    check-cast p1, LU3/s;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/a;->n0()Ljava/util/List;

    move-result-object p0

    const-string p1, "valueParameters"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/W;

    if-nez p0, :cond_9

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    invoke-static {p0}, Lz4/e;->a(LX3/W;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, LX3/W;->m:LJ4/C;

    if-nez p0, :cond_8

    :goto_4
    sget-object p0, LP4/j;->a:Ljava/util/List;

    if-nez v0, :cond_a

    const-string v3, "last parameter should not have a default value or be a vararg"

    :cond_a
    return-object v3

    :pswitch_5
    check-cast p1, LU3/s;

    invoke-static {p1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :pswitch_6
    check-cast p1, LU3/s;

    invoke-static {p1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :pswitch_7
    check-cast p1, LU3/s;

    invoke-static {p1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
