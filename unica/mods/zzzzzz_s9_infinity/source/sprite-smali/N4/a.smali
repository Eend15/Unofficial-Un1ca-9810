.class public final LN4/a;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final e:LN4/a;

.field public static final f:LN4/a;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LN4/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LN4/a;-><init>(II)V

    sput-object v0, LN4/a;->e:LN4/a;

    new-instance v0, LN4/a;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LN4/a;-><init>(II)V

    sput-object v0, LN4/a;->f:LN4/a;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LN4/a;->d:I

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, LN4/a;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJ4/b0;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LH4/v;

    if-nez v0, :cond_1

    instance-of p0, p0, LU3/O;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LJ4/b0;

    const-string p0, "it"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, p0, LU3/O;

    if-eqz v0, :cond_4

    check-cast p0, LU3/O;

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    instance-of p0, p0, LH4/v;

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
