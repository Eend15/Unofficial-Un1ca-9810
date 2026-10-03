.class public final LU3/q;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final e:LU3/q;

.field public static final f:LU3/q;

.field public static final g:LU3/q;

.field public static final h:LU3/q;

.field public static final i:LU3/q;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/q;-><init>(II)V

    sput-object v0, LU3/q;->e:LU3/q;

    new-instance v0, LU3/q;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU3/q;-><init>(II)V

    sput-object v0, LU3/q;->f:LU3/q;

    new-instance v0, LU3/q;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LU3/q;-><init>(II)V

    sput-object v0, LU3/q;->g:LU3/q;

    new-instance v0, LU3/q;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/q;-><init>(II)V

    sput-object v0, LU3/q;->h:LU3/q;

    new-instance v0, LU3/q;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LU3/q;-><init>(II)V

    sput-object v0, LU3/q;->i:LU3/q;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LU3/q;->d:I

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LU3/q;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LU3/j;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LU3/a;

    invoke-interface {p1}, LU3/a;->q()Ljava/util/List;

    move-result-object p0

    const-string p1, "it as CallableDescriptor).typeParameters"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LU3/j;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LU3/i;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LU3/j;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LU3/a;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LU3/B;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LX3/F;

    iget-object p0, p1, LX3/F;->h:Ls4/c;

    return-object p0

    :pswitch_3
    check-cast p1, Ls4/b;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
