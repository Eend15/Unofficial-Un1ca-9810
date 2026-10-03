.class public final LJ4/F;
.super LJ4/n;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(LJ4/G;I)V
    .locals 0

    iput p2, p0, LJ4/F;->f:I

    invoke-direct {p0, p1}, LJ4/n;-><init>(LJ4/G;)V

    return-void
.end method


# virtual methods
.method public final J0(LJ4/G;)LJ4/m;
    .locals 1

    iget p0, p0, LJ4/F;->f:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LJ4/F;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LJ4/F;-><init>(LJ4/G;I)V

    return-object p0

    :pswitch_0
    new-instance p0, LJ4/F;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LJ4/F;-><init>(LJ4/G;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final z0()Z
    .locals 0

    iget p0, p0, LJ4/F;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
