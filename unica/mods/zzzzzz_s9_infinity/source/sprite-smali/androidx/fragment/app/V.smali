.class public final Landroidx/fragment/app/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/fragment/app/W;

.field public final synthetic f:Landroidx/fragment/app/h;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/h;Landroidx/fragment/app/W;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/V;->d:I

    iput-object p1, p0, Landroidx/fragment/app/V;->f:Landroidx/fragment/app/h;

    iput-object p2, p0, Landroidx/fragment/app/V;->e:Landroidx/fragment/app/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/V;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/V;->f:Landroidx/fragment/app/h;

    iget-object v1, v0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/fragment/app/V;->e:Landroidx/fragment/app/W;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/V;->f:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/fragment/app/V;->e:Landroidx/fragment/app/W;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/fragment/app/W;->a:I

    iget-object p0, p0, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object p0, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-static {p0, v0}, LB/a;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
