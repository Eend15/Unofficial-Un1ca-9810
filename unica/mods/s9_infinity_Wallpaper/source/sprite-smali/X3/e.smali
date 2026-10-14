.class public final LX3/e;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LH4/v;


# direct methods
.method public synthetic constructor <init>(LH4/v;I)V
    .locals 0

    iput p2, p0, LX3/e;->d:I

    iput-object p1, p0, LX3/e;->e:LH4/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LX3/e;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJ4/b0;

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    instance-of v0, p1, LU3/O;

    if-eqz v0, :cond_0

    check-cast p1, LU3/O;

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object p1

    iget-object p0, p0, LX3/e;->e:LH4/v;

    invoke-static {p1, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LK4/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "descriptor"

    iget-object p0, p0, LX3/e;->e:LH4/v;

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
