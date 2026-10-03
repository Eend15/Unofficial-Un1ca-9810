.class public final LO3/d0;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/W;


# direct methods
.method public synthetic constructor <init>(LO3/W;I)V
    .locals 0

    iput p2, p0, LO3/d0;->d:I

    iput-object p1, p0, LO3/d0;->e:LO3/W;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget v0, p0, LO3/d0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LO3/d0;->e:LO3/W;

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object p0

    check-cast p0, LX3/X;

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object p0

    invoke-static {p0}, LJ4/Z;->e(LJ4/C;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    iget-object p0, p0, LO3/d0;->e:LO3/W;

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object p0

    check-cast p0, LD4/a;

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object p0

    sget-object v0, LO3/r0;->a:Ls4/c;

    invoke-interface {p0, v0}, LV3/h;->e(Ls4/c;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LO3/d0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, LO3/d0;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, LO3/d0;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
