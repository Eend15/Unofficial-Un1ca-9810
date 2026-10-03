.class public final Lk4/o;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final e:Lk4/o;

.field public static final f:Lk4/o;

.field public static final g:Lk4/o;

.field public static final h:Lk4/o;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lk4/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk4/o;-><init>(II)V

    sput-object v0, Lk4/o;->e:Lk4/o;

    new-instance v0, Lk4/o;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lk4/o;-><init>(II)V

    sput-object v0, Lk4/o;->f:Lk4/o;

    new-instance v0, Lk4/o;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lk4/o;-><init>(II)V

    sput-object v0, Lk4/o;->g:Lk4/o;

    new-instance v0, Lk4/o;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lk4/o;-><init>(II)V

    sput-object v0, Lk4/o;->h:Lk4/o;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lk4/o;->d:I

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lk4/o;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lk4/r;

    const-string p0, "$this$function"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Spliterator"

    const-string v0, "java/util/"

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lk4/k;->b:Lk4/e;

    filled-new-array {v0, v0}, [Lk4/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lk4/r;->c(Ljava/lang/String;[Lk4/e;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_0
    check-cast p1, LJ4/b0;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Li4/g;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LU3/b;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/a;->k()LJ4/C;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    check-cast p1, LU3/b;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/a;->Y()LU3/J;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, LX3/d;

    invoke-virtual {p0}, LX3/d;->j()LJ4/C;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LJ4/C;

    instance-of p0, p1, Li4/g;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
