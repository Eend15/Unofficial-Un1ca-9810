.class public final synthetic Landroidx/fragment/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/s;->a:I

    iput-object p2, p0, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget v0, p0, Landroidx/fragment/app/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->R()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/s;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/w;->markFragmentsCreated()V

    iget-object p0, p0, Landroidx/fragment/app/w;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
