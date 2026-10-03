.class public final Landroidx/activity/l;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/activity/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/p;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/l;->d:I

    iput-object p1, p0, Landroidx/activity/l;->e:Landroidx/activity/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/activity/l;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/activity/l;->e:Landroidx/activity/p;

    invoke-virtual {p0}, Landroidx/activity/p;->b()V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/activity/l;->e:Landroidx/activity/p;

    invoke-virtual {p0}, Landroidx/activity/p;->c()V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
