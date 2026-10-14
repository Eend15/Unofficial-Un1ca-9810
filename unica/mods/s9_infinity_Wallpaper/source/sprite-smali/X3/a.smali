.class public final LX3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX3/b;


# direct methods
.method public synthetic constructor <init>(LX3/b;I)V
    .locals 0

    iput p2, p0, LX3/a;->d:I

    iput-object p1, p0, LX3/a;->e:LX3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LX3/a;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LX3/x;

    iget-object p0, p0, LX3/a;->e:LX3/b;

    invoke-direct {v0, p0}, LX3/x;-><init>(LU3/e;)V

    return-object v0

    :pswitch_0
    new-instance v0, LC4/j;

    iget-object p0, p0, LX3/a;->e:LX3/b;

    invoke-virtual {p0}, LX3/b;->a0()LC4/o;

    move-result-object p0

    invoke-direct {v0, p0}, LC4/j;-><init>(LC4/o;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, LX3/a;->e:LX3/b;

    invoke-virtual {v0}, LX3/b;->a0()LC4/o;

    move-result-object v1

    new-instance v2, LR3/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, LR3/h;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, LJ4/Z;->k(LU3/g;LC4/o;LE3/b;)LJ4/G;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
