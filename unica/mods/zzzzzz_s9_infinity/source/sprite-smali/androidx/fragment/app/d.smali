.class public final Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/d;->d:I

    iput-object p2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/d;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/L;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/L;->x(Z)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/m;

    iget-object v0, p0, Landroidx/fragment/app/m;->Z:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/m;->h0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/e;

    iget-object v0, p0, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/e;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/f;

    invoke-virtual {p0}, Landroidx/appcompat/app/B;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
