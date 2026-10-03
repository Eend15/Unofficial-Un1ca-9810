.class public LW4/x;
.super LW4/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lu3/i;ZI)V
    .locals 0

    iput p3, p0, LW4/x;->f:I

    invoke-direct {p0, p1, p2}, LW4/a;-><init>(Lu3/i;Z)V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/Throwable;)Z
    .locals 1

    iget v0, p0, LW4/x;->f:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LW4/Y;->r(Ljava/lang/Throwable;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LW4/a;->e:Lu3/i;

    invoke-static {p0, p1}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
