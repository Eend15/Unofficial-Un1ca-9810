.class public final LF4/B;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LF4/F;


# direct methods
.method public synthetic constructor <init>(LF4/F;I)V
    .locals 0

    iput p2, p0, LF4/B;->d:I

    iput-object p1, p0, LF4/B;->e:LF4/F;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LF4/B;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ln4/Q;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF4/B;->e:LF4/F;

    iget-object p0, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast p0, LF4/k;

    iget-object p0, p0, LF4/k;->d:LX3/C;

    invoke-static {p1, p0}, Lj0/s;->B(Ln4/Q;LX3/C;)Ln4/Q;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, LF4/B;->e:LF4/F;

    iget-object p0, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast p0, LF4/k;

    iget-object v0, p0, LF4/k;->b:Lp4/f;

    invoke-static {v0, p1}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p1

    iget-boolean v0, p1, Ls4/b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LF4/k;->a:LF4/i;

    iget-object p0, p0, LF4/i;->b:LU3/x;

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LR3/f;->C(LU3/x;Ls4/b;)LU3/g;

    move-result-object p0

    instance-of p1, p0, LH4/v;

    if-eqz p1, :cond_1

    move-object v1, p0

    check-cast v1, LH4/v;

    :cond_1
    :goto_0
    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, LF4/B;->e:LF4/F;

    iget-object p0, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast p0, LF4/k;

    iget-object v0, p0, LF4/k;->b:Lp4/f;

    invoke-static {v0, p1}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p1

    iget-boolean v0, p1, Ls4/b;->c:Z

    iget-object p0, p0, LF4/k;->a:LF4/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, LF4/i;->b(Ls4/b;)LU3/e;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, LF4/i;->b:LU3/x;

    invoke-static {p0, p1}, LR3/f;->C(LU3/x;Ls4/b;)LU3/g;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
